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
(declare-sort T@Field_10860_53 0)
(declare-sort T@Field_10873_10874 0)
(declare-sort T@Field_17295_3395 0)
(declare-sort T@Field_7364_29246 0)
(declare-sort T@Field_7364_29113 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_10821 0)) (((PolymorphicMapType_10821 (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| (Array T@Ref T@Field_17295_3395 Real)) (|PolymorphicMapType_10821_7364_53#PolymorphicMapType_10821| (Array T@Ref T@Field_10860_53 Real)) (|PolymorphicMapType_10821_7364_10874#PolymorphicMapType_10821| (Array T@Ref T@Field_10873_10874 Real)) (|PolymorphicMapType_10821_7364_29113#PolymorphicMapType_10821| (Array T@Ref T@Field_7364_29113 Real)) (|PolymorphicMapType_10821_7364_33368#PolymorphicMapType_10821| (Array T@Ref T@Field_7364_29246 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11349 0)) (((PolymorphicMapType_11349 (|PolymorphicMapType_11349_10860_53#PolymorphicMapType_11349| (Array T@Ref T@Field_10860_53 Bool)) (|PolymorphicMapType_11349_10860_10874#PolymorphicMapType_11349| (Array T@Ref T@Field_10873_10874 Bool)) (|PolymorphicMapType_11349_10860_3395#PolymorphicMapType_11349| (Array T@Ref T@Field_17295_3395 Bool)) (|PolymorphicMapType_11349_10860_29113#PolymorphicMapType_11349| (Array T@Ref T@Field_7364_29113 Bool)) (|PolymorphicMapType_11349_10860_30424#PolymorphicMapType_11349| (Array T@Ref T@Field_7364_29246 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10800 0)) (((PolymorphicMapType_10800 (|PolymorphicMapType_10800_7136_53#PolymorphicMapType_10800| (Array T@Ref T@Field_10860_53 Bool)) (|PolymorphicMapType_10800_7139_7140#PolymorphicMapType_10800| (Array T@Ref T@Field_10873_10874 T@Ref)) (|PolymorphicMapType_10800_7364_3395#PolymorphicMapType_10800| (Array T@Ref T@Field_17295_3395 Int)) (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| (Array T@Ref T@Field_7364_29246 T@PolymorphicMapType_11349)) (|PolymorphicMapType_10800_10860_29113#PolymorphicMapType_10800| (Array T@Ref T@Field_7364_29113 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_10860_53)
(declare-fun val () T@Field_17295_3395)
(declare-sort T@Seq_3008 0)
(declare-fun |Seq#Length_3008| (T@Seq_3008) Int)
(declare-fun |Seq#Drop_3008| (T@Seq_3008 Int) T@Seq_3008)
(declare-fun succHeap (T@PolymorphicMapType_10800 T@PolymorphicMapType_10800) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10800 T@PolymorphicMapType_10800) Bool)
(declare-fun state (T@PolymorphicMapType_10800 T@PolymorphicMapType_10821) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10821) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_11349)
(declare-fun |Seq#Index_3008| (T@Seq_3008 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_3008| () T@Seq_3008)
(declare-fun |Seq#Update_3008| (T@Seq_3008 Int Int) T@Seq_3008)
(declare-fun |Seq#Take_3008| (T@Seq_3008 Int) T@Seq_3008)
(declare-fun |Seq#Contains_3008| (T@Seq_3008 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3008)
(declare-fun |Seq#Skolem_3008| (T@Seq_3008 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10800 T@PolymorphicMapType_10800 T@PolymorphicMapType_10821) Bool)
(declare-fun IsPredicateField_7364_29204 (T@Field_7364_29113) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7364 (T@Field_7364_29113) T@Field_7364_29246)
(declare-fun HasDirectPerm_7364_29177 (T@PolymorphicMapType_10821 T@Ref T@Field_7364_29113) Bool)
(declare-fun IsWandField_7364_30951 (T@Field_7364_29113) Bool)
(declare-fun WandMaskField_7364 (T@Field_7364_29113) T@Field_7364_29246)
(declare-fun |Seq#Singleton_3008| (Int) T@Seq_3008)
(declare-fun |Seq#Append_3008| (T@Seq_3008 T@Seq_3008) T@Seq_3008)
(declare-fun dummyHeap () T@PolymorphicMapType_10800)
(declare-fun ZeroMask () T@PolymorphicMapType_10821)
(declare-fun InsidePredicate_10860_10860 (T@Field_7364_29113 T@FrameType T@Field_7364_29113 T@FrameType) Bool)
(declare-fun IsPredicateField_7364_3395 (T@Field_17295_3395) Bool)
(declare-fun IsWandField_7364_3395 (T@Field_17295_3395) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7364_34497 (T@Field_7364_29246) Bool)
(declare-fun IsWandField_7364_34513 (T@Field_7364_29246) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7364_10874 (T@Field_10873_10874) Bool)
(declare-fun IsWandField_7364_10874 (T@Field_10873_10874) Bool)
(declare-fun IsPredicateField_7364_53 (T@Field_10860_53) Bool)
(declare-fun IsWandField_7364_53 (T@Field_10860_53) Bool)
(declare-fun HasDirectPerm_7364_34951 (T@PolymorphicMapType_10821 T@Ref T@Field_7364_29246) Bool)
(declare-fun HasDirectPerm_7364_10874 (T@PolymorphicMapType_10821 T@Ref T@Field_10873_10874) Bool)
(declare-fun HasDirectPerm_7364_53 (T@PolymorphicMapType_10821 T@Ref T@Field_10860_53) Bool)
(declare-fun HasDirectPerm_7364_3395 (T@PolymorphicMapType_10821 T@Ref T@Field_17295_3395) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_10821 T@PolymorphicMapType_10821 T@PolymorphicMapType_10821) Bool)
(declare-fun |Seq#Equal_3008| (T@Seq_3008 T@Seq_3008) Bool)
(declare-sort T@IArrayDomainType 0)
(declare-fun len_1 (T@IArrayDomainType) Int)
(declare-fun |Seq#ContainsTrigger_3008| (T@Seq_3008 Int) Bool)
(declare-fun loc (T@IArrayDomainType Int) T@Ref)
(declare-fun loc_limited (T@IArrayDomainType Int) T@Ref)
(declare-fun first (T@Ref) T@IArrayDomainType)
(declare-fun second (T@Ref) Int)
(declare-fun |Seq#SkolemDiff_3008| (T@Seq_3008 T@Seq_3008) Int)
(assert (forall ((s T@Seq_3008) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_3008| s)) (= (|Seq#Length_3008| (|Seq#Drop_3008| s n)) (- (|Seq#Length_3008| s) n))) (=> (< (|Seq#Length_3008| s) n) (= (|Seq#Length_3008| (|Seq#Drop_3008| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_3008| (|Seq#Drop_3008| s n)) (|Seq#Length_3008| s))))
 :qid |stdinbpl.303:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3008| (|Seq#Drop_3008| s n)))
 :pattern ( (|Seq#Length_3008| s) (|Seq#Drop_3008| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_10800) (Heap1 T@PolymorphicMapType_10800) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10800) (Mask T@PolymorphicMapType_10821) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10800) (Heap1@@0 T@PolymorphicMapType_10800) (Heap2 T@PolymorphicMapType_10800) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_7364_29246) ) (!  (not (select (|PolymorphicMapType_11349_10860_30424#PolymorphicMapType_11349| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11349_10860_30424#PolymorphicMapType_11349| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_7364_29113) ) (!  (not (select (|PolymorphicMapType_11349_10860_29113#PolymorphicMapType_11349| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11349_10860_29113#PolymorphicMapType_11349| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_17295_3395) ) (!  (not (select (|PolymorphicMapType_11349_10860_3395#PolymorphicMapType_11349| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11349_10860_3395#PolymorphicMapType_11349| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10873_10874) ) (!  (not (select (|PolymorphicMapType_11349_10860_10874#PolymorphicMapType_11349| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11349_10860_10874#PolymorphicMapType_11349| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_10860_53) ) (!  (not (select (|PolymorphicMapType_11349_10860_53#PolymorphicMapType_11349| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11349_10860_53#PolymorphicMapType_11349| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@0 T@Seq_3008) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_3008| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_3008| (|Seq#Drop_3008| s@@0 n@@0) j) (|Seq#Index_3008| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.324:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3008| (|Seq#Drop_3008| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_3008| |Seq#Empty_3008|) 0))
(assert (forall ((s@@1 T@Seq_3008) (i Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_3008| s@@1))) (and (=> (= i n@@1) (= (|Seq#Index_3008| (|Seq#Update_3008| s@@1 i v) n@@1) v)) (=> (not (= i n@@1)) (= (|Seq#Index_3008| (|Seq#Update_3008| s@@1 i v) n@@1) (|Seq#Index_3008| s@@1 n@@1)))))
 :qid |stdinbpl.279:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3008| (|Seq#Update_3008| s@@1 i v) n@@1))
 :pattern ( (|Seq#Index_3008| s@@1 n@@1) (|Seq#Update_3008| s@@1 i v))
)))
(assert (forall ((s@@2 T@Seq_3008) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_3008| s@@2)) (= (|Seq#Length_3008| (|Seq#Take_3008| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_3008| s@@2) n@@2) (= (|Seq#Length_3008| (|Seq#Take_3008| s@@2 n@@2)) (|Seq#Length_3008| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_3008| (|Seq#Take_3008| s@@2 n@@2)) 0)))
 :qid |stdinbpl.290:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3008| (|Seq#Take_3008| s@@2 n@@2)))
 :pattern ( (|Seq#Take_3008| s@@2 n@@2) (|Seq#Length_3008| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_3008| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.564:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3008| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_3008) (x Int) ) (!  (=> (|Seq#Contains_3008| s@@3 x) (and (and (<= 0 (|Seq#Skolem_3008| s@@3 x)) (< (|Seq#Skolem_3008| s@@3 x) (|Seq#Length_3008| s@@3))) (= (|Seq#Index_3008| s@@3 (|Seq#Skolem_3008| s@@3 x)) x)))
 :qid |stdinbpl.422:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3008| s@@3 x))
)))
(assert (forall ((s@@4 T@Seq_3008) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_3008| s@@4 n@@3) s@@4))
 :qid |stdinbpl.406:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3008| s@@4 n@@3))
)))
(assert (forall ((i@@0 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@0 j@@0) (- i@@0 j@@0))
 :qid |stdinbpl.259:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@0 j@@0))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@1 j@@1) (+ i@@1 j@@1))
 :qid |stdinbpl.257:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@1 j@@1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10800) (ExhaleHeap T@PolymorphicMapType_10800) (Mask@@0 T@PolymorphicMapType_10821) (pm_f_16 T@Field_7364_29113) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7364_29177 Mask@@0 null pm_f_16) (IsPredicateField_7364_29204 pm_f_16)) (= (select (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| Heap@@0) null (PredicateMaskField_7364 pm_f_16)) (select (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| ExhaleHeap) null (PredicateMaskField_7364 pm_f_16)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_7364_29204 pm_f_16) (select (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| ExhaleHeap) null (PredicateMaskField_7364 pm_f_16)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10800) (ExhaleHeap@@0 T@PolymorphicMapType_10800) (Mask@@1 T@PolymorphicMapType_10821) (pm_f_16@@0 T@Field_7364_29113) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_7364_29177 Mask@@1 null pm_f_16@@0) (IsWandField_7364_30951 pm_f_16@@0)) (= (select (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| Heap@@1) null (WandMaskField_7364 pm_f_16@@0)) (select (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| ExhaleHeap@@0) null (WandMaskField_7364 pm_f_16@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_7364_30951 pm_f_16@@0) (select (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| ExhaleHeap@@0) null (WandMaskField_7364 pm_f_16@@0)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_3008| (|Seq#Singleton_3008| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.547:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3008| (|Seq#Singleton_3008| x@@0) y))
)))
(assert (forall ((s@@5 T@Seq_3008) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_3008| s@@5))) (= (|Seq#Index_3008| (|Seq#Take_3008| s@@5 n@@4) j@@2) (|Seq#Index_3008| s@@5 j@@2)))
 :qid |stdinbpl.298:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3008| (|Seq#Take_3008| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_3008| s@@5 j@@2) (|Seq#Take_3008| s@@5 n@@4))
)))
(assert (forall ((s@@6 T@Seq_3008) (t T@Seq_3008) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_3008| s@@6))) (< n@@5 (|Seq#Length_3008| (|Seq#Append_3008| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_3008| s@@6)) (|Seq#Length_3008| s@@6)) n@@5) (= (|Seq#Take_3008| (|Seq#Append_3008| s@@6 t) n@@5) (|Seq#Append_3008| s@@6 (|Seq#Take_3008| t (|Seq#Sub| n@@5 (|Seq#Length_3008| s@@6)))))))
 :qid |stdinbpl.383:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3008| (|Seq#Append_3008| s@@6 t) n@@5))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10800) (ExhaleHeap@@1 T@PolymorphicMapType_10800) (Mask@@2 T@PolymorphicMapType_10821) (o_34 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_10800_7136_53#PolymorphicMapType_10800| Heap@@2) o_34 $allocated) (select (|PolymorphicMapType_10800_7136_53#PolymorphicMapType_10800| ExhaleHeap@@1) o_34 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_10800_7136_53#PolymorphicMapType_10800| ExhaleHeap@@1) o_34 $allocated))
)))
(assert (forall ((p T@Field_7364_29113) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10860_10860 p v_1 p w))
 :qid |stdinbpl.201:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10860_10860 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_3008) (s1 T@Seq_3008) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_3008|)) (not (= s1 |Seq#Empty_3008|))) (<= (|Seq#Length_3008| s0) n@@6)) (< n@@6 (|Seq#Length_3008| (|Seq#Append_3008| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_3008| s0)) (|Seq#Length_3008| s0)) n@@6) (= (|Seq#Index_3008| (|Seq#Append_3008| s0 s1) n@@6) (|Seq#Index_3008| s1 (|Seq#Sub| n@@6 (|Seq#Length_3008| s0))))))
 :qid |stdinbpl.270:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3008| (|Seq#Append_3008| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_7364_3395 val)))
(assert  (not (IsWandField_7364_3395 val)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10800) (ExhaleHeap@@2 T@PolymorphicMapType_10800) (Mask@@3 T@PolymorphicMapType_10821) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_10821) (o_2@@4 T@Ref) (f_4@@4 T@Field_7364_29246) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_10821_7364_33368#PolymorphicMapType_10821| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_7364_34497 f_4@@4))) (not (IsWandField_7364_34513 f_4@@4))) (<= (select (|PolymorphicMapType_10821_7364_33368#PolymorphicMapType_10821| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_10821_7364_33368#PolymorphicMapType_10821| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_10821) (o_2@@5 T@Ref) (f_4@@5 T@Field_7364_29113) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_10821_7364_29113#PolymorphicMapType_10821| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_7364_29204 f_4@@5))) (not (IsWandField_7364_30951 f_4@@5))) (<= (select (|PolymorphicMapType_10821_7364_29113#PolymorphicMapType_10821| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_10821_7364_29113#PolymorphicMapType_10821| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_10821) (o_2@@6 T@Ref) (f_4@@6 T@Field_10873_10874) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_10821_7364_10874#PolymorphicMapType_10821| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_7364_10874 f_4@@6))) (not (IsWandField_7364_10874 f_4@@6))) (<= (select (|PolymorphicMapType_10821_7364_10874#PolymorphicMapType_10821| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_10821_7364_10874#PolymorphicMapType_10821| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_10821) (o_2@@7 T@Ref) (f_4@@7 T@Field_10860_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_10821_7364_53#PolymorphicMapType_10821| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_7364_53 f_4@@7))) (not (IsWandField_7364_53 f_4@@7))) (<= (select (|PolymorphicMapType_10821_7364_53#PolymorphicMapType_10821| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_10821_7364_53#PolymorphicMapType_10821| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_10821) (o_2@@8 T@Ref) (f_4@@8 T@Field_17295_3395) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_7364_3395 f_4@@8))) (not (IsWandField_7364_3395 f_4@@8))) (<= (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_10821) (o_2@@9 T@Ref) (f_4@@9 T@Field_7364_29246) ) (! (= (HasDirectPerm_7364_34951 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_10821_7364_33368#PolymorphicMapType_10821| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7364_34951 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_10821) (o_2@@10 T@Ref) (f_4@@10 T@Field_7364_29113) ) (! (= (HasDirectPerm_7364_29177 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_10821_7364_29113#PolymorphicMapType_10821| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7364_29177 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10821) (o_2@@11 T@Ref) (f_4@@11 T@Field_10873_10874) ) (! (= (HasDirectPerm_7364_10874 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_10821_7364_10874#PolymorphicMapType_10821| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7364_10874 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10821) (o_2@@12 T@Ref) (f_4@@12 T@Field_10860_53) ) (! (= (HasDirectPerm_7364_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_10821_7364_53#PolymorphicMapType_10821| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7364_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10821) (o_2@@13 T@Ref) (f_4@@13 T@Field_17295_3395) ) (! (= (HasDirectPerm_7364_3395 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7364_3395 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10800) (ExhaleHeap@@3 T@PolymorphicMapType_10800) (Mask@@14 T@PolymorphicMapType_10821) (pm_f_16@@1 T@Field_7364_29113) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_7364_29177 Mask@@14 null pm_f_16@@1) (IsPredicateField_7364_29204 pm_f_16@@1)) (and (and (and (and (forall ((o2_16 T@Ref) (f_40 T@Field_10860_53) ) (!  (=> (select (|PolymorphicMapType_11349_10860_53#PolymorphicMapType_11349| (select (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| Heap@@4) null (PredicateMaskField_7364 pm_f_16@@1))) o2_16 f_40) (= (select (|PolymorphicMapType_10800_7136_53#PolymorphicMapType_10800| Heap@@4) o2_16 f_40) (select (|PolymorphicMapType_10800_7136_53#PolymorphicMapType_10800| ExhaleHeap@@3) o2_16 f_40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10800_7136_53#PolymorphicMapType_10800| ExhaleHeap@@3) o2_16 f_40))
)) (forall ((o2_16@@0 T@Ref) (f_40@@0 T@Field_10873_10874) ) (!  (=> (select (|PolymorphicMapType_11349_10860_10874#PolymorphicMapType_11349| (select (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| Heap@@4) null (PredicateMaskField_7364 pm_f_16@@1))) o2_16@@0 f_40@@0) (= (select (|PolymorphicMapType_10800_7139_7140#PolymorphicMapType_10800| Heap@@4) o2_16@@0 f_40@@0) (select (|PolymorphicMapType_10800_7139_7140#PolymorphicMapType_10800| ExhaleHeap@@3) o2_16@@0 f_40@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10800_7139_7140#PolymorphicMapType_10800| ExhaleHeap@@3) o2_16@@0 f_40@@0))
))) (forall ((o2_16@@1 T@Ref) (f_40@@1 T@Field_17295_3395) ) (!  (=> (select (|PolymorphicMapType_11349_10860_3395#PolymorphicMapType_11349| (select (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| Heap@@4) null (PredicateMaskField_7364 pm_f_16@@1))) o2_16@@1 f_40@@1) (= (select (|PolymorphicMapType_10800_7364_3395#PolymorphicMapType_10800| Heap@@4) o2_16@@1 f_40@@1) (select (|PolymorphicMapType_10800_7364_3395#PolymorphicMapType_10800| ExhaleHeap@@3) o2_16@@1 f_40@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10800_7364_3395#PolymorphicMapType_10800| ExhaleHeap@@3) o2_16@@1 f_40@@1))
))) (forall ((o2_16@@2 T@Ref) (f_40@@2 T@Field_7364_29113) ) (!  (=> (select (|PolymorphicMapType_11349_10860_29113#PolymorphicMapType_11349| (select (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| Heap@@4) null (PredicateMaskField_7364 pm_f_16@@1))) o2_16@@2 f_40@@2) (= (select (|PolymorphicMapType_10800_10860_29113#PolymorphicMapType_10800| Heap@@4) o2_16@@2 f_40@@2) (select (|PolymorphicMapType_10800_10860_29113#PolymorphicMapType_10800| ExhaleHeap@@3) o2_16@@2 f_40@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10800_10860_29113#PolymorphicMapType_10800| ExhaleHeap@@3) o2_16@@2 f_40@@2))
))) (forall ((o2_16@@3 T@Ref) (f_40@@3 T@Field_7364_29246) ) (!  (=> (select (|PolymorphicMapType_11349_10860_30424#PolymorphicMapType_11349| (select (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| Heap@@4) null (PredicateMaskField_7364 pm_f_16@@1))) o2_16@@3 f_40@@3) (= (select (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| Heap@@4) o2_16@@3 f_40@@3) (select (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| ExhaleHeap@@3) o2_16@@3 f_40@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| ExhaleHeap@@3) o2_16@@3 f_40@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_7364_29204 pm_f_16@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10800) (ExhaleHeap@@4 T@PolymorphicMapType_10800) (Mask@@15 T@PolymorphicMapType_10821) (pm_f_16@@2 T@Field_7364_29113) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_7364_29177 Mask@@15 null pm_f_16@@2) (IsWandField_7364_30951 pm_f_16@@2)) (and (and (and (and (forall ((o2_16@@4 T@Ref) (f_40@@4 T@Field_10860_53) ) (!  (=> (select (|PolymorphicMapType_11349_10860_53#PolymorphicMapType_11349| (select (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| Heap@@5) null (WandMaskField_7364 pm_f_16@@2))) o2_16@@4 f_40@@4) (= (select (|PolymorphicMapType_10800_7136_53#PolymorphicMapType_10800| Heap@@5) o2_16@@4 f_40@@4) (select (|PolymorphicMapType_10800_7136_53#PolymorphicMapType_10800| ExhaleHeap@@4) o2_16@@4 f_40@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10800_7136_53#PolymorphicMapType_10800| ExhaleHeap@@4) o2_16@@4 f_40@@4))
)) (forall ((o2_16@@5 T@Ref) (f_40@@5 T@Field_10873_10874) ) (!  (=> (select (|PolymorphicMapType_11349_10860_10874#PolymorphicMapType_11349| (select (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| Heap@@5) null (WandMaskField_7364 pm_f_16@@2))) o2_16@@5 f_40@@5) (= (select (|PolymorphicMapType_10800_7139_7140#PolymorphicMapType_10800| Heap@@5) o2_16@@5 f_40@@5) (select (|PolymorphicMapType_10800_7139_7140#PolymorphicMapType_10800| ExhaleHeap@@4) o2_16@@5 f_40@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10800_7139_7140#PolymorphicMapType_10800| ExhaleHeap@@4) o2_16@@5 f_40@@5))
))) (forall ((o2_16@@6 T@Ref) (f_40@@6 T@Field_17295_3395) ) (!  (=> (select (|PolymorphicMapType_11349_10860_3395#PolymorphicMapType_11349| (select (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| Heap@@5) null (WandMaskField_7364 pm_f_16@@2))) o2_16@@6 f_40@@6) (= (select (|PolymorphicMapType_10800_7364_3395#PolymorphicMapType_10800| Heap@@5) o2_16@@6 f_40@@6) (select (|PolymorphicMapType_10800_7364_3395#PolymorphicMapType_10800| ExhaleHeap@@4) o2_16@@6 f_40@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10800_7364_3395#PolymorphicMapType_10800| ExhaleHeap@@4) o2_16@@6 f_40@@6))
))) (forall ((o2_16@@7 T@Ref) (f_40@@7 T@Field_7364_29113) ) (!  (=> (select (|PolymorphicMapType_11349_10860_29113#PolymorphicMapType_11349| (select (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| Heap@@5) null (WandMaskField_7364 pm_f_16@@2))) o2_16@@7 f_40@@7) (= (select (|PolymorphicMapType_10800_10860_29113#PolymorphicMapType_10800| Heap@@5) o2_16@@7 f_40@@7) (select (|PolymorphicMapType_10800_10860_29113#PolymorphicMapType_10800| ExhaleHeap@@4) o2_16@@7 f_40@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10800_10860_29113#PolymorphicMapType_10800| ExhaleHeap@@4) o2_16@@7 f_40@@7))
))) (forall ((o2_16@@8 T@Ref) (f_40@@8 T@Field_7364_29246) ) (!  (=> (select (|PolymorphicMapType_11349_10860_30424#PolymorphicMapType_11349| (select (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| Heap@@5) null (WandMaskField_7364 pm_f_16@@2))) o2_16@@8 f_40@@8) (= (select (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| Heap@@5) o2_16@@8 f_40@@8) (select (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| ExhaleHeap@@4) o2_16@@8 f_40@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| ExhaleHeap@@4) o2_16@@8 f_40@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_7364_30951 pm_f_16@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.189:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3008| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.562:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3008| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10800) (ExhaleHeap@@5 T@PolymorphicMapType_10800) (Mask@@16 T@PolymorphicMapType_10821) (o_34@@0 T@Ref) (f_40@@9 T@Field_7364_29246) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_7364_34951 Mask@@16 o_34@@0 f_40@@9) (= (select (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| Heap@@6) o_34@@0 f_40@@9) (select (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| ExhaleHeap@@5) o_34@@0 f_40@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| ExhaleHeap@@5) o_34@@0 f_40@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10800) (ExhaleHeap@@6 T@PolymorphicMapType_10800) (Mask@@17 T@PolymorphicMapType_10821) (o_34@@1 T@Ref) (f_40@@10 T@Field_7364_29113) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_7364_29177 Mask@@17 o_34@@1 f_40@@10) (= (select (|PolymorphicMapType_10800_10860_29113#PolymorphicMapType_10800| Heap@@7) o_34@@1 f_40@@10) (select (|PolymorphicMapType_10800_10860_29113#PolymorphicMapType_10800| ExhaleHeap@@6) o_34@@1 f_40@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_10800_10860_29113#PolymorphicMapType_10800| ExhaleHeap@@6) o_34@@1 f_40@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10800) (ExhaleHeap@@7 T@PolymorphicMapType_10800) (Mask@@18 T@PolymorphicMapType_10821) (o_34@@2 T@Ref) (f_40@@11 T@Field_10873_10874) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_7364_10874 Mask@@18 o_34@@2 f_40@@11) (= (select (|PolymorphicMapType_10800_7139_7140#PolymorphicMapType_10800| Heap@@8) o_34@@2 f_40@@11) (select (|PolymorphicMapType_10800_7139_7140#PolymorphicMapType_10800| ExhaleHeap@@7) o_34@@2 f_40@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_10800_7139_7140#PolymorphicMapType_10800| ExhaleHeap@@7) o_34@@2 f_40@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10800) (ExhaleHeap@@8 T@PolymorphicMapType_10800) (Mask@@19 T@PolymorphicMapType_10821) (o_34@@3 T@Ref) (f_40@@12 T@Field_10860_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_7364_53 Mask@@19 o_34@@3 f_40@@12) (= (select (|PolymorphicMapType_10800_7136_53#PolymorphicMapType_10800| Heap@@9) o_34@@3 f_40@@12) (select (|PolymorphicMapType_10800_7136_53#PolymorphicMapType_10800| ExhaleHeap@@8) o_34@@3 f_40@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_10800_7136_53#PolymorphicMapType_10800| ExhaleHeap@@8) o_34@@3 f_40@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10800) (ExhaleHeap@@9 T@PolymorphicMapType_10800) (Mask@@20 T@PolymorphicMapType_10821) (o_34@@4 T@Ref) (f_40@@13 T@Field_17295_3395) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_7364_3395 Mask@@20 o_34@@4 f_40@@13) (= (select (|PolymorphicMapType_10800_7364_3395#PolymorphicMapType_10800| Heap@@10) o_34@@4 f_40@@13) (select (|PolymorphicMapType_10800_7364_3395#PolymorphicMapType_10800| ExhaleHeap@@9) o_34@@4 f_40@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_10800_7364_3395#PolymorphicMapType_10800| ExhaleHeap@@9) o_34@@4 f_40@@13))
)))
(assert (forall ((s0@@0 T@Seq_3008) (s1@@0 T@Seq_3008) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_3008|)) (not (= s1@@0 |Seq#Empty_3008|))) (= (|Seq#Length_3008| (|Seq#Append_3008| s0@@0 s1@@0)) (+ (|Seq#Length_3008| s0@@0) (|Seq#Length_3008| s1@@0))))
 :qid |stdinbpl.239:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3008| (|Seq#Append_3008| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_7364_29246) ) (! (= (select (|PolymorphicMapType_10821_7364_33368#PolymorphicMapType_10821| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10821_7364_33368#PolymorphicMapType_10821| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_7364_29113) ) (! (= (select (|PolymorphicMapType_10821_7364_29113#PolymorphicMapType_10821| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10821_7364_29113#PolymorphicMapType_10821| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_10873_10874) ) (! (= (select (|PolymorphicMapType_10821_7364_10874#PolymorphicMapType_10821| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10821_7364_10874#PolymorphicMapType_10821| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_10860_53) ) (! (= (select (|PolymorphicMapType_10821_7364_53#PolymorphicMapType_10821| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10821_7364_53#PolymorphicMapType_10821| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_17295_3395) ) (! (= (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@7 T@Seq_3008) (t@@0 T@Seq_3008) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_3008| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_3008| s@@7)) (|Seq#Length_3008| s@@7)) n@@7) (= (|Seq#Drop_3008| (|Seq#Append_3008| s@@7 t@@0) n@@7) (|Seq#Drop_3008| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_3008| s@@7))))))
 :qid |stdinbpl.396:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3008| (|Seq#Append_3008| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10821) (SummandMask1 T@PolymorphicMapType_10821) (SummandMask2 T@PolymorphicMapType_10821) (o_2@@19 T@Ref) (f_4@@19 T@Field_7364_29246) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10821_7364_33368#PolymorphicMapType_10821| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_10821_7364_33368#PolymorphicMapType_10821| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_10821_7364_33368#PolymorphicMapType_10821| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10821_7364_33368#PolymorphicMapType_10821| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10821_7364_33368#PolymorphicMapType_10821| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10821_7364_33368#PolymorphicMapType_10821| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10821) (SummandMask1@@0 T@PolymorphicMapType_10821) (SummandMask2@@0 T@PolymorphicMapType_10821) (o_2@@20 T@Ref) (f_4@@20 T@Field_7364_29113) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10821_7364_29113#PolymorphicMapType_10821| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_10821_7364_29113#PolymorphicMapType_10821| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_10821_7364_29113#PolymorphicMapType_10821| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10821_7364_29113#PolymorphicMapType_10821| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10821_7364_29113#PolymorphicMapType_10821| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10821_7364_29113#PolymorphicMapType_10821| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10821) (SummandMask1@@1 T@PolymorphicMapType_10821) (SummandMask2@@1 T@PolymorphicMapType_10821) (o_2@@21 T@Ref) (f_4@@21 T@Field_10873_10874) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10821_7364_10874#PolymorphicMapType_10821| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_10821_7364_10874#PolymorphicMapType_10821| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_10821_7364_10874#PolymorphicMapType_10821| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10821_7364_10874#PolymorphicMapType_10821| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10821_7364_10874#PolymorphicMapType_10821| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10821_7364_10874#PolymorphicMapType_10821| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10821) (SummandMask1@@2 T@PolymorphicMapType_10821) (SummandMask2@@2 T@PolymorphicMapType_10821) (o_2@@22 T@Ref) (f_4@@22 T@Field_10860_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10821_7364_53#PolymorphicMapType_10821| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_10821_7364_53#PolymorphicMapType_10821| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_10821_7364_53#PolymorphicMapType_10821| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10821_7364_53#PolymorphicMapType_10821| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10821_7364_53#PolymorphicMapType_10821| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10821_7364_53#PolymorphicMapType_10821| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10821) (SummandMask1@@3 T@PolymorphicMapType_10821) (SummandMask2@@3 T@PolymorphicMapType_10821) (o_2@@23 T@Ref) (f_4@@23 T@Field_17295_3395) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3008| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3008| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.561:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3008| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_3008) (b T@Seq_3008) ) (!  (=> (|Seq#Equal_3008| a b) (= a b))
 :qid |stdinbpl.534:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3008| a b))
)))
(assert (forall ((a_2 T@IArrayDomainType) ) (! (>= (len_1 a_2) 0)
 :qid |stdinbpl.605:15|
 :skolemid |60|
 :pattern ( (len_1 a_2))
)))
(assert (forall ((s@@8 T@Seq_3008) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length_3008| s@@8))) (|Seq#ContainsTrigger_3008| s@@8 (|Seq#Index_3008| s@@8 i@@2)))
 :qid |stdinbpl.427:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3008| s@@8 i@@2))
)))
(assert (forall ((s0@@1 T@Seq_3008) (s1@@1 T@Seq_3008) ) (!  (and (=> (= s0@@1 |Seq#Empty_3008|) (= (|Seq#Append_3008| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_3008|) (= (|Seq#Append_3008| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.245:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3008| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_3008| (|Seq#Singleton_3008| t@@1) 0) t@@1)
 :qid |stdinbpl.249:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3008| t@@1))
)))
(assert (forall ((s@@9 T@Seq_3008) ) (! (<= 0 (|Seq#Length_3008| s@@9))
 :qid |stdinbpl.228:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3008| s@@9))
)))
(assert (forall ((a_2@@0 T@IArrayDomainType) (i@@3 Int) ) (! (= (loc a_2@@0 i@@3) (loc_limited a_2@@0 i@@3))
 :qid |stdinbpl.593:15|
 :skolemid |58|
 :pattern ( (loc a_2@@0 i@@3))
)))
(assert (forall ((s0@@2 T@Seq_3008) (s1@@2 T@Seq_3008) ) (!  (=> (|Seq#Equal_3008| s0@@2 s1@@2) (and (= (|Seq#Length_3008| s0@@2) (|Seq#Length_3008| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_3008| s0@@2))) (= (|Seq#Index_3008| s0@@2 j@@4) (|Seq#Index_3008| s1@@2 j@@4)))
 :qid |stdinbpl.524:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3008| s0@@2 j@@4))
 :pattern ( (|Seq#Index_3008| s1@@2 j@@4))
))))
 :qid |stdinbpl.521:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3008| s0@@2 s1@@2))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_3008| (|Seq#Singleton_3008| t@@2)) 1)
 :qid |stdinbpl.236:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3008| t@@2))
)))
(assert (forall ((s@@10 T@Seq_3008) (t@@3 T@Seq_3008) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_3008| s@@10))) (= (|Seq#Take_3008| (|Seq#Append_3008| s@@10 t@@3) n@@8) (|Seq#Take_3008| s@@10 n@@8)))
 :qid |stdinbpl.378:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3008| (|Seq#Append_3008| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_3008) (i@@4 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3008| s@@11))) (= (|Seq#Length_3008| (|Seq#Update_3008| s@@11 i@@4 v@@1)) (|Seq#Length_3008| s@@11)))
 :qid |stdinbpl.277:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3008| (|Seq#Update_3008| s@@11 i@@4 v@@1)))
 :pattern ( (|Seq#Length_3008| s@@11) (|Seq#Update_3008| s@@11 i@@4 v@@1))
)))
(assert (forall ((a_2@@1 T@IArrayDomainType) (i@@5 Int) ) (!  (and (= (first (loc a_2@@1 i@@5)) a_2@@1) (= (second (loc a_2@@1 i@@5)) i@@5))
 :qid |stdinbpl.599:15|
 :skolemid |59|
 :pattern ( (loc a_2@@1 i@@5))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10800) (o_3 T@Ref) (f_35 T@Field_7364_29113) (v@@2 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_10800 (|PolymorphicMapType_10800_7136_53#PolymorphicMapType_10800| Heap@@11) (|PolymorphicMapType_10800_7139_7140#PolymorphicMapType_10800| Heap@@11) (|PolymorphicMapType_10800_7364_3395#PolymorphicMapType_10800| Heap@@11) (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| Heap@@11) (store (|PolymorphicMapType_10800_10860_29113#PolymorphicMapType_10800| Heap@@11) o_3 f_35 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10800 (|PolymorphicMapType_10800_7136_53#PolymorphicMapType_10800| Heap@@11) (|PolymorphicMapType_10800_7139_7140#PolymorphicMapType_10800| Heap@@11) (|PolymorphicMapType_10800_7364_3395#PolymorphicMapType_10800| Heap@@11) (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| Heap@@11) (store (|PolymorphicMapType_10800_10860_29113#PolymorphicMapType_10800| Heap@@11) o_3 f_35 v@@2)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10800) (o_3@@0 T@Ref) (f_35@@0 T@Field_7364_29246) (v@@3 T@PolymorphicMapType_11349) ) (! (succHeap Heap@@12 (PolymorphicMapType_10800 (|PolymorphicMapType_10800_7136_53#PolymorphicMapType_10800| Heap@@12) (|PolymorphicMapType_10800_7139_7140#PolymorphicMapType_10800| Heap@@12) (|PolymorphicMapType_10800_7364_3395#PolymorphicMapType_10800| Heap@@12) (store (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| Heap@@12) o_3@@0 f_35@@0 v@@3) (|PolymorphicMapType_10800_10860_29113#PolymorphicMapType_10800| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10800 (|PolymorphicMapType_10800_7136_53#PolymorphicMapType_10800| Heap@@12) (|PolymorphicMapType_10800_7139_7140#PolymorphicMapType_10800| Heap@@12) (|PolymorphicMapType_10800_7364_3395#PolymorphicMapType_10800| Heap@@12) (store (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| Heap@@12) o_3@@0 f_35@@0 v@@3) (|PolymorphicMapType_10800_10860_29113#PolymorphicMapType_10800| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10800) (o_3@@1 T@Ref) (f_35@@1 T@Field_17295_3395) (v@@4 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_10800 (|PolymorphicMapType_10800_7136_53#PolymorphicMapType_10800| Heap@@13) (|PolymorphicMapType_10800_7139_7140#PolymorphicMapType_10800| Heap@@13) (store (|PolymorphicMapType_10800_7364_3395#PolymorphicMapType_10800| Heap@@13) o_3@@1 f_35@@1 v@@4) (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| Heap@@13) (|PolymorphicMapType_10800_10860_29113#PolymorphicMapType_10800| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10800 (|PolymorphicMapType_10800_7136_53#PolymorphicMapType_10800| Heap@@13) (|PolymorphicMapType_10800_7139_7140#PolymorphicMapType_10800| Heap@@13) (store (|PolymorphicMapType_10800_7364_3395#PolymorphicMapType_10800| Heap@@13) o_3@@1 f_35@@1 v@@4) (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| Heap@@13) (|PolymorphicMapType_10800_10860_29113#PolymorphicMapType_10800| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10800) (o_3@@2 T@Ref) (f_35@@2 T@Field_10873_10874) (v@@5 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_10800 (|PolymorphicMapType_10800_7136_53#PolymorphicMapType_10800| Heap@@14) (store (|PolymorphicMapType_10800_7139_7140#PolymorphicMapType_10800| Heap@@14) o_3@@2 f_35@@2 v@@5) (|PolymorphicMapType_10800_7364_3395#PolymorphicMapType_10800| Heap@@14) (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| Heap@@14) (|PolymorphicMapType_10800_10860_29113#PolymorphicMapType_10800| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10800 (|PolymorphicMapType_10800_7136_53#PolymorphicMapType_10800| Heap@@14) (store (|PolymorphicMapType_10800_7139_7140#PolymorphicMapType_10800| Heap@@14) o_3@@2 f_35@@2 v@@5) (|PolymorphicMapType_10800_7364_3395#PolymorphicMapType_10800| Heap@@14) (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| Heap@@14) (|PolymorphicMapType_10800_10860_29113#PolymorphicMapType_10800| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10800) (o_3@@3 T@Ref) (f_35@@3 T@Field_10860_53) (v@@6 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_10800 (store (|PolymorphicMapType_10800_7136_53#PolymorphicMapType_10800| Heap@@15) o_3@@3 f_35@@3 v@@6) (|PolymorphicMapType_10800_7139_7140#PolymorphicMapType_10800| Heap@@15) (|PolymorphicMapType_10800_7364_3395#PolymorphicMapType_10800| Heap@@15) (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| Heap@@15) (|PolymorphicMapType_10800_10860_29113#PolymorphicMapType_10800| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10800 (store (|PolymorphicMapType_10800_7136_53#PolymorphicMapType_10800| Heap@@15) o_3@@3 f_35@@3 v@@6) (|PolymorphicMapType_10800_7139_7140#PolymorphicMapType_10800| Heap@@15) (|PolymorphicMapType_10800_7364_3395#PolymorphicMapType_10800| Heap@@15) (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| Heap@@15) (|PolymorphicMapType_10800_10860_29113#PolymorphicMapType_10800| Heap@@15)))
)))
(assert (forall ((s@@12 T@Seq_3008) (t@@4 T@Seq_3008) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_3008| s@@12))) (= (|Seq#Drop_3008| (|Seq#Append_3008| s@@12 t@@4) n@@9) (|Seq#Append_3008| (|Seq#Drop_3008| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.392:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3008| (|Seq#Append_3008| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_3008) (n@@10 Int) (i@@6 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@6)) (< i@@6 (|Seq#Length_3008| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@6 n@@10) n@@10) i@@6) (= (|Seq#Index_3008| (|Seq#Drop_3008| s@@13 n@@10) (|Seq#Sub| i@@6 n@@10)) (|Seq#Index_3008| s@@13 i@@6))))
 :qid |stdinbpl.328:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3008| s@@13 n@@10) (|Seq#Index_3008| s@@13 i@@6))
)))
(assert (forall ((s0@@3 T@Seq_3008) (s1@@3 T@Seq_3008) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_3008|)) (not (= s1@@3 |Seq#Empty_3008|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_3008| s0@@3))) (= (|Seq#Index_3008| (|Seq#Append_3008| s0@@3 s1@@3) n@@11) (|Seq#Index_3008| s0@@3 n@@11)))
 :qid |stdinbpl.268:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3008| (|Seq#Append_3008| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_3008| s0@@3 n@@11) (|Seq#Append_3008| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3008) (s1@@4 T@Seq_3008) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_3008|)) (not (= s1@@4 |Seq#Empty_3008|))) (<= 0 m)) (< m (|Seq#Length_3008| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_3008| s0@@4)) (|Seq#Length_3008| s0@@4)) m) (= (|Seq#Index_3008| (|Seq#Append_3008| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_3008| s0@@4))) (|Seq#Index_3008| s1@@4 m))))
 :qid |stdinbpl.273:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3008| s1@@4 m) (|Seq#Append_3008| s0@@4 s1@@4))
)))
(assert (forall ((o_3@@4 T@Ref) (f_8 T@Field_10873_10874) (Heap@@16 T@PolymorphicMapType_10800) ) (!  (=> (select (|PolymorphicMapType_10800_7136_53#PolymorphicMapType_10800| Heap@@16) o_3@@4 $allocated) (select (|PolymorphicMapType_10800_7136_53#PolymorphicMapType_10800| Heap@@16) (select (|PolymorphicMapType_10800_7139_7140#PolymorphicMapType_10800| Heap@@16) o_3@@4 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10800_7139_7140#PolymorphicMapType_10800| Heap@@16) o_3@@4 f_8))
)))
(assert (forall ((s@@14 T@Seq_3008) (x@@1 Int) (i@@7 Int) ) (!  (=> (and (and (<= 0 i@@7) (< i@@7 (|Seq#Length_3008| s@@14))) (= (|Seq#Index_3008| s@@14 i@@7) x@@1)) (|Seq#Contains_3008| s@@14 x@@1))
 :qid |stdinbpl.425:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3008| s@@14 x@@1) (|Seq#Index_3008| s@@14 i@@7))
)))
(assert (forall ((s0@@5 T@Seq_3008) (s1@@5 T@Seq_3008) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_3008| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3008| s0@@5 s1@@5))) (not (= (|Seq#Length_3008| s0@@5) (|Seq#Length_3008| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3008| s0@@5 s1@@5))) (= (|Seq#Length_3008| s0@@5) (|Seq#Length_3008| s1@@5))) (= (|Seq#SkolemDiff_3008| s0@@5 s1@@5) (|Seq#SkolemDiff_3008| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_3008| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_3008| s0@@5 s1@@5) (|Seq#Length_3008| s0@@5))) (not (= (|Seq#Index_3008| s0@@5 (|Seq#SkolemDiff_3008| s0@@5 s1@@5)) (|Seq#Index_3008| s1@@5 (|Seq#SkolemDiff_3008| s0@@5 s1@@5))))))
 :qid |stdinbpl.529:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3008| s0@@5 s1@@5))
)))
(assert (forall ((p@@1 T@Field_7364_29113) (v_1@@0 T@FrameType) (q T@Field_7364_29113) (w@@0 T@FrameType) (r T@Field_7364_29113) (u T@FrameType) ) (!  (=> (and (InsidePredicate_10860_10860 p@@1 v_1@@0 q w@@0) (InsidePredicate_10860_10860 q w@@0 r u)) (InsidePredicate_10860_10860 p@@1 v_1@@0 r u))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10860_10860 p@@1 v_1@@0 q w@@0) (InsidePredicate_10860_10860 q w@@0 r u))
)))
(assert (forall ((a_2@@2 T@IArrayDomainType) (i@@8 Int) (j_9 Int) ) (!  (=> (and (>= i@@8 0) (and (>= j_9 0) (and (< i@@8 (len_1 a_2@@2)) (and (< j_9 (len_1 a_2@@2)) (not (= i@@8 j_9)))))) (not (= (loc a_2@@2 i@@8) (loc a_2@@2 j_9))))
 :qid |stdinbpl.611:15|
 :skolemid |61|
 :pattern ( (loc a_2@@2 i@@8) (loc a_2@@2 j_9))
)))
(assert (forall ((a_2@@3 T@IArrayDomainType) (i@@9 Int) (j_9@@0 Int) ) (!  (=> (and (>= i@@9 0) (and (>= j_9@@0 0) (and (< i@@9 (len_1 a_2@@3)) (and (< j_9@@0 (len_1 a_2@@3)) (not (= i@@9 j_9@@0)))))) (not (= (loc_limited a_2@@3 i@@9) (loc_limited a_2@@3 j_9@@0))))
 :qid |stdinbpl.617:15|
 :skolemid |62|
 :pattern ( (loc_limited a_2@@3 i@@9) (loc_limited a_2@@3 j_9@@0))
)))
(assert (forall ((s@@15 T@Seq_3008) ) (!  (=> (= (|Seq#Length_3008| s@@15) 0) (= s@@15 |Seq#Empty_3008|))
 :qid |stdinbpl.232:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3008| s@@15))
)))
(assert (forall ((s@@16 T@Seq_3008) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_3008| s@@16 n@@12) |Seq#Empty_3008|))
 :qid |stdinbpl.408:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3008| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun n@@13 () Int)
(declare-fun a_2@@4 () T@IArrayDomainType)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_10821)
(declare-fun PostHeap@0 () T@PolymorphicMapType_10800)
(declare-fun QPMask@0 () T@PolymorphicMapType_10821)
(declare-fun Heap@0 () T@PolymorphicMapType_10800)
(declare-fun Heap@@17 () T@PolymorphicMapType_10800)
(declare-fun neverTriggered3 (Int) Bool)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_10821)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
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
 (=> (= (ControlFlow 0 0) 19) (let ((anon9_Else_correct  (and (=> (= (ControlFlow 0 11) (- 0 14)) (forall ((i_3 Int) (i_3_1 Int) ) (!  (=> (and (and (and (and (not (= i_3 i_3_1)) (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) i_3)) (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) i_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@4 i_3) (loc a_2@@4 i_3_1))))
 :qid |stdinbpl.712:15|
 :skolemid |69|
))) (=> (forall ((i_3@@0 Int) (i_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3@@0 i_3_1@@0)) (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) i_3@@0)) (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) i_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@4 i_3@@0) (loc a_2@@4 i_3_1@@0))))
 :qid |stdinbpl.712:15|
 :skolemid |69|
)) (=> (and (and (forall ((i_3@@1 Int) ) (!  (=> (and (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) i_3@@1) (< NoPerm FullPerm)) (and (qpRange2 (loc a_2@@4 i_3@@1)) (= (invRecv2 (loc a_2@@4 i_3@@1)) i_3@@1)))
 :qid |stdinbpl.718:22|
 :skolemid |70|
 :pattern ( (loc a_2@@4 i_3@@1))
 :pattern ( (|Seq#ContainsTrigger_3008| (|Seq#Range| 0 n@@13) i_3@@1))
 :pattern ( (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) i_3@@1))
 :pattern ( (loc a_2@@4 i_3@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) (invRecv2 o_4)) (< NoPerm FullPerm)) (qpRange2 o_4)) (= (loc a_2@@4 (invRecv2 o_4)) o_4))
 :qid |stdinbpl.722:22|
 :skolemid |71|
 :pattern ( (invRecv2 o_4))
))) (and (forall ((i_3@@2 Int) ) (!  (=> (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) i_3@@2) (not (= (loc a_2@@4 i_3@@2) null)))
 :qid |stdinbpl.728:22|
 :skolemid |72|
 :pattern ( (loc a_2@@4 i_3@@2))
 :pattern ( (|Seq#ContainsTrigger_3008| (|Seq#Range| 0 n@@13) i_3@@2))
 :pattern ( (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) i_3@@2))
 :pattern ( (loc a_2@@4 i_3@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) (invRecv2 o_4@@0)) (< NoPerm FullPerm)) (qpRange2 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@4 (invRecv2 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| QPMask@2) o_4@@0 val) (+ (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| ZeroMask) o_4@@0 val) FullPerm)))) (=> (not (and (and (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) (invRecv2 o_4@@0)) (< NoPerm FullPerm)) (qpRange2 o_4@@0))) (= (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| QPMask@2) o_4@@0 val) (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| ZeroMask) o_4@@0 val))))
 :qid |stdinbpl.734:22|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| QPMask@2) o_4@@0 val))
)))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_10860_53) ) (!  (=> true (= (select (|PolymorphicMapType_10821_7364_53#PolymorphicMapType_10821| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_10821_7364_53#PolymorphicMapType_10821| QPMask@2) o_4@@1 f_5)))
 :qid |stdinbpl.738:29|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_10821_7364_53#PolymorphicMapType_10821| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_10821_7364_53#PolymorphicMapType_10821| QPMask@2) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_10873_10874) ) (!  (=> true (= (select (|PolymorphicMapType_10821_7364_10874#PolymorphicMapType_10821| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_10821_7364_10874#PolymorphicMapType_10821| QPMask@2) o_4@@2 f_5@@0)))
 :qid |stdinbpl.738:29|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_10821_7364_10874#PolymorphicMapType_10821| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_10821_7364_10874#PolymorphicMapType_10821| QPMask@2) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_17295_3395) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| QPMask@2) o_4@@3 f_5@@1)))
 :qid |stdinbpl.738:29|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| QPMask@2) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_7364_29113) ) (!  (=> true (= (select (|PolymorphicMapType_10821_7364_29113#PolymorphicMapType_10821| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_10821_7364_29113#PolymorphicMapType_10821| QPMask@2) o_4@@4 f_5@@2)))
 :qid |stdinbpl.738:29|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_10821_7364_29113#PolymorphicMapType_10821| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_10821_7364_29113#PolymorphicMapType_10821| QPMask@2) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_7364_29246) ) (!  (=> true (= (select (|PolymorphicMapType_10821_7364_33368#PolymorphicMapType_10821| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_10821_7364_33368#PolymorphicMapType_10821| QPMask@2) o_4@@5 f_5@@3)))
 :qid |stdinbpl.738:29|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_10821_7364_33368#PolymorphicMapType_10821| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_10821_7364_33368#PolymorphicMapType_10821| QPMask@2) o_4@@5 f_5@@3))
))) (and (state PostHeap@0 QPMask@2) (state PostHeap@0 QPMask@2))) (and (=> (= (ControlFlow 0 11) (- 0 13)) (HasDirectPerm_7364_3395 QPMask@2 (loc a_2@@4 1) val)) (=> (HasDirectPerm_7364_3395 QPMask@2 (loc a_2@@4 1) val) (and (=> (= (ControlFlow 0 11) (- 0 12)) (HasDirectPerm_7364_3395 QPMask@2 (loc a_2@@4 0) val)) (=> (HasDirectPerm_7364_3395 QPMask@2 (loc a_2@@4 0) val) (=> (= (ControlFlow 0 11) (- 0 10)) (HasDirectPerm_7364_3395 QPMask@0 (loc a_2@@4 1) val))))))))))))
(let ((anon9_Then_correct true))
(let ((anon8_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 15) 9) anon9_Then_correct) (=> (= (ControlFlow 0 15) 11) anon9_Else_correct)))))
(let ((anon8_Else_correct  (and (=> (= (ControlFlow 0 3) (- 0 8)) (HasDirectPerm_7364_3395 QPMask@0 (loc a_2@@4 0) val)) (=> (HasDirectPerm_7364_3395 QPMask@0 (loc a_2@@4 0) val) (and (=> (= (ControlFlow 0 3) (- 0 7)) (HasDirectPerm_7364_3395 QPMask@0 (loc a_2@@4 1) val)) (=> (HasDirectPerm_7364_3395 QPMask@0 (loc a_2@@4 1) val) (and (=> (= (ControlFlow 0 3) (- 0 6)) (= FullPerm (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| QPMask@0) (loc a_2@@4 1) val))) (=> (= FullPerm (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| QPMask@0) (loc a_2@@4 1) val)) (=> (and (= Heap@0 (PolymorphicMapType_10800 (|PolymorphicMapType_10800_7136_53#PolymorphicMapType_10800| Heap@@17) (|PolymorphicMapType_10800_7139_7140#PolymorphicMapType_10800| Heap@@17) (store (|PolymorphicMapType_10800_7364_3395#PolymorphicMapType_10800| Heap@@17) (loc a_2@@4 1) val (+ (select (|PolymorphicMapType_10800_7364_3395#PolymorphicMapType_10800| Heap@@17) (loc a_2@@4 0) val) (select (|PolymorphicMapType_10800_7364_3395#PolymorphicMapType_10800| Heap@@17) (loc a_2@@4 1) val))) (|PolymorphicMapType_10800_7364_29290#PolymorphicMapType_10800| Heap@@17) (|PolymorphicMapType_10800_10860_29113#PolymorphicMapType_10800| Heap@@17))) (state Heap@0 QPMask@0)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (forall ((i_4_1 Int) (i_4_2 Int) ) (!  (=> (and (and (and (and (not (= i_4_1 i_4_2)) (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) i_4_1)) (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) i_4_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@4 i_4_1) (loc a_2@@4 i_4_2))))
 :qid |stdinbpl.781:17|
 :skolemid |75|
 :pattern ( (neverTriggered3 i_4_1) (neverTriggered3 i_4_2))
))) (=> (forall ((i_4_1@@0 Int) (i_4_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_4_1@@0 i_4_2@@0)) (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) i_4_1@@0)) (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) i_4_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@4 i_4_1@@0) (loc a_2@@4 i_4_2@@0))))
 :qid |stdinbpl.781:17|
 :skolemid |75|
 :pattern ( (neverTriggered3 i_4_1@@0) (neverTriggered3 i_4_2@@0))
)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (forall ((i_4_1@@1 Int) ) (!  (=> (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) i_4_1@@1) (>= (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| QPMask@0) (loc a_2@@4 i_4_1@@1) val) FullPerm))
 :qid |stdinbpl.788:17|
 :skolemid |76|
 :pattern ( (loc a_2@@4 i_4_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3008| (|Seq#Range| 0 n@@13) i_4_1@@1))
 :pattern ( (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) i_4_1@@1))
 :pattern ( (loc a_2@@4 i_4_1@@1))
))) (=> (forall ((i_4_1@@2 Int) ) (!  (=> (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) i_4_1@@2) (>= (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| QPMask@0) (loc a_2@@4 i_4_1@@2) val) FullPerm))
 :qid |stdinbpl.788:17|
 :skolemid |76|
 :pattern ( (loc a_2@@4 i_4_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3008| (|Seq#Range| 0 n@@13) i_4_1@@2))
 :pattern ( (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) i_4_1@@2))
 :pattern ( (loc a_2@@4 i_4_1@@2))
)) (=> (forall ((i_4_1@@3 Int) ) (!  (=> (and (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) i_4_1@@3) (< NoPerm FullPerm)) (and (qpRange3 (loc a_2@@4 i_4_1@@3)) (= (invRecv3 (loc a_2@@4 i_4_1@@3)) i_4_1@@3)))
 :qid |stdinbpl.794:22|
 :skolemid |77|
 :pattern ( (loc a_2@@4 i_4_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3008| (|Seq#Range| 0 n@@13) i_4_1@@3))
 :pattern ( (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) i_4_1@@3))
 :pattern ( (loc a_2@@4 i_4_1@@3))
)) (=> (and (forall ((o_4@@6 T@Ref) ) (!  (=> (and (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) (invRecv3 o_4@@6)) (and (< NoPerm FullPerm) (qpRange3 o_4@@6))) (= (loc a_2@@4 (invRecv3 o_4@@6)) o_4@@6))
 :qid |stdinbpl.798:22|
 :skolemid |78|
 :pattern ( (invRecv3 o_4@@6))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) (invRecv3 o_4@@7)) (and (< NoPerm FullPerm) (qpRange3 o_4@@7))) (and (= (loc a_2@@4 (invRecv3 o_4@@7)) o_4@@7) (= (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| QPMask@1) o_4@@7 val) (- (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| QPMask@0) o_4@@7 val) FullPerm)))) (=> (not (and (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) (invRecv3 o_4@@7)) (and (< NoPerm FullPerm) (qpRange3 o_4@@7)))) (= (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| QPMask@1) o_4@@7 val) (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| QPMask@0) o_4@@7 val))))
 :qid |stdinbpl.804:22|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| QPMask@1) o_4@@7 val))
))) (=> (and (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_10860_53) ) (!  (=> true (= (select (|PolymorphicMapType_10821_7364_53#PolymorphicMapType_10821| QPMask@0) o_4@@8 f_5@@4) (select (|PolymorphicMapType_10821_7364_53#PolymorphicMapType_10821| QPMask@1) o_4@@8 f_5@@4)))
 :qid |stdinbpl.810:29|
 :skolemid |80|
 :pattern ( (select (|PolymorphicMapType_10821_7364_53#PolymorphicMapType_10821| QPMask@1) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_10873_10874) ) (!  (=> true (= (select (|PolymorphicMapType_10821_7364_10874#PolymorphicMapType_10821| QPMask@0) o_4@@9 f_5@@5) (select (|PolymorphicMapType_10821_7364_10874#PolymorphicMapType_10821| QPMask@1) o_4@@9 f_5@@5)))
 :qid |stdinbpl.810:29|
 :skolemid |80|
 :pattern ( (select (|PolymorphicMapType_10821_7364_10874#PolymorphicMapType_10821| QPMask@1) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_17295_3395) ) (!  (=> (not (= f_5@@6 val)) (= (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| QPMask@0) o_4@@10 f_5@@6) (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| QPMask@1) o_4@@10 f_5@@6)))
 :qid |stdinbpl.810:29|
 :skolemid |80|
 :pattern ( (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| QPMask@1) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_7364_29113) ) (!  (=> true (= (select (|PolymorphicMapType_10821_7364_29113#PolymorphicMapType_10821| QPMask@0) o_4@@11 f_5@@7) (select (|PolymorphicMapType_10821_7364_29113#PolymorphicMapType_10821| QPMask@1) o_4@@11 f_5@@7)))
 :qid |stdinbpl.810:29|
 :skolemid |80|
 :pattern ( (select (|PolymorphicMapType_10821_7364_29113#PolymorphicMapType_10821| QPMask@1) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_7364_29246) ) (!  (=> true (= (select (|PolymorphicMapType_10821_7364_33368#PolymorphicMapType_10821| QPMask@0) o_4@@12 f_5@@8) (select (|PolymorphicMapType_10821_7364_33368#PolymorphicMapType_10821| QPMask@1) o_4@@12 f_5@@8)))
 :qid |stdinbpl.810:29|
 :skolemid |80|
 :pattern ( (select (|PolymorphicMapType_10821_7364_33368#PolymorphicMapType_10821| QPMask@1) o_4@@12 f_5@@8))
))) (= (ControlFlow 0 3) (- 0 2))) (= (select (|PolymorphicMapType_10800_7364_3395#PolymorphicMapType_10800| Heap@0) (loc a_2@@4 1) val) (+ (select (|PolymorphicMapType_10800_7364_3395#PolymorphicMapType_10800| Heap@0) (loc a_2@@4 0) val) (select (|PolymorphicMapType_10800_7364_3395#PolymorphicMapType_10800| Heap@@17) (loc a_2@@4 1) val)))))))))))))))))))
(let ((anon7_Else_correct  (and (=> (= (ControlFlow 0 16) (- 0 17)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) i_1)) (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) i_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@4 i_1) (loc a_2@@4 i_1_1))))
 :qid |stdinbpl.661:15|
 :skolemid |63|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) i_1@@0)) (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) i_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@4 i_1@@0) (loc a_2@@4 i_1_1@@0))))
 :qid |stdinbpl.661:15|
 :skolemid |63|
)) (=> (and (and (forall ((i_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) i_1@@1) (< NoPerm FullPerm)) (and (qpRange1 (loc a_2@@4 i_1@@1)) (= (invRecv1 (loc a_2@@4 i_1@@1)) i_1@@1)))
 :qid |stdinbpl.667:22|
 :skolemid |64|
 :pattern ( (loc a_2@@4 i_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3008| (|Seq#Range| 0 n@@13) i_1@@1))
 :pattern ( (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) i_1@@1))
 :pattern ( (loc a_2@@4 i_1@@1))
)) (forall ((o_4@@13 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) (invRecv1 o_4@@13)) (< NoPerm FullPerm)) (qpRange1 o_4@@13)) (= (loc a_2@@4 (invRecv1 o_4@@13)) o_4@@13))
 :qid |stdinbpl.671:22|
 :skolemid |65|
 :pattern ( (invRecv1 o_4@@13))
))) (and (forall ((i_1@@2 Int) ) (!  (=> (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) i_1@@2) (not (= (loc a_2@@4 i_1@@2) null)))
 :qid |stdinbpl.677:22|
 :skolemid |66|
 :pattern ( (loc a_2@@4 i_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3008| (|Seq#Range| 0 n@@13) i_1@@2))
 :pattern ( (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) i_1@@2))
 :pattern ( (loc a_2@@4 i_1@@2))
)) (forall ((o_4@@14 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) (invRecv1 o_4@@14)) (< NoPerm FullPerm)) (qpRange1 o_4@@14)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@4 (invRecv1 o_4@@14)) o_4@@14)) (= (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| QPMask@0) o_4@@14 val) (+ (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| ZeroMask) o_4@@14 val) FullPerm)))) (=> (not (and (and (|Seq#Contains_3008| (|Seq#Range| 0 n@@13) (invRecv1 o_4@@14)) (< NoPerm FullPerm)) (qpRange1 o_4@@14))) (= (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| QPMask@0) o_4@@14 val) (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| ZeroMask) o_4@@14 val))))
 :qid |stdinbpl.683:22|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| QPMask@0) o_4@@14 val))
)))) (=> (and (and (and (and (and (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_10860_53) ) (!  (=> true (= (select (|PolymorphicMapType_10821_7364_53#PolymorphicMapType_10821| ZeroMask) o_4@@15 f_5@@9) (select (|PolymorphicMapType_10821_7364_53#PolymorphicMapType_10821| QPMask@0) o_4@@15 f_5@@9)))
 :qid |stdinbpl.687:29|
 :skolemid |68|
 :pattern ( (select (|PolymorphicMapType_10821_7364_53#PolymorphicMapType_10821| ZeroMask) o_4@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_10821_7364_53#PolymorphicMapType_10821| QPMask@0) o_4@@15 f_5@@9))
)) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_10873_10874) ) (!  (=> true (= (select (|PolymorphicMapType_10821_7364_10874#PolymorphicMapType_10821| ZeroMask) o_4@@16 f_5@@10) (select (|PolymorphicMapType_10821_7364_10874#PolymorphicMapType_10821| QPMask@0) o_4@@16 f_5@@10)))
 :qid |stdinbpl.687:29|
 :skolemid |68|
 :pattern ( (select (|PolymorphicMapType_10821_7364_10874#PolymorphicMapType_10821| ZeroMask) o_4@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_10821_7364_10874#PolymorphicMapType_10821| QPMask@0) o_4@@16 f_5@@10))
))) (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_17295_3395) ) (!  (=> (not (= f_5@@11 val)) (= (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| ZeroMask) o_4@@17 f_5@@11) (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| QPMask@0) o_4@@17 f_5@@11)))
 :qid |stdinbpl.687:29|
 :skolemid |68|
 :pattern ( (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| ZeroMask) o_4@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_10821_7364_3395#PolymorphicMapType_10821| QPMask@0) o_4@@17 f_5@@11))
))) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_7364_29113) ) (!  (=> true (= (select (|PolymorphicMapType_10821_7364_29113#PolymorphicMapType_10821| ZeroMask) o_4@@18 f_5@@12) (select (|PolymorphicMapType_10821_7364_29113#PolymorphicMapType_10821| QPMask@0) o_4@@18 f_5@@12)))
 :qid |stdinbpl.687:29|
 :skolemid |68|
 :pattern ( (select (|PolymorphicMapType_10821_7364_29113#PolymorphicMapType_10821| ZeroMask) o_4@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_10821_7364_29113#PolymorphicMapType_10821| QPMask@0) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_7364_29246) ) (!  (=> true (= (select (|PolymorphicMapType_10821_7364_33368#PolymorphicMapType_10821| ZeroMask) o_4@@19 f_5@@13) (select (|PolymorphicMapType_10821_7364_33368#PolymorphicMapType_10821| QPMask@0) o_4@@19 f_5@@13)))
 :qid |stdinbpl.687:29|
 :skolemid |68|
 :pattern ( (select (|PolymorphicMapType_10821_7364_33368#PolymorphicMapType_10821| ZeroMask) o_4@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_10821_7364_33368#PolymorphicMapType_10821| QPMask@0) o_4@@19 f_5@@13))
))) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (=> (= (ControlFlow 0 16) 15) anon8_Then_correct) (=> (= (ControlFlow 0 16) 3) anon8_Else_correct))))))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (> n@@13 5) (state Heap@@17 ZeroMask))) (and (=> (= (ControlFlow 0 18) 1) anon7_Then_correct) (=> (= (ControlFlow 0 18) 16) anon7_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 19) 18) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
