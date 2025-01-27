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
(declare-fun dummy_1 (T@PolymorphicMapType_7239 Int) Bool)
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
(declare-fun len (T@ArrayDomainType) Int)
(declare-fun |Seq#ContainsTrigger_2939| (T@Seq_2939 Int) Bool)
(declare-fun loc (T@ArrayDomainType Int) T@Ref)
(declare-fun first_1 (T@Ref) T@ArrayDomainType)
(declare-fun second_1 (T@Ref) Int)
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
(assert (forall ((Heap@@1 T@PolymorphicMapType_7239) (ExhaleHeap T@PolymorphicMapType_7239) (Mask@@0 T@PolymorphicMapType_7260) (pm_f_32 T@Field_4923_18771) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4923_18835 Mask@@0 null pm_f_32) (IsPredicateField_4923_18862 pm_f_32)) (= (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@1) null (PredicateMaskField_4923 pm_f_32)) (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| ExhaleHeap) null (PredicateMaskField_4923 pm_f_32)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_4923_18862 pm_f_32) (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| ExhaleHeap) null (PredicateMaskField_4923 pm_f_32)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7239) (ExhaleHeap@@0 T@PolymorphicMapType_7239) (Mask@@1 T@PolymorphicMapType_7260) (pm_f_32@@0 T@Field_4923_18771) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4923_18835 Mask@@1 null pm_f_32@@0) (IsWandField_4923_20609 pm_f_32@@0)) (= (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@2) null (WandMaskField_4923 pm_f_32@@0)) (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| ExhaleHeap@@0) null (WandMaskField_4923 pm_f_32@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsWandField_4923_20609 pm_f_32@@0) (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| ExhaleHeap@@0) null (WandMaskField_4923 pm_f_32@@0)))
)))
(assert (forall ((x@@1 Int) (y Int) ) (! (= (|Seq#Contains_2939| (|Seq#Singleton_2939| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.541:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2939| (|Seq#Singleton_2939| x@@1) y))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7239) (Mask@@2 T@PolymorphicMapType_7260) (x@@2 Int) ) (!  (=> (and (state Heap@@3 Mask@@2) (< AssumeFunctionsAbove 0)) (dummy_1 Heap@@3 x@@2))
 :qid |stdinbpl.620:15|
 :skolemid |62|
 :pattern ( (state Heap@@3 Mask@@2) (dummy_1 Heap@@3 x@@2))
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
(assert (forall ((Heap@@4 T@PolymorphicMapType_7239) (ExhaleHeap@@1 T@PolymorphicMapType_7239) (Mask@@3 T@PolymorphicMapType_7260) (o_55 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (=> (select (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@4) o_55 $allocated) (select (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| ExhaleHeap@@1) o_55 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (select (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| ExhaleHeap@@1) o_55 $allocated))
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
(assert (forall ((Heap@@6 T@PolymorphicMapType_7239) (ExhaleHeap@@3 T@PolymorphicMapType_7239) (Mask@@15 T@PolymorphicMapType_7260) (pm_f_32@@1 T@Field_4923_18771) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@15) (=> (and (HasDirectPerm_4923_18835 Mask@@15 null pm_f_32@@1) (IsPredicateField_4923_18862 pm_f_32@@1)) (and (and (and (and (forall ((o2_32 T@Ref) (f_54 T@Field_7299_53) ) (!  (=> (select (|PolymorphicMapType_7788_7299_53#PolymorphicMapType_7788| (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@6) null (PredicateMaskField_4923 pm_f_32@@1))) o2_32 f_54) (= (select (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@6) o2_32 f_54) (select (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| ExhaleHeap@@3) o2_32 f_54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| ExhaleHeap@@3) o2_32 f_54))
)) (forall ((o2_32@@0 T@Ref) (f_54@@0 T@Field_7312_7313) ) (!  (=> (select (|PolymorphicMapType_7788_7299_7313#PolymorphicMapType_7788| (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@6) null (PredicateMaskField_4923 pm_f_32@@1))) o2_32@@0 f_54@@0) (= (select (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@6) o2_32@@0 f_54@@0) (select (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| ExhaleHeap@@3) o2_32@@0 f_54@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| ExhaleHeap@@3) o2_32@@0 f_54@@0))
))) (forall ((o2_32@@1 T@Ref) (f_54@@1 T@Field_13432_3156) ) (!  (=> (select (|PolymorphicMapType_7788_7299_3156#PolymorphicMapType_7788| (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@6) null (PredicateMaskField_4923 pm_f_32@@1))) o2_32@@1 f_54@@1) (= (select (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@6) o2_32@@1 f_54@@1) (select (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| ExhaleHeap@@3) o2_32@@1 f_54@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| ExhaleHeap@@3) o2_32@@1 f_54@@1))
))) (forall ((o2_32@@2 T@Ref) (f_54@@2 T@Field_4923_18771) ) (!  (=> (select (|PolymorphicMapType_7788_7299_18771#PolymorphicMapType_7788| (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@6) null (PredicateMaskField_4923 pm_f_32@@1))) o2_32@@2 f_54@@2) (= (select (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| Heap@@6) o2_32@@2 f_54@@2) (select (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| ExhaleHeap@@3) o2_32@@2 f_54@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| ExhaleHeap@@3) o2_32@@2 f_54@@2))
))) (forall ((o2_32@@3 T@Ref) (f_54@@3 T@Field_4923_18904) ) (!  (=> (select (|PolymorphicMapType_7788_7299_20082#PolymorphicMapType_7788| (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@6) null (PredicateMaskField_4923 pm_f_32@@1))) o2_32@@3 f_54@@3) (= (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@6) o2_32@@3 f_54@@3) (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| ExhaleHeap@@3) o2_32@@3 f_54@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| ExhaleHeap@@3) o2_32@@3 f_54@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@15) (IsPredicateField_4923_18862 pm_f_32@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7239) (ExhaleHeap@@4 T@PolymorphicMapType_7239) (Mask@@16 T@PolymorphicMapType_7260) (pm_f_32@@2 T@Field_4923_18771) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@16) (=> (and (HasDirectPerm_4923_18835 Mask@@16 null pm_f_32@@2) (IsWandField_4923_20609 pm_f_32@@2)) (and (and (and (and (forall ((o2_32@@4 T@Ref) (f_54@@4 T@Field_7299_53) ) (!  (=> (select (|PolymorphicMapType_7788_7299_53#PolymorphicMapType_7788| (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@7) null (WandMaskField_4923 pm_f_32@@2))) o2_32@@4 f_54@@4) (= (select (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@7) o2_32@@4 f_54@@4) (select (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| ExhaleHeap@@4) o2_32@@4 f_54@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| ExhaleHeap@@4) o2_32@@4 f_54@@4))
)) (forall ((o2_32@@5 T@Ref) (f_54@@5 T@Field_7312_7313) ) (!  (=> (select (|PolymorphicMapType_7788_7299_7313#PolymorphicMapType_7788| (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@7) null (WandMaskField_4923 pm_f_32@@2))) o2_32@@5 f_54@@5) (= (select (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@7) o2_32@@5 f_54@@5) (select (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| ExhaleHeap@@4) o2_32@@5 f_54@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| ExhaleHeap@@4) o2_32@@5 f_54@@5))
))) (forall ((o2_32@@6 T@Ref) (f_54@@6 T@Field_13432_3156) ) (!  (=> (select (|PolymorphicMapType_7788_7299_3156#PolymorphicMapType_7788| (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@7) null (WandMaskField_4923 pm_f_32@@2))) o2_32@@6 f_54@@6) (= (select (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@7) o2_32@@6 f_54@@6) (select (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| ExhaleHeap@@4) o2_32@@6 f_54@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| ExhaleHeap@@4) o2_32@@6 f_54@@6))
))) (forall ((o2_32@@7 T@Ref) (f_54@@7 T@Field_4923_18771) ) (!  (=> (select (|PolymorphicMapType_7788_7299_18771#PolymorphicMapType_7788| (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@7) null (WandMaskField_4923 pm_f_32@@2))) o2_32@@7 f_54@@7) (= (select (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| Heap@@7) o2_32@@7 f_54@@7) (select (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| ExhaleHeap@@4) o2_32@@7 f_54@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| ExhaleHeap@@4) o2_32@@7 f_54@@7))
))) (forall ((o2_32@@8 T@Ref) (f_54@@8 T@Field_4923_18904) ) (!  (=> (select (|PolymorphicMapType_7788_7299_20082#PolymorphicMapType_7788| (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@7) null (WandMaskField_4923 pm_f_32@@2))) o2_32@@8 f_54@@8) (= (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@7) o2_32@@8 f_54@@8) (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| ExhaleHeap@@4) o2_32@@8 f_54@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| ExhaleHeap@@4) o2_32@@8 f_54@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@16) (IsWandField_4923_20609 pm_f_32@@2))
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
(assert (forall ((Heap@@8 T@PolymorphicMapType_7239) (ExhaleHeap@@5 T@PolymorphicMapType_7239) (Mask@@17 T@PolymorphicMapType_7260) (o_55@@0 T@Ref) (f_54@@9 T@Field_4923_18904) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_4923_24609 Mask@@17 o_55@@0 f_54@@9) (= (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@8) o_55@@0 f_54@@9) (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| ExhaleHeap@@5) o_55@@0 f_54@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| ExhaleHeap@@5) o_55@@0 f_54@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7239) (ExhaleHeap@@6 T@PolymorphicMapType_7239) (Mask@@18 T@PolymorphicMapType_7260) (o_55@@1 T@Ref) (f_54@@10 T@Field_4923_18771) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_4923_18835 Mask@@18 o_55@@1 f_54@@10) (= (select (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| Heap@@9) o_55@@1 f_54@@10) (select (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| ExhaleHeap@@6) o_55@@1 f_54@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| ExhaleHeap@@6) o_55@@1 f_54@@10))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7239) (ExhaleHeap@@7 T@PolymorphicMapType_7239) (Mask@@19 T@PolymorphicMapType_7260) (o_55@@2 T@Ref) (f_54@@11 T@Field_7312_7313) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_4923_7313 Mask@@19 o_55@@2 f_54@@11) (= (select (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@10) o_55@@2 f_54@@11) (select (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| ExhaleHeap@@7) o_55@@2 f_54@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| ExhaleHeap@@7) o_55@@2 f_54@@11))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7239) (ExhaleHeap@@8 T@PolymorphicMapType_7239) (Mask@@20 T@PolymorphicMapType_7260) (o_55@@3 T@Ref) (f_54@@12 T@Field_7299_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_4923_53 Mask@@20 o_55@@3 f_54@@12) (= (select (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@11) o_55@@3 f_54@@12) (select (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| ExhaleHeap@@8) o_55@@3 f_54@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| ExhaleHeap@@8) o_55@@3 f_54@@12))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7239) (ExhaleHeap@@9 T@PolymorphicMapType_7239) (Mask@@21 T@PolymorphicMapType_7260) (o_55@@4 T@Ref) (f_54@@13 T@Field_13432_3156) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@21) (=> (HasDirectPerm_4923_3156 Mask@@21 o_55@@4 f_54@@13) (= (select (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@12) o_55@@4 f_54@@13) (select (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| ExhaleHeap@@9) o_55@@4 f_54@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@21) (select (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| ExhaleHeap@@9) o_55@@4 f_54@@13))
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
(assert (forall ((a_2 T@ArrayDomainType) ) (! (>= (len a_2) 0)
 :qid |stdinbpl.590:15|
 :skolemid |59|
 :pattern ( (len a_2))
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
(assert (forall ((Heap@@14 T@PolymorphicMapType_7239) (x@@4 Int) ) (!  (and (= (dummy_1 Heap@@14 x@@4) (|dummy'| Heap@@14 x@@4)) (dummyFunction_3335 (|dummy#triggerStateless| x@@4)))
 :qid |stdinbpl.610:15|
 :skolemid |60|
 :pattern ( (dummy_1 Heap@@14 x@@4))
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
(assert (forall ((a_2@@0 T@ArrayDomainType) (i@@4 Int) ) (!  (and (= (first_1 (loc a_2@@0 i@@4)) a_2@@0) (= (second_1 (loc a_2@@0 i@@4)) i@@4))
 :qid |stdinbpl.584:15|
 :skolemid |58|
 :pattern ( (loc a_2@@0 i@@4))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7239) (o_54 T@Ref) (f_8 T@Field_4923_18771) (v@@2 T@FrameType) ) (! (succHeap Heap@@15 (PolymorphicMapType_7239 (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@15) (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@15) (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@15) (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@15) (store (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| Heap@@15) o_54 f_8 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7239 (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@15) (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@15) (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@15) (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@15) (store (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| Heap@@15) o_54 f_8 v@@2)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7239) (o_54@@0 T@Ref) (f_8@@0 T@Field_4923_18904) (v@@3 T@PolymorphicMapType_7788) ) (! (succHeap Heap@@16 (PolymorphicMapType_7239 (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@16) (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@16) (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@16) (store (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@16) o_54@@0 f_8@@0 v@@3) (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7239 (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@16) (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@16) (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@16) (store (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@16) o_54@@0 f_8@@0 v@@3) (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7239) (o_54@@1 T@Ref) (f_8@@1 T@Field_13432_3156) (v@@4 Int) ) (! (succHeap Heap@@17 (PolymorphicMapType_7239 (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@17) (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@17) (store (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@17) o_54@@1 f_8@@1 v@@4) (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@17) (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7239 (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@17) (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@17) (store (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@17) o_54@@1 f_8@@1 v@@4) (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@17) (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7239) (o_54@@2 T@Ref) (f_8@@2 T@Field_7312_7313) (v@@5 T@Ref) ) (! (succHeap Heap@@18 (PolymorphicMapType_7239 (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@18) (store (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@18) o_54@@2 f_8@@2 v@@5) (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@18) (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@18) (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7239 (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@18) (store (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@18) o_54@@2 f_8@@2 v@@5) (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@18) (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@18) (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7239) (o_54@@3 T@Ref) (f_8@@3 T@Field_7299_53) (v@@6 Bool) ) (! (succHeap Heap@@19 (PolymorphicMapType_7239 (store (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@19) o_54@@3 f_8@@3 v@@6) (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@19) (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@19) (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@19) (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7239 (store (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@19) o_54@@3 f_8@@3 v@@6) (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@19) (|PolymorphicMapType_7239_4923_3156#PolymorphicMapType_7239| Heap@@19) (|PolymorphicMapType_7239_4923_18948#PolymorphicMapType_7239| Heap@@19) (|PolymorphicMapType_7239_7299_18771#PolymorphicMapType_7239| Heap@@19)))
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
(assert (forall ((o_54@@4 T@Ref) (f_24 T@Field_7312_7313) (Heap@@20 T@PolymorphicMapType_7239) ) (!  (=> (select (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@20) o_54@@4 $allocated) (select (|PolymorphicMapType_7239_4717_53#PolymorphicMapType_7239| Heap@@20) (select (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@20) o_54@@4 f_24) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7239_4720_4721#PolymorphicMapType_7239| Heap@@20) o_54@@4 f_24))
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
(set-info :boogie-vc-id |dummy#definedness|)
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
