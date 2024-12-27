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
(declare-sort T@Field_27091_53 0)
(declare-sort T@Field_27104_27105 0)
(declare-sort T@Field_33141_3373 0)
(declare-sort T@Field_18944_74185 0)
(declare-sort T@Field_18944_74052 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_27052 0)) (((PolymorphicMapType_27052 (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| (Array T@Ref T@Field_33141_3373 Real)) (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| (Array T@Ref T@Field_27091_53 Real)) (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| (Array T@Ref T@Field_27104_27105 Real)) (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| (Array T@Ref T@Field_18944_74052 Real)) (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| (Array T@Ref T@Field_18944_74185 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_27580 0)) (((PolymorphicMapType_27580 (|PolymorphicMapType_27580_27091_53#PolymorphicMapType_27580| (Array T@Ref T@Field_27091_53 Bool)) (|PolymorphicMapType_27580_27091_27105#PolymorphicMapType_27580| (Array T@Ref T@Field_27104_27105 Bool)) (|PolymorphicMapType_27580_27091_3373#PolymorphicMapType_27580| (Array T@Ref T@Field_33141_3373 Bool)) (|PolymorphicMapType_27580_27091_74052#PolymorphicMapType_27580| (Array T@Ref T@Field_18944_74052 Bool)) (|PolymorphicMapType_27580_27091_75363#PolymorphicMapType_27580| (Array T@Ref T@Field_18944_74185 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_27031 0)) (((PolymorphicMapType_27031 (|PolymorphicMapType_27031_18724_53#PolymorphicMapType_27031| (Array T@Ref T@Field_27091_53 Bool)) (|PolymorphicMapType_27031_18727_18728#PolymorphicMapType_27031| (Array T@Ref T@Field_27104_27105 T@Ref)) (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| (Array T@Ref T@Field_33141_3373 Int)) (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| (Array T@Ref T@Field_18944_74185 T@PolymorphicMapType_27580)) (|PolymorphicMapType_27031_27091_74052#PolymorphicMapType_27031| (Array T@Ref T@Field_18944_74052 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_27091_53)
(declare-fun Ref__Integer_value () T@Field_33141_3373)
(declare-sort T@Seq_36187 0)
(declare-fun |Seq#Length_19001| (T@Seq_36187) Int)
(declare-fun |Seq#Drop_19001| (T@Seq_36187 Int) T@Seq_36187)
(declare-sort T@Seq_3251 0)
(declare-fun |Seq#Length_3251| (T@Seq_3251) Int)
(declare-fun |Seq#Drop_3251| (T@Seq_3251 Int) T@Seq_3251)
(declare-fun state (T@PolymorphicMapType_27031 T@PolymorphicMapType_27052) Bool)
(declare-fun |Ref__multidim_index_2'| (T@PolymorphicMapType_27031 Int Int Int Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Ref__multidim_index_2#trigger| (T@FrameType Int Int Int Int) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |count_square'| (T@PolymorphicMapType_27031 Int Int Int Int Int Int T@Seq_36187 Int) Int)
(declare-fun |count_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_36187 Int) Int)
(declare-fun FrameFragment_5068 (Int) T@FrameType)
(declare-fun |count_square#condqp3| (T@PolymorphicMapType_27031 Int Int Int Int Int Int T@Seq_36187 Int) Int)
(declare-fun succHeap (T@PolymorphicMapType_27031 T@PolymorphicMapType_27031) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_27031 T@PolymorphicMapType_27031) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_27052) Bool)
(declare-fun |sum_list'| (T@PolymorphicMapType_27031 Int Int T@Seq_3251) Int)
(declare-fun dummyFunction_4053 (Int) Bool)
(declare-fun |sum_list#triggerStateless| (Int Int T@Seq_3251) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_27580)
(declare-fun |Seq#Index_19001| (T@Seq_36187 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3251| (T@Seq_3251 Int) Int)
(declare-fun |Seq#Empty_19001| () T@Seq_36187)
(declare-fun |Seq#Empty_3251| () T@Seq_3251)
(declare-fun |Seq#Update_19001| (T@Seq_36187 Int T@Ref) T@Seq_36187)
(declare-fun |Seq#Update_3251| (T@Seq_3251 Int Int) T@Seq_3251)
(declare-fun |Seq#Take_19001| (T@Seq_36187 Int) T@Seq_36187)
(declare-fun |Seq#Take_3251| (T@Seq_3251 Int) T@Seq_3251)
(declare-fun |Seq#Contains_3251| (T@Seq_3251 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3251)
(declare-fun |Seq#Contains_36187| (T@Seq_36187 T@Ref) Bool)
(declare-fun |Seq#Skolem_36187| (T@Seq_36187 T@Ref) Int)
(declare-fun |Seq#Skolem_3251| (T@Seq_3251 Int) Int)
(declare-fun sum_array (T@PolymorphicMapType_27031 Int Int Int T@Seq_36187) Int)
(declare-fun |sum_array'| (T@PolymorphicMapType_27031 Int Int Int T@Seq_36187) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_27031 T@PolymorphicMapType_27031 T@PolymorphicMapType_27052) Bool)
(declare-fun IsPredicateField_18944_74143 (T@Field_18944_74052) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_18944 (T@Field_18944_74052) T@Field_18944_74185)
(declare-fun HasDirectPerm_18944_74116 (T@PolymorphicMapType_27052 T@Ref T@Field_18944_74052) Bool)
(declare-fun IsWandField_18944_75890 (T@Field_18944_74052) Bool)
(declare-fun WandMaskField_18944 (T@Field_18944_74052) T@Field_18944_74185)
(declare-fun |Seq#Singleton_19001| (T@Ref) T@Seq_36187)
(declare-fun |Seq#Singleton_3251| (Int) T@Seq_3251)
(declare-fun count_square (T@PolymorphicMapType_27031 Int Int Int Int Int Int T@Seq_36187 Int) Int)
(declare-fun |count_square#triggerStateless| (Int Int Int Int Int Int T@Seq_36187 Int) Int)
(declare-fun |Seq#Append_36187| (T@Seq_36187 T@Seq_36187) T@Seq_36187)
(declare-fun |Seq#Append_3251| (T@Seq_3251 T@Seq_3251) T@Seq_3251)
(declare-fun |sum_square#condqp2| (T@PolymorphicMapType_27031 Int Int Int Int Int Int T@Seq_36187) Int)
(declare-fun |sk_sum_square#condqp2| (Int Int) Int)
(declare-fun |sk_count_square#condqp3| (Int Int) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_27031)
(declare-fun ZeroMask () T@PolymorphicMapType_27052)
(declare-fun sum_square (T@PolymorphicMapType_27031 Int Int Int Int Int Int T@Seq_36187) Int)
(declare-fun |sum_square'| (T@PolymorphicMapType_27031 Int Int Int Int Int Int T@Seq_36187) Int)
(declare-fun InsidePredicate_27091_27091 (T@Field_18944_74052 T@FrameType T@Field_18944_74052 T@FrameType) Bool)
(declare-fun IsPredicateField_18944_3373 (T@Field_33141_3373) Bool)
(declare-fun IsWandField_18944_3373 (T@Field_33141_3373) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_18944_79436 (T@Field_18944_74185) Bool)
(declare-fun IsWandField_18944_79452 (T@Field_18944_74185) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_18944_27105 (T@Field_27104_27105) Bool)
(declare-fun IsWandField_18944_27105 (T@Field_27104_27105) Bool)
(declare-fun IsPredicateField_18944_53 (T@Field_27091_53) Bool)
(declare-fun IsWandField_18944_53 (T@Field_27091_53) Bool)
(declare-fun |sum_list#frame| (T@FrameType Int Int T@Seq_3251) Int)
(declare-fun HasDirectPerm_18944_79890 (T@PolymorphicMapType_27052 T@Ref T@Field_18944_74185) Bool)
(declare-fun HasDirectPerm_18944_27105 (T@PolymorphicMapType_27052 T@Ref T@Field_27104_27105) Bool)
(declare-fun HasDirectPerm_18944_53 (T@PolymorphicMapType_27052 T@Ref T@Field_27091_53) Bool)
(declare-fun HasDirectPerm_18944_3373 (T@PolymorphicMapType_27052 T@Ref T@Field_33141_3373) Bool)
(declare-fun |Ref__multidim_index_2#triggerStateless| (Int Int Int Int) Int)
(declare-fun |sum_array#triggerStateless| (Int Int Int T@Seq_36187) Int)
(declare-fun |count_list'| (T@PolymorphicMapType_27031 Int Int T@Seq_3251 Int) Int)
(declare-fun |count_list#triggerStateless| (Int Int T@Seq_3251 Int) Int)
(declare-fun |count_array'| (T@PolymorphicMapType_27031 Int Int T@Seq_36187 Int) Int)
(declare-fun |count_array#triggerStateless| (Int Int T@Seq_36187 Int) Int)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun count_list (T@PolymorphicMapType_27031 Int Int T@Seq_3251 Int) Int)
(declare-fun Ref__multidim_index_2 (T@PolymorphicMapType_27031 Int Int Int Int) Int)
(declare-fun count_array (T@PolymorphicMapType_27031 Int Int T@Seq_36187 Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_27052 T@PolymorphicMapType_27052 T@PolymorphicMapType_27052) Bool)
(declare-fun |sum_square#triggerStateless| (Int Int Int Int Int Int T@Seq_36187) Int)
(declare-fun |Ref__multidim_index_2#frame| (T@FrameType Int Int Int Int) Int)
(declare-fun |count_list#frame| (T@FrameType Int Int T@Seq_3251 Int) Int)
(declare-fun |Seq#Equal_36187| (T@Seq_36187 T@Seq_36187) Bool)
(declare-fun |Seq#Equal_3251| (T@Seq_3251 T@Seq_3251) Bool)
(declare-fun sum_list (T@PolymorphicMapType_27031 Int Int T@Seq_3251) Int)
(declare-fun |Seq#ContainsTrigger_19001| (T@Seq_36187 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3251| (T@Seq_3251 Int) Bool)
(declare-fun |count_array#condqp4| (T@PolymorphicMapType_27031 Int Int T@Seq_36187 Int) Int)
(declare-fun |sk_count_array#condqp4| (Int Int) Int)
(declare-fun |sum_array#condqp1| (T@PolymorphicMapType_27031 Int Int Int T@Seq_36187) Int)
(declare-fun |sk_sum_array#condqp1| (Int Int) Int)
(declare-fun |sum_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_36187) Int)
(declare-fun |Seq#SkolemDiff_36187| (T@Seq_36187 T@Seq_36187) Int)
(declare-fun |Seq#SkolemDiff_3251| (T@Seq_3251 T@Seq_3251) Int)
(declare-fun |sum_array#frame| (T@FrameType Int Int Int T@Seq_36187) Int)
(declare-fun |count_array#frame| (T@FrameType Int Int T@Seq_36187 Int) Int)
(assert (forall ((s T@Seq_36187) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_19001| s)) (= (|Seq#Length_19001| (|Seq#Drop_19001| s n)) (- (|Seq#Length_19001| s) n))) (=> (< (|Seq#Length_19001| s) n) (= (|Seq#Length_19001| (|Seq#Drop_19001| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_19001| (|Seq#Drop_19001| s n)) (|Seq#Length_19001| s))))
 :qid |stdinbpl.342:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_19001| (|Seq#Drop_19001| s n)))
 :pattern ( (|Seq#Length_19001| s) (|Seq#Drop_19001| s n))
)))
(assert (forall ((s@@0 T@Seq_3251) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3251| s@@0)) (= (|Seq#Length_3251| (|Seq#Drop_3251| s@@0 n@@0)) (- (|Seq#Length_3251| s@@0) n@@0))) (=> (< (|Seq#Length_3251| s@@0) n@@0) (= (|Seq#Length_3251| (|Seq#Drop_3251| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3251| (|Seq#Drop_3251| s@@0 n@@0)) (|Seq#Length_3251| s@@0))))
 :qid |stdinbpl.342:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3251| (|Seq#Drop_3251| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3251| s@@0) (|Seq#Drop_3251| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_27031) (Mask T@PolymorphicMapType_27052) (N0 Int) (N1 Int) (i0 Int) (i1 Int) ) (!  (=> (and (state Heap Mask) (or (< AssumeFunctionsAbove 2) (|Ref__multidim_index_2#trigger| EmptyFrame N0 N1 i0 i1))) (=> (and (and (and (and (and (<= 0 i0) (< i0 N0)) (<= 0 N0)) (<= 0 i1)) (< i1 N1)) (<= 0 N1)) (= (|Ref__multidim_index_2'| Heap N0 N1 i0 i1) (+ (* i0 N1) i1))))
 :qid |stdinbpl.649:15|
 :skolemid |63|
 :pattern ( (state Heap Mask) (|Ref__multidim_index_2'| Heap N0 N1 i0 i1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_27031) (Mask@@0 T@PolymorphicMapType_27052) (i Int) (lo Int) (hi Int) (step Int) (vmin Int) (vmax Int) (ar T@Seq_36187) (v_2 Int) ) (!  (=> (state Heap@@0 Mask@@0) (= (|count_square'| Heap@@0 i lo hi step vmin vmax ar v_2) (|count_square#frame| (FrameFragment_5068 (|count_square#condqp3| Heap@@0 i lo hi step vmin vmax ar v_2)) i lo hi step vmin vmax ar v_2)))
 :qid |stdinbpl.1327:15|
 :skolemid |116|
 :pattern ( (state Heap@@0 Mask@@0) (|count_square'| Heap@@0 i lo hi step vmin vmax ar v_2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_27031) (Mask@@1 T@PolymorphicMapType_27052) (N0@@0 Int) (N1@@0 Int) (i0@@0 Int) (i1@@0 Int) ) (!  (=> (and (state Heap@@1 Mask@@1) (or (< AssumeFunctionsAbove 2) (|Ref__multidim_index_2#trigger| EmptyFrame N0@@0 N1@@0 i0@@0 i1@@0))) (=> (and (and (and (and (and (<= 0 i0@@0) (< i0@@0 N0@@0)) (<= 0 N0@@0)) (<= 0 i1@@0)) (< i1@@0 N1@@0)) (<= 0 N1@@0)) (< (mod (|Ref__multidim_index_2'| Heap@@1 N0@@0 N1@@0 i0@@0 i1@@0) N1@@0) N0@@0)))
 :qid |stdinbpl.657:15|
 :skolemid |65|
 :pattern ( (state Heap@@1 Mask@@1) (|Ref__multidim_index_2'| Heap@@1 N0@@0 N1@@0 i0@@0 i1@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_27031) (Heap1 T@PolymorphicMapType_27031) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_27031) (Mask@@2 T@PolymorphicMapType_27052) ) (!  (=> (state Heap@@2 Mask@@2) (GoodMask Mask@@2))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@2 Mask@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_27031) (Heap1@@0 T@PolymorphicMapType_27031) (Heap2 T@PolymorphicMapType_27031) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_27031) (i@@0 Int) (hi@@0 Int) (ar@@0 T@Seq_3251) ) (! (dummyFunction_4053 (|sum_list#triggerStateless| i@@0 hi@@0 ar@@0))
 :qid |stdinbpl.725:15|
 :skolemid |67|
 :pattern ( (|sum_list'| Heap@@3 i@@0 hi@@0 ar@@0))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_18944_74185) ) (!  (not (select (|PolymorphicMapType_27580_27091_75363#PolymorphicMapType_27580| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27580_27091_75363#PolymorphicMapType_27580| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_18944_74052) ) (!  (not (select (|PolymorphicMapType_27580_27091_74052#PolymorphicMapType_27580| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27580_27091_74052#PolymorphicMapType_27580| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_33141_3373) ) (!  (not (select (|PolymorphicMapType_27580_27091_3373#PolymorphicMapType_27580| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27580_27091_3373#PolymorphicMapType_27580| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_27104_27105) ) (!  (not (select (|PolymorphicMapType_27580_27091_27105#PolymorphicMapType_27580| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27580_27091_27105#PolymorphicMapType_27580| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_27091_53) ) (!  (not (select (|PolymorphicMapType_27580_27091_53#PolymorphicMapType_27580| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27580_27091_53#PolymorphicMapType_27580| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_36187) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_19001| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_19001| (|Seq#Drop_19001| s@@1 n@@1) j) (|Seq#Index_19001| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.363:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_19001| (|Seq#Drop_19001| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3251) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3251| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3251| (|Seq#Drop_3251| s@@2 n@@2) j@@0) (|Seq#Index_3251| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.363:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3251| (|Seq#Drop_3251| s@@2 n@@2) j@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_27031) (Mask@@3 T@PolymorphicMapType_27052) (N0@@1 Int) (N1@@1 Int) (i0@@1 Int) (i1@@1 Int) ) (!  (=> (and (state Heap@@4 Mask@@3) (or (< AssumeFunctionsAbove 2) (|Ref__multidim_index_2#trigger| EmptyFrame N0@@1 N1@@1 i0@@1 i1@@1))) (=> (and (and (and (and (and (<= 0 i0@@1) (< i0@@1 N0@@1)) (<= 0 N0@@1)) (<= 0 i1@@1)) (< i1@@1 N1@@1)) (<= 0 N1@@1)) (= (mod (|Ref__multidim_index_2'| Heap@@4 N0@@1 N1@@1 i0@@1 i1@@1) N1@@1) i1@@1)))
 :qid |stdinbpl.653:15|
 :skolemid |64|
 :pattern ( (state Heap@@4 Mask@@3) (|Ref__multidim_index_2'| Heap@@4 N0@@1 N1@@1 i0@@1 i1@@1))
)))
(assert (= (|Seq#Length_19001| |Seq#Empty_19001|) 0))
(assert (= (|Seq#Length_3251| |Seq#Empty_3251|) 0))
(assert (forall ((s@@3 T@Seq_36187) (i@@1 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_19001| s@@3))) (and (=> (= i@@1 n@@3) (= (|Seq#Index_19001| (|Seq#Update_19001| s@@3 i@@1 v) n@@3) v)) (=> (not (= i@@1 n@@3)) (= (|Seq#Index_19001| (|Seq#Update_19001| s@@3 i@@1 v) n@@3) (|Seq#Index_19001| s@@3 n@@3)))))
 :qid |stdinbpl.318:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_19001| (|Seq#Update_19001| s@@3 i@@1 v) n@@3))
 :pattern ( (|Seq#Index_19001| s@@3 n@@3) (|Seq#Update_19001| s@@3 i@@1 v))
)))
(assert (forall ((s@@4 T@Seq_3251) (i@@2 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3251| s@@4))) (and (=> (= i@@2 n@@4) (= (|Seq#Index_3251| (|Seq#Update_3251| s@@4 i@@2 v@@0) n@@4) v@@0)) (=> (not (= i@@2 n@@4)) (= (|Seq#Index_3251| (|Seq#Update_3251| s@@4 i@@2 v@@0) n@@4) (|Seq#Index_3251| s@@4 n@@4)))))
 :qid |stdinbpl.318:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3251| (|Seq#Update_3251| s@@4 i@@2 v@@0) n@@4))
 :pattern ( (|Seq#Index_3251| s@@4 n@@4) (|Seq#Update_3251| s@@4 i@@2 v@@0))
)))
(assert (forall ((s@@5 T@Seq_36187) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_19001| s@@5)) (= (|Seq#Length_19001| (|Seq#Take_19001| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_19001| s@@5) n@@5) (= (|Seq#Length_19001| (|Seq#Take_19001| s@@5 n@@5)) (|Seq#Length_19001| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_19001| (|Seq#Take_19001| s@@5 n@@5)) 0)))
 :qid |stdinbpl.329:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_19001| (|Seq#Take_19001| s@@5 n@@5)))
 :pattern ( (|Seq#Take_19001| s@@5 n@@5) (|Seq#Length_19001| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3251) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3251| s@@6)) (= (|Seq#Length_3251| (|Seq#Take_3251| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3251| s@@6) n@@6) (= (|Seq#Length_3251| (|Seq#Take_3251| s@@6 n@@6)) (|Seq#Length_3251| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3251| (|Seq#Take_3251| s@@6 n@@6)) 0)))
 :qid |stdinbpl.329:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3251| (|Seq#Take_3251| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3251| s@@6 n@@6) (|Seq#Length_3251| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3251| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.603:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3251| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_36187) (x T@Ref) ) (!  (=> (|Seq#Contains_36187| s@@7 x) (and (and (<= 0 (|Seq#Skolem_36187| s@@7 x)) (< (|Seq#Skolem_36187| s@@7 x) (|Seq#Length_19001| s@@7))) (= (|Seq#Index_19001| s@@7 (|Seq#Skolem_36187| s@@7 x)) x)))
 :qid |stdinbpl.461:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_36187| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3251) (x@@0 Int) ) (!  (=> (|Seq#Contains_3251| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3251| s@@8 x@@0)) (< (|Seq#Skolem_3251| s@@8 x@@0) (|Seq#Length_3251| s@@8))) (= (|Seq#Index_3251| s@@8 (|Seq#Skolem_3251| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.461:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3251| s@@8 x@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_27031) (Mask@@4 T@PolymorphicMapType_27052) (i@@3 Int) (lo@@0 Int) (hi@@1 Int) (ar@@1 T@Seq_36187) ) (!  (=> (and (state Heap@@5 Mask@@4) (< AssumeFunctionsAbove 4)) (=> (and (and (and (<= 0 lo@@0) (and (<= lo@@0 i@@3) (<= i@@3 hi@@1))) (<= hi@@1 (|Seq#Length_19001| ar@@1))) (forall ((ix_20 Int) (jx_20 Int) ) (!  (=> (and (>= ix_20 0) (and (< ix_20 (|Seq#Length_19001| ar@@1)) (and (>= jx_20 0) (and (< jx_20 (|Seq#Length_19001| ar@@1)) (not (= ix_20 jx_20)))))) (not (= (|Seq#Index_19001| ar@@1 ix_20) (|Seq#Index_19001| ar@@1 jx_20))))
 :qid |stdinbpl.818:124|
 :skolemid |72|
 :pattern ( (|Seq#Index_19001| ar@@1 ix_20) (|Seq#Index_19001| ar@@1 jx_20))
))) (= (sum_array Heap@@5 i@@3 lo@@0 hi@@1 ar@@1) (ite (< i@@3 hi@@1) (+ (select (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| Heap@@5) (|Seq#Index_19001| ar@@1 i@@3) Ref__Integer_value) (|sum_array'| Heap@@5 (+ i@@3 1) lo@@0 hi@@1 ar@@1)) 0))))
 :qid |stdinbpl.816:15|
 :skolemid |73|
 :pattern ( (state Heap@@5 Mask@@4) (sum_array Heap@@5 i@@3 lo@@0 hi@@1 ar@@1))
)))
(assert (forall ((s@@9 T@Seq_36187) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_19001| s@@9 n@@7) s@@9))
 :qid |stdinbpl.445:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_19001| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3251) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3251| s@@10 n@@8) s@@10))
 :qid |stdinbpl.445:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3251| s@@10 n@@8))
)))
(assert (forall ((i@@4 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@4 j@@1) (- i@@4 j@@1))
 :qid |stdinbpl.298:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@4 j@@1))
)))
(assert (forall ((i@@5 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@5 j@@2) (+ i@@5 j@@2))
 :qid |stdinbpl.296:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@5 j@@2))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_27031) (ExhaleHeap T@PolymorphicMapType_27031) (Mask@@5 T@PolymorphicMapType_27052) (pm_f_18 T@Field_18944_74052) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@5) (=> (and (HasDirectPerm_18944_74116 Mask@@5 null pm_f_18) (IsPredicateField_18944_74143 pm_f_18)) (= (select (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| Heap@@6) null (PredicateMaskField_18944 pm_f_18)) (select (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| ExhaleHeap) null (PredicateMaskField_18944 pm_f_18)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@5) (IsPredicateField_18944_74143 pm_f_18) (select (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| ExhaleHeap) null (PredicateMaskField_18944 pm_f_18)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_27031) (ExhaleHeap@@0 T@PolymorphicMapType_27031) (Mask@@6 T@PolymorphicMapType_27052) (pm_f_18@@0 T@Field_18944_74052) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@6) (=> (and (HasDirectPerm_18944_74116 Mask@@6 null pm_f_18@@0) (IsWandField_18944_75890 pm_f_18@@0)) (= (select (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| Heap@@7) null (WandMaskField_18944 pm_f_18@@0)) (select (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| ExhaleHeap@@0) null (WandMaskField_18944 pm_f_18@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@6) (IsWandField_18944_75890 pm_f_18@@0) (select (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| ExhaleHeap@@0) null (WandMaskField_18944 pm_f_18@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_36187| (|Seq#Singleton_19001| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.586:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_36187| (|Seq#Singleton_19001| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3251| (|Seq#Singleton_3251| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.586:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3251| (|Seq#Singleton_3251| x@@2) y@@0))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_27031) (i@@6 Int) (lo@@1 Int) (hi@@2 Int) (step@@0 Int) (vmin@@0 Int) (vmax@@0 Int) (ar@@2 T@Seq_36187) (v_2@@0 Int) ) (!  (and (= (count_square Heap@@8 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax@@0 ar@@2 v_2@@0) (|count_square'| Heap@@8 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax@@0 ar@@2 v_2@@0)) (dummyFunction_4053 (|count_square#triggerStateless| i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax@@0 ar@@2 v_2@@0)))
 :qid |stdinbpl.1307:15|
 :skolemid |112|
 :pattern ( (count_square Heap@@8 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax@@0 ar@@2 v_2@@0))
)))
(assert (forall ((s@@11 T@Seq_36187) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_19001| s@@11))) (= (|Seq#Index_19001| (|Seq#Take_19001| s@@11 n@@9) j@@3) (|Seq#Index_19001| s@@11 j@@3)))
 :qid |stdinbpl.337:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_19001| (|Seq#Take_19001| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_19001| s@@11 j@@3) (|Seq#Take_19001| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3251) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3251| s@@12))) (= (|Seq#Index_3251| (|Seq#Take_3251| s@@12 n@@10) j@@4) (|Seq#Index_3251| s@@12 j@@4)))
 :qid |stdinbpl.337:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3251| (|Seq#Take_3251| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3251| s@@12 j@@4) (|Seq#Take_3251| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_36187) (t T@Seq_36187) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_19001| s@@13))) (< n@@11 (|Seq#Length_19001| (|Seq#Append_36187| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_19001| s@@13)) (|Seq#Length_19001| s@@13)) n@@11) (= (|Seq#Take_19001| (|Seq#Append_36187| s@@13 t) n@@11) (|Seq#Append_36187| s@@13 (|Seq#Take_19001| t (|Seq#Sub| n@@11 (|Seq#Length_19001| s@@13)))))))
 :qid |stdinbpl.422:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_19001| (|Seq#Append_36187| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3251) (t@@0 T@Seq_3251) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3251| s@@14))) (< n@@12 (|Seq#Length_3251| (|Seq#Append_3251| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3251| s@@14)) (|Seq#Length_3251| s@@14)) n@@12) (= (|Seq#Take_3251| (|Seq#Append_3251| s@@14 t@@0) n@@12) (|Seq#Append_3251| s@@14 (|Seq#Take_3251| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3251| s@@14)))))))
 :qid |stdinbpl.422:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3251| (|Seq#Append_3251| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_27031) (i@@7 Int) (lo@@2 Int) (hi@@3 Int) (step@@1 Int) (vmin@@1 Int) (vmax@@1 Int) (ar@@3 T@Seq_36187) (v_2@@1 Int) ) (! (dummyFunction_4053 (|count_square#triggerStateless| i@@7 lo@@2 hi@@3 step@@1 vmin@@1 vmax@@1 ar@@3 v_2@@1))
 :qid |stdinbpl.1311:15|
 :skolemid |113|
 :pattern ( (|count_square'| Heap@@9 i@@7 lo@@2 hi@@3 step@@1 vmin@@1 vmax@@1 ar@@3 v_2@@1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_27031) (Heap1Heap T@PolymorphicMapType_27031) (i@@8 Int) (lo@@3 Int) (hi@@4 Int) (step@@2 Int) (vmin@@2 Int) (vmax@@2 Int) (ar@@4 T@Seq_36187) ) (!  (=> (and (=  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) vmax@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2) hi@@4))))  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) vmax@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2) hi@@4))))) (=> (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) vmax@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2) hi@@4)))) (= (select (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| Heap2Heap) (|Seq#Index_19001| ar@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4))) Ref__Integer_value) (select (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| Heap1Heap) (|Seq#Index_19001| ar@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4))) Ref__Integer_value)))) (= (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)))
 :qid |stdinbpl.1071:15|
 :skolemid |96|
 :pattern ( (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_27031) (Heap1Heap@@0 T@PolymorphicMapType_27031) (i@@9 Int) (lo@@4 Int) (hi@@5 Int) (step@@3 Int) (vmin@@3 Int) (vmax@@3 Int) (ar@@5 T@Seq_36187) (v_2@@2 Int) ) (!  (=> (and (=  (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) vmax@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) step@@3) hi@@5))))  (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) vmax@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) step@@3) hi@@5))))) (=> (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) vmax@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) step@@3) hi@@5)))) (= (select (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| Heap2Heap@@0) (|Seq#Index_19001| ar@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2))) Ref__Integer_value) (select (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| Heap1Heap@@0) (|Seq#Index_19001| ar@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2))) Ref__Integer_value)))) (= (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)))
 :qid |stdinbpl.1337:15|
 :skolemid |117|
 :pattern ( (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@10 T@PolymorphicMapType_27031) (Mask@@7 T@PolymorphicMapType_27052) (i@@10 Int) (lo@@5 Int) (hi@@6 Int) (step@@4 Int) (vmin@@4 Int) (vmax@@4 Int) (ar@@6 T@Seq_36187) ) (!  (=> (and (state Heap@@10 Mask@@7) (< AssumeFunctionsAbove 3)) (=> (and (and (and (and (<= 0 lo@@5) (and (<= lo@@5 hi@@6) (and (<= hi@@6 step@@4) (> step@@4 0)))) (and (<= 0 vmin@@4) (and (<= vmin@@4 i@@10) (<= i@@10 vmax@@4)))) (<= vmax@@4 (|Seq#Length_19001| ar@@6))) (forall ((ix_20@@0 Int) (jx_20@@0 Int) ) (!  (=> (and (>= ix_20@@0 0) (and (< ix_20@@0 (|Seq#Length_19001| ar@@6)) (and (>= jx_20@@0 0) (and (< jx_20@@0 (|Seq#Length_19001| ar@@6)) (not (= ix_20@@0 jx_20@@0)))))) (not (= (|Seq#Index_19001| ar@@6 ix_20@@0) (|Seq#Index_19001| ar@@6 jx_20@@0))))
 :qid |stdinbpl.1053:189|
 :skolemid |93|
 :pattern ( (|Seq#Index_19001| ar@@6 ix_20@@0) (|Seq#Index_19001| ar@@6 jx_20@@0))
))) (= (sum_square Heap@@10 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6) (ite (< i@@10 vmax@@4) (+ (ite  (and (<= lo@@5 (mod i@@10 step@@4)) (< (mod i@@10 step@@4) hi@@6)) (select (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| Heap@@10) (|Seq#Index_19001| ar@@6 i@@10) Ref__Integer_value) 0) (|sum_square'| Heap@@10 (+ i@@10 1) lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6)) 0))))
 :qid |stdinbpl.1051:15|
 :skolemid |94|
 :pattern ( (state Heap@@10 Mask@@7) (sum_square Heap@@10 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_27031) (ExhaleHeap@@1 T@PolymorphicMapType_27031) (Mask@@8 T@PolymorphicMapType_27052) (o_42 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@1 Mask@@8) (=> (select (|PolymorphicMapType_27031_18724_53#PolymorphicMapType_27031| Heap@@11) o_42 $allocated) (select (|PolymorphicMapType_27031_18724_53#PolymorphicMapType_27031| ExhaleHeap@@1) o_42 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@1 Mask@@8) (select (|PolymorphicMapType_27031_18724_53#PolymorphicMapType_27031| ExhaleHeap@@1) o_42 $allocated))
)))
(assert (forall ((p T@Field_18944_74052) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_27091_27091 p v_1 p w))
 :qid |stdinbpl.240:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_27091_27091 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_36187) (s1 T@Seq_36187) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_19001|)) (not (= s1 |Seq#Empty_19001|))) (<= (|Seq#Length_19001| s0) n@@13)) (< n@@13 (|Seq#Length_19001| (|Seq#Append_36187| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_19001| s0)) (|Seq#Length_19001| s0)) n@@13) (= (|Seq#Index_19001| (|Seq#Append_36187| s0 s1) n@@13) (|Seq#Index_19001| s1 (|Seq#Sub| n@@13 (|Seq#Length_19001| s0))))))
 :qid |stdinbpl.309:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_19001| (|Seq#Append_36187| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3251) (s1@@0 T@Seq_3251) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3251|)) (not (= s1@@0 |Seq#Empty_3251|))) (<= (|Seq#Length_3251| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3251| (|Seq#Append_3251| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3251| s0@@0)) (|Seq#Length_3251| s0@@0)) n@@14) (= (|Seq#Index_3251| (|Seq#Append_3251| s0@@0 s1@@0) n@@14) (|Seq#Index_3251| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3251| s0@@0))))))
 :qid |stdinbpl.309:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3251| (|Seq#Append_3251| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_18944_3373 Ref__Integer_value)))
(assert  (not (IsWandField_18944_3373 Ref__Integer_value)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_27031) (ExhaleHeap@@2 T@PolymorphicMapType_27031) (Mask@@9 T@PolymorphicMapType_27052) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@2 Mask@@9) (succHeap Heap@@12 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@2 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_27052) (o_2@@4 T@Ref) (f_4@@4 T@Field_18944_74185) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| Mask@@10) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_18944_79436 f_4@@4))) (not (IsWandField_18944_79452 f_4@@4))) (<= (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| Mask@@10) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| Mask@@10) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_27052) (o_2@@5 T@Ref) (f_4@@5 T@Field_18944_74052) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| Mask@@11) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_18944_74143 f_4@@5))) (not (IsWandField_18944_75890 f_4@@5))) (<= (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| Mask@@11) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| Mask@@11) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_27052) (o_2@@6 T@Ref) (f_4@@6 T@Field_27104_27105) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| Mask@@12) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_18944_27105 f_4@@6))) (not (IsWandField_18944_27105 f_4@@6))) (<= (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| Mask@@12) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| Mask@@12) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_27052) (o_2@@7 T@Ref) (f_4@@7 T@Field_27091_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| Mask@@13) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_18944_53 f_4@@7))) (not (IsWandField_18944_53 f_4@@7))) (<= (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| Mask@@13) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| Mask@@13) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_27052) (o_2@@8 T@Ref) (f_4@@8 T@Field_33141_3373) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| Mask@@14) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_18944_3373 f_4@@8))) (not (IsWandField_18944_3373 f_4@@8))) (<= (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| Mask@@14) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| Mask@@14) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_27031) (Mask@@15 T@PolymorphicMapType_27052) (i@@11 Int) (hi@@7 Int) (ar@@7 T@Seq_3251) ) (!  (=> (state Heap@@13 Mask@@15) (= (|sum_list'| Heap@@13 i@@11 hi@@7 ar@@7) (|sum_list#frame| EmptyFrame i@@11 hi@@7 ar@@7)))
 :qid |stdinbpl.738:15|
 :skolemid |69|
 :pattern ( (state Heap@@13 Mask@@15) (|sum_list'| Heap@@13 i@@11 hi@@7 ar@@7))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_27052) (o_2@@9 T@Ref) (f_4@@9 T@Field_18944_74185) ) (! (= (HasDirectPerm_18944_79890 Mask@@16 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| Mask@@16) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18944_79890 Mask@@16 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_27052) (o_2@@10 T@Ref) (f_4@@10 T@Field_18944_74052) ) (! (= (HasDirectPerm_18944_74116 Mask@@17 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| Mask@@17) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18944_74116 Mask@@17 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_27052) (o_2@@11 T@Ref) (f_4@@11 T@Field_27104_27105) ) (! (= (HasDirectPerm_18944_27105 Mask@@18 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| Mask@@18) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18944_27105 Mask@@18 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_27052) (o_2@@12 T@Ref) (f_4@@12 T@Field_27091_53) ) (! (= (HasDirectPerm_18944_53 Mask@@19 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| Mask@@19) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18944_53 Mask@@19 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_27052) (o_2@@13 T@Ref) (f_4@@13 T@Field_33141_3373) ) (! (= (HasDirectPerm_18944_3373 Mask@@20 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| Mask@@20) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18944_3373 Mask@@20 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_27031) (N0@@2 Int) (N1@@2 Int) (i0@@2 Int) (i1@@2 Int) ) (! (dummyFunction_4053 (|Ref__multidim_index_2#triggerStateless| N0@@2 N1@@2 i0@@2 i1@@2))
 :qid |stdinbpl.628:15|
 :skolemid |59|
 :pattern ( (|Ref__multidim_index_2'| Heap@@14 N0@@2 N1@@2 i0@@2 i1@@2))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_27031) (i@@12 Int) (lo@@6 Int) (hi@@8 Int) (ar@@8 T@Seq_36187) ) (! (dummyFunction_4053 (|sum_array#triggerStateless| i@@12 lo@@6 hi@@8 ar@@8))
 :qid |stdinbpl.810:15|
 :skolemid |71|
 :pattern ( (|sum_array'| Heap@@15 i@@12 lo@@6 hi@@8 ar@@8))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_27031) (i@@13 Int) (hi@@9 Int) (ar@@9 T@Seq_3251) (v_2@@3 Int) ) (! (dummyFunction_4053 (|count_list#triggerStateless| i@@13 hi@@9 ar@@9 v_2@@3))
 :qid |stdinbpl.1577:15|
 :skolemid |134|
 :pattern ( (|count_list'| Heap@@16 i@@13 hi@@9 ar@@9 v_2@@3))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_27031) (i@@14 Int) (hi@@10 Int) (ar@@10 T@Seq_36187) (v_2@@4 Int) ) (! (dummyFunction_4053 (|count_array#triggerStateless| i@@14 hi@@10 ar@@10 v_2@@4))
 :qid |stdinbpl.1662:15|
 :skolemid |138|
 :pattern ( (|count_array'| Heap@@17 i@@14 hi@@10 ar@@10 v_2@@4))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_27031) (ExhaleHeap@@3 T@PolymorphicMapType_27031) (Mask@@21 T@PolymorphicMapType_27052) (pm_f_18@@1 T@Field_18944_74052) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@3 Mask@@21) (=> (and (HasDirectPerm_18944_74116 Mask@@21 null pm_f_18@@1) (IsPredicateField_18944_74143 pm_f_18@@1)) (and (and (and (and (forall ((o2_18 T@Ref) (f_48 T@Field_27091_53) ) (!  (=> (select (|PolymorphicMapType_27580_27091_53#PolymorphicMapType_27580| (select (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| Heap@@18) null (PredicateMaskField_18944 pm_f_18@@1))) o2_18 f_48) (= (select (|PolymorphicMapType_27031_18724_53#PolymorphicMapType_27031| Heap@@18) o2_18 f_48) (select (|PolymorphicMapType_27031_18724_53#PolymorphicMapType_27031| ExhaleHeap@@3) o2_18 f_48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27031_18724_53#PolymorphicMapType_27031| ExhaleHeap@@3) o2_18 f_48))
)) (forall ((o2_18@@0 T@Ref) (f_48@@0 T@Field_27104_27105) ) (!  (=> (select (|PolymorphicMapType_27580_27091_27105#PolymorphicMapType_27580| (select (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| Heap@@18) null (PredicateMaskField_18944 pm_f_18@@1))) o2_18@@0 f_48@@0) (= (select (|PolymorphicMapType_27031_18727_18728#PolymorphicMapType_27031| Heap@@18) o2_18@@0 f_48@@0) (select (|PolymorphicMapType_27031_18727_18728#PolymorphicMapType_27031| ExhaleHeap@@3) o2_18@@0 f_48@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27031_18727_18728#PolymorphicMapType_27031| ExhaleHeap@@3) o2_18@@0 f_48@@0))
))) (forall ((o2_18@@1 T@Ref) (f_48@@1 T@Field_33141_3373) ) (!  (=> (select (|PolymorphicMapType_27580_27091_3373#PolymorphicMapType_27580| (select (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| Heap@@18) null (PredicateMaskField_18944 pm_f_18@@1))) o2_18@@1 f_48@@1) (= (select (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| Heap@@18) o2_18@@1 f_48@@1) (select (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| ExhaleHeap@@3) o2_18@@1 f_48@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| ExhaleHeap@@3) o2_18@@1 f_48@@1))
))) (forall ((o2_18@@2 T@Ref) (f_48@@2 T@Field_18944_74052) ) (!  (=> (select (|PolymorphicMapType_27580_27091_74052#PolymorphicMapType_27580| (select (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| Heap@@18) null (PredicateMaskField_18944 pm_f_18@@1))) o2_18@@2 f_48@@2) (= (select (|PolymorphicMapType_27031_27091_74052#PolymorphicMapType_27031| Heap@@18) o2_18@@2 f_48@@2) (select (|PolymorphicMapType_27031_27091_74052#PolymorphicMapType_27031| ExhaleHeap@@3) o2_18@@2 f_48@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27031_27091_74052#PolymorphicMapType_27031| ExhaleHeap@@3) o2_18@@2 f_48@@2))
))) (forall ((o2_18@@3 T@Ref) (f_48@@3 T@Field_18944_74185) ) (!  (=> (select (|PolymorphicMapType_27580_27091_75363#PolymorphicMapType_27580| (select (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| Heap@@18) null (PredicateMaskField_18944 pm_f_18@@1))) o2_18@@3 f_48@@3) (= (select (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| Heap@@18) o2_18@@3 f_48@@3) (select (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| ExhaleHeap@@3) o2_18@@3 f_48@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| ExhaleHeap@@3) o2_18@@3 f_48@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@3 Mask@@21) (IsPredicateField_18944_74143 pm_f_18@@1))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_27031) (ExhaleHeap@@4 T@PolymorphicMapType_27031) (Mask@@22 T@PolymorphicMapType_27052) (pm_f_18@@2 T@Field_18944_74052) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@4 Mask@@22) (=> (and (HasDirectPerm_18944_74116 Mask@@22 null pm_f_18@@2) (IsWandField_18944_75890 pm_f_18@@2)) (and (and (and (and (forall ((o2_18@@4 T@Ref) (f_48@@4 T@Field_27091_53) ) (!  (=> (select (|PolymorphicMapType_27580_27091_53#PolymorphicMapType_27580| (select (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| Heap@@19) null (WandMaskField_18944 pm_f_18@@2))) o2_18@@4 f_48@@4) (= (select (|PolymorphicMapType_27031_18724_53#PolymorphicMapType_27031| Heap@@19) o2_18@@4 f_48@@4) (select (|PolymorphicMapType_27031_18724_53#PolymorphicMapType_27031| ExhaleHeap@@4) o2_18@@4 f_48@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27031_18724_53#PolymorphicMapType_27031| ExhaleHeap@@4) o2_18@@4 f_48@@4))
)) (forall ((o2_18@@5 T@Ref) (f_48@@5 T@Field_27104_27105) ) (!  (=> (select (|PolymorphicMapType_27580_27091_27105#PolymorphicMapType_27580| (select (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| Heap@@19) null (WandMaskField_18944 pm_f_18@@2))) o2_18@@5 f_48@@5) (= (select (|PolymorphicMapType_27031_18727_18728#PolymorphicMapType_27031| Heap@@19) o2_18@@5 f_48@@5) (select (|PolymorphicMapType_27031_18727_18728#PolymorphicMapType_27031| ExhaleHeap@@4) o2_18@@5 f_48@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27031_18727_18728#PolymorphicMapType_27031| ExhaleHeap@@4) o2_18@@5 f_48@@5))
))) (forall ((o2_18@@6 T@Ref) (f_48@@6 T@Field_33141_3373) ) (!  (=> (select (|PolymorphicMapType_27580_27091_3373#PolymorphicMapType_27580| (select (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| Heap@@19) null (WandMaskField_18944 pm_f_18@@2))) o2_18@@6 f_48@@6) (= (select (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| Heap@@19) o2_18@@6 f_48@@6) (select (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| ExhaleHeap@@4) o2_18@@6 f_48@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| ExhaleHeap@@4) o2_18@@6 f_48@@6))
))) (forall ((o2_18@@7 T@Ref) (f_48@@7 T@Field_18944_74052) ) (!  (=> (select (|PolymorphicMapType_27580_27091_74052#PolymorphicMapType_27580| (select (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| Heap@@19) null (WandMaskField_18944 pm_f_18@@2))) o2_18@@7 f_48@@7) (= (select (|PolymorphicMapType_27031_27091_74052#PolymorphicMapType_27031| Heap@@19) o2_18@@7 f_48@@7) (select (|PolymorphicMapType_27031_27091_74052#PolymorphicMapType_27031| ExhaleHeap@@4) o2_18@@7 f_48@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27031_27091_74052#PolymorphicMapType_27031| ExhaleHeap@@4) o2_18@@7 f_48@@7))
))) (forall ((o2_18@@8 T@Ref) (f_48@@8 T@Field_18944_74185) ) (!  (=> (select (|PolymorphicMapType_27580_27091_75363#PolymorphicMapType_27580| (select (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| Heap@@19) null (WandMaskField_18944 pm_f_18@@2))) o2_18@@8 f_48@@8) (= (select (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| Heap@@19) o2_18@@8 f_48@@8) (select (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| ExhaleHeap@@4) o2_18@@8 f_48@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| ExhaleHeap@@4) o2_18@@8 f_48@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@4 Mask@@22) (IsWandField_18944_75890 pm_f_18@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.228:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3251| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.601:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3251| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_27031) (ExhaleHeap@@5 T@PolymorphicMapType_27031) (Mask@@23 T@PolymorphicMapType_27052) (o_42@@0 T@Ref) (f_48@@9 T@Field_18944_74185) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@5 Mask@@23) (=> (HasDirectPerm_18944_79890 Mask@@23 o_42@@0 f_48@@9) (= (select (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| Heap@@20) o_42@@0 f_48@@9) (select (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| ExhaleHeap@@5) o_42@@0 f_48@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@5 Mask@@23) (select (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| ExhaleHeap@@5) o_42@@0 f_48@@9))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_27031) (ExhaleHeap@@6 T@PolymorphicMapType_27031) (Mask@@24 T@PolymorphicMapType_27052) (o_42@@1 T@Ref) (f_48@@10 T@Field_18944_74052) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@6 Mask@@24) (=> (HasDirectPerm_18944_74116 Mask@@24 o_42@@1 f_48@@10) (= (select (|PolymorphicMapType_27031_27091_74052#PolymorphicMapType_27031| Heap@@21) o_42@@1 f_48@@10) (select (|PolymorphicMapType_27031_27091_74052#PolymorphicMapType_27031| ExhaleHeap@@6) o_42@@1 f_48@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@6 Mask@@24) (select (|PolymorphicMapType_27031_27091_74052#PolymorphicMapType_27031| ExhaleHeap@@6) o_42@@1 f_48@@10))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_27031) (ExhaleHeap@@7 T@PolymorphicMapType_27031) (Mask@@25 T@PolymorphicMapType_27052) (o_42@@2 T@Ref) (f_48@@11 T@Field_27104_27105) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@7 Mask@@25) (=> (HasDirectPerm_18944_27105 Mask@@25 o_42@@2 f_48@@11) (= (select (|PolymorphicMapType_27031_18727_18728#PolymorphicMapType_27031| Heap@@22) o_42@@2 f_48@@11) (select (|PolymorphicMapType_27031_18727_18728#PolymorphicMapType_27031| ExhaleHeap@@7) o_42@@2 f_48@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@7 Mask@@25) (select (|PolymorphicMapType_27031_18727_18728#PolymorphicMapType_27031| ExhaleHeap@@7) o_42@@2 f_48@@11))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_27031) (ExhaleHeap@@8 T@PolymorphicMapType_27031) (Mask@@26 T@PolymorphicMapType_27052) (o_42@@3 T@Ref) (f_48@@12 T@Field_27091_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@8 Mask@@26) (=> (HasDirectPerm_18944_53 Mask@@26 o_42@@3 f_48@@12) (= (select (|PolymorphicMapType_27031_18724_53#PolymorphicMapType_27031| Heap@@23) o_42@@3 f_48@@12) (select (|PolymorphicMapType_27031_18724_53#PolymorphicMapType_27031| ExhaleHeap@@8) o_42@@3 f_48@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@8 Mask@@26) (select (|PolymorphicMapType_27031_18724_53#PolymorphicMapType_27031| ExhaleHeap@@8) o_42@@3 f_48@@12))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_27031) (ExhaleHeap@@9 T@PolymorphicMapType_27031) (Mask@@27 T@PolymorphicMapType_27052) (o_42@@4 T@Ref) (f_48@@13 T@Field_33141_3373) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@9 Mask@@27) (=> (HasDirectPerm_18944_3373 Mask@@27 o_42@@4 f_48@@13) (= (select (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| Heap@@24) o_42@@4 f_48@@13) (select (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| ExhaleHeap@@9) o_42@@4 f_48@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@9 Mask@@27) (select (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| ExhaleHeap@@9) o_42@@4 f_48@@13))
)))
(assert (forall ((s0@@1 T@Seq_36187) (s1@@1 T@Seq_36187) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_19001|)) (not (= s1@@1 |Seq#Empty_19001|))) (= (|Seq#Length_19001| (|Seq#Append_36187| s0@@1 s1@@1)) (+ (|Seq#Length_19001| s0@@1) (|Seq#Length_19001| s1@@1))))
 :qid |stdinbpl.278:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_19001| (|Seq#Append_36187| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3251) (s1@@2 T@Seq_3251) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3251|)) (not (= s1@@2 |Seq#Empty_3251|))) (= (|Seq#Length_3251| (|Seq#Append_3251| s0@@2 s1@@2)) (+ (|Seq#Length_3251| s0@@2) (|Seq#Length_3251| s1@@2))))
 :qid |stdinbpl.278:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3251| (|Seq#Append_3251| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_18944_74185) ) (! (= (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_18944_74052) ) (! (= (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_27104_27105) ) (! (= (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_27091_53) ) (! (= (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_33141_3373) ) (! (= (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_27031) (Mask@@28 T@PolymorphicMapType_27052) (i@@15 Int) (hi@@11 Int) (ar@@11 T@Seq_3251) (v_2@@5 Int) ) (!  (=> (and (state Heap@@25 Mask@@28) (< AssumeFunctionsAbove 6)) (=> (and (and (<= 0 i@@15) (<= i@@15 hi@@11)) (<= hi@@11 (|Seq#Length_3251| ar@@11))) (= (count_list Heap@@25 i@@15 hi@@11 ar@@11 v_2@@5) (ite (< i@@15 hi@@11) (+ (ite (= (|Seq#Index_3251| ar@@11 i@@15) v_2@@5) 1 0) (|count_list'| Heap@@25 (+ i@@15 1) hi@@11 ar@@11 v_2@@5)) 0))))
 :qid |stdinbpl.1583:15|
 :skolemid |135|
 :pattern ( (state Heap@@25 Mask@@28) (count_list Heap@@25 i@@15 hi@@11 ar@@11 v_2@@5))
)))
(assert (forall ((s@@15 T@Seq_36187) (t@@1 T@Seq_36187) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_19001| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_19001| s@@15)) (|Seq#Length_19001| s@@15)) n@@15) (= (|Seq#Drop_19001| (|Seq#Append_36187| s@@15 t@@1) n@@15) (|Seq#Drop_19001| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_19001| s@@15))))))
 :qid |stdinbpl.435:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_19001| (|Seq#Append_36187| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3251) (t@@2 T@Seq_3251) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3251| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3251| s@@16)) (|Seq#Length_3251| s@@16)) n@@16) (= (|Seq#Drop_3251| (|Seq#Append_3251| s@@16 t@@2) n@@16) (|Seq#Drop_3251| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3251| s@@16))))))
 :qid |stdinbpl.435:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3251| (|Seq#Append_3251| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_27031) (N0@@3 Int) (N1@@3 Int) (i0@@3 Int) (i1@@3 Int) ) (!  (and (= (Ref__multidim_index_2 Heap@@26 N0@@3 N1@@3 i0@@3 i1@@3) (|Ref__multidim_index_2'| Heap@@26 N0@@3 N1@@3 i0@@3 i1@@3)) (dummyFunction_4053 (|Ref__multidim_index_2#triggerStateless| N0@@3 N1@@3 i0@@3 i1@@3)))
 :qid |stdinbpl.624:15|
 :skolemid |58|
 :pattern ( (Ref__multidim_index_2 Heap@@26 N0@@3 N1@@3 i0@@3 i1@@3))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_27031) (i@@16 Int) (lo@@7 Int) (hi@@12 Int) (ar@@12 T@Seq_36187) ) (!  (and (= (sum_array Heap@@27 i@@16 lo@@7 hi@@12 ar@@12) (|sum_array'| Heap@@27 i@@16 lo@@7 hi@@12 ar@@12)) (dummyFunction_4053 (|sum_array#triggerStateless| i@@16 lo@@7 hi@@12 ar@@12)))
 :qid |stdinbpl.806:15|
 :skolemid |70|
 :pattern ( (sum_array Heap@@27 i@@16 lo@@7 hi@@12 ar@@12))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_27031) (i@@17 Int) (hi@@13 Int) (ar@@13 T@Seq_3251) (v_2@@6 Int) ) (!  (and (= (count_list Heap@@28 i@@17 hi@@13 ar@@13 v_2@@6) (|count_list'| Heap@@28 i@@17 hi@@13 ar@@13 v_2@@6)) (dummyFunction_4053 (|count_list#triggerStateless| i@@17 hi@@13 ar@@13 v_2@@6)))
 :qid |stdinbpl.1573:15|
 :skolemid |133|
 :pattern ( (count_list Heap@@28 i@@17 hi@@13 ar@@13 v_2@@6))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_27031) (i@@18 Int) (hi@@14 Int) (ar@@14 T@Seq_36187) (v_2@@7 Int) ) (!  (and (= (count_array Heap@@29 i@@18 hi@@14 ar@@14 v_2@@7) (|count_array'| Heap@@29 i@@18 hi@@14 ar@@14 v_2@@7)) (dummyFunction_4053 (|count_array#triggerStateless| i@@18 hi@@14 ar@@14 v_2@@7)))
 :qid |stdinbpl.1658:15|
 :skolemid |137|
 :pattern ( (count_array Heap@@29 i@@18 hi@@14 ar@@14 v_2@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_27052) (SummandMask1 T@PolymorphicMapType_27052) (SummandMask2 T@PolymorphicMapType_27052) (o_2@@19 T@Ref) (f_4@@19 T@Field_18944_74185) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_27052) (SummandMask1@@0 T@PolymorphicMapType_27052) (SummandMask2@@0 T@PolymorphicMapType_27052) (o_2@@20 T@Ref) (f_4@@20 T@Field_18944_74052) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_27052) (SummandMask1@@1 T@PolymorphicMapType_27052) (SummandMask2@@1 T@PolymorphicMapType_27052) (o_2@@21 T@Ref) (f_4@@21 T@Field_27104_27105) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_27052) (SummandMask1@@2 T@PolymorphicMapType_27052) (SummandMask2@@2 T@PolymorphicMapType_27052) (o_2@@22 T@Ref) (f_4@@22 T@Field_27091_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_27052) (SummandMask1@@3 T@PolymorphicMapType_27052) (SummandMask2@@3 T@PolymorphicMapType_27052) (o_2@@23 T@Ref) (f_4@@23 T@Field_33141_3373) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_27031) (i@@19 Int) (lo@@8 Int) (hi@@15 Int) (step@@5 Int) (vmin@@5 Int) (vmax@@5 Int) (ar@@15 T@Seq_36187) ) (!  (and (= (sum_square Heap@@30 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax@@5 ar@@15) (|sum_square'| Heap@@30 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax@@5 ar@@15)) (dummyFunction_4053 (|sum_square#triggerStateless| i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax@@5 ar@@15)))
 :qid |stdinbpl.1041:15|
 :skolemid |91|
 :pattern ( (sum_square Heap@@30 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax@@5 ar@@15))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_27031) (Mask@@29 T@PolymorphicMapType_27052) (N0@@4 Int) (N1@@4 Int) (i0@@4 Int) (i1@@4 Int) ) (!  (=> (state Heap@@31 Mask@@29) (= (|Ref__multidim_index_2'| Heap@@31 N0@@4 N1@@4 i0@@4 i1@@4) (|Ref__multidim_index_2#frame| EmptyFrame N0@@4 N1@@4 i0@@4 i1@@4)))
 :qid |stdinbpl.635:15|
 :skolemid |60|
 :pattern ( (state Heap@@31 Mask@@29) (|Ref__multidim_index_2'| Heap@@31 N0@@4 N1@@4 i0@@4 i1@@4))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_27031) (Mask@@30 T@PolymorphicMapType_27052) (i@@20 Int) (hi@@16 Int) (ar@@16 T@Seq_3251) (v_2@@8 Int) ) (!  (=> (state Heap@@32 Mask@@30) (= (|count_list'| Heap@@32 i@@20 hi@@16 ar@@16 v_2@@8) (|count_list#frame| EmptyFrame i@@20 hi@@16 ar@@16 v_2@@8)))
 :qid |stdinbpl.1590:15|
 :skolemid |136|
 :pattern ( (state Heap@@32 Mask@@30) (|count_list'| Heap@@32 i@@20 hi@@16 ar@@16 v_2@@8))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3251| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3251| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.600:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3251| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_36187) (b T@Seq_36187) ) (!  (=> (|Seq#Equal_36187| a b) (= a b))
 :qid |stdinbpl.573:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_36187| a b))
)))
(assert (forall ((a@@0 T@Seq_3251) (b@@0 T@Seq_3251) ) (!  (=> (|Seq#Equal_3251| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.573:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3251| a@@0 b@@0))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_27031) (Mask@@31 T@PolymorphicMapType_27052) (i@@21 Int) (lo@@9 Int) (hi@@17 Int) (step@@6 Int) (vmin@@6 Int) (vmax@@6 Int) (ar@@17 T@Seq_36187) (v_2@@9 Int) ) (!  (=> (and (state Heap@@33 Mask@@31) (< AssumeFunctionsAbove 0)) (=> (and (and (and (and (<= 0 lo@@9) (and (<= lo@@9 hi@@17) (and (<= hi@@17 step@@6) (> step@@6 0)))) (and (<= 0 vmin@@6) (and (<= vmin@@6 i@@21) (<= i@@21 vmax@@6)))) (<= vmax@@6 (|Seq#Length_19001| ar@@17))) (forall ((ix_20@@1 Int) (jx_20@@1 Int) ) (!  (=> (and (>= ix_20@@1 0) (and (< ix_20@@1 (|Seq#Length_19001| ar@@17)) (and (>= jx_20@@1 0) (and (< jx_20@@1 (|Seq#Length_19001| ar@@17)) (not (= ix_20@@1 jx_20@@1)))))) (not (= (|Seq#Index_19001| ar@@17 ix_20@@1) (|Seq#Index_19001| ar@@17 jx_20@@1))))
 :qid |stdinbpl.1319:189|
 :skolemid |114|
 :pattern ( (|Seq#Index_19001| ar@@17 ix_20@@1) (|Seq#Index_19001| ar@@17 jx_20@@1))
))) (= (count_square Heap@@33 i@@21 lo@@9 hi@@17 step@@6 vmin@@6 vmax@@6 ar@@17 v_2@@9) (ite (< i@@21 vmax@@6) (+ (ite  (and (<= lo@@9 (mod i@@21 step@@6)) (and (< (mod i@@21 step@@6) hi@@17) (= (select (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| Heap@@33) (|Seq#Index_19001| ar@@17 i@@21) Ref__Integer_value) v_2@@9))) 1 0) (|count_square'| Heap@@33 (+ i@@21 1) lo@@9 hi@@17 step@@6 vmin@@6 vmax@@6 ar@@17 v_2@@9)) 0))))
 :qid |stdinbpl.1317:15|
 :skolemid |115|
 :pattern ( (state Heap@@33 Mask@@31) (count_square Heap@@33 i@@21 lo@@9 hi@@17 step@@6 vmin@@6 vmax@@6 ar@@17 v_2@@9))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_27031) (i@@22 Int) (hi@@18 Int) (ar@@18 T@Seq_3251) ) (!  (and (= (sum_list Heap@@34 i@@22 hi@@18 ar@@18) (|sum_list'| Heap@@34 i@@22 hi@@18 ar@@18)) (dummyFunction_4053 (|sum_list#triggerStateless| i@@22 hi@@18 ar@@18)))
 :qid |stdinbpl.721:15|
 :skolemid |66|
 :pattern ( (sum_list Heap@@34 i@@22 hi@@18 ar@@18))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_27031) (Mask@@32 T@PolymorphicMapType_27052) (N0@@5 Int) (N1@@5 Int) (i0@@5 Int) (i1@@5 Int) ) (!  (=> (and (state Heap@@35 Mask@@32) (or (< AssumeFunctionsAbove 2) (|Ref__multidim_index_2#trigger| EmptyFrame N0@@5 N1@@5 i0@@5 i1@@5))) (=> (and (and (and (and (and (<= 0 i0@@5) (< i0@@5 N0@@5)) (<= 0 N0@@5)) (<= 0 i1@@5)) (< i1@@5 N1@@5)) (<= 0 N1@@5)) (< (|Ref__multidim_index_2'| Heap@@35 N0@@5 N1@@5 i0@@5 i1@@5) (* N0@@5 N1@@5))))
 :qid |stdinbpl.645:15|
 :skolemid |62|
 :pattern ( (state Heap@@35 Mask@@32) (|Ref__multidim_index_2'| Heap@@35 N0@@5 N1@@5 i0@@5 i1@@5))
)))
(assert (forall ((s@@17 T@Seq_36187) (i@@23 Int) ) (!  (=> (and (<= 0 i@@23) (< i@@23 (|Seq#Length_19001| s@@17))) (|Seq#ContainsTrigger_19001| s@@17 (|Seq#Index_19001| s@@17 i@@23)))
 :qid |stdinbpl.466:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_19001| s@@17 i@@23))
)))
(assert (forall ((s@@18 T@Seq_3251) (i@@24 Int) ) (!  (=> (and (<= 0 i@@24) (< i@@24 (|Seq#Length_3251| s@@18))) (|Seq#ContainsTrigger_3251| s@@18 (|Seq#Index_3251| s@@18 i@@24)))
 :qid |stdinbpl.466:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3251| s@@18 i@@24))
)))
(assert (forall ((s0@@3 T@Seq_36187) (s1@@3 T@Seq_36187) ) (!  (and (=> (= s0@@3 |Seq#Empty_19001|) (= (|Seq#Append_36187| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_19001|) (= (|Seq#Append_36187| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.284:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_36187| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3251) (s1@@4 T@Seq_3251) ) (!  (and (=> (= s0@@4 |Seq#Empty_3251|) (= (|Seq#Append_3251| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3251|) (= (|Seq#Append_3251| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.284:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3251| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_19001| (|Seq#Singleton_19001| t@@3) 0) t@@3)
 :qid |stdinbpl.288:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_19001| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3251| (|Seq#Singleton_3251| t@@4) 0) t@@4)
 :qid |stdinbpl.288:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3251| t@@4))
)))
(assert (forall ((s@@19 T@Seq_36187) ) (! (<= 0 (|Seq#Length_19001| s@@19))
 :qid |stdinbpl.267:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_19001| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3251) ) (! (<= 0 (|Seq#Length_3251| s@@20))
 :qid |stdinbpl.267:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3251| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_36187) (s1@@5 T@Seq_36187) ) (!  (=> (|Seq#Equal_36187| s0@@5 s1@@5) (and (= (|Seq#Length_19001| s0@@5) (|Seq#Length_19001| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_19001| s0@@5))) (= (|Seq#Index_19001| s0@@5 j@@6) (|Seq#Index_19001| s1@@5 j@@6)))
 :qid |stdinbpl.563:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_19001| s0@@5 j@@6))
 :pattern ( (|Seq#Index_19001| s1@@5 j@@6))
))))
 :qid |stdinbpl.560:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_36187| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3251) (s1@@6 T@Seq_3251) ) (!  (=> (|Seq#Equal_3251| s0@@6 s1@@6) (and (= (|Seq#Length_3251| s0@@6) (|Seq#Length_3251| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3251| s0@@6))) (= (|Seq#Index_3251| s0@@6 j@@7) (|Seq#Index_3251| s1@@6 j@@7)))
 :qid |stdinbpl.563:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3251| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3251| s1@@6 j@@7))
))))
 :qid |stdinbpl.560:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3251| s0@@6 s1@@6))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_27031) (Heap1Heap@@1 T@PolymorphicMapType_27031) (i@@25 Int) (hi@@19 Int) (ar@@19 T@Seq_36187) (v_2@@10 Int) ) (!  (=> (and (=  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10)) hi@@19))  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10)) hi@@19))) (=> (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10)) hi@@19)) (= (select (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| Heap2Heap@@1) (|Seq#Index_19001| ar@@19 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10))) Ref__Integer_value) (select (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| Heap1Heap@@1) (|Seq#Index_19001| ar@@19 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10))) Ref__Integer_value)))) (= (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10)))
 :qid |stdinbpl.1688:15|
 :skolemid |142|
 :pattern ( (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_19001| (|Seq#Singleton_19001| t@@5)) 1)
 :qid |stdinbpl.275:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_19001| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3251| (|Seq#Singleton_3251| t@@6)) 1)
 :qid |stdinbpl.275:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3251| t@@6))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_27031) (Heap1Heap@@2 T@PolymorphicMapType_27031) (i@@26 Int) (lo@@10 Int) (hi@@20 Int) (ar@@20 T@Seq_36187) ) (!  (=> (and (=  (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20)) hi@@20))  (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20)) hi@@20))) (=> (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20)) hi@@20)) (= (select (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| Heap2Heap@@2) (|Seq#Index_19001| ar@@20 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20))) Ref__Integer_value) (select (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| Heap1Heap@@2) (|Seq#Index_19001| ar@@20 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20))) Ref__Integer_value)))) (= (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20)))
 :qid |stdinbpl.836:15|
 :skolemid |75|
 :pattern ( (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_27031) (Mask@@33 T@PolymorphicMapType_27052) (i@@27 Int) (hi@@21 Int) (ar@@21 T@Seq_3251) ) (!  (=> (and (state Heap@@36 Mask@@33) (< AssumeFunctionsAbove 5)) (=> (and (and (<= 0 i@@27) (<= i@@27 hi@@21)) (<= hi@@21 (|Seq#Length_3251| ar@@21))) (= (sum_list Heap@@36 i@@27 hi@@21 ar@@21) (ite (< i@@27 hi@@21) (+ (|Seq#Index_3251| ar@@21 i@@27) (|sum_list'| Heap@@36 (+ i@@27 1) hi@@21 ar@@21)) 0))))
 :qid |stdinbpl.731:15|
 :skolemid |68|
 :pattern ( (state Heap@@36 Mask@@33) (sum_list Heap@@36 i@@27 hi@@21 ar@@21))
)))
(assert (forall ((s@@21 T@Seq_36187) (t@@7 T@Seq_36187) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_19001| s@@21))) (= (|Seq#Take_19001| (|Seq#Append_36187| s@@21 t@@7) n@@17) (|Seq#Take_19001| s@@21 n@@17)))
 :qid |stdinbpl.417:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_19001| (|Seq#Append_36187| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3251) (t@@8 T@Seq_3251) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3251| s@@22))) (= (|Seq#Take_3251| (|Seq#Append_3251| s@@22 t@@8) n@@18) (|Seq#Take_3251| s@@22 n@@18)))
 :qid |stdinbpl.417:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3251| (|Seq#Append_3251| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_36187) (i@@28 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@28) (< i@@28 (|Seq#Length_19001| s@@23))) (= (|Seq#Length_19001| (|Seq#Update_19001| s@@23 i@@28 v@@2)) (|Seq#Length_19001| s@@23)))
 :qid |stdinbpl.316:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_19001| (|Seq#Update_19001| s@@23 i@@28 v@@2)))
 :pattern ( (|Seq#Length_19001| s@@23) (|Seq#Update_19001| s@@23 i@@28 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3251) (i@@29 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@29) (< i@@29 (|Seq#Length_3251| s@@24))) (= (|Seq#Length_3251| (|Seq#Update_3251| s@@24 i@@29 v@@3)) (|Seq#Length_3251| s@@24)))
 :qid |stdinbpl.316:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3251| (|Seq#Update_3251| s@@24 i@@29 v@@3)))
 :pattern ( (|Seq#Length_3251| s@@24) (|Seq#Update_3251| s@@24 i@@29 v@@3))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_27031) (Mask@@34 T@PolymorphicMapType_27052) (i@@30 Int) (hi@@22 Int) (ar@@22 T@Seq_36187) (v_2@@11 Int) ) (!  (=> (and (state Heap@@37 Mask@@34) (< AssumeFunctionsAbove 1)) (=> (and (and (and (<= 0 i@@30) (<= i@@30 hi@@22)) (<= hi@@22 (|Seq#Length_19001| ar@@22))) (forall ((ix_20@@2 Int) (jx_20@@2 Int) ) (!  (=> (and (>= ix_20@@2 0) (and (< ix_20@@2 (|Seq#Length_19001| ar@@22)) (and (>= jx_20@@2 0) (and (< jx_20@@2 (|Seq#Length_19001| ar@@22)) (not (= ix_20@@2 jx_20@@2)))))) (not (= (|Seq#Index_19001| ar@@22 ix_20@@2) (|Seq#Index_19001| ar@@22 jx_20@@2))))
 :qid |stdinbpl.1670:110|
 :skolemid |139|
 :pattern ( (|Seq#Index_19001| ar@@22 ix_20@@2) (|Seq#Index_19001| ar@@22 jx_20@@2))
))) (= (count_array Heap@@37 i@@30 hi@@22 ar@@22 v_2@@11) (ite (< i@@30 hi@@22) (+ (ite (= (select (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| Heap@@37) (|Seq#Index_19001| ar@@22 i@@30) Ref__Integer_value) v_2@@11) 1 0) (|count_array'| Heap@@37 (+ i@@30 1) hi@@22 ar@@22 v_2@@11)) 0))))
 :qid |stdinbpl.1668:15|
 :skolemid |140|
 :pattern ( (state Heap@@37 Mask@@34) (count_array Heap@@37 i@@30 hi@@22 ar@@22 v_2@@11))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_27031) (o_41 T@Ref) (f_44 T@Field_18944_74052) (v@@4 T@FrameType) ) (! (succHeap Heap@@38 (PolymorphicMapType_27031 (|PolymorphicMapType_27031_18724_53#PolymorphicMapType_27031| Heap@@38) (|PolymorphicMapType_27031_18727_18728#PolymorphicMapType_27031| Heap@@38) (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| Heap@@38) (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| Heap@@38) (store (|PolymorphicMapType_27031_27091_74052#PolymorphicMapType_27031| Heap@@38) o_41 f_44 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27031 (|PolymorphicMapType_27031_18724_53#PolymorphicMapType_27031| Heap@@38) (|PolymorphicMapType_27031_18727_18728#PolymorphicMapType_27031| Heap@@38) (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| Heap@@38) (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| Heap@@38) (store (|PolymorphicMapType_27031_27091_74052#PolymorphicMapType_27031| Heap@@38) o_41 f_44 v@@4)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_27031) (o_41@@0 T@Ref) (f_44@@0 T@Field_18944_74185) (v@@5 T@PolymorphicMapType_27580) ) (! (succHeap Heap@@39 (PolymorphicMapType_27031 (|PolymorphicMapType_27031_18724_53#PolymorphicMapType_27031| Heap@@39) (|PolymorphicMapType_27031_18727_18728#PolymorphicMapType_27031| Heap@@39) (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| Heap@@39) (store (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| Heap@@39) o_41@@0 f_44@@0 v@@5) (|PolymorphicMapType_27031_27091_74052#PolymorphicMapType_27031| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27031 (|PolymorphicMapType_27031_18724_53#PolymorphicMapType_27031| Heap@@39) (|PolymorphicMapType_27031_18727_18728#PolymorphicMapType_27031| Heap@@39) (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| Heap@@39) (store (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| Heap@@39) o_41@@0 f_44@@0 v@@5) (|PolymorphicMapType_27031_27091_74052#PolymorphicMapType_27031| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_27031) (o_41@@1 T@Ref) (f_44@@1 T@Field_33141_3373) (v@@6 Int) ) (! (succHeap Heap@@40 (PolymorphicMapType_27031 (|PolymorphicMapType_27031_18724_53#PolymorphicMapType_27031| Heap@@40) (|PolymorphicMapType_27031_18727_18728#PolymorphicMapType_27031| Heap@@40) (store (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| Heap@@40) o_41@@1 f_44@@1 v@@6) (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| Heap@@40) (|PolymorphicMapType_27031_27091_74052#PolymorphicMapType_27031| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27031 (|PolymorphicMapType_27031_18724_53#PolymorphicMapType_27031| Heap@@40) (|PolymorphicMapType_27031_18727_18728#PolymorphicMapType_27031| Heap@@40) (store (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| Heap@@40) o_41@@1 f_44@@1 v@@6) (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| Heap@@40) (|PolymorphicMapType_27031_27091_74052#PolymorphicMapType_27031| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_27031) (o_41@@2 T@Ref) (f_44@@2 T@Field_27104_27105) (v@@7 T@Ref) ) (! (succHeap Heap@@41 (PolymorphicMapType_27031 (|PolymorphicMapType_27031_18724_53#PolymorphicMapType_27031| Heap@@41) (store (|PolymorphicMapType_27031_18727_18728#PolymorphicMapType_27031| Heap@@41) o_41@@2 f_44@@2 v@@7) (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| Heap@@41) (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| Heap@@41) (|PolymorphicMapType_27031_27091_74052#PolymorphicMapType_27031| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27031 (|PolymorphicMapType_27031_18724_53#PolymorphicMapType_27031| Heap@@41) (store (|PolymorphicMapType_27031_18727_18728#PolymorphicMapType_27031| Heap@@41) o_41@@2 f_44@@2 v@@7) (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| Heap@@41) (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| Heap@@41) (|PolymorphicMapType_27031_27091_74052#PolymorphicMapType_27031| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_27031) (o_41@@3 T@Ref) (f_44@@3 T@Field_27091_53) (v@@8 Bool) ) (! (succHeap Heap@@42 (PolymorphicMapType_27031 (store (|PolymorphicMapType_27031_18724_53#PolymorphicMapType_27031| Heap@@42) o_41@@3 f_44@@3 v@@8) (|PolymorphicMapType_27031_18727_18728#PolymorphicMapType_27031| Heap@@42) (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| Heap@@42) (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| Heap@@42) (|PolymorphicMapType_27031_27091_74052#PolymorphicMapType_27031| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27031 (store (|PolymorphicMapType_27031_18724_53#PolymorphicMapType_27031| Heap@@42) o_41@@3 f_44@@3 v@@8) (|PolymorphicMapType_27031_18727_18728#PolymorphicMapType_27031| Heap@@42) (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| Heap@@42) (|PolymorphicMapType_27031_18944_74229#PolymorphicMapType_27031| Heap@@42) (|PolymorphicMapType_27031_27091_74052#PolymorphicMapType_27031| Heap@@42)))
)))
(assert (forall ((s@@25 T@Seq_36187) (t@@9 T@Seq_36187) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_19001| s@@25))) (= (|Seq#Drop_19001| (|Seq#Append_36187| s@@25 t@@9) n@@19) (|Seq#Append_36187| (|Seq#Drop_19001| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.431:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_19001| (|Seq#Append_36187| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3251) (t@@10 T@Seq_3251) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3251| s@@26))) (= (|Seq#Drop_3251| (|Seq#Append_3251| s@@26 t@@10) n@@20) (|Seq#Append_3251| (|Seq#Drop_3251| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.431:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3251| (|Seq#Append_3251| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_36187) (n@@21 Int) (i@@31 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@31)) (< i@@31 (|Seq#Length_19001| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@31 n@@21) n@@21) i@@31) (= (|Seq#Index_19001| (|Seq#Drop_19001| s@@27 n@@21) (|Seq#Sub| i@@31 n@@21)) (|Seq#Index_19001| s@@27 i@@31))))
 :qid |stdinbpl.367:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_19001| s@@27 n@@21) (|Seq#Index_19001| s@@27 i@@31))
)))
(assert (forall ((s@@28 T@Seq_3251) (n@@22 Int) (i@@32 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@32)) (< i@@32 (|Seq#Length_3251| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@32 n@@22) n@@22) i@@32) (= (|Seq#Index_3251| (|Seq#Drop_3251| s@@28 n@@22) (|Seq#Sub| i@@32 n@@22)) (|Seq#Index_3251| s@@28 i@@32))))
 :qid |stdinbpl.367:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3251| s@@28 n@@22) (|Seq#Index_3251| s@@28 i@@32))
)))
(assert (forall ((s0@@7 T@Seq_36187) (s1@@7 T@Seq_36187) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_19001|)) (not (= s1@@7 |Seq#Empty_19001|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_19001| s0@@7))) (= (|Seq#Index_19001| (|Seq#Append_36187| s0@@7 s1@@7) n@@23) (|Seq#Index_19001| s0@@7 n@@23)))
 :qid |stdinbpl.307:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_19001| (|Seq#Append_36187| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_19001| s0@@7 n@@23) (|Seq#Append_36187| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3251) (s1@@8 T@Seq_3251) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3251|)) (not (= s1@@8 |Seq#Empty_3251|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3251| s0@@8))) (= (|Seq#Index_3251| (|Seq#Append_3251| s0@@8 s1@@8) n@@24) (|Seq#Index_3251| s0@@8 n@@24)))
 :qid |stdinbpl.307:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3251| (|Seq#Append_3251| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3251| s0@@8 n@@24) (|Seq#Append_3251| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_36187) (s1@@9 T@Seq_36187) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_19001|)) (not (= s1@@9 |Seq#Empty_19001|))) (<= 0 m)) (< m (|Seq#Length_19001| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_19001| s0@@9)) (|Seq#Length_19001| s0@@9)) m) (= (|Seq#Index_19001| (|Seq#Append_36187| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_19001| s0@@9))) (|Seq#Index_19001| s1@@9 m))))
 :qid |stdinbpl.312:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_19001| s1@@9 m) (|Seq#Append_36187| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3251) (s1@@10 T@Seq_3251) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3251|)) (not (= s1@@10 |Seq#Empty_3251|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3251| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3251| s0@@10)) (|Seq#Length_3251| s0@@10)) m@@0) (= (|Seq#Index_3251| (|Seq#Append_3251| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3251| s0@@10))) (|Seq#Index_3251| s1@@10 m@@0))))
 :qid |stdinbpl.312:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3251| s1@@10 m@@0) (|Seq#Append_3251| s0@@10 s1@@10))
)))
(assert (forall ((o_41@@4 T@Ref) (f_27 T@Field_27104_27105) (Heap@@43 T@PolymorphicMapType_27031) ) (!  (=> (select (|PolymorphicMapType_27031_18724_53#PolymorphicMapType_27031| Heap@@43) o_41@@4 $allocated) (select (|PolymorphicMapType_27031_18724_53#PolymorphicMapType_27031| Heap@@43) (select (|PolymorphicMapType_27031_18727_18728#PolymorphicMapType_27031| Heap@@43) o_41@@4 f_27) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_27031_18727_18728#PolymorphicMapType_27031| Heap@@43) o_41@@4 f_27))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_27031) (Mask@@35 T@PolymorphicMapType_27052) (i@@33 Int) (lo@@11 Int) (hi@@23 Int) (step@@7 Int) (vmin@@7 Int) (vmax@@7 Int) (ar@@23 T@Seq_36187) ) (!  (=> (state Heap@@44 Mask@@35) (= (|sum_square'| Heap@@44 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax@@7 ar@@23) (|sum_square#frame| (FrameFragment_5068 (|sum_square#condqp2| Heap@@44 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax@@7 ar@@23)) i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax@@7 ar@@23)))
 :qid |stdinbpl.1061:15|
 :skolemid |95|
 :pattern ( (state Heap@@44 Mask@@35) (|sum_square'| Heap@@44 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax@@7 ar@@23))
)))
(assert (forall ((s@@29 T@Seq_36187) (x@@3 T@Ref) (i@@34 Int) ) (!  (=> (and (and (<= 0 i@@34) (< i@@34 (|Seq#Length_19001| s@@29))) (= (|Seq#Index_19001| s@@29 i@@34) x@@3)) (|Seq#Contains_36187| s@@29 x@@3))
 :qid |stdinbpl.464:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_36187| s@@29 x@@3) (|Seq#Index_19001| s@@29 i@@34))
)))
(assert (forall ((s@@30 T@Seq_3251) (x@@4 Int) (i@@35 Int) ) (!  (=> (and (and (<= 0 i@@35) (< i@@35 (|Seq#Length_3251| s@@30))) (= (|Seq#Index_3251| s@@30 i@@35) x@@4)) (|Seq#Contains_3251| s@@30 x@@4))
 :qid |stdinbpl.464:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3251| s@@30 x@@4) (|Seq#Index_3251| s@@30 i@@35))
)))
(assert (forall ((s0@@11 T@Seq_36187) (s1@@11 T@Seq_36187) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_36187| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_36187| s0@@11 s1@@11))) (not (= (|Seq#Length_19001| s0@@11) (|Seq#Length_19001| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_36187| s0@@11 s1@@11))) (= (|Seq#Length_19001| s0@@11) (|Seq#Length_19001| s1@@11))) (= (|Seq#SkolemDiff_36187| s0@@11 s1@@11) (|Seq#SkolemDiff_36187| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_36187| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_36187| s0@@11 s1@@11) (|Seq#Length_19001| s0@@11))) (not (= (|Seq#Index_19001| s0@@11 (|Seq#SkolemDiff_36187| s0@@11 s1@@11)) (|Seq#Index_19001| s1@@11 (|Seq#SkolemDiff_36187| s0@@11 s1@@11))))))
 :qid |stdinbpl.568:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_36187| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3251) (s1@@12 T@Seq_3251) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3251| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3251| s0@@12 s1@@12))) (not (= (|Seq#Length_3251| s0@@12) (|Seq#Length_3251| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3251| s0@@12 s1@@12))) (= (|Seq#Length_3251| s0@@12) (|Seq#Length_3251| s1@@12))) (= (|Seq#SkolemDiff_3251| s0@@12 s1@@12) (|Seq#SkolemDiff_3251| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3251| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3251| s0@@12 s1@@12) (|Seq#Length_3251| s0@@12))) (not (= (|Seq#Index_3251| s0@@12 (|Seq#SkolemDiff_3251| s0@@12 s1@@12)) (|Seq#Index_3251| s1@@12 (|Seq#SkolemDiff_3251| s0@@12 s1@@12))))))
 :qid |stdinbpl.568:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3251| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_18944_74052) (v_1@@0 T@FrameType) (q T@Field_18944_74052) (w@@0 T@FrameType) (r T@Field_18944_74052) (u T@FrameType) ) (!  (=> (and (InsidePredicate_27091_27091 p@@1 v_1@@0 q w@@0) (InsidePredicate_27091_27091 q w@@0 r u)) (InsidePredicate_27091_27091 p@@1 v_1@@0 r u))
 :qid |stdinbpl.235:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27091_27091 p@@1 v_1@@0 q w@@0) (InsidePredicate_27091_27091 q w@@0 r u))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_27031) (i@@36 Int) (lo@@12 Int) (hi@@24 Int) (step@@8 Int) (vmin@@8 Int) (vmax@@8 Int) (ar@@24 T@Seq_36187) ) (! (dummyFunction_4053 (|sum_square#triggerStateless| i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax@@8 ar@@24))
 :qid |stdinbpl.1045:15|
 :skolemid |92|
 :pattern ( (|sum_square'| Heap@@45 i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax@@8 ar@@24))
)))
(assert (forall ((s@@31 T@Seq_36187) ) (!  (=> (= (|Seq#Length_19001| s@@31) 0) (= s@@31 |Seq#Empty_19001|))
 :qid |stdinbpl.271:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_19001| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3251) ) (!  (=> (= (|Seq#Length_3251| s@@32) 0) (= s@@32 |Seq#Empty_3251|))
 :qid |stdinbpl.271:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3251| s@@32))
)))
(assert (forall ((s@@33 T@Seq_36187) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_19001| s@@33 n@@25) |Seq#Empty_19001|))
 :qid |stdinbpl.447:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_19001| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3251) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3251| s@@34 n@@26) |Seq#Empty_3251|))
 :qid |stdinbpl.447:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3251| s@@34 n@@26))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_27031) (Mask@@36 T@PolymorphicMapType_27052) (N0@@6 Int) (N1@@6 Int) (i0@@6 Int) (i1@@6 Int) ) (!  (=> (and (state Heap@@46 Mask@@36) (or (< AssumeFunctionsAbove 2) (|Ref__multidim_index_2#trigger| EmptyFrame N0@@6 N1@@6 i0@@6 i1@@6))) (=> (and (and (and (and (and (<= 0 i0@@6) (< i0@@6 N0@@6)) (<= 0 N0@@6)) (<= 0 i1@@6)) (< i1@@6 N1@@6)) (<= 0 N1@@6)) (<= 0 (|Ref__multidim_index_2'| Heap@@46 N0@@6 N1@@6 i0@@6 i1@@6))))
 :qid |stdinbpl.641:15|
 :skolemid |61|
 :pattern ( (state Heap@@46 Mask@@36) (|Ref__multidim_index_2'| Heap@@46 N0@@6 N1@@6 i0@@6 i1@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@47 T@PolymorphicMapType_27031) (Mask@@37 T@PolymorphicMapType_27052) (i@@37 Int) (lo@@13 Int) (hi@@25 Int) (ar@@25 T@Seq_36187) ) (!  (=> (state Heap@@47 Mask@@37) (= (|sum_array'| Heap@@47 i@@37 lo@@13 hi@@25 ar@@25) (|sum_array#frame| (FrameFragment_5068 (|sum_array#condqp1| Heap@@47 i@@37 lo@@13 hi@@25 ar@@25)) i@@37 lo@@13 hi@@25 ar@@25)))
 :qid |stdinbpl.826:15|
 :skolemid |74|
 :pattern ( (state Heap@@47 Mask@@37) (|sum_array'| Heap@@47 i@@37 lo@@13 hi@@25 ar@@25))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_27031) (Mask@@38 T@PolymorphicMapType_27052) (i@@38 Int) (hi@@26 Int) (ar@@26 T@Seq_36187) (v_2@@12 Int) ) (!  (=> (state Heap@@48 Mask@@38) (= (|count_array'| Heap@@48 i@@38 hi@@26 ar@@26 v_2@@12) (|count_array#frame| (FrameFragment_5068 (|count_array#condqp4| Heap@@48 i@@38 hi@@26 ar@@26 v_2@@12)) i@@38 hi@@26 ar@@26 v_2@@12)))
 :qid |stdinbpl.1678:15|
 :skolemid |141|
 :pattern ( (state Heap@@48 Mask@@38) (|count_array'| Heap@@48 i@@38 hi@@26 ar@@26 v_2@@12))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i3 () Int)
(declare-fun M () Int)
(declare-fun j3 () Int)
(declare-fun N () Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_27031)
(declare-fun matrix () T@Seq_36187)
(declare-fun QPMask@4 () T@PolymorphicMapType_27052)
(declare-fun qpRange13 (T@Ref) Bool)
(declare-fun invRecv13 (T@Ref) Int)
(declare-fun j2 () Int)
(declare-fun i3_2 () Int)
(declare-fun j3_2 () Int)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_27031)
(declare-fun neverTriggered15 (Int) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_27052)
(declare-fun qpRange15 (T@Ref) Bool)
(declare-fun invRecv15 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_27052)
(declare-fun Heap@@49 () T@PolymorphicMapType_27031)
(declare-fun qpRange16 (T@Ref) Bool)
(declare-fun invRecv16 (T@Ref) Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_27052)
(declare-fun neverTriggered14 (Int) Bool)
(declare-fun qpRange14 (T@Ref) Bool)
(declare-fun invRecv14 (T@Ref) Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_27052)
(declare-fun ix_2_1 () Int)
(declare-fun jx_2_1 () Int)
(declare-fun diz () T@Ref)
(declare-fun current_thread_id () Int)
(declare-fun qpRange12 (T@Ref) Bool)
(declare-fun invRecv12 (T@Ref) Int)
(declare-fun j1_10 () Int)
(declare-fun ix_24 () Int)
(declare-fun jx_24 () Int)
(declare-fun step@@9 () Int)
(set-info :boogie-vc-id Ref__matrix)
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
 (=> (= (ControlFlow 0 0) 59) (let ((anon38_Then_correct  (and (=> (= (ControlFlow 0 41) (- 0 46)) (<= 0 i3)) (=> (<= 0 i3) (and (=> (= (ControlFlow 0 41) (- 0 45)) (< i3 M)) (=> (< i3 M) (and (=> (= (ControlFlow 0 41) (- 0 44)) (<= 0 M)) (=> (<= 0 M) (and (=> (= (ControlFlow 0 41) (- 0 43)) (<= 0 j3)) (=> (<= 0 j3) (and (=> (= (ControlFlow 0 41) (- 0 42)) (< j3 N)) (=> (< j3 N) (=> (= (ControlFlow 0 41) (- 0 40)) (<= 0 N))))))))))))))
(let ((anon18_correct true))
(let ((anon38_Else_correct  (and (=> (= (ControlFlow 0 47) (- 0 50)) (>= (Ref__multidim_index_2 PostHeap@0 M N i3 j3) 0)) (=> (>= (Ref__multidim_index_2 PostHeap@0 M N i3 j3) 0) (and (=> (= (ControlFlow 0 47) (- 0 49)) (< (Ref__multidim_index_2 PostHeap@0 M N i3 j3) (|Seq#Length_19001| matrix))) (=> (< (Ref__multidim_index_2 PostHeap@0 M N i3 j3) (|Seq#Length_19001| matrix)) (and (=> (= (ControlFlow 0 47) (- 0 48)) (HasDirectPerm_18944_3373 QPMask@4 (|Seq#Index_19001| matrix (Ref__multidim_index_2 PostHeap@0 M N i3 j3)) Ref__Integer_value)) (=> (HasDirectPerm_18944_3373 QPMask@4 (|Seq#Index_19001| matrix (Ref__multidim_index_2 PostHeap@0 M N i3 j3)) Ref__Integer_value) (=> (= (ControlFlow 0 47) 38) anon18_correct)))))))))
(let ((anon37_Then_correct  (=> (and (<= 0 i3) (and (< i3 M) (and (<= 0 j3) (< j3 N)))) (and (=> (= (ControlFlow 0 51) 41) anon38_Then_correct) (=> (= (ControlFlow 0 51) 47) anon38_Else_correct)))))
(let ((anon37_Else_correct  (=> (and (not (and (<= 0 i3) (and (< i3 M) (and (<= 0 j3) (< j3 N))))) (= (ControlFlow 0 39) 38)) anon18_correct)))
(let ((anon36_Else_correct true))
(let ((anon34_Else_correct  (and (=> (= (ControlFlow 0 52) (- 0 53)) (forall ((j2_1 Int) (j2_1_1 Int) ) (!  (=> (and (and (and (and (not (= j2_1 j2_1_1)) (and (<= 0 j2_1) (< j2_1 (* M N)))) (and (<= 0 j2_1_1) (< j2_1_1 (* M N)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_19001| matrix j2_1) (|Seq#Index_19001| matrix j2_1_1))))
 :qid |stdinbpl.2544:15|
 :skolemid |186|
))) (=> (forall ((j2_1@@0 Int) (j2_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j2_1@@0 j2_1_1@@0)) (and (<= 0 j2_1@@0) (< j2_1@@0 (* M N)))) (and (<= 0 j2_1_1@@0) (< j2_1_1@@0 (* M N)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_19001| matrix j2_1@@0) (|Seq#Index_19001| matrix j2_1_1@@0))))
 :qid |stdinbpl.2544:15|
 :skolemid |186|
)) (=> (and (and (forall ((j2_1@@1 Int) ) (!  (=> (and (and (<= 0 j2_1@@1) (< j2_1@@1 (* M N))) (< NoPerm FullPerm)) (and (qpRange13 (|Seq#Index_19001| matrix j2_1@@1)) (= (invRecv13 (|Seq#Index_19001| matrix j2_1@@1)) j2_1@@1)))
 :qid |stdinbpl.2550:22|
 :skolemid |187|
 :pattern ( (|Seq#Index_19001| matrix j2_1@@1))
 :pattern ( (|Seq#Index_19001| matrix j2_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv13 o_4)) (< (invRecv13 o_4) (* M N))) (< NoPerm FullPerm)) (qpRange13 o_4)) (= (|Seq#Index_19001| matrix (invRecv13 o_4)) o_4))
 :qid |stdinbpl.2554:22|
 :skolemid |188|
 :pattern ( (invRecv13 o_4))
))) (and (forall ((j2_1@@2 Int) ) (!  (=> (and (<= 0 j2_1@@2) (< j2_1@@2 (* M N))) (not (= (|Seq#Index_19001| matrix j2_1@@2) null)))
 :qid |stdinbpl.2560:22|
 :skolemid |189|
 :pattern ( (|Seq#Index_19001| matrix j2_1@@2))
 :pattern ( (|Seq#Index_19001| matrix j2_1@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv13 o_4@@0)) (< (invRecv13 o_4@@0) (* M N))) (< NoPerm FullPerm)) (qpRange13 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_19001| matrix (invRecv13 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@4) o_4@@0 Ref__Integer_value) (+ (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| ZeroMask) o_4@@0 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv13 o_4@@0)) (< (invRecv13 o_4@@0) (* M N))) (< NoPerm FullPerm)) (qpRange13 o_4@@0))) (= (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@4) o_4@@0 Ref__Integer_value) (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| ZeroMask) o_4@@0 Ref__Integer_value))))
 :qid |stdinbpl.2566:22|
 :skolemid |190|
 :pattern ( (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@4) o_4@@0 Ref__Integer_value))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_27091_53) ) (!  (=> true (= (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| QPMask@4) o_4@@1 f_5)))
 :qid |stdinbpl.2570:29|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| QPMask@4) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_27104_27105) ) (!  (=> true (= (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| QPMask@4) o_4@@2 f_5@@0)))
 :qid |stdinbpl.2570:29|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| QPMask@4) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_33141_3373) ) (!  (=> (not (= f_5@@1 Ref__Integer_value)) (= (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@4) o_4@@3 f_5@@1)))
 :qid |stdinbpl.2570:29|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@4) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_18944_74052) ) (!  (=> true (= (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| QPMask@4) o_4@@4 f_5@@2)))
 :qid |stdinbpl.2570:29|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| QPMask@4) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_18944_74185) ) (!  (=> true (= (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| QPMask@4) o_4@@5 f_5@@3)))
 :qid |stdinbpl.2570:29|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| QPMask@4) o_4@@5 f_5@@3))
))) (state PostHeap@0 QPMask@4)) (and (state PostHeap@0 QPMask@4) (state PostHeap@0 QPMask@4))) (and (and (=> (= (ControlFlow 0 52) 37) anon36_Else_correct) (=> (= (ControlFlow 0 52) 51) anon37_Then_correct)) (=> (= (ControlFlow 0 52) 39) anon37_Else_correct))))))))
(let ((anon12_correct true))
(let ((anon35_Else_correct  (=> (and (not (and (<= 0 j2) (< j2 (* M N)))) (= (ControlFlow 0 36) 32)) anon12_correct)))
(let ((anon35_Then_correct  (=> (and (<= 0 j2) (< j2 (* M N))) (and (=> (= (ControlFlow 0 33) (- 0 35)) (>= j2 0)) (=> (>= j2 0) (and (=> (= (ControlFlow 0 33) (- 0 34)) (< j2 (|Seq#Length_19001| matrix))) (=> (< j2 (|Seq#Length_19001| matrix)) (=> (= (ControlFlow 0 33) 32) anon12_correct))))))))
(let ((anon33_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (and (=> (= (ControlFlow 0 54) 52) anon34_Else_correct) (=> (= (ControlFlow 0 54) 33) anon35_Then_correct)) (=> (= (ControlFlow 0 54) 36) anon35_Else_correct)))))
(let ((anon27_correct true))
(let ((anon42_Else_correct  (=> (and (not (and (<= 0 i3_2) (and (< i3_2 M) (and (<= 0 j3_2) (< j3_2 N))))) (= (ControlFlow 0 21) 18)) anon27_correct)))
(let ((anon42_Then_correct  (=> (and (<= 0 i3_2) (and (< i3_2 M) (and (<= 0 j3_2) (< j3_2 N)))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (= (select (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| ExhaleHeap@0) (|Seq#Index_19001| matrix (Ref__multidim_index_2 ExhaleHeap@0 M N i3_2 j3_2)) Ref__Integer_value) 0)) (=> (= (select (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| ExhaleHeap@0) (|Seq#Index_19001| matrix (Ref__multidim_index_2 ExhaleHeap@0 M N i3_2 j3_2)) Ref__Integer_value) 0) (=> (= (ControlFlow 0 19) 18) anon27_correct))))))
(let ((anon41_Else_correct true))
(let ((anon39_Else_correct  (=> (forall ((ix_3_1 Int) (jx_3_1 Int) ) (!  (=> (and (>= ix_3_1 0) (and (< ix_3_1 (|Seq#Length_19001| matrix)) (and (>= jx_3_1 0) (and (< jx_3_1 (|Seq#Length_19001| matrix)) (not (= ix_3_1 jx_3_1)))))) (not (= (|Seq#Index_19001| matrix ix_3_1) (|Seq#Index_19001| matrix jx_3_1))))
 :qid |stdinbpl.2639:22|
 :skolemid |193|
 :pattern ( (|Seq#Index_19001| matrix ix_3_1) (|Seq#Index_19001| matrix jx_3_1))
)) (and (=> (= (ControlFlow 0 22) (- 0 27)) (forall ((j_9 Int) (j_26 Int) ) (!  (=> (and (and (and (and (not (= j_9 j_26)) (and (<= 0 j_9) (< j_9 (* M N)))) (and (<= 0 j_26) (< j_26 (* M N)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_19001| matrix j_9) (|Seq#Index_19001| matrix j_26))))
 :qid |stdinbpl.2650:19|
 :skolemid |194|
 :pattern ( (neverTriggered15 j_9) (neverTriggered15 j_26))
))) (=> (forall ((j_9@@0 Int) (j_26@@0 Int) ) (!  (=> (and (and (and (and (not (= j_9@@0 j_26@@0)) (and (<= 0 j_9@@0) (< j_9@@0 (* M N)))) (and (<= 0 j_26@@0) (< j_26@@0 (* M N)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_19001| matrix j_9@@0) (|Seq#Index_19001| matrix j_26@@0))))
 :qid |stdinbpl.2650:19|
 :skolemid |194|
 :pattern ( (neverTriggered15 j_9@@0) (neverTriggered15 j_26@@0))
)) (and (=> (= (ControlFlow 0 22) (- 0 26)) (forall ((j_9@@1 Int) ) (!  (=> (and (<= 0 j_9@@1) (< j_9@@1 (* M N))) (>= (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@0) (|Seq#Index_19001| matrix j_9@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.2657:19|
 :skolemid |195|
 :pattern ( (|Seq#Index_19001| matrix j_9@@1))
 :pattern ( (|Seq#Index_19001| matrix j_9@@1))
))) (=> (forall ((j_9@@2 Int) ) (!  (=> (and (<= 0 j_9@@2) (< j_9@@2 (* M N))) (>= (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@0) (|Seq#Index_19001| matrix j_9@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.2657:19|
 :skolemid |195|
 :pattern ( (|Seq#Index_19001| matrix j_9@@2))
 :pattern ( (|Seq#Index_19001| matrix j_9@@2))
)) (=> (forall ((j_9@@3 Int) ) (!  (=> (and (and (<= 0 j_9@@3) (< j_9@@3 (* M N))) (< NoPerm FullPerm)) (and (qpRange15 (|Seq#Index_19001| matrix j_9@@3)) (= (invRecv15 (|Seq#Index_19001| matrix j_9@@3)) j_9@@3)))
 :qid |stdinbpl.2663:24|
 :skolemid |196|
 :pattern ( (|Seq#Index_19001| matrix j_9@@3))
 :pattern ( (|Seq#Index_19001| matrix j_9@@3))
)) (=> (and (forall ((o_4@@6 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv15 o_4@@6)) (< (invRecv15 o_4@@6) (* M N))) (and (< NoPerm FullPerm) (qpRange15 o_4@@6))) (= (|Seq#Index_19001| matrix (invRecv15 o_4@@6)) o_4@@6))
 :qid |stdinbpl.2667:24|
 :skolemid |197|
 :pattern ( (invRecv15 o_4@@6))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv15 o_4@@7)) (< (invRecv15 o_4@@7) (* M N))) (and (< NoPerm FullPerm) (qpRange15 o_4@@7))) (and (= (|Seq#Index_19001| matrix (invRecv15 o_4@@7)) o_4@@7) (= (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@1) o_4@@7 Ref__Integer_value) (- (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@0) o_4@@7 Ref__Integer_value) FullPerm)))) (=> (not (and (and (<= 0 (invRecv15 o_4@@7)) (< (invRecv15 o_4@@7) (* M N))) (and (< NoPerm FullPerm) (qpRange15 o_4@@7)))) (= (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@1) o_4@@7 Ref__Integer_value) (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@0) o_4@@7 Ref__Integer_value))))
 :qid |stdinbpl.2673:24|
 :skolemid |198|
 :pattern ( (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@1) o_4@@7 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_27091_53) ) (!  (=> true (= (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| QPMask@0) o_4@@8 f_5@@4) (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| QPMask@1) o_4@@8 f_5@@4)))
 :qid |stdinbpl.2679:31|
 :skolemid |199|
 :pattern ( (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| QPMask@1) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_27104_27105) ) (!  (=> true (= (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| QPMask@0) o_4@@9 f_5@@5) (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| QPMask@1) o_4@@9 f_5@@5)))
 :qid |stdinbpl.2679:31|
 :skolemid |199|
 :pattern ( (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| QPMask@1) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_33141_3373) ) (!  (=> (not (= f_5@@6 Ref__Integer_value)) (= (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@0) o_4@@10 f_5@@6) (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@1) o_4@@10 f_5@@6)))
 :qid |stdinbpl.2679:31|
 :skolemid |199|
 :pattern ( (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@1) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_18944_74052) ) (!  (=> true (= (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| QPMask@0) o_4@@11 f_5@@7) (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| QPMask@1) o_4@@11 f_5@@7)))
 :qid |stdinbpl.2679:31|
 :skolemid |199|
 :pattern ( (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| QPMask@1) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_18944_74185) ) (!  (=> true (= (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| QPMask@0) o_4@@12 f_5@@8) (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| QPMask@1) o_4@@12 f_5@@8)))
 :qid |stdinbpl.2679:31|
 :skolemid |199|
 :pattern ( (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| QPMask@1) o_4@@12 f_5@@8))
))) (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@0 QPMask@1)) (and (=> (= (ControlFlow 0 22) (- 0 25)) (forall ((j_1 Int) (j_1_1 Int) ) (!  (=> (and (and (and (and (not (= j_1 j_1_1)) (and (<= 0 j_1) (< j_1 (* M N)))) (and (<= 0 j_1_1) (< j_1_1 (* M N)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_19001| matrix j_1) (|Seq#Index_19001| matrix j_1_1))))
 :qid |stdinbpl.2692:17|
 :skolemid |200|
))) (=> (forall ((j_1@@0 Int) (j_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j_1@@0 j_1_1@@0)) (and (<= 0 j_1@@0) (< j_1@@0 (* M N)))) (and (<= 0 j_1_1@@0) (< j_1_1@@0 (* M N)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_19001| matrix j_1@@0) (|Seq#Index_19001| matrix j_1_1@@0))))
 :qid |stdinbpl.2692:17|
 :skolemid |200|
)) (=> (and (and (forall ((j_1@@1 Int) ) (!  (=> (and (and (<= 0 j_1@@1) (< j_1@@1 (* M N))) (< NoPerm FullPerm)) (and (qpRange16 (|Seq#Index_19001| matrix j_1@@1)) (= (invRecv16 (|Seq#Index_19001| matrix j_1@@1)) j_1@@1)))
 :qid |stdinbpl.2698:24|
 :skolemid |201|
 :pattern ( (|Seq#Index_19001| matrix j_1@@1))
 :pattern ( (|Seq#Index_19001| matrix j_1@@1))
)) (forall ((o_4@@13 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv16 o_4@@13)) (< (invRecv16 o_4@@13) (* M N))) (< NoPerm FullPerm)) (qpRange16 o_4@@13)) (= (|Seq#Index_19001| matrix (invRecv16 o_4@@13)) o_4@@13))
 :qid |stdinbpl.2702:24|
 :skolemid |202|
 :pattern ( (invRecv16 o_4@@13))
))) (and (forall ((j_1@@2 Int) ) (!  (=> (and (<= 0 j_1@@2) (< j_1@@2 (* M N))) (not (= (|Seq#Index_19001| matrix j_1@@2) null)))
 :qid |stdinbpl.2708:24|
 :skolemid |203|
 :pattern ( (|Seq#Index_19001| matrix j_1@@2))
 :pattern ( (|Seq#Index_19001| matrix j_1@@2))
)) (forall ((o_4@@14 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv16 o_4@@14)) (< (invRecv16 o_4@@14) (* M N))) (< NoPerm FullPerm)) (qpRange16 o_4@@14)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_19001| matrix (invRecv16 o_4@@14)) o_4@@14)) (= (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@2) o_4@@14 Ref__Integer_value) (+ (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@1) o_4@@14 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv16 o_4@@14)) (< (invRecv16 o_4@@14) (* M N))) (< NoPerm FullPerm)) (qpRange16 o_4@@14))) (= (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@2) o_4@@14 Ref__Integer_value) (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@1) o_4@@14 Ref__Integer_value))))
 :qid |stdinbpl.2714:24|
 :skolemid |204|
 :pattern ( (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@2) o_4@@14 Ref__Integer_value))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_27091_53) ) (!  (=> true (= (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| QPMask@1) o_4@@15 f_5@@9) (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| QPMask@2) o_4@@15 f_5@@9)))
 :qid |stdinbpl.2718:31|
 :skolemid |205|
 :pattern ( (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| QPMask@1) o_4@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| QPMask@2) o_4@@15 f_5@@9))
)) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_27104_27105) ) (!  (=> true (= (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| QPMask@1) o_4@@16 f_5@@10) (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| QPMask@2) o_4@@16 f_5@@10)))
 :qid |stdinbpl.2718:31|
 :skolemid |205|
 :pattern ( (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| QPMask@1) o_4@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| QPMask@2) o_4@@16 f_5@@10))
))) (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_33141_3373) ) (!  (=> (not (= f_5@@11 Ref__Integer_value)) (= (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@1) o_4@@17 f_5@@11) (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@2) o_4@@17 f_5@@11)))
 :qid |stdinbpl.2718:31|
 :skolemid |205|
 :pattern ( (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@1) o_4@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@2) o_4@@17 f_5@@11))
))) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_18944_74052) ) (!  (=> true (= (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| QPMask@1) o_4@@18 f_5@@12) (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| QPMask@2) o_4@@18 f_5@@12)))
 :qid |stdinbpl.2718:31|
 :skolemid |205|
 :pattern ( (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| QPMask@1) o_4@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| QPMask@2) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_18944_74185) ) (!  (=> true (= (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| QPMask@1) o_4@@19 f_5@@13) (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| QPMask@2) o_4@@19 f_5@@13)))
 :qid |stdinbpl.2718:31|
 :skolemid |205|
 :pattern ( (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| QPMask@1) o_4@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| QPMask@2) o_4@@19 f_5@@13))
))) (state ExhaleHeap@0 QPMask@2)) (and (and (state ExhaleHeap@0 QPMask@2) (forall ((i@@39 Int) (j_2_1 Int) ) (!  (=> (and (<= 0 i@@39) (and (< i@@39 M) (and (<= 0 j_2_1) (< j_2_1 N)))) (= (select (|PolymorphicMapType_27031_18944_3373#PolymorphicMapType_27031| ExhaleHeap@0) (|Seq#Index_19001| matrix (Ref__multidim_index_2 ExhaleHeap@0 M N i@@39 j_2_1)) Ref__Integer_value) 0))
 :qid |stdinbpl.2725:22|
 :skolemid |206|
 :pattern ( (|Seq#Index_19001| matrix (|Ref__multidim_index_2#frame| EmptyFrame M N i@@39 j_2_1)))
))) (and (state ExhaleHeap@0 QPMask@2) (state ExhaleHeap@0 QPMask@2)))) (and (=> (= (ControlFlow 0 22) (- 0 24)) (forall ((j2_2 Int) (j2_2_1 Int) ) (!  (=> (and (and (and (and (not (= j2_2 j2_2_1)) (and (<= 0 j2_2) (< j2_2 (* M N)))) (and (<= 0 j2_2_1) (< j2_2_1 (* M N)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_19001| matrix j2_2) (|Seq#Index_19001| matrix j2_2_1))))
 :qid |stdinbpl.2742:17|
 :skolemid |207|
 :pattern ( (neverTriggered14 j2_2) (neverTriggered14 j2_2_1))
))) (=> (forall ((j2_2@@0 Int) (j2_2_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j2_2@@0 j2_2_1@@0)) (and (<= 0 j2_2@@0) (< j2_2@@0 (* M N)))) (and (<= 0 j2_2_1@@0) (< j2_2_1@@0 (* M N)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_19001| matrix j2_2@@0) (|Seq#Index_19001| matrix j2_2_1@@0))))
 :qid |stdinbpl.2742:17|
 :skolemid |207|
 :pattern ( (neverTriggered14 j2_2@@0) (neverTriggered14 j2_2_1@@0))
)) (and (=> (= (ControlFlow 0 22) (- 0 23)) (forall ((j2_2@@1 Int) ) (!  (=> (and (<= 0 j2_2@@1) (< j2_2@@1 (* M N))) (>= (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@2) (|Seq#Index_19001| matrix j2_2@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.2749:17|
 :skolemid |208|
 :pattern ( (|Seq#Index_19001| matrix j2_2@@1))
 :pattern ( (|Seq#Index_19001| matrix j2_2@@1))
))) (=> (forall ((j2_2@@2 Int) ) (!  (=> (and (<= 0 j2_2@@2) (< j2_2@@2 (* M N))) (>= (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@2) (|Seq#Index_19001| matrix j2_2@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.2749:17|
 :skolemid |208|
 :pattern ( (|Seq#Index_19001| matrix j2_2@@2))
 :pattern ( (|Seq#Index_19001| matrix j2_2@@2))
)) (=> (forall ((j2_2@@3 Int) ) (!  (=> (and (and (<= 0 j2_2@@3) (< j2_2@@3 (* M N))) (< NoPerm FullPerm)) (and (qpRange14 (|Seq#Index_19001| matrix j2_2@@3)) (= (invRecv14 (|Seq#Index_19001| matrix j2_2@@3)) j2_2@@3)))
 :qid |stdinbpl.2755:22|
 :skolemid |209|
 :pattern ( (|Seq#Index_19001| matrix j2_2@@3))
 :pattern ( (|Seq#Index_19001| matrix j2_2@@3))
)) (=> (and (forall ((o_4@@20 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv14 o_4@@20)) (< (invRecv14 o_4@@20) (* M N))) (and (< NoPerm FullPerm) (qpRange14 o_4@@20))) (= (|Seq#Index_19001| matrix (invRecv14 o_4@@20)) o_4@@20))
 :qid |stdinbpl.2759:22|
 :skolemid |210|
 :pattern ( (invRecv14 o_4@@20))
)) (forall ((o_4@@21 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv14 o_4@@21)) (< (invRecv14 o_4@@21) (* M N))) (and (< NoPerm FullPerm) (qpRange14 o_4@@21))) (and (= (|Seq#Index_19001| matrix (invRecv14 o_4@@21)) o_4@@21) (= (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@3) o_4@@21 Ref__Integer_value) (- (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@2) o_4@@21 Ref__Integer_value) FullPerm)))) (=> (not (and (and (<= 0 (invRecv14 o_4@@21)) (< (invRecv14 o_4@@21) (* M N))) (and (< NoPerm FullPerm) (qpRange14 o_4@@21)))) (= (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@3) o_4@@21 Ref__Integer_value) (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@2) o_4@@21 Ref__Integer_value))))
 :qid |stdinbpl.2765:22|
 :skolemid |211|
 :pattern ( (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@3) o_4@@21 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_4@@22 T@Ref) (f_5@@14 T@Field_27091_53) ) (!  (=> true (= (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| QPMask@2) o_4@@22 f_5@@14) (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| QPMask@3) o_4@@22 f_5@@14)))
 :qid |stdinbpl.2771:29|
 :skolemid |212|
 :pattern ( (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| QPMask@3) o_4@@22 f_5@@14))
)) (forall ((o_4@@23 T@Ref) (f_5@@15 T@Field_27104_27105) ) (!  (=> true (= (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| QPMask@2) o_4@@23 f_5@@15) (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| QPMask@3) o_4@@23 f_5@@15)))
 :qid |stdinbpl.2771:29|
 :skolemid |212|
 :pattern ( (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| QPMask@3) o_4@@23 f_5@@15))
))) (forall ((o_4@@24 T@Ref) (f_5@@16 T@Field_33141_3373) ) (!  (=> (not (= f_5@@16 Ref__Integer_value)) (= (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@2) o_4@@24 f_5@@16) (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@3) o_4@@24 f_5@@16)))
 :qid |stdinbpl.2771:29|
 :skolemid |212|
 :pattern ( (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@3) o_4@@24 f_5@@16))
))) (forall ((o_4@@25 T@Ref) (f_5@@17 T@Field_18944_74052) ) (!  (=> true (= (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| QPMask@2) o_4@@25 f_5@@17) (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| QPMask@3) o_4@@25 f_5@@17)))
 :qid |stdinbpl.2771:29|
 :skolemid |212|
 :pattern ( (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| QPMask@3) o_4@@25 f_5@@17))
))) (forall ((o_4@@26 T@Ref) (f_5@@18 T@Field_18944_74185) ) (!  (=> true (= (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| QPMask@2) o_4@@26 f_5@@18) (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| QPMask@3) o_4@@26 f_5@@18)))
 :qid |stdinbpl.2771:29|
 :skolemid |212|
 :pattern ( (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| QPMask@3) o_4@@26 f_5@@18))
))) (and (and (=> (= (ControlFlow 0 22) 17) anon41_Else_correct) (=> (= (ControlFlow 0 22) 19) anon42_Then_correct)) (=> (= (ControlFlow 0 22) 21) anon42_Else_correct)))))))))))))))))))))))
(let ((anon23_correct true))
(let ((anon40_Else_correct  (=> (and (not (and (>= ix_2_1 0) (and (< ix_2_1 (|Seq#Length_19001| matrix)) (and (>= jx_2_1 0) (and (< jx_2_1 (|Seq#Length_19001| matrix)) (not (= ix_2_1 jx_2_1))))))) (= (ControlFlow 0 16) 13)) anon23_correct)))
(let ((anon40_Then_correct  (=> (and (>= ix_2_1 0) (and (< ix_2_1 (|Seq#Length_19001| matrix)) (and (>= jx_2_1 0) (and (< jx_2_1 (|Seq#Length_19001| matrix)) (not (= ix_2_1 jx_2_1)))))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (not (= (|Seq#Index_19001| matrix ix_2_1) (|Seq#Index_19001| matrix jx_2_1)))) (=> (not (= (|Seq#Index_19001| matrix ix_2_1) (|Seq#Index_19001| matrix jx_2_1))) (=> (= (ControlFlow 0 14) 13) anon23_correct))))))
(let ((anon33_Else_correct  (and (=> (= (ControlFlow 0 28) (- 0 31)) (not (= diz null))) (=> (not (= diz null)) (and (=> (= (ControlFlow 0 28) (- 0 30)) (>= current_thread_id 0)) (=> (>= current_thread_id 0) (and (=> (= (ControlFlow 0 28) (- 0 29)) (<= (* M N) (|Seq#Length_19001| matrix))) (=> (<= (* M N) (|Seq#Length_19001| matrix)) (and (and (=> (= (ControlFlow 0 28) 22) anon39_Else_correct) (=> (= (ControlFlow 0 28) 14) anon40_Then_correct)) (=> (= (ControlFlow 0 28) 16) anon40_Else_correct))))))))))
(let ((anon31_Else_correct  (and (=> (= (ControlFlow 0 55) (- 0 56)) (forall ((j1_1 Int) (j1_1_1 Int) ) (!  (=> (and (and (and (and (not (= j1_1 j1_1_1)) (and (<= 0 j1_1) (< j1_1 (* M N)))) (and (<= 0 j1_1_1) (< j1_1_1 (* M N)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_19001| matrix j1_1) (|Seq#Index_19001| matrix j1_1_1))))
 :qid |stdinbpl.2487:15|
 :skolemid |180|
))) (=> (forall ((j1_1@@0 Int) (j1_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j1_1@@0 j1_1_1@@0)) (and (<= 0 j1_1@@0) (< j1_1@@0 (* M N)))) (and (<= 0 j1_1_1@@0) (< j1_1_1@@0 (* M N)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_19001| matrix j1_1@@0) (|Seq#Index_19001| matrix j1_1_1@@0))))
 :qid |stdinbpl.2487:15|
 :skolemid |180|
)) (=> (and (and (forall ((j1_1@@1 Int) ) (!  (=> (and (and (<= 0 j1_1@@1) (< j1_1@@1 (* M N))) (< NoPerm FullPerm)) (and (qpRange12 (|Seq#Index_19001| matrix j1_1@@1)) (= (invRecv12 (|Seq#Index_19001| matrix j1_1@@1)) j1_1@@1)))
 :qid |stdinbpl.2493:22|
 :skolemid |181|
 :pattern ( (|Seq#Index_19001| matrix j1_1@@1))
 :pattern ( (|Seq#Index_19001| matrix j1_1@@1))
)) (forall ((o_4@@27 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv12 o_4@@27)) (< (invRecv12 o_4@@27) (* M N))) (< NoPerm FullPerm)) (qpRange12 o_4@@27)) (= (|Seq#Index_19001| matrix (invRecv12 o_4@@27)) o_4@@27))
 :qid |stdinbpl.2497:22|
 :skolemid |182|
 :pattern ( (invRecv12 o_4@@27))
))) (and (forall ((j1_1@@2 Int) ) (!  (=> (and (<= 0 j1_1@@2) (< j1_1@@2 (* M N))) (not (= (|Seq#Index_19001| matrix j1_1@@2) null)))
 :qid |stdinbpl.2503:22|
 :skolemid |183|
 :pattern ( (|Seq#Index_19001| matrix j1_1@@2))
 :pattern ( (|Seq#Index_19001| matrix j1_1@@2))
)) (forall ((o_4@@28 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv12 o_4@@28)) (< (invRecv12 o_4@@28) (* M N))) (< NoPerm FullPerm)) (qpRange12 o_4@@28)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_19001| matrix (invRecv12 o_4@@28)) o_4@@28)) (= (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@0) o_4@@28 Ref__Integer_value) (+ (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| ZeroMask) o_4@@28 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv12 o_4@@28)) (< (invRecv12 o_4@@28) (* M N))) (< NoPerm FullPerm)) (qpRange12 o_4@@28))) (= (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@0) o_4@@28 Ref__Integer_value) (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| ZeroMask) o_4@@28 Ref__Integer_value))))
 :qid |stdinbpl.2509:22|
 :skolemid |184|
 :pattern ( (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@0) o_4@@28 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_4@@29 T@Ref) (f_5@@19 T@Field_27091_53) ) (!  (=> true (= (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| ZeroMask) o_4@@29 f_5@@19) (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| QPMask@0) o_4@@29 f_5@@19)))
 :qid |stdinbpl.2513:29|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| ZeroMask) o_4@@29 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_27052_18944_53#PolymorphicMapType_27052| QPMask@0) o_4@@29 f_5@@19))
)) (forall ((o_4@@30 T@Ref) (f_5@@20 T@Field_27104_27105) ) (!  (=> true (= (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| ZeroMask) o_4@@30 f_5@@20) (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| QPMask@0) o_4@@30 f_5@@20)))
 :qid |stdinbpl.2513:29|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| ZeroMask) o_4@@30 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_27052_18944_27105#PolymorphicMapType_27052| QPMask@0) o_4@@30 f_5@@20))
))) (forall ((o_4@@31 T@Ref) (f_5@@21 T@Field_33141_3373) ) (!  (=> (not (= f_5@@21 Ref__Integer_value)) (= (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| ZeroMask) o_4@@31 f_5@@21) (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@0) o_4@@31 f_5@@21)))
 :qid |stdinbpl.2513:29|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| ZeroMask) o_4@@31 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_27052_18944_3373#PolymorphicMapType_27052| QPMask@0) o_4@@31 f_5@@21))
))) (forall ((o_4@@32 T@Ref) (f_5@@22 T@Field_18944_74052) ) (!  (=> true (= (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| ZeroMask) o_4@@32 f_5@@22) (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| QPMask@0) o_4@@32 f_5@@22)))
 :qid |stdinbpl.2513:29|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| ZeroMask) o_4@@32 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_27052_18944_74052#PolymorphicMapType_27052| QPMask@0) o_4@@32 f_5@@22))
))) (forall ((o_4@@33 T@Ref) (f_5@@23 T@Field_18944_74185) ) (!  (=> true (= (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| ZeroMask) o_4@@33 f_5@@23) (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| QPMask@0) o_4@@33 f_5@@23)))
 :qid |stdinbpl.2513:29|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| ZeroMask) o_4@@33 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_27052_18944_78307#PolymorphicMapType_27052| QPMask@0) o_4@@33 f_5@@23))
))) (and (state Heap@@49 QPMask@0) (state Heap@@49 QPMask@0))) (and (=> (= (ControlFlow 0 55) 54) anon33_Then_correct) (=> (= (ControlFlow 0 55) 28) anon33_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon32_Else_correct  (=> (and (not (and (<= 0 j1_10) (< j1_10 (* M N)))) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon32_Then_correct  (=> (and (<= 0 j1_10) (< j1_10 (* M N))) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= j1_10 0)) (=> (>= j1_10 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< j1_10 (|Seq#Length_19001| matrix))) (=> (< j1_10 (|Seq#Length_19001| matrix)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon29_Else_correct  (=> (and (forall ((ix_1 Int) (jx_1 Int) ) (!  (=> (and (>= ix_1 0) (and (< ix_1 (|Seq#Length_19001| matrix)) (and (>= jx_1 0) (and (< jx_1 (|Seq#Length_19001| matrix)) (not (= ix_1 jx_1)))))) (not (= (|Seq#Index_19001| matrix ix_1) (|Seq#Index_19001| matrix jx_1))))
 :qid |stdinbpl.2469:20|
 :skolemid |179|
 :pattern ( (|Seq#Index_19001| matrix ix_1) (|Seq#Index_19001| matrix jx_1))
)) (state Heap@@49 ZeroMask)) (and (and (=> (= (ControlFlow 0 57) 55) anon31_Else_correct) (=> (= (ControlFlow 0 57) 9) anon32_Then_correct)) (=> (= (ControlFlow 0 57) 12) anon32_Else_correct)))))
(let ((anon3_correct true))
(let ((anon30_Else_correct  (=> (and (not (and (>= ix_24 0) (and (< ix_24 (|Seq#Length_19001| matrix)) (and (>= jx_24 0) (and (< jx_24 (|Seq#Length_19001| matrix)) (not (= ix_24 jx_24))))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon30_Then_correct  (=> (and (>= ix_24 0) (and (< ix_24 (|Seq#Length_19001| matrix)) (and (>= jx_24 0) (and (< jx_24 (|Seq#Length_19001| matrix)) (not (= ix_24 jx_24)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= ix_24 0)) (=> (>= ix_24 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< ix_24 (|Seq#Length_19001| matrix))) (=> (< ix_24 (|Seq#Length_19001| matrix)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= jx_24 0)) (=> (>= jx_24 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< jx_24 (|Seq#Length_19001| matrix))) (=> (< jx_24 (|Seq#Length_19001| matrix)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (state Heap@@49 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_27031_18724_53#PolymorphicMapType_27031| Heap@@49) diz $allocated)) (and (not (= diz null)) (state Heap@@49 ZeroMask))) (=> (and (and (and (>= current_thread_id 0) (state Heap@@49 ZeroMask)) (and (> M 0) (> N 0))) (and (and (>= step@@9 N) (state Heap@@49 ZeroMask)) (and (<= (* M N) (|Seq#Length_19001| matrix)) (state Heap@@49 ZeroMask)))) (and (and (=> (= (ControlFlow 0 58) 57) anon29_Else_correct) (=> (= (ControlFlow 0 58) 2) anon30_Then_correct)) (=> (= (ControlFlow 0 58) 7) anon30_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 59) 58) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid