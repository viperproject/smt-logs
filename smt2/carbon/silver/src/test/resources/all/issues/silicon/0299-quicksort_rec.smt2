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
(declare-sort T@Field_7299_53 0)
(declare-sort T@Field_7312_7313 0)
(declare-sort T@Field_13432_3156 0)
(declare-sort T@Field_4923_18904 0)
(declare-sort T@Field_4923_18771 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_7260 0)) (((PolymorphicMapType_7260 (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| (Array T@Ref T@Field_13432_3156 Real)) (|PolymorphicMapType_7260_4923_53#PolymorphicMapType_7260| (Array T@Ref T@Field_7299_53 Real)) (|PolymorphicMapType_7260_4923_7313#PolymorphicMapType_7260| (Array T@Ref T@Field_7312_7313 Real)) (|PolymorphicMapType_7260_4923_18771#PolymorphicMapType_7260| (Array T@Ref T@Field_4923_18771 Real)) (|PolymorphicMapType_7260_4923_23026#PolymorphicMapType_7260| (Array T@Ref T@Field_4923_18904 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7788 0)) (((PolymorphicMapType_7788 (|PolymorphicMapType_7788_7299_53#PolymorphicMapType_7788| (Array T@Ref T@Field_7299_53 Bool)) (|PolymorphicMapType_7788_7299_7313#PolymorphicMapType_7788| (Array T@Ref T@Field_7312_7313 Bool)) (|PolymorphicMapType_7788_7299_3156#PolymorphicMapType_7788| (Array T@Ref T@Field_13432_3156 Bool)) (|PolymorphicMapType_7788_7299_18771#PolymorphicMapType_7788| (Array T@Ref T@Field_4923_18771 Bool)) (|PolymorphicMapType_7788_7299_20082#PolymorphicMapType_7788| (Array T@Ref T@Field_4923_18904 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7239 0)) (((PolymorphicMapType_7239 (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| (Array T@Ref T@Field_7299_53 Bool)) (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| (Array T@Ref T@Field_7312_7313 T@Ref)) (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| (Array T@Ref T@Field_13432_3156 Int)) (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| (Array T@Ref T@Field_4923_18904 T@PolymorphicMapType_7788)) (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| (Array T@Ref T@Field_4923_18771 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_7299_53)
(declare-fun val () T@Field_13432_3156)
(declare-sort T@Seq_2939 0)
(declare-fun |Seq#Length_2939| (T@Seq_2939) Int)
(declare-fun |Seq#Drop_2939| (T@Seq_2939 Int) T@Seq_2939)
(declare-fun succHeap (T@PolymorphicMapType_7239 T@PolymorphicMapType_7239) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7239 T@PolymorphicMapType_7239) Bool)
(declare-fun state (T@PolymorphicMapType_7239 T@PolymorphicMapType_7260) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7260) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7788)
(declare-fun |Seq#Index_2939| (T@Seq_2939 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_2939| () T@Seq_2939)
(declare-fun |dummy'| (T@PolymorphicMapType_7239 Int) Bool)
(declare-fun dummyFunction_3335 (Bool) Bool)
(declare-fun |dummy#triggerStateless| (Int) Bool)
(declare-fun |Seq#Update_2939| (T@Seq_2939 Int Int) T@Seq_2939)
(declare-fun |Seq#Take_2939| (T@Seq_2939 Int) T@Seq_2939)
(declare-fun |Seq#Contains_2939| (T@Seq_2939 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2939)
(declare-fun |Seq#Skolem_2939| (T@Seq_2939 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7239 T@PolymorphicMapType_7239 T@PolymorphicMapType_7260) Bool)
(declare-fun IsPredicateField_4923_18862 (T@Field_4923_18771) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4923 (T@Field_4923_18771) T@Field_4923_18904)
(declare-fun HasDirectPerm_4923_18835 (T@PolymorphicMapType_7260 T@Ref T@Field_4923_18771) Bool)
(declare-fun IsWandField_4923_20609 (T@Field_4923_18771) Bool)
(declare-fun WandMaskField_4923 (T@Field_4923_18771) T@Field_4923_18904)
(declare-fun |Seq#Singleton_2939| (Int) T@Seq_2939)
(declare-fun dummy (T@PolymorphicMapType_7239 Int) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#Append_2939| (T@Seq_2939 T@Seq_2939) T@Seq_2939)
(declare-fun dummyHeap () T@PolymorphicMapType_7239)
(declare-fun ZeroMask () T@PolymorphicMapType_7260)
(declare-fun InsidePredicate_7299_7299 (T@Field_4923_18771 T@FrameType T@Field_4923_18771 T@FrameType) Bool)
(declare-fun IsPredicateField_4923_3156 (T@Field_13432_3156) Bool)
(declare-fun IsWandField_4923_3156 (T@Field_13432_3156) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4923_24155 (T@Field_4923_18904) Bool)
(declare-fun IsWandField_4923_24171 (T@Field_4923_18904) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4923_7313 (T@Field_7312_7313) Bool)
(declare-fun IsWandField_4923_7313 (T@Field_7312_7313) Bool)
(declare-fun IsPredicateField_4923_53 (T@Field_7299_53) Bool)
(declare-fun IsWandField_4923_53 (T@Field_7299_53) Bool)
(declare-fun HasDirectPerm_4923_24609 (T@PolymorphicMapType_7260 T@Ref T@Field_4923_18904) Bool)
(declare-fun HasDirectPerm_4923_7313 (T@PolymorphicMapType_7260 T@Ref T@Field_7312_7313) Bool)
(declare-fun HasDirectPerm_4923_53 (T@PolymorphicMapType_7260 T@Ref T@Field_7299_53) Bool)
(declare-fun HasDirectPerm_4923_3156 (T@PolymorphicMapType_7260 T@Ref T@Field_13432_3156) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7260 T@PolymorphicMapType_7260 T@PolymorphicMapType_7260) Bool)
(declare-fun |Seq#Equal_2939| (T@Seq_2939 T@Seq_2939) Bool)
(declare-fun |dummy#frame| (T@FrameType Int) Bool)
(declare-sort T@ArrayDomainType 0)
(declare-fun len_1 (T@ArrayDomainType) Int)
(declare-fun |Seq#ContainsTrigger_2939| (T@Seq_2939 Int) Bool)
(declare-fun loc (T@ArrayDomainType Int) T@Ref)
(declare-fun first (T@Ref) T@ArrayDomainType)
(declare-fun second (T@Ref) Int)
(declare-fun |Seq#SkolemDiff_2939| (T@Seq_2939 T@Seq_2939) Int)
(assert (forall ((s T@Seq_2939) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2939| s)) (= (|Seq#Length_2939| (|Seq#Drop_2939| s n)) (- (|Seq#Length_2939| s) n))) (=> (< (|Seq#Length_2939| s) n) (= (|Seq#Length_2939| (|Seq#Drop_2939| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2939| (|Seq#Drop_2939| s n)) (|Seq#Length_2939| s))))
 :qid |stdinbpl.297:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2939| (|Seq#Drop_2939| s n)))
 :pattern ( (|Seq#Length_2939| s) (|Seq#Drop_2939| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_7239) (Heap1 T@PolymorphicMapType_7239) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7239) (Mask T@PolymorphicMapType_7260) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7239) (Heap1@@0 T@PolymorphicMapType_7239) (Heap2 T@PolymorphicMapType_7239) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4923_18904) ) (!  (not (select (|PolymorphicMapType_7788_7299_20082#PolymorphicMapType_7788| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7788_7299_20082#PolymorphicMapType_7788| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4923_18771) ) (!  (not (select (|PolymorphicMapType_7788_7299_18771#PolymorphicMapType_7788| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7788_7299_18771#PolymorphicMapType_7788| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_13432_3156) ) (!  (not (select (|PolymorphicMapType_7788_7299_3156#PolymorphicMapType_7788| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7788_7299_3156#PolymorphicMapType_7788| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7312_7313) ) (!  (not (select (|PolymorphicMapType_7788_7299_7313#PolymorphicMapType_7788| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7788_7299_7313#PolymorphicMapType_7788| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7299_53) ) (!  (not (select (|PolymorphicMapType_7788_7299_53#PolymorphicMapType_7788| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7788_7299_53#PolymorphicMapType_7788| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@0 T@Seq_2939) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2939| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2939| (|Seq#Drop_2939| s@@0 n@@0) j) (|Seq#Index_2939| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.318:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2939| (|Seq#Drop_2939| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2939| |Seq#Empty_2939|) 0))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7239) (x Int) ) (! (dummyFunction_3335 (|dummy#triggerStateless| x))
 :qid |stdinbpl.614:15|
 :skolemid |61|
 :pattern ( (|dummy'| Heap@@0 x))
)))
(assert (forall ((s@@1 T@Seq_2939) (i Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_2939| s@@1))) (and (=> (= i n@@1) (= (|Seq#Index_2939| (|Seq#Update_2939| s@@1 i v) n@@1) v)) (=> (not (= i n@@1)) (= (|Seq#Index_2939| (|Seq#Update_2939| s@@1 i v) n@@1) (|Seq#Index_2939| s@@1 n@@1)))))
 :qid |stdinbpl.273:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2939| (|Seq#Update_2939| s@@1 i v) n@@1))
 :pattern ( (|Seq#Index_2939| s@@1 n@@1) (|Seq#Update_2939| s@@1 i v))
)))
(assert (forall ((s@@2 T@Seq_2939) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_2939| s@@2)) (= (|Seq#Length_2939| (|Seq#Take_2939| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_2939| s@@2) n@@2) (= (|Seq#Length_2939| (|Seq#Take_2939| s@@2 n@@2)) (|Seq#Length_2939| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_2939| (|Seq#Take_2939| s@@2 n@@2)) 0)))
 :qid |stdinbpl.284:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2939| (|Seq#Take_2939| s@@2 n@@2)))
 :pattern ( (|Seq#Take_2939| s@@2 n@@2) (|Seq#Length_2939| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_2939| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.558:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2939| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_2939) (x@@0 Int) ) (!  (=> (|Seq#Contains_2939| s@@3 x@@0) (and (and (<= 0 (|Seq#Skolem_2939| s@@3 x@@0)) (< (|Seq#Skolem_2939| s@@3 x@@0) (|Seq#Length_2939| s@@3))) (= (|Seq#Index_2939| s@@3 (|Seq#Skolem_2939| s@@3 x@@0)) x@@0)))
 :qid |stdinbpl.416:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2939| s@@3 x@@0))
)))
(assert (forall ((s@@4 T@Seq_2939) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_2939| s@@4 n@@3) s@@4))
 :qid |stdinbpl.400:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2939| s@@4 n@@3))
)))
(assert (forall ((i@@0 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@0 j@@0) (- i@@0 j@@0))
 :qid |stdinbpl.253:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@0 j@@0))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@1 j@@1) (+ i@@1 j@@1))
 :qid |stdinbpl.251:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@1 j@@1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7239) (ExhaleHeap T@PolymorphicMapType_7239) (Mask@@0 T@PolymorphicMapType_7260) (pm_f_9 T@Field_4923_18771) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4923_18835 Mask@@0 null pm_f_9) (IsPredicateField_4923_18862 pm_f_9)) (= (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@1) null (PredicateMaskField_4923 pm_f_9)) (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| ExhaleHeap) null (PredicateMaskField_4923 pm_f_9)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_4923_18862 pm_f_9) (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| ExhaleHeap) null (PredicateMaskField_4923 pm_f_9)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7239) (ExhaleHeap@@0 T@PolymorphicMapType_7239) (Mask@@1 T@PolymorphicMapType_7260) (pm_f_9@@0 T@Field_4923_18771) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4923_18835 Mask@@1 null pm_f_9@@0) (IsWandField_4923_20609 pm_f_9@@0)) (= (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@2) null (WandMaskField_4923 pm_f_9@@0)) (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| ExhaleHeap@@0) null (WandMaskField_4923 pm_f_9@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsWandField_4923_20609 pm_f_9@@0) (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| ExhaleHeap@@0) null (WandMaskField_4923 pm_f_9@@0)))
)))
(assert (forall ((x@@1 Int) (y Int) ) (! (= (|Seq#Contains_2939| (|Seq#Singleton_2939| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.541:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2939| (|Seq#Singleton_2939| x@@1) y))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7239) (Mask@@2 T@PolymorphicMapType_7260) (x@@2 Int) ) (!  (=> (and (state Heap@@3 Mask@@2) (< AssumeFunctionsAbove 0)) (dummy Heap@@3 x@@2))
 :qid |stdinbpl.620:15|
 :skolemid |62|
 :pattern ( (state Heap@@3 Mask@@2) (dummy Heap@@3 x@@2))
)))
(assert (forall ((s@@5 T@Seq_2939) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2939| s@@5))) (= (|Seq#Index_2939| (|Seq#Take_2939| s@@5 n@@4) j@@2) (|Seq#Index_2939| s@@5 j@@2)))
 :qid |stdinbpl.292:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2939| (|Seq#Take_2939| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2939| s@@5 j@@2) (|Seq#Take_2939| s@@5 n@@4))
)))
(assert (forall ((s@@6 T@Seq_2939) (t T@Seq_2939) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2939| s@@6))) (< n@@5 (|Seq#Length_2939| (|Seq#Append_2939| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2939| s@@6)) (|Seq#Length_2939| s@@6)) n@@5) (= (|Seq#Take_2939| (|Seq#Append_2939| s@@6 t) n@@5) (|Seq#Append_2939| s@@6 (|Seq#Take_2939| t (|Seq#Sub| n@@5 (|Seq#Length_2939| s@@6)))))))
 :qid |stdinbpl.377:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2939| (|Seq#Append_2939| s@@6 t) n@@5))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7239) (ExhaleHeap@@1 T@PolymorphicMapType_7239) (Mask@@3 T@PolymorphicMapType_7260) (o_27 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (=> (select (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@4) o_27 $allocated) (select (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| ExhaleHeap@@1) o_27 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (select (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| ExhaleHeap@@1) o_27 $allocated))
)))
(assert (forall ((p T@Field_4923_18771) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7299_7299 p v_1 p w))
 :qid |stdinbpl.195:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7299_7299 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_2939) (s1 T@Seq_2939) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_2939|)) (not (= s1 |Seq#Empty_2939|))) (<= (|Seq#Length_2939| s0) n@@6)) (< n@@6 (|Seq#Length_2939| (|Seq#Append_2939| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2939| s0)) (|Seq#Length_2939| s0)) n@@6) (= (|Seq#Index_2939| (|Seq#Append_2939| s0 s1) n@@6) (|Seq#Index_2939| s1 (|Seq#Sub| n@@6 (|Seq#Length_2939| s0))))))
 :qid |stdinbpl.264:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2939| (|Seq#Append_2939| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_4923_3156 val)))
(assert  (not (IsWandField_4923_3156 val)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7239) (ExhaleHeap@@2 T@PolymorphicMapType_7239) (Mask@@4 T@PolymorphicMapType_7260) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4) (succHeap Heap@@5 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_7260) (o_2@@4 T@Ref) (f_4@@4 T@Field_4923_18904) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_7260_4923_23026#PolymorphicMapType_7260| Mask@@5) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_4923_24155 f_4@@4))) (not (IsWandField_4923_24171 f_4@@4))) (<= (select (|PolymorphicMapType_7260_4923_23026#PolymorphicMapType_7260| Mask@@5) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_7260_4923_23026#PolymorphicMapType_7260| Mask@@5) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_7260) (o_2@@5 T@Ref) (f_4@@5 T@Field_4923_18771) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_7260_4923_18771#PolymorphicMapType_7260| Mask@@6) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4923_18862 f_4@@5))) (not (IsWandField_4923_20609 f_4@@5))) (<= (select (|PolymorphicMapType_7260_4923_18771#PolymorphicMapType_7260| Mask@@6) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_7260_4923_18771#PolymorphicMapType_7260| Mask@@6) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_7260) (o_2@@6 T@Ref) (f_4@@6 T@Field_7312_7313) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_7260_4923_7313#PolymorphicMapType_7260| Mask@@7) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4923_7313 f_4@@6))) (not (IsWandField_4923_7313 f_4@@6))) (<= (select (|PolymorphicMapType_7260_4923_7313#PolymorphicMapType_7260| Mask@@7) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_7260_4923_7313#PolymorphicMapType_7260| Mask@@7) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_7260) (o_2@@7 T@Ref) (f_4@@7 T@Field_7299_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_7260_4923_53#PolymorphicMapType_7260| Mask@@8) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4923_53 f_4@@7))) (not (IsWandField_4923_53 f_4@@7))) (<= (select (|PolymorphicMapType_7260_4923_53#PolymorphicMapType_7260| Mask@@8) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_7260_4923_53#PolymorphicMapType_7260| Mask@@8) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_7260) (o_2@@8 T@Ref) (f_4@@8 T@Field_13432_3156) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| Mask@@9) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_4923_3156 f_4@@8))) (not (IsWandField_4923_3156 f_4@@8))) (<= (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| Mask@@9) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| Mask@@9) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7260) (o_2@@9 T@Ref) (f_4@@9 T@Field_4923_18904) ) (! (= (HasDirectPerm_4923_24609 Mask@@10 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_7260_4923_23026#PolymorphicMapType_7260| Mask@@10) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4923_24609 Mask@@10 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7260) (o_2@@10 T@Ref) (f_4@@10 T@Field_4923_18771) ) (! (= (HasDirectPerm_4923_18835 Mask@@11 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_7260_4923_18771#PolymorphicMapType_7260| Mask@@11) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4923_18835 Mask@@11 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7260) (o_2@@11 T@Ref) (f_4@@11 T@Field_7312_7313) ) (! (= (HasDirectPerm_4923_7313 Mask@@12 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_7260_4923_7313#PolymorphicMapType_7260| Mask@@12) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4923_7313 Mask@@12 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7260) (o_2@@12 T@Ref) (f_4@@12 T@Field_7299_53) ) (! (= (HasDirectPerm_4923_53 Mask@@13 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_7260_4923_53#PolymorphicMapType_7260| Mask@@13) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4923_53 Mask@@13 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_7260) (o_2@@13 T@Ref) (f_4@@13 T@Field_13432_3156) ) (! (= (HasDirectPerm_4923_3156 Mask@@14 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| Mask@@14) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4923_3156 Mask@@14 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7239) (ExhaleHeap@@3 T@PolymorphicMapType_7239) (Mask@@15 T@PolymorphicMapType_7260) (pm_f_9@@1 T@Field_4923_18771) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@15) (=> (and (HasDirectPerm_4923_18835 Mask@@15 null pm_f_9@@1) (IsPredicateField_4923_18862 pm_f_9@@1)) (and (and (and (and (forall ((o2_9 T@Ref) (f_24 T@Field_7299_53) ) (!  (=> (select (|PolymorphicMapType_7788_7299_53#PolymorphicMapType_7788| (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@6) null (PredicateMaskField_4923 pm_f_9@@1))) o2_9 f_24) (= (select (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@6) o2_9 f_24) (select (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| ExhaleHeap@@3) o2_9 f_24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| ExhaleHeap@@3) o2_9 f_24))
)) (forall ((o2_9@@0 T@Ref) (f_24@@0 T@Field_7312_7313) ) (!  (=> (select (|PolymorphicMapType_7788_7299_7313#PolymorphicMapType_7788| (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@6) null (PredicateMaskField_4923 pm_f_9@@1))) o2_9@@0 f_24@@0) (= (select (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@6) o2_9@@0 f_24@@0) (select (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| ExhaleHeap@@3) o2_9@@0 f_24@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| ExhaleHeap@@3) o2_9@@0 f_24@@0))
))) (forall ((o2_9@@1 T@Ref) (f_24@@1 T@Field_13432_3156) ) (!  (=> (select (|PolymorphicMapType_7788_7299_3156#PolymorphicMapType_7788| (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@6) null (PredicateMaskField_4923 pm_f_9@@1))) o2_9@@1 f_24@@1) (= (select (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@6) o2_9@@1 f_24@@1) (select (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| ExhaleHeap@@3) o2_9@@1 f_24@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| ExhaleHeap@@3) o2_9@@1 f_24@@1))
))) (forall ((o2_9@@2 T@Ref) (f_24@@2 T@Field_4923_18771) ) (!  (=> (select (|PolymorphicMapType_7788_7299_18771#PolymorphicMapType_7788| (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@6) null (PredicateMaskField_4923 pm_f_9@@1))) o2_9@@2 f_24@@2) (= (select (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| Heap@@6) o2_9@@2 f_24@@2) (select (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| ExhaleHeap@@3) o2_9@@2 f_24@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| ExhaleHeap@@3) o2_9@@2 f_24@@2))
))) (forall ((o2_9@@3 T@Ref) (f_24@@3 T@Field_4923_18904) ) (!  (=> (select (|PolymorphicMapType_7788_7299_20082#PolymorphicMapType_7788| (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@6) null (PredicateMaskField_4923 pm_f_9@@1))) o2_9@@3 f_24@@3) (= (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@6) o2_9@@3 f_24@@3) (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| ExhaleHeap@@3) o2_9@@3 f_24@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| ExhaleHeap@@3) o2_9@@3 f_24@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@15) (IsPredicateField_4923_18862 pm_f_9@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7239) (ExhaleHeap@@4 T@PolymorphicMapType_7239) (Mask@@16 T@PolymorphicMapType_7260) (pm_f_9@@2 T@Field_4923_18771) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@16) (=> (and (HasDirectPerm_4923_18835 Mask@@16 null pm_f_9@@2) (IsWandField_4923_20609 pm_f_9@@2)) (and (and (and (and (forall ((o2_9@@4 T@Ref) (f_24@@4 T@Field_7299_53) ) (!  (=> (select (|PolymorphicMapType_7788_7299_53#PolymorphicMapType_7788| (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@7) null (WandMaskField_4923 pm_f_9@@2))) o2_9@@4 f_24@@4) (= (select (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@7) o2_9@@4 f_24@@4) (select (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| ExhaleHeap@@4) o2_9@@4 f_24@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| ExhaleHeap@@4) o2_9@@4 f_24@@4))
)) (forall ((o2_9@@5 T@Ref) (f_24@@5 T@Field_7312_7313) ) (!  (=> (select (|PolymorphicMapType_7788_7299_7313#PolymorphicMapType_7788| (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@7) null (WandMaskField_4923 pm_f_9@@2))) o2_9@@5 f_24@@5) (= (select (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@7) o2_9@@5 f_24@@5) (select (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| ExhaleHeap@@4) o2_9@@5 f_24@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| ExhaleHeap@@4) o2_9@@5 f_24@@5))
))) (forall ((o2_9@@6 T@Ref) (f_24@@6 T@Field_13432_3156) ) (!  (=> (select (|PolymorphicMapType_7788_7299_3156#PolymorphicMapType_7788| (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@7) null (WandMaskField_4923 pm_f_9@@2))) o2_9@@6 f_24@@6) (= (select (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@7) o2_9@@6 f_24@@6) (select (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| ExhaleHeap@@4) o2_9@@6 f_24@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| ExhaleHeap@@4) o2_9@@6 f_24@@6))
))) (forall ((o2_9@@7 T@Ref) (f_24@@7 T@Field_4923_18771) ) (!  (=> (select (|PolymorphicMapType_7788_7299_18771#PolymorphicMapType_7788| (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@7) null (WandMaskField_4923 pm_f_9@@2))) o2_9@@7 f_24@@7) (= (select (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| Heap@@7) o2_9@@7 f_24@@7) (select (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| ExhaleHeap@@4) o2_9@@7 f_24@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| ExhaleHeap@@4) o2_9@@7 f_24@@7))
))) (forall ((o2_9@@8 T@Ref) (f_24@@8 T@Field_4923_18904) ) (!  (=> (select (|PolymorphicMapType_7788_7299_20082#PolymorphicMapType_7788| (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@7) null (WandMaskField_4923 pm_f_9@@2))) o2_9@@8 f_24@@8) (= (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@7) o2_9@@8 f_24@@8) (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| ExhaleHeap@@4) o2_9@@8 f_24@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| ExhaleHeap@@4) o2_9@@8 f_24@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@16) (IsWandField_4923_20609 pm_f_9@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.183:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2939| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.556:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2939| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7239) (ExhaleHeap@@5 T@PolymorphicMapType_7239) (Mask@@17 T@PolymorphicMapType_7260) (o_27@@0 T@Ref) (f_24@@9 T@Field_4923_18904) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_4923_24609 Mask@@17 o_27@@0 f_24@@9) (= (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@8) o_27@@0 f_24@@9) (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| ExhaleHeap@@5) o_27@@0 f_24@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| ExhaleHeap@@5) o_27@@0 f_24@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7239) (ExhaleHeap@@6 T@PolymorphicMapType_7239) (Mask@@18 T@PolymorphicMapType_7260) (o_27@@1 T@Ref) (f_24@@10 T@Field_4923_18771) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_4923_18835 Mask@@18 o_27@@1 f_24@@10) (= (select (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| Heap@@9) o_27@@1 f_24@@10) (select (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| ExhaleHeap@@6) o_27@@1 f_24@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| ExhaleHeap@@6) o_27@@1 f_24@@10))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7239) (ExhaleHeap@@7 T@PolymorphicMapType_7239) (Mask@@19 T@PolymorphicMapType_7260) (o_27@@2 T@Ref) (f_24@@11 T@Field_7312_7313) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_4923_7313 Mask@@19 o_27@@2 f_24@@11) (= (select (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@10) o_27@@2 f_24@@11) (select (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| ExhaleHeap@@7) o_27@@2 f_24@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| ExhaleHeap@@7) o_27@@2 f_24@@11))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7239) (ExhaleHeap@@8 T@PolymorphicMapType_7239) (Mask@@20 T@PolymorphicMapType_7260) (o_27@@3 T@Ref) (f_24@@12 T@Field_7299_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_4923_53 Mask@@20 o_27@@3 f_24@@12) (= (select (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@11) o_27@@3 f_24@@12) (select (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| ExhaleHeap@@8) o_27@@3 f_24@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| ExhaleHeap@@8) o_27@@3 f_24@@12))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7239) (ExhaleHeap@@9 T@PolymorphicMapType_7239) (Mask@@21 T@PolymorphicMapType_7260) (o_27@@4 T@Ref) (f_24@@13 T@Field_13432_3156) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@21) (=> (HasDirectPerm_4923_3156 Mask@@21 o_27@@4 f_24@@13) (= (select (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@12) o_27@@4 f_24@@13) (select (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| ExhaleHeap@@9) o_27@@4 f_24@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@21) (select (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| ExhaleHeap@@9) o_27@@4 f_24@@13))
)))
(assert (forall ((s0@@0 T@Seq_2939) (s1@@0 T@Seq_2939) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_2939|)) (not (= s1@@0 |Seq#Empty_2939|))) (= (|Seq#Length_2939| (|Seq#Append_2939| s0@@0 s1@@0)) (+ (|Seq#Length_2939| s0@@0) (|Seq#Length_2939| s1@@0))))
 :qid |stdinbpl.233:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2939| (|Seq#Append_2939| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_4923_18904) ) (! (= (select (|PolymorphicMapType_7260_4923_23026#PolymorphicMapType_7260| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7260_4923_23026#PolymorphicMapType_7260| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_4923_18771) ) (! (= (select (|PolymorphicMapType_7260_4923_18771#PolymorphicMapType_7260| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7260_4923_18771#PolymorphicMapType_7260| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_7312_7313) ) (! (= (select (|PolymorphicMapType_7260_4923_7313#PolymorphicMapType_7260| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7260_4923_7313#PolymorphicMapType_7260| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_7299_53) ) (! (= (select (|PolymorphicMapType_7260_4923_53#PolymorphicMapType_7260| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7260_4923_53#PolymorphicMapType_7260| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_13432_3156) ) (! (= (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@7 T@Seq_2939) (t@@0 T@Seq_2939) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2939| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2939| s@@7)) (|Seq#Length_2939| s@@7)) n@@7) (= (|Seq#Drop_2939| (|Seq#Append_2939| s@@7 t@@0) n@@7) (|Seq#Drop_2939| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2939| s@@7))))))
 :qid |stdinbpl.390:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2939| (|Seq#Append_2939| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7260) (SummandMask1 T@PolymorphicMapType_7260) (SummandMask2 T@PolymorphicMapType_7260) (o_2@@19 T@Ref) (f_4@@19 T@Field_4923_18904) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7260_4923_23026#PolymorphicMapType_7260| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_7260_4923_23026#PolymorphicMapType_7260| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_7260_4923_23026#PolymorphicMapType_7260| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7260_4923_23026#PolymorphicMapType_7260| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7260_4923_23026#PolymorphicMapType_7260| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7260_4923_23026#PolymorphicMapType_7260| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7260) (SummandMask1@@0 T@PolymorphicMapType_7260) (SummandMask2@@0 T@PolymorphicMapType_7260) (o_2@@20 T@Ref) (f_4@@20 T@Field_4923_18771) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7260_4923_18771#PolymorphicMapType_7260| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_7260_4923_18771#PolymorphicMapType_7260| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_7260_4923_18771#PolymorphicMapType_7260| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7260_4923_18771#PolymorphicMapType_7260| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7260_4923_18771#PolymorphicMapType_7260| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7260_4923_18771#PolymorphicMapType_7260| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7260) (SummandMask1@@1 T@PolymorphicMapType_7260) (SummandMask2@@1 T@PolymorphicMapType_7260) (o_2@@21 T@Ref) (f_4@@21 T@Field_7312_7313) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7260_4923_7313#PolymorphicMapType_7260| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_7260_4923_7313#PolymorphicMapType_7260| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_7260_4923_7313#PolymorphicMapType_7260| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7260_4923_7313#PolymorphicMapType_7260| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7260_4923_7313#PolymorphicMapType_7260| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7260_4923_7313#PolymorphicMapType_7260| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7260) (SummandMask1@@2 T@PolymorphicMapType_7260) (SummandMask2@@2 T@PolymorphicMapType_7260) (o_2@@22 T@Ref) (f_4@@22 T@Field_7299_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7260_4923_53#PolymorphicMapType_7260| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_7260_4923_53#PolymorphicMapType_7260| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_7260_4923_53#PolymorphicMapType_7260| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7260_4923_53#PolymorphicMapType_7260| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7260_4923_53#PolymorphicMapType_7260| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7260_4923_53#PolymorphicMapType_7260| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7260) (SummandMask1@@3 T@PolymorphicMapType_7260) (SummandMask2@@3 T@PolymorphicMapType_7260) (o_2@@23 T@Ref) (f_4@@23 T@Field_13432_3156) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2939| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2939| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.555:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2939| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_2939) (b T@Seq_2939) ) (!  (=> (|Seq#Equal_2939| a b) (= a b))
 :qid |stdinbpl.528:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2939| a b))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7239) (Mask@@22 T@PolymorphicMapType_7260) (x@@3 Int) ) (!  (=> (state Heap@@13 Mask@@22) (= (|dummy'| Heap@@13 x@@3) (|dummy#frame| EmptyFrame x@@3)))
 :qid |stdinbpl.627:15|
 :skolemid |63|
 :pattern ( (state Heap@@13 Mask@@22) (|dummy'| Heap@@13 x@@3))
)))
(assert (forall ((a_2 T@ArrayDomainType) ) (! (>= (len_1 a_2) 0)
 :qid |stdinbpl.590:15|
 :skolemid |59|
 :pattern ( (len_1 a_2))
)))
(assert (forall ((s@@8 T@Seq_2939) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length_2939| s@@8))) (|Seq#ContainsTrigger_2939| s@@8 (|Seq#Index_2939| s@@8 i@@2)))
 :qid |stdinbpl.421:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2939| s@@8 i@@2))
)))
(assert (forall ((s0@@1 T@Seq_2939) (s1@@1 T@Seq_2939) ) (!  (and (=> (= s0@@1 |Seq#Empty_2939|) (= (|Seq#Append_2939| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_2939|) (= (|Seq#Append_2939| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.239:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2939| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2939| (|Seq#Singleton_2939| t@@1) 0) t@@1)
 :qid |stdinbpl.243:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2939| t@@1))
)))
(assert (forall ((s@@9 T@Seq_2939) ) (! (<= 0 (|Seq#Length_2939| s@@9))
 :qid |stdinbpl.222:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2939| s@@9))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7239) (x@@4 Int) ) (!  (and (= (dummy Heap@@14 x@@4) (|dummy'| Heap@@14 x@@4)) (dummyFunction_3335 (|dummy#triggerStateless| x@@4)))
 :qid |stdinbpl.610:15|
 :skolemid |60|
 :pattern ( (dummy Heap@@14 x@@4))
)))
(assert (forall ((s0@@2 T@Seq_2939) (s1@@2 T@Seq_2939) ) (!  (=> (|Seq#Equal_2939| s0@@2 s1@@2) (and (= (|Seq#Length_2939| s0@@2) (|Seq#Length_2939| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_2939| s0@@2))) (= (|Seq#Index_2939| s0@@2 j@@4) (|Seq#Index_2939| s1@@2 j@@4)))
 :qid |stdinbpl.518:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2939| s0@@2 j@@4))
 :pattern ( (|Seq#Index_2939| s1@@2 j@@4))
))))
 :qid |stdinbpl.515:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2939| s0@@2 s1@@2))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2939| (|Seq#Singleton_2939| t@@2)) 1)
 :qid |stdinbpl.230:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2939| t@@2))
)))
(assert (forall ((s@@10 T@Seq_2939) (t@@3 T@Seq_2939) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_2939| s@@10))) (= (|Seq#Take_2939| (|Seq#Append_2939| s@@10 t@@3) n@@8) (|Seq#Take_2939| s@@10 n@@8)))
 :qid |stdinbpl.372:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2939| (|Seq#Append_2939| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_2939) (i@@3 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_2939| s@@11))) (= (|Seq#Length_2939| (|Seq#Update_2939| s@@11 i@@3 v@@1)) (|Seq#Length_2939| s@@11)))
 :qid |stdinbpl.271:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2939| (|Seq#Update_2939| s@@11 i@@3 v@@1)))
 :pattern ( (|Seq#Length_2939| s@@11) (|Seq#Update_2939| s@@11 i@@3 v@@1))
)))
(assert (forall ((a_2@@0 T@ArrayDomainType) (i@@4 Int) ) (!  (and (= (first (loc a_2@@0 i@@4)) a_2@@0) (= (second (loc a_2@@0 i@@4)) i@@4))
 :qid |stdinbpl.584:15|
 :skolemid |58|
 :pattern ( (loc a_2@@0 i@@4))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7239) (o_20 T@Ref) (f_31 T@Field_4923_18771) (v@@2 T@FrameType) ) (! (succHeap Heap@@15 (PolymorphicMapType_7239 (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@15) (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@15) (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@15) (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@15) (store (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| Heap@@15) o_20 f_31 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7239 (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@15) (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@15) (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@15) (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@15) (store (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| Heap@@15) o_20 f_31 v@@2)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7239) (o_20@@0 T@Ref) (f_31@@0 T@Field_4923_18904) (v@@3 T@PolymorphicMapType_7788) ) (! (succHeap Heap@@16 (PolymorphicMapType_7239 (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@16) (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@16) (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@16) (store (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@16) o_20@@0 f_31@@0 v@@3) (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7239 (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@16) (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@16) (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@16) (store (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@16) o_20@@0 f_31@@0 v@@3) (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7239) (o_20@@1 T@Ref) (f_31@@1 T@Field_13432_3156) (v@@4 Int) ) (! (succHeap Heap@@17 (PolymorphicMapType_7239 (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@17) (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@17) (store (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@17) o_20@@1 f_31@@1 v@@4) (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@17) (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7239 (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@17) (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@17) (store (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@17) o_20@@1 f_31@@1 v@@4) (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@17) (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7239) (o_20@@2 T@Ref) (f_31@@2 T@Field_7312_7313) (v@@5 T@Ref) ) (! (succHeap Heap@@18 (PolymorphicMapType_7239 (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@18) (store (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@18) o_20@@2 f_31@@2 v@@5) (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@18) (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@18) (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7239 (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@18) (store (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@18) o_20@@2 f_31@@2 v@@5) (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@18) (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@18) (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7239) (o_20@@3 T@Ref) (f_31@@3 T@Field_7299_53) (v@@6 Bool) ) (! (succHeap Heap@@19 (PolymorphicMapType_7239 (store (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@19) o_20@@3 f_31@@3 v@@6) (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@19) (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@19) (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@19) (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7239 (store (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@19) o_20@@3 f_31@@3 v@@6) (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@19) (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@19) (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@19) (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| Heap@@19)))
)))
(assert (forall ((s@@12 T@Seq_2939) (t@@4 T@Seq_2939) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_2939| s@@12))) (= (|Seq#Drop_2939| (|Seq#Append_2939| s@@12 t@@4) n@@9) (|Seq#Append_2939| (|Seq#Drop_2939| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.386:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2939| (|Seq#Append_2939| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_2939) (n@@10 Int) (i@@5 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@5)) (< i@@5 (|Seq#Length_2939| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@5 n@@10) n@@10) i@@5) (= (|Seq#Index_2939| (|Seq#Drop_2939| s@@13 n@@10) (|Seq#Sub| i@@5 n@@10)) (|Seq#Index_2939| s@@13 i@@5))))
 :qid |stdinbpl.322:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2939| s@@13 n@@10) (|Seq#Index_2939| s@@13 i@@5))
)))
(assert (forall ((s0@@3 T@Seq_2939) (s1@@3 T@Seq_2939) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_2939|)) (not (= s1@@3 |Seq#Empty_2939|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_2939| s0@@3))) (= (|Seq#Index_2939| (|Seq#Append_2939| s0@@3 s1@@3) n@@11) (|Seq#Index_2939| s0@@3 n@@11)))
 :qid |stdinbpl.262:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2939| (|Seq#Append_2939| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_2939| s0@@3 n@@11) (|Seq#Append_2939| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2939) (s1@@4 T@Seq_2939) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_2939|)) (not (= s1@@4 |Seq#Empty_2939|))) (<= 0 m)) (< m (|Seq#Length_2939| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2939| s0@@4)) (|Seq#Length_2939| s0@@4)) m) (= (|Seq#Index_2939| (|Seq#Append_2939| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2939| s0@@4))) (|Seq#Index_2939| s1@@4 m))))
 :qid |stdinbpl.267:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2939| s1@@4 m) (|Seq#Append_2939| s0@@4 s1@@4))
)))
(assert (forall ((o_20@@4 T@Ref) (f_17 T@Field_7312_7313) (Heap@@20 T@PolymorphicMapType_7239) ) (!  (=> (select (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@20) o_20@@4 $allocated) (select (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@20) (select (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@20) o_20@@4 f_17) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@20) o_20@@4 f_17))
)))
(assert (forall ((s@@14 T@Seq_2939) (x@@5 Int) (i@@6 Int) ) (!  (=> (and (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2939| s@@14))) (= (|Seq#Index_2939| s@@14 i@@6) x@@5)) (|Seq#Contains_2939| s@@14 x@@5))
 :qid |stdinbpl.419:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2939| s@@14 x@@5) (|Seq#Index_2939| s@@14 i@@6))
)))
(assert (forall ((s0@@5 T@Seq_2939) (s1@@5 T@Seq_2939) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_2939| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_2939| s0@@5 s1@@5))) (not (= (|Seq#Length_2939| s0@@5) (|Seq#Length_2939| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_2939| s0@@5 s1@@5))) (= (|Seq#Length_2939| s0@@5) (|Seq#Length_2939| s1@@5))) (= (|Seq#SkolemDiff_2939| s0@@5 s1@@5) (|Seq#SkolemDiff_2939| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2939| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2939| s0@@5 s1@@5) (|Seq#Length_2939| s0@@5))) (not (= (|Seq#Index_2939| s0@@5 (|Seq#SkolemDiff_2939| s0@@5 s1@@5)) (|Seq#Index_2939| s1@@5 (|Seq#SkolemDiff_2939| s0@@5 s1@@5))))))
 :qid |stdinbpl.523:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2939| s0@@5 s1@@5))
)))
(assert (forall ((p@@1 T@Field_4923_18771) (v_1@@0 T@FrameType) (q T@Field_4923_18771) (w@@0 T@FrameType) (r T@Field_4923_18771) (u T@FrameType) ) (!  (=> (and (InsidePredicate_7299_7299 p@@1 v_1@@0 q w@@0) (InsidePredicate_7299_7299 q w@@0 r u)) (InsidePredicate_7299_7299 p@@1 v_1@@0 r u))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7299_7299 p@@1 v_1@@0 q w@@0) (InsidePredicate_7299_7299 q w@@0 r u))
)))
(assert (forall ((s@@15 T@Seq_2939) ) (!  (=> (= (|Seq#Length_2939| s@@15) 0) (= s@@15 |Seq#Empty_2939|))
 :qid |stdinbpl.226:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2939| s@@15))
)))
(assert (forall ((s@@16 T@Seq_2939) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_2939| s@@16 n@@12) |Seq#Empty_2939|))
 :qid |stdinbpl.402:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2939| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lo () Int)
(declare-fun i$0_8 () Int)
(declare-fun j_6 () Int)
(declare-fun hi () Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_7260)
(declare-fun a_2@@1 () T@ArrayDomainType)
(declare-fun PostHeap@0 () T@PolymorphicMapType_7239)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun i$0_2 () Int)
(declare-fun j_2_1 () Int)
(declare-fun Heap@@21 () T@PolymorphicMapType_7239)
(declare-fun neverTriggered3 (Int) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_7260)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_7260)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(set-info :boogie-vc-id quicksort_rec)
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
 (=> (= (ControlFlow 0 0) 23) (let ((anon8_correct true))
(let ((anon19_Else_correct  (=> (and (not (and (<= lo i$0_8) (and (<= i$0_8 j_6) (<= j_6 hi)))) (= (ControlFlow 0 16) 12)) anon8_correct)))
(let ((anon19_Then_correct  (=> (and (<= lo i$0_8) (and (<= i$0_8 j_6) (<= j_6 hi))) (and (=> (= (ControlFlow 0 13) (- 0 15)) (HasDirectPerm_4923_3156 QPMask@2 (loc a_2@@1 i$0_8) val)) (=> (HasDirectPerm_4923_3156 QPMask@2 (loc a_2@@1 i$0_8) val) (and (=> (= (ControlFlow 0 13) (- 0 14)) (HasDirectPerm_4923_3156 QPMask@2 (loc a_2@@1 j_6) val)) (=> (HasDirectPerm_4923_3156 QPMask@2 (loc a_2@@1 j_6) val) (=> (= (ControlFlow 0 13) 12) anon8_correct))))))))
(let ((anon18_Else_correct true))
(let ((anon17_Else_correct  (and (=> (= (ControlFlow 0 17) (- 0 18)) (forall ((i_3 Int) (i_3_1 Int) ) (!  (=> (and (and (and (and (not (= i_3 i_3_1)) (and (<= lo i_3) (<= i_3 hi))) (and (<= lo i_3_1) (<= i_3_1 hi))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_3) (loc a_2@@1 i_3_1))))
 :qid |stdinbpl.740:15|
 :skolemid |70|
))) (=> (forall ((i_3@@0 Int) (i_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3@@0 i_3_1@@0)) (and (<= lo i_3@@0) (<= i_3@@0 hi))) (and (<= lo i_3_1@@0) (<= i_3_1@@0 hi))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_3@@0) (loc a_2@@1 i_3_1@@0))))
 :qid |stdinbpl.740:15|
 :skolemid |70|
)) (=> (and (and (forall ((i_3@@1 Int) ) (!  (=> (and (and (<= lo i_3@@1) (<= i_3@@1 hi)) (< NoPerm FullPerm)) (and (qpRange2 (loc a_2@@1 i_3@@1)) (= (invRecv2 (loc a_2@@1 i_3@@1)) i_3@@1)))
 :qid |stdinbpl.746:22|
 :skolemid |71|
 :pattern ( (loc a_2@@1 i_3@@1))
 :pattern ( (select (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| PostHeap@0) (loc a_2@@1 i_3@@1) val))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (<= lo (invRecv2 o_4)) (<= (invRecv2 o_4) hi)) (< NoPerm FullPerm)) (qpRange2 o_4)) (= (loc a_2@@1 (invRecv2 o_4)) o_4))
 :qid |stdinbpl.750:22|
 :skolemid |72|
 :pattern ( (invRecv2 o_4))
))) (and (forall ((i_3@@2 Int) ) (!  (=> (and (<= lo i_3@@2) (<= i_3@@2 hi)) (not (= (loc a_2@@1 i_3@@2) null)))
 :qid |stdinbpl.756:22|
 :skolemid |73|
 :pattern ( (loc a_2@@1 i_3@@2))
 :pattern ( (select (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| PostHeap@0) (loc a_2@@1 i_3@@2) val))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (and (<= lo (invRecv2 o_4@@0)) (<= (invRecv2 o_4@@0) hi)) (< NoPerm FullPerm)) (qpRange2 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv2 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| QPMask@2) o_4@@0 val) (+ (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| ZeroMask) o_4@@0 val) FullPerm)))) (=> (not (and (and (and (<= lo (invRecv2 o_4@@0)) (<= (invRecv2 o_4@@0) hi)) (< NoPerm FullPerm)) (qpRange2 o_4@@0))) (= (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| QPMask@2) o_4@@0 val) (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| ZeroMask) o_4@@0 val))))
 :qid |stdinbpl.762:22|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| QPMask@2) o_4@@0 val))
)))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_7299_53) ) (!  (=> true (= (select (|PolymorphicMapType_7260_4923_53#PolymorphicMapType_7260| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_7260_4923_53#PolymorphicMapType_7260| QPMask@2) o_4@@1 f_5)))
 :qid |stdinbpl.766:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_7260_4923_53#PolymorphicMapType_7260| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_7260_4923_53#PolymorphicMapType_7260| QPMask@2) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_7312_7313) ) (!  (=> true (= (select (|PolymorphicMapType_7260_4923_7313#PolymorphicMapType_7260| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_7260_4923_7313#PolymorphicMapType_7260| QPMask@2) o_4@@2 f_5@@0)))
 :qid |stdinbpl.766:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_7260_4923_7313#PolymorphicMapType_7260| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_7260_4923_7313#PolymorphicMapType_7260| QPMask@2) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_13432_3156) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| QPMask@2) o_4@@3 f_5@@1)))
 :qid |stdinbpl.766:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| QPMask@2) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_4923_18771) ) (!  (=> true (= (select (|PolymorphicMapType_7260_4923_18771#PolymorphicMapType_7260| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_7260_4923_18771#PolymorphicMapType_7260| QPMask@2) o_4@@4 f_5@@2)))
 :qid |stdinbpl.766:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_7260_4923_18771#PolymorphicMapType_7260| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_7260_4923_18771#PolymorphicMapType_7260| QPMask@2) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_4923_18904) ) (!  (=> true (= (select (|PolymorphicMapType_7260_4923_23026#PolymorphicMapType_7260| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_7260_4923_23026#PolymorphicMapType_7260| QPMask@2) o_4@@5 f_5@@3)))
 :qid |stdinbpl.766:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_7260_4923_23026#PolymorphicMapType_7260| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_7260_4923_23026#PolymorphicMapType_7260| QPMask@2) o_4@@5 f_5@@3))
))) (and (state PostHeap@0 QPMask@2) (state PostHeap@0 QPMask@2))) (and (and (=> (= (ControlFlow 0 17) 11) anon18_Else_correct) (=> (= (ControlFlow 0 17) 13) anon19_Then_correct)) (=> (= (ControlFlow 0 17) 16) anon19_Else_correct))))))))
(let ((anon17_Then_correct true))
(let ((anon16_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 19) 10) anon17_Then_correct) (=> (= (ControlFlow 0 19) 17) anon17_Else_correct)))))
(let ((anon13_correct true))
(let ((anon21_Else_correct  (=> (and (not (and (<= lo i$0_2) (and (<= i$0_2 j_2_1) (<= j_2_1 hi)))) (= (ControlFlow 0 6) 3)) anon13_correct)))
(let ((anon21_Then_correct  (=> (and (<= lo i$0_2) (and (<= i$0_2 j_2_1) (<= j_2_1 hi))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (<= (select (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@21) (loc a_2@@1 i$0_2) val) (select (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@21) (loc a_2@@1 j_2_1) val))) (=> (<= (select (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@21) (loc a_2@@1 i$0_2) val) (select (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@21) (loc a_2@@1 j_2_1) val)) (=> (= (ControlFlow 0 4) 3) anon13_correct))))))
(let ((anon20_Else_correct true))
(let ((anon16_Else_correct  (and (=> (= (ControlFlow 0 7) (- 0 9)) (forall ((i_4_1 Int) (i_4_2 Int) ) (!  (=> (and (and (and (and (not (= i_4_1 i_4_2)) (and (<= lo i_4_1) (<= i_4_1 hi))) (and (<= lo i_4_2) (<= i_4_2 hi))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_4_1) (loc a_2@@1 i_4_2))))
 :qid |stdinbpl.803:17|
 :skolemid |77|
 :pattern ( (neverTriggered3 i_4_1) (neverTriggered3 i_4_2))
))) (=> (forall ((i_4_1@@0 Int) (i_4_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_4_1@@0 i_4_2@@0)) (and (<= lo i_4_1@@0) (<= i_4_1@@0 hi))) (and (<= lo i_4_2@@0) (<= i_4_2@@0 hi))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_4_1@@0) (loc a_2@@1 i_4_2@@0))))
 :qid |stdinbpl.803:17|
 :skolemid |77|
 :pattern ( (neverTriggered3 i_4_1@@0) (neverTriggered3 i_4_2@@0))
)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (forall ((i_4_1@@1 Int) ) (!  (=> (and (<= lo i_4_1@@1) (<= i_4_1@@1 hi)) (>= (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| QPMask@0) (loc a_2@@1 i_4_1@@1) val) FullPerm))
 :qid |stdinbpl.810:17|
 :skolemid |78|
 :pattern ( (loc a_2@@1 i_4_1@@1))
 :pattern ( (select (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@21) (loc a_2@@1 i_4_1@@1) val))
))) (=> (forall ((i_4_1@@2 Int) ) (!  (=> (and (<= lo i_4_1@@2) (<= i_4_1@@2 hi)) (>= (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| QPMask@0) (loc a_2@@1 i_4_1@@2) val) FullPerm))
 :qid |stdinbpl.810:17|
 :skolemid |78|
 :pattern ( (loc a_2@@1 i_4_1@@2))
 :pattern ( (select (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@21) (loc a_2@@1 i_4_1@@2) val))
)) (=> (forall ((i_4_1@@3 Int) ) (!  (=> (and (and (<= lo i_4_1@@3) (<= i_4_1@@3 hi)) (< NoPerm FullPerm)) (and (qpRange3 (loc a_2@@1 i_4_1@@3)) (= (invRecv3 (loc a_2@@1 i_4_1@@3)) i_4_1@@3)))
 :qid |stdinbpl.816:22|
 :skolemid |79|
 :pattern ( (loc a_2@@1 i_4_1@@3))
 :pattern ( (select (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@21) (loc a_2@@1 i_4_1@@3) val))
)) (=> (and (forall ((o_4@@6 T@Ref) ) (!  (=> (and (and (<= lo (invRecv3 o_4@@6)) (<= (invRecv3 o_4@@6) hi)) (and (< NoPerm FullPerm) (qpRange3 o_4@@6))) (= (loc a_2@@1 (invRecv3 o_4@@6)) o_4@@6))
 :qid |stdinbpl.820:22|
 :skolemid |80|
 :pattern ( (invRecv3 o_4@@6))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (and (<= lo (invRecv3 o_4@@7)) (<= (invRecv3 o_4@@7) hi)) (and (< NoPerm FullPerm) (qpRange3 o_4@@7))) (and (= (loc a_2@@1 (invRecv3 o_4@@7)) o_4@@7) (= (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| QPMask@1) o_4@@7 val) (- (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| QPMask@0) o_4@@7 val) FullPerm)))) (=> (not (and (and (<= lo (invRecv3 o_4@@7)) (<= (invRecv3 o_4@@7) hi)) (and (< NoPerm FullPerm) (qpRange3 o_4@@7)))) (= (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| QPMask@1) o_4@@7 val) (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| QPMask@0) o_4@@7 val))))
 :qid |stdinbpl.826:22|
 :skolemid |81|
 :pattern ( (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| QPMask@1) o_4@@7 val))
))) (=> (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_7299_53) ) (!  (=> true (= (select (|PolymorphicMapType_7260_4923_53#PolymorphicMapType_7260| QPMask@0) o_4@@8 f_5@@4) (select (|PolymorphicMapType_7260_4923_53#PolymorphicMapType_7260| QPMask@1) o_4@@8 f_5@@4)))
 :qid |stdinbpl.832:29|
 :skolemid |82|
 :pattern ( (select (|PolymorphicMapType_7260_4923_53#PolymorphicMapType_7260| QPMask@1) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_7312_7313) ) (!  (=> true (= (select (|PolymorphicMapType_7260_4923_7313#PolymorphicMapType_7260| QPMask@0) o_4@@9 f_5@@5) (select (|PolymorphicMapType_7260_4923_7313#PolymorphicMapType_7260| QPMask@1) o_4@@9 f_5@@5)))
 :qid |stdinbpl.832:29|
 :skolemid |82|
 :pattern ( (select (|PolymorphicMapType_7260_4923_7313#PolymorphicMapType_7260| QPMask@1) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_13432_3156) ) (!  (=> (not (= f_5@@6 val)) (= (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| QPMask@0) o_4@@10 f_5@@6) (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| QPMask@1) o_4@@10 f_5@@6)))
 :qid |stdinbpl.832:29|
 :skolemid |82|
 :pattern ( (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| QPMask@1) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_4923_18771) ) (!  (=> true (= (select (|PolymorphicMapType_7260_4923_18771#PolymorphicMapType_7260| QPMask@0) o_4@@11 f_5@@7) (select (|PolymorphicMapType_7260_4923_18771#PolymorphicMapType_7260| QPMask@1) o_4@@11 f_5@@7)))
 :qid |stdinbpl.832:29|
 :skolemid |82|
 :pattern ( (select (|PolymorphicMapType_7260_4923_18771#PolymorphicMapType_7260| QPMask@1) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_4923_18904) ) (!  (=> true (= (select (|PolymorphicMapType_7260_4923_23026#PolymorphicMapType_7260| QPMask@0) o_4@@12 f_5@@8) (select (|PolymorphicMapType_7260_4923_23026#PolymorphicMapType_7260| QPMask@1) o_4@@12 f_5@@8)))
 :qid |stdinbpl.832:29|
 :skolemid |82|
 :pattern ( (select (|PolymorphicMapType_7260_4923_23026#PolymorphicMapType_7260| QPMask@1) o_4@@12 f_5@@8))
))) (and (and (=> (= (ControlFlow 0 7) 2) anon20_Else_correct) (=> (= (ControlFlow 0 7) 4) anon21_Then_correct)) (=> (= (ControlFlow 0 7) 6) anon21_Else_correct)))))))))))
(let ((anon15_Else_correct  (and (=> (= (ControlFlow 0 20) (- 0 21)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (and (<= lo i_1) (<= i_1 hi))) (and (<= lo i_1_1) (<= i_1_1 hi))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_1) (loc a_2@@1 i_1_1))))
 :qid |stdinbpl.689:15|
 :skolemid |64|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (and (<= lo i_1@@0) (<= i_1@@0 hi))) (and (<= lo i_1_1@@0) (<= i_1_1@@0 hi))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_1@@0) (loc a_2@@1 i_1_1@@0))))
 :qid |stdinbpl.689:15|
 :skolemid |64|
)) (=> (and (and (forall ((i_1@@1 Int) ) (!  (=> (and (and (<= lo i_1@@1) (<= i_1@@1 hi)) (< NoPerm FullPerm)) (and (qpRange1 (loc a_2@@1 i_1@@1)) (= (invRecv1 (loc a_2@@1 i_1@@1)) i_1@@1)))
 :qid |stdinbpl.695:22|
 :skolemid |65|
 :pattern ( (loc a_2@@1 i_1@@1))
 :pattern ( (select (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@21) (loc a_2@@1 i_1@@1) val))
)) (forall ((o_4@@13 T@Ref) ) (!  (=> (and (and (and (<= lo (invRecv1 o_4@@13)) (<= (invRecv1 o_4@@13) hi)) (< NoPerm FullPerm)) (qpRange1 o_4@@13)) (= (loc a_2@@1 (invRecv1 o_4@@13)) o_4@@13))
 :qid |stdinbpl.699:22|
 :skolemid |66|
 :pattern ( (invRecv1 o_4@@13))
))) (and (forall ((i_1@@2 Int) ) (!  (=> (and (<= lo i_1@@2) (<= i_1@@2 hi)) (not (= (loc a_2@@1 i_1@@2) null)))
 :qid |stdinbpl.705:22|
 :skolemid |67|
 :pattern ( (loc a_2@@1 i_1@@2))
 :pattern ( (select (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@21) (loc a_2@@1 i_1@@2) val))
)) (forall ((o_4@@14 T@Ref) ) (!  (and (=> (and (and (and (<= lo (invRecv1 o_4@@14)) (<= (invRecv1 o_4@@14) hi)) (< NoPerm FullPerm)) (qpRange1 o_4@@14)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv1 o_4@@14)) o_4@@14)) (= (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| QPMask@0) o_4@@14 val) (+ (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| ZeroMask) o_4@@14 val) FullPerm)))) (=> (not (and (and (and (<= lo (invRecv1 o_4@@14)) (<= (invRecv1 o_4@@14) hi)) (< NoPerm FullPerm)) (qpRange1 o_4@@14))) (= (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| QPMask@0) o_4@@14 val) (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| ZeroMask) o_4@@14 val))))
 :qid |stdinbpl.711:22|
 :skolemid |68|
 :pattern ( (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| QPMask@0) o_4@@14 val))
)))) (=> (and (and (and (and (and (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_7299_53) ) (!  (=> true (= (select (|PolymorphicMapType_7260_4923_53#PolymorphicMapType_7260| ZeroMask) o_4@@15 f_5@@9) (select (|PolymorphicMapType_7260_4923_53#PolymorphicMapType_7260| QPMask@0) o_4@@15 f_5@@9)))
 :qid |stdinbpl.715:29|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_7260_4923_53#PolymorphicMapType_7260| ZeroMask) o_4@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_7260_4923_53#PolymorphicMapType_7260| QPMask@0) o_4@@15 f_5@@9))
)) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_7312_7313) ) (!  (=> true (= (select (|PolymorphicMapType_7260_4923_7313#PolymorphicMapType_7260| ZeroMask) o_4@@16 f_5@@10) (select (|PolymorphicMapType_7260_4923_7313#PolymorphicMapType_7260| QPMask@0) o_4@@16 f_5@@10)))
 :qid |stdinbpl.715:29|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_7260_4923_7313#PolymorphicMapType_7260| ZeroMask) o_4@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_7260_4923_7313#PolymorphicMapType_7260| QPMask@0) o_4@@16 f_5@@10))
))) (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_13432_3156) ) (!  (=> (not (= f_5@@11 val)) (= (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| ZeroMask) o_4@@17 f_5@@11) (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| QPMask@0) o_4@@17 f_5@@11)))
 :qid |stdinbpl.715:29|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| ZeroMask) o_4@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_7260_4923_3156#PolymorphicMapType_7260| QPMask@0) o_4@@17 f_5@@11))
))) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_4923_18771) ) (!  (=> true (= (select (|PolymorphicMapType_7260_4923_18771#PolymorphicMapType_7260| ZeroMask) o_4@@18 f_5@@12) (select (|PolymorphicMapType_7260_4923_18771#PolymorphicMapType_7260| QPMask@0) o_4@@18 f_5@@12)))
 :qid |stdinbpl.715:29|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_7260_4923_18771#PolymorphicMapType_7260| ZeroMask) o_4@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_7260_4923_18771#PolymorphicMapType_7260| QPMask@0) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_4923_18904) ) (!  (=> true (= (select (|PolymorphicMapType_7260_4923_23026#PolymorphicMapType_7260| ZeroMask) o_4@@19 f_5@@13) (select (|PolymorphicMapType_7260_4923_23026#PolymorphicMapType_7260| QPMask@0) o_4@@19 f_5@@13)))
 :qid |stdinbpl.715:29|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_7260_4923_23026#PolymorphicMapType_7260| ZeroMask) o_4@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_7260_4923_23026#PolymorphicMapType_7260| QPMask@0) o_4@@19 f_5@@13))
))) (and (state Heap@@21 QPMask@0) (state Heap@@21 QPMask@0))) (and (=> (= (ControlFlow 0 20) 19) anon16_Then_correct) (=> (= (ControlFlow 0 20) 7) anon16_Else_correct))))))))
(let ((anon15_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@21 ZeroMask) (=> (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (>= lo 0) (state Heap@@21 ZeroMask))) (and (=> (= (ControlFlow 0 22) 1) anon15_Then_correct) (=> (= (ControlFlow 0 22) 20) anon15_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 23) 22) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 4) (- 5))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid