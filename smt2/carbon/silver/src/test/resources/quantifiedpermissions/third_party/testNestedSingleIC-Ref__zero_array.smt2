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
(declare-sort T@Field_25000_53 0)
(declare-sort T@Field_25013_25014 0)
(declare-sort T@Field_31050_3373 0)
(declare-sort T@Field_17687_68289 0)
(declare-sort T@Field_17687_68156 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_24961 0)) (((PolymorphicMapType_24961 (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| (Array T@Ref T@Field_31050_3373 Real)) (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| (Array T@Ref T@Field_25000_53 Real)) (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| (Array T@Ref T@Field_25013_25014 Real)) (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| (Array T@Ref T@Field_17687_68156 Real)) (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| (Array T@Ref T@Field_17687_68289 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_25489 0)) (((PolymorphicMapType_25489 (|PolymorphicMapType_25489_25000_53#PolymorphicMapType_25489| (Array T@Ref T@Field_25000_53 Bool)) (|PolymorphicMapType_25489_25000_25014#PolymorphicMapType_25489| (Array T@Ref T@Field_25013_25014 Bool)) (|PolymorphicMapType_25489_25000_3373#PolymorphicMapType_25489| (Array T@Ref T@Field_31050_3373 Bool)) (|PolymorphicMapType_25489_25000_68156#PolymorphicMapType_25489| (Array T@Ref T@Field_17687_68156 Bool)) (|PolymorphicMapType_25489_25000_69467#PolymorphicMapType_25489| (Array T@Ref T@Field_17687_68289 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_24940 0)) (((PolymorphicMapType_24940 (|PolymorphicMapType_24940_17467_53#PolymorphicMapType_24940| (Array T@Ref T@Field_25000_53 Bool)) (|PolymorphicMapType_24940_17470_17471#PolymorphicMapType_24940| (Array T@Ref T@Field_25013_25014 T@Ref)) (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| (Array T@Ref T@Field_31050_3373 Int)) (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| (Array T@Ref T@Field_17687_68289 T@PolymorphicMapType_25489)) (|PolymorphicMapType_24940_25000_68156#PolymorphicMapType_24940| (Array T@Ref T@Field_17687_68156 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_25000_53)
(declare-fun Ref__Integer_value () T@Field_31050_3373)
(declare-sort T@Seq_32092 0)
(declare-fun |Seq#Length_17726| (T@Seq_32092) Int)
(declare-fun |Seq#Drop_17726| (T@Seq_32092 Int) T@Seq_32092)
(declare-sort T@Seq_3251 0)
(declare-fun |Seq#Length_3251| (T@Seq_3251) Int)
(declare-fun |Seq#Drop_3251| (T@Seq_3251 Int) T@Seq_3251)
(declare-fun state (T@PolymorphicMapType_24940 T@PolymorphicMapType_24961) Bool)
(declare-fun |count_square'| (T@PolymorphicMapType_24940 Int Int Int Int Int Int T@Seq_32092 Int) Int)
(declare-fun |count_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_32092 Int) Int)
(declare-fun FrameFragment_4228 (Int) T@FrameType)
(declare-fun |count_square#condqp3| (T@PolymorphicMapType_24940 Int Int Int Int Int Int T@Seq_32092 Int) Int)
(declare-fun succHeap (T@PolymorphicMapType_24940 T@PolymorphicMapType_24940) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_24940 T@PolymorphicMapType_24940) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_24961) Bool)
(declare-fun |sum_list'| (T@PolymorphicMapType_24940 Int Int T@Seq_3251) Int)
(declare-fun dummyFunction_3680 (Int) Bool)
(declare-fun |sum_list#triggerStateless| (Int Int T@Seq_3251) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_25489)
(declare-fun |Seq#Index_17726| (T@Seq_32092 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3251| (T@Seq_3251 Int) Int)
(declare-fun |Seq#Empty_17726| () T@Seq_32092)
(declare-fun |Seq#Empty_3251| () T@Seq_3251)
(declare-fun |Seq#Update_17726| (T@Seq_32092 Int T@Ref) T@Seq_32092)
(declare-fun |Seq#Update_3251| (T@Seq_3251 Int Int) T@Seq_3251)
(declare-fun |Seq#Take_17726| (T@Seq_32092 Int) T@Seq_32092)
(declare-fun |Seq#Take_3251| (T@Seq_3251 Int) T@Seq_3251)
(declare-fun |Seq#Contains_3251| (T@Seq_3251 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3251)
(declare-fun |Seq#Contains_32092| (T@Seq_32092 T@Ref) Bool)
(declare-fun |Seq#Skolem_32092| (T@Seq_32092 T@Ref) Int)
(declare-fun |Seq#Skolem_3251| (T@Seq_3251 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_24940 T@PolymorphicMapType_24940 T@PolymorphicMapType_24961) Bool)
(declare-fun IsPredicateField_17687_68247 (T@Field_17687_68156) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_17687 (T@Field_17687_68156) T@Field_17687_68289)
(declare-fun HasDirectPerm_17687_68220 (T@PolymorphicMapType_24961 T@Ref T@Field_17687_68156) Bool)
(declare-fun IsWandField_17687_69994 (T@Field_17687_68156) Bool)
(declare-fun WandMaskField_17687 (T@Field_17687_68156) T@Field_17687_68289)
(declare-fun |Seq#Singleton_17726| (T@Ref) T@Seq_32092)
(declare-fun |Seq#Singleton_3251| (Int) T@Seq_3251)
(declare-fun count_square (T@PolymorphicMapType_24940 Int Int Int Int Int Int T@Seq_32092 Int) Int)
(declare-fun |count_square#triggerStateless| (Int Int Int Int Int Int T@Seq_32092 Int) Int)
(declare-fun |Seq#Append_32092| (T@Seq_32092 T@Seq_32092) T@Seq_32092)
(declare-fun |Seq#Append_3251| (T@Seq_3251 T@Seq_3251) T@Seq_3251)
(declare-fun sum_array (T@PolymorphicMapType_24940 Int Int Int T@Seq_32092) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |sum_array'| (T@PolymorphicMapType_24940 Int Int Int T@Seq_32092) Int)
(declare-fun |sum_square#condqp2| (T@PolymorphicMapType_24940 Int Int Int Int Int Int T@Seq_32092) Int)
(declare-fun |sk_sum_square#condqp2| (Int Int) Int)
(declare-fun |sk_count_square#condqp3| (Int Int) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_24940)
(declare-fun ZeroMask () T@PolymorphicMapType_24961)
(declare-fun InsidePredicate_25000_25000 (T@Field_17687_68156 T@FrameType T@Field_17687_68156 T@FrameType) Bool)
(declare-fun IsPredicateField_17687_3373 (T@Field_31050_3373) Bool)
(declare-fun IsWandField_17687_3373 (T@Field_31050_3373) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_17687_73540 (T@Field_17687_68289) Bool)
(declare-fun IsWandField_17687_73556 (T@Field_17687_68289) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_17687_25014 (T@Field_25013_25014) Bool)
(declare-fun IsWandField_17687_25014 (T@Field_25013_25014) Bool)
(declare-fun IsPredicateField_17687_53 (T@Field_25000_53) Bool)
(declare-fun IsWandField_17687_53 (T@Field_25000_53) Bool)
(declare-fun |sum_list#frame| (T@FrameType Int Int T@Seq_3251) Int)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun HasDirectPerm_17687_73994 (T@PolymorphicMapType_24961 T@Ref T@Field_17687_68289) Bool)
(declare-fun HasDirectPerm_17687_25014 (T@PolymorphicMapType_24961 T@Ref T@Field_25013_25014) Bool)
(declare-fun HasDirectPerm_17687_53 (T@PolymorphicMapType_24961 T@Ref T@Field_25000_53) Bool)
(declare-fun HasDirectPerm_17687_3373 (T@PolymorphicMapType_24961 T@Ref T@Field_31050_3373) Bool)
(declare-fun |sum_array#triggerStateless| (Int Int Int T@Seq_32092) Int)
(declare-fun |count_list'| (T@PolymorphicMapType_24940 Int Int T@Seq_3251 Int) Int)
(declare-fun |count_list#triggerStateless| (Int Int T@Seq_3251 Int) Int)
(declare-fun |count_array'| (T@PolymorphicMapType_24940 Int Int T@Seq_32092 Int) Int)
(declare-fun |count_array#triggerStateless| (Int Int T@Seq_32092 Int) Int)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sum_square (T@PolymorphicMapType_24940 Int Int Int Int Int Int T@Seq_32092) Int)
(declare-fun |sum_square'| (T@PolymorphicMapType_24940 Int Int Int Int Int Int T@Seq_32092) Int)
(declare-fun count_list (T@PolymorphicMapType_24940 Int Int T@Seq_3251 Int) Int)
(declare-fun count_array (T@PolymorphicMapType_24940 Int Int T@Seq_32092 Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_24961 T@PolymorphicMapType_24961 T@PolymorphicMapType_24961) Bool)
(declare-fun |sum_square#triggerStateless| (Int Int Int Int Int Int T@Seq_32092) Int)
(declare-fun |count_list#frame| (T@FrameType Int Int T@Seq_3251 Int) Int)
(declare-fun |Seq#Equal_32092| (T@Seq_32092 T@Seq_32092) Bool)
(declare-fun |Seq#Equal_3251| (T@Seq_3251 T@Seq_3251) Bool)
(declare-fun sum_list (T@PolymorphicMapType_24940 Int Int T@Seq_3251) Int)
(declare-fun |Seq#ContainsTrigger_17726| (T@Seq_32092 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3251| (T@Seq_3251 Int) Bool)
(declare-fun |count_array#condqp4| (T@PolymorphicMapType_24940 Int Int T@Seq_32092 Int) Int)
(declare-fun |sk_count_array#condqp4| (Int Int) Int)
(declare-fun |sum_array#condqp1| (T@PolymorphicMapType_24940 Int Int Int T@Seq_32092) Int)
(declare-fun |sk_sum_array#condqp1| (Int Int) Int)
(declare-fun |sum_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_32092) Int)
(declare-fun |Seq#SkolemDiff_32092| (T@Seq_32092 T@Seq_32092) Int)
(declare-fun |Seq#SkolemDiff_3251| (T@Seq_3251 T@Seq_3251) Int)
(declare-fun |sum_array#frame| (T@FrameType Int Int Int T@Seq_32092) Int)
(declare-fun |count_array#frame| (T@FrameType Int Int T@Seq_32092 Int) Int)
(assert (forall ((s T@Seq_32092) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_17726| s)) (= (|Seq#Length_17726| (|Seq#Drop_17726| s n)) (- (|Seq#Length_17726| s) n))) (=> (< (|Seq#Length_17726| s) n) (= (|Seq#Length_17726| (|Seq#Drop_17726| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_17726| (|Seq#Drop_17726| s n)) (|Seq#Length_17726| s))))
 :qid |stdinbpl.341:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_17726| (|Seq#Drop_17726| s n)))
 :pattern ( (|Seq#Length_17726| s) (|Seq#Drop_17726| s n))
)))
(assert (forall ((s@@0 T@Seq_3251) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3251| s@@0)) (= (|Seq#Length_3251| (|Seq#Drop_3251| s@@0 n@@0)) (- (|Seq#Length_3251| s@@0) n@@0))) (=> (< (|Seq#Length_3251| s@@0) n@@0) (= (|Seq#Length_3251| (|Seq#Drop_3251| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3251| (|Seq#Drop_3251| s@@0 n@@0)) (|Seq#Length_3251| s@@0))))
 :qid |stdinbpl.341:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3251| (|Seq#Drop_3251| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3251| s@@0) (|Seq#Drop_3251| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_24940) (Mask T@PolymorphicMapType_24961) (i Int) (lo Int) (hi Int) (step Int) (vmin Int) (vmax_1 Int) (ar_1 T@Seq_32092) (v_2 Int) ) (!  (=> (state Heap Mask) (= (|count_square'| Heap i lo hi step vmin vmax_1 ar_1 v_2) (|count_square#frame| (FrameFragment_4228 (|count_square#condqp3| Heap i lo hi step vmin vmax_1 ar_1 v_2)) i lo hi step vmin vmax_1 ar_1 v_2)))
 :qid |stdinbpl.1229:15|
 :skolemid |108|
 :pattern ( (state Heap Mask) (|count_square'| Heap i lo hi step vmin vmax_1 ar_1 v_2))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_24940) (Heap1 T@PolymorphicMapType_24940) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_24940) (Mask@@0 T@PolymorphicMapType_24961) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_24940) (Heap1@@0 T@PolymorphicMapType_24940) (Heap2 T@PolymorphicMapType_24940) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_24940) (i@@0 Int) (hi@@0 Int) (ar_1@@0 T@Seq_3251) ) (! (dummyFunction_3680 (|sum_list#triggerStateless| i@@0 hi@@0 ar_1@@0))
 :qid |stdinbpl.627:15|
 :skolemid |59|
 :pattern ( (|sum_list'| Heap@@1 i@@0 hi@@0 ar_1@@0))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_17687_68289) ) (!  (not (select (|PolymorphicMapType_25489_25000_69467#PolymorphicMapType_25489| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_25489_25000_69467#PolymorphicMapType_25489| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_17687_68156) ) (!  (not (select (|PolymorphicMapType_25489_25000_68156#PolymorphicMapType_25489| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_25489_25000_68156#PolymorphicMapType_25489| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_31050_3373) ) (!  (not (select (|PolymorphicMapType_25489_25000_3373#PolymorphicMapType_25489| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_25489_25000_3373#PolymorphicMapType_25489| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_25013_25014) ) (!  (not (select (|PolymorphicMapType_25489_25000_25014#PolymorphicMapType_25489| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_25489_25000_25014#PolymorphicMapType_25489| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_25000_53) ) (!  (not (select (|PolymorphicMapType_25489_25000_53#PolymorphicMapType_25489| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_25489_25000_53#PolymorphicMapType_25489| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_32092) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_17726| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_17726| (|Seq#Drop_17726| s@@1 n@@1) j) (|Seq#Index_17726| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.362:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_17726| (|Seq#Drop_17726| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3251) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3251| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3251| (|Seq#Drop_3251| s@@2 n@@2) j@@0) (|Seq#Index_3251| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.362:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3251| (|Seq#Drop_3251| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_17726| |Seq#Empty_17726|) 0))
(assert (= (|Seq#Length_3251| |Seq#Empty_3251|) 0))
(assert (forall ((s@@3 T@Seq_32092) (i@@1 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_17726| s@@3))) (and (=> (= i@@1 n@@3) (= (|Seq#Index_17726| (|Seq#Update_17726| s@@3 i@@1 v) n@@3) v)) (=> (not (= i@@1 n@@3)) (= (|Seq#Index_17726| (|Seq#Update_17726| s@@3 i@@1 v) n@@3) (|Seq#Index_17726| s@@3 n@@3)))))
 :qid |stdinbpl.317:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_17726| (|Seq#Update_17726| s@@3 i@@1 v) n@@3))
 :pattern ( (|Seq#Index_17726| s@@3 n@@3) (|Seq#Update_17726| s@@3 i@@1 v))
)))
(assert (forall ((s@@4 T@Seq_3251) (i@@2 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3251| s@@4))) (and (=> (= i@@2 n@@4) (= (|Seq#Index_3251| (|Seq#Update_3251| s@@4 i@@2 v@@0) n@@4) v@@0)) (=> (not (= i@@2 n@@4)) (= (|Seq#Index_3251| (|Seq#Update_3251| s@@4 i@@2 v@@0) n@@4) (|Seq#Index_3251| s@@4 n@@4)))))
 :qid |stdinbpl.317:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3251| (|Seq#Update_3251| s@@4 i@@2 v@@0) n@@4))
 :pattern ( (|Seq#Index_3251| s@@4 n@@4) (|Seq#Update_3251| s@@4 i@@2 v@@0))
)))
(assert (forall ((s@@5 T@Seq_32092) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_17726| s@@5)) (= (|Seq#Length_17726| (|Seq#Take_17726| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_17726| s@@5) n@@5) (= (|Seq#Length_17726| (|Seq#Take_17726| s@@5 n@@5)) (|Seq#Length_17726| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_17726| (|Seq#Take_17726| s@@5 n@@5)) 0)))
 :qid |stdinbpl.328:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_17726| (|Seq#Take_17726| s@@5 n@@5)))
 :pattern ( (|Seq#Take_17726| s@@5 n@@5) (|Seq#Length_17726| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3251) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3251| s@@6)) (= (|Seq#Length_3251| (|Seq#Take_3251| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3251| s@@6) n@@6) (= (|Seq#Length_3251| (|Seq#Take_3251| s@@6 n@@6)) (|Seq#Length_3251| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3251| (|Seq#Take_3251| s@@6 n@@6)) 0)))
 :qid |stdinbpl.328:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3251| (|Seq#Take_3251| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3251| s@@6 n@@6) (|Seq#Length_3251| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3251| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.602:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3251| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_32092) (x T@Ref) ) (!  (=> (|Seq#Contains_32092| s@@7 x) (and (and (<= 0 (|Seq#Skolem_32092| s@@7 x)) (< (|Seq#Skolem_32092| s@@7 x) (|Seq#Length_17726| s@@7))) (= (|Seq#Index_17726| s@@7 (|Seq#Skolem_32092| s@@7 x)) x)))
 :qid |stdinbpl.460:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_32092| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3251) (x@@0 Int) ) (!  (=> (|Seq#Contains_3251| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3251| s@@8 x@@0)) (< (|Seq#Skolem_3251| s@@8 x@@0) (|Seq#Length_3251| s@@8))) (= (|Seq#Index_3251| s@@8 (|Seq#Skolem_3251| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.460:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3251| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_32092) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_17726| s@@9 n@@7) s@@9))
 :qid |stdinbpl.444:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_17726| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3251) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3251| s@@10 n@@8) s@@10))
 :qid |stdinbpl.444:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3251| s@@10 n@@8))
)))
(assert (forall ((i@@3 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@3 j@@1) (- i@@3 j@@1))
 :qid |stdinbpl.297:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@3 j@@1))
)))
(assert (forall ((i@@4 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@4 j@@2) (+ i@@4 j@@2))
 :qid |stdinbpl.295:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@4 j@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_24940) (ExhaleHeap T@PolymorphicMapType_24940) (Mask@@1 T@PolymorphicMapType_24961) (pm_f_37 T@Field_17687_68156) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_17687_68220 Mask@@1 null pm_f_37) (IsPredicateField_17687_68247 pm_f_37)) (= (select (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| Heap@@2) null (PredicateMaskField_17687 pm_f_37)) (select (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| ExhaleHeap) null (PredicateMaskField_17687 pm_f_37)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (IsPredicateField_17687_68247 pm_f_37) (select (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| ExhaleHeap) null (PredicateMaskField_17687 pm_f_37)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_24940) (ExhaleHeap@@0 T@PolymorphicMapType_24940) (Mask@@2 T@PolymorphicMapType_24961) (pm_f_37@@0 T@Field_17687_68156) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_17687_68220 Mask@@2 null pm_f_37@@0) (IsWandField_17687_69994 pm_f_37@@0)) (= (select (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| Heap@@3) null (WandMaskField_17687 pm_f_37@@0)) (select (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| ExhaleHeap@@0) null (WandMaskField_17687 pm_f_37@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (IsWandField_17687_69994 pm_f_37@@0) (select (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| ExhaleHeap@@0) null (WandMaskField_17687 pm_f_37@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_32092| (|Seq#Singleton_17726| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.585:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_32092| (|Seq#Singleton_17726| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3251| (|Seq#Singleton_3251| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.585:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3251| (|Seq#Singleton_3251| x@@2) y@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_24940) (i@@5 Int) (lo@@0 Int) (hi@@1 Int) (step@@0 Int) (vmin@@0 Int) (vmax_1@@0 Int) (ar_1@@1 T@Seq_32092) (v_2@@0 Int) ) (!  (and (= (count_square Heap@@4 i@@5 lo@@0 hi@@1 step@@0 vmin@@0 vmax_1@@0 ar_1@@1 v_2@@0) (|count_square'| Heap@@4 i@@5 lo@@0 hi@@1 step@@0 vmin@@0 vmax_1@@0 ar_1@@1 v_2@@0)) (dummyFunction_3680 (|count_square#triggerStateless| i@@5 lo@@0 hi@@1 step@@0 vmin@@0 vmax_1@@0 ar_1@@1 v_2@@0)))
 :qid |stdinbpl.1209:15|
 :skolemid |104|
 :pattern ( (count_square Heap@@4 i@@5 lo@@0 hi@@1 step@@0 vmin@@0 vmax_1@@0 ar_1@@1 v_2@@0))
)))
(assert (forall ((s@@11 T@Seq_32092) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_17726| s@@11))) (= (|Seq#Index_17726| (|Seq#Take_17726| s@@11 n@@9) j@@3) (|Seq#Index_17726| s@@11 j@@3)))
 :qid |stdinbpl.336:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_17726| (|Seq#Take_17726| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_17726| s@@11 j@@3) (|Seq#Take_17726| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3251) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3251| s@@12))) (= (|Seq#Index_3251| (|Seq#Take_3251| s@@12 n@@10) j@@4) (|Seq#Index_3251| s@@12 j@@4)))
 :qid |stdinbpl.336:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3251| (|Seq#Take_3251| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3251| s@@12 j@@4) (|Seq#Take_3251| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_32092) (t T@Seq_32092) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_17726| s@@13))) (< n@@11 (|Seq#Length_17726| (|Seq#Append_32092| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_17726| s@@13)) (|Seq#Length_17726| s@@13)) n@@11) (= (|Seq#Take_17726| (|Seq#Append_32092| s@@13 t) n@@11) (|Seq#Append_32092| s@@13 (|Seq#Take_17726| t (|Seq#Sub| n@@11 (|Seq#Length_17726| s@@13)))))))
 :qid |stdinbpl.421:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_17726| (|Seq#Append_32092| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3251) (t@@0 T@Seq_3251) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3251| s@@14))) (< n@@12 (|Seq#Length_3251| (|Seq#Append_3251| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3251| s@@14)) (|Seq#Length_3251| s@@14)) n@@12) (= (|Seq#Take_3251| (|Seq#Append_3251| s@@14 t@@0) n@@12) (|Seq#Append_3251| s@@14 (|Seq#Take_3251| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3251| s@@14)))))))
 :qid |stdinbpl.421:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3251| (|Seq#Append_3251| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_24940) (i@@6 Int) (lo@@1 Int) (hi@@2 Int) (step@@1 Int) (vmin@@1 Int) (vmax_1@@1 Int) (ar_1@@2 T@Seq_32092) (v_2@@1 Int) ) (! (dummyFunction_3680 (|count_square#triggerStateless| i@@6 lo@@1 hi@@2 step@@1 vmin@@1 vmax_1@@1 ar_1@@2 v_2@@1))
 :qid |stdinbpl.1213:15|
 :skolemid |105|
 :pattern ( (|count_square'| Heap@@5 i@@6 lo@@1 hi@@2 step@@1 vmin@@1 vmax_1@@1 ar_1@@2 v_2@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_24940) (Mask@@3 T@PolymorphicMapType_24961) (i@@7 Int) (lo@@2 Int) (hi@@3 Int) (ar_1@@3 T@Seq_32092) ) (!  (=> (and (state Heap@@6 Mask@@3) (< AssumeFunctionsAbove 2)) (=> (and (and (and (<= 0 lo@@2) (and (<= lo@@2 i@@7) (<= i@@7 hi@@3))) (<= hi@@3 (|Seq#Length_17726| ar_1@@3))) (forall ((j@@5 Int) (k Int) ) (!  (=> (and (<= 0 j@@5) (and (< j@@5 hi@@3) (and (<= 0 k) (and (< k hi@@3) (not (= j@@5 k)))))) (not (= (|Seq#Index_17726| ar_1@@3 j@@5) (|Seq#Index_17726| ar_1@@3 k))))
 :qid |stdinbpl.720:126|
 :skolemid |64|
 :pattern ( (|Seq#Index_17726| ar_1@@3 j@@5) (|Seq#Index_17726| ar_1@@3 k))
))) (= (sum_array Heap@@6 i@@7 lo@@2 hi@@3 ar_1@@3) (ite (< i@@7 hi@@3) (+ (select (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| Heap@@6) (|Seq#Index_17726| ar_1@@3 i@@7) Ref__Integer_value) (|sum_array'| Heap@@6 (+ i@@7 1) lo@@2 hi@@3 ar_1@@3)) 0))))
 :qid |stdinbpl.718:15|
 :skolemid |65|
 :pattern ( (state Heap@@6 Mask@@3) (sum_array Heap@@6 i@@7 lo@@2 hi@@3 ar_1@@3))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_24940) (Heap1Heap T@PolymorphicMapType_24940) (i@@8 Int) (lo@@3 Int) (hi@@4 Int) (step@@2 Int) (vmin@@2 Int) (vmax_1@@2 Int) (ar_1@@4 T@Seq_32092) ) (!  (=> (and (=  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4))))  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4))))) (=> (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4)))) (= (select (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| Heap2Heap) (|Seq#Index_17726| ar_1@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) Ref__Integer_value) (select (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| Heap1Heap) (|Seq#Index_17726| ar_1@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) Ref__Integer_value)))) (= (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)))
 :qid |stdinbpl.973:15|
 :skolemid |88|
 :pattern ( (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_24940) (Heap1Heap@@0 T@PolymorphicMapType_24940) (i@@9 Int) (lo@@4 Int) (hi@@5 Int) (step@@3 Int) (vmin@@3 Int) (vmax_1@@3 Int) (ar_1@@5 T@Seq_32092) (v_2@@2 Int) ) (!  (=> (and (=  (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) vmax_1@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3) hi@@5))))  (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) vmax_1@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3) hi@@5))))) (=> (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) vmax_1@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3) hi@@5)))) (= (select (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| Heap2Heap@@0) (|Seq#Index_17726| ar_1@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) Ref__Integer_value) (select (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| Heap1Heap@@0) (|Seq#Index_17726| ar_1@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) Ref__Integer_value)))) (= (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)))
 :qid |stdinbpl.1239:15|
 :skolemid |109|
 :pattern ( (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_24940) (ExhaleHeap@@1 T@PolymorphicMapType_24940) (Mask@@4 T@PolymorphicMapType_24961) (o_20 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@4) (=> (select (|PolymorphicMapType_24940_17467_53#PolymorphicMapType_24940| Heap@@7) o_20 $allocated) (select (|PolymorphicMapType_24940_17467_53#PolymorphicMapType_24940| ExhaleHeap@@1) o_20 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@4) (select (|PolymorphicMapType_24940_17467_53#PolymorphicMapType_24940| ExhaleHeap@@1) o_20 $allocated))
)))
(assert (forall ((p T@Field_17687_68156) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_25000_25000 p v_1 p w))
 :qid |stdinbpl.239:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_25000_25000 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_32092) (s1 T@Seq_32092) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_17726|)) (not (= s1 |Seq#Empty_17726|))) (<= (|Seq#Length_17726| s0) n@@13)) (< n@@13 (|Seq#Length_17726| (|Seq#Append_32092| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_17726| s0)) (|Seq#Length_17726| s0)) n@@13) (= (|Seq#Index_17726| (|Seq#Append_32092| s0 s1) n@@13) (|Seq#Index_17726| s1 (|Seq#Sub| n@@13 (|Seq#Length_17726| s0))))))
 :qid |stdinbpl.308:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_17726| (|Seq#Append_32092| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3251) (s1@@0 T@Seq_3251) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3251|)) (not (= s1@@0 |Seq#Empty_3251|))) (<= (|Seq#Length_3251| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3251| (|Seq#Append_3251| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3251| s0@@0)) (|Seq#Length_3251| s0@@0)) n@@14) (= (|Seq#Index_3251| (|Seq#Append_3251| s0@@0 s1@@0) n@@14) (|Seq#Index_3251| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3251| s0@@0))))))
 :qid |stdinbpl.308:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3251| (|Seq#Append_3251| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_17687_3373 Ref__Integer_value)))
(assert  (not (IsWandField_17687_3373 Ref__Integer_value)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_24940) (ExhaleHeap@@2 T@PolymorphicMapType_24940) (Mask@@5 T@PolymorphicMapType_24961) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@5) (succHeap Heap@@8 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_24961) (o_2@@4 T@Ref) (f_4@@4 T@Field_17687_68289) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| Mask@@6) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_17687_73540 f_4@@4))) (not (IsWandField_17687_73556 f_4@@4))) (<= (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| Mask@@6) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| Mask@@6) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_24961) (o_2@@5 T@Ref) (f_4@@5 T@Field_17687_68156) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| Mask@@7) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_17687_68247 f_4@@5))) (not (IsWandField_17687_69994 f_4@@5))) (<= (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| Mask@@7) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| Mask@@7) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_24961) (o_2@@6 T@Ref) (f_4@@6 T@Field_25013_25014) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| Mask@@8) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_17687_25014 f_4@@6))) (not (IsWandField_17687_25014 f_4@@6))) (<= (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| Mask@@8) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| Mask@@8) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_24961) (o_2@@7 T@Ref) (f_4@@7 T@Field_25000_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| Mask@@9) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_17687_53 f_4@@7))) (not (IsWandField_17687_53 f_4@@7))) (<= (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| Mask@@9) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| Mask@@9) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_24961) (o_2@@8 T@Ref) (f_4@@8 T@Field_31050_3373) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| Mask@@10) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_17687_3373 f_4@@8))) (not (IsWandField_17687_3373 f_4@@8))) (<= (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| Mask@@10) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| Mask@@10) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_24940) (Mask@@11 T@PolymorphicMapType_24961) (i@@10 Int) (hi@@6 Int) (ar_1@@6 T@Seq_3251) ) (!  (=> (state Heap@@9 Mask@@11) (= (|sum_list'| Heap@@9 i@@10 hi@@6 ar_1@@6) (|sum_list#frame| EmptyFrame i@@10 hi@@6 ar_1@@6)))
 :qid |stdinbpl.640:15|
 :skolemid |61|
 :pattern ( (state Heap@@9 Mask@@11) (|sum_list'| Heap@@9 i@@10 hi@@6 ar_1@@6))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_24961) (o_2@@9 T@Ref) (f_4@@9 T@Field_17687_68289) ) (! (= (HasDirectPerm_17687_73994 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17687_73994 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_24961) (o_2@@10 T@Ref) (f_4@@10 T@Field_17687_68156) ) (! (= (HasDirectPerm_17687_68220 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17687_68220 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_24961) (o_2@@11 T@Ref) (f_4@@11 T@Field_25013_25014) ) (! (= (HasDirectPerm_17687_25014 Mask@@14 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| Mask@@14) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17687_25014 Mask@@14 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_24961) (o_2@@12 T@Ref) (f_4@@12 T@Field_25000_53) ) (! (= (HasDirectPerm_17687_53 Mask@@15 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| Mask@@15) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17687_53 Mask@@15 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_24961) (o_2@@13 T@Ref) (f_4@@13 T@Field_31050_3373) ) (! (= (HasDirectPerm_17687_3373 Mask@@16 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| Mask@@16) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17687_3373 Mask@@16 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_24940) (i@@11 Int) (lo@@5 Int) (hi@@7 Int) (ar_1@@7 T@Seq_32092) ) (! (dummyFunction_3680 (|sum_array#triggerStateless| i@@11 lo@@5 hi@@7 ar_1@@7))
 :qid |stdinbpl.712:15|
 :skolemid |63|
 :pattern ( (|sum_array'| Heap@@10 i@@11 lo@@5 hi@@7 ar_1@@7))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_24940) (i@@12 Int) (hi@@8 Int) (ar_1@@8 T@Seq_3251) (v_2@@3 Int) ) (! (dummyFunction_3680 (|count_list#triggerStateless| i@@12 hi@@8 ar_1@@8 v_2@@3))
 :qid |stdinbpl.1479:15|
 :skolemid |126|
 :pattern ( (|count_list'| Heap@@11 i@@12 hi@@8 ar_1@@8 v_2@@3))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_24940) (i@@13 Int) (hi@@9 Int) (ar_1@@9 T@Seq_32092) (v_2@@4 Int) ) (! (dummyFunction_3680 (|count_array#triggerStateless| i@@13 hi@@9 ar_1@@9 v_2@@4))
 :qid |stdinbpl.1564:15|
 :skolemid |130|
 :pattern ( (|count_array'| Heap@@12 i@@13 hi@@9 ar_1@@9 v_2@@4))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_24940) (ExhaleHeap@@3 T@PolymorphicMapType_24940) (Mask@@17 T@PolymorphicMapType_24961) (pm_f_37@@1 T@Field_17687_68156) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@3 Mask@@17) (=> (and (HasDirectPerm_17687_68220 Mask@@17 null pm_f_37@@1) (IsPredicateField_17687_68247 pm_f_37@@1)) (and (and (and (and (forall ((o2_37 T@Ref) (f_29 T@Field_25000_53) ) (!  (=> (select (|PolymorphicMapType_25489_25000_53#PolymorphicMapType_25489| (select (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| Heap@@13) null (PredicateMaskField_17687 pm_f_37@@1))) o2_37 f_29) (= (select (|PolymorphicMapType_24940_17467_53#PolymorphicMapType_24940| Heap@@13) o2_37 f_29) (select (|PolymorphicMapType_24940_17467_53#PolymorphicMapType_24940| ExhaleHeap@@3) o2_37 f_29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24940_17467_53#PolymorphicMapType_24940| ExhaleHeap@@3) o2_37 f_29))
)) (forall ((o2_37@@0 T@Ref) (f_29@@0 T@Field_25013_25014) ) (!  (=> (select (|PolymorphicMapType_25489_25000_25014#PolymorphicMapType_25489| (select (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| Heap@@13) null (PredicateMaskField_17687 pm_f_37@@1))) o2_37@@0 f_29@@0) (= (select (|PolymorphicMapType_24940_17470_17471#PolymorphicMapType_24940| Heap@@13) o2_37@@0 f_29@@0) (select (|PolymorphicMapType_24940_17470_17471#PolymorphicMapType_24940| ExhaleHeap@@3) o2_37@@0 f_29@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24940_17470_17471#PolymorphicMapType_24940| ExhaleHeap@@3) o2_37@@0 f_29@@0))
))) (forall ((o2_37@@1 T@Ref) (f_29@@1 T@Field_31050_3373) ) (!  (=> (select (|PolymorphicMapType_25489_25000_3373#PolymorphicMapType_25489| (select (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| Heap@@13) null (PredicateMaskField_17687 pm_f_37@@1))) o2_37@@1 f_29@@1) (= (select (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| Heap@@13) o2_37@@1 f_29@@1) (select (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| ExhaleHeap@@3) o2_37@@1 f_29@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| ExhaleHeap@@3) o2_37@@1 f_29@@1))
))) (forall ((o2_37@@2 T@Ref) (f_29@@2 T@Field_17687_68156) ) (!  (=> (select (|PolymorphicMapType_25489_25000_68156#PolymorphicMapType_25489| (select (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| Heap@@13) null (PredicateMaskField_17687 pm_f_37@@1))) o2_37@@2 f_29@@2) (= (select (|PolymorphicMapType_24940_25000_68156#PolymorphicMapType_24940| Heap@@13) o2_37@@2 f_29@@2) (select (|PolymorphicMapType_24940_25000_68156#PolymorphicMapType_24940| ExhaleHeap@@3) o2_37@@2 f_29@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24940_25000_68156#PolymorphicMapType_24940| ExhaleHeap@@3) o2_37@@2 f_29@@2))
))) (forall ((o2_37@@3 T@Ref) (f_29@@3 T@Field_17687_68289) ) (!  (=> (select (|PolymorphicMapType_25489_25000_69467#PolymorphicMapType_25489| (select (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| Heap@@13) null (PredicateMaskField_17687 pm_f_37@@1))) o2_37@@3 f_29@@3) (= (select (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| Heap@@13) o2_37@@3 f_29@@3) (select (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| ExhaleHeap@@3) o2_37@@3 f_29@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| ExhaleHeap@@3) o2_37@@3 f_29@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@3 Mask@@17) (IsPredicateField_17687_68247 pm_f_37@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_24940) (ExhaleHeap@@4 T@PolymorphicMapType_24940) (Mask@@18 T@PolymorphicMapType_24961) (pm_f_37@@2 T@Field_17687_68156) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@4 Mask@@18) (=> (and (HasDirectPerm_17687_68220 Mask@@18 null pm_f_37@@2) (IsWandField_17687_69994 pm_f_37@@2)) (and (and (and (and (forall ((o2_37@@4 T@Ref) (f_29@@4 T@Field_25000_53) ) (!  (=> (select (|PolymorphicMapType_25489_25000_53#PolymorphicMapType_25489| (select (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| Heap@@14) null (WandMaskField_17687 pm_f_37@@2))) o2_37@@4 f_29@@4) (= (select (|PolymorphicMapType_24940_17467_53#PolymorphicMapType_24940| Heap@@14) o2_37@@4 f_29@@4) (select (|PolymorphicMapType_24940_17467_53#PolymorphicMapType_24940| ExhaleHeap@@4) o2_37@@4 f_29@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24940_17467_53#PolymorphicMapType_24940| ExhaleHeap@@4) o2_37@@4 f_29@@4))
)) (forall ((o2_37@@5 T@Ref) (f_29@@5 T@Field_25013_25014) ) (!  (=> (select (|PolymorphicMapType_25489_25000_25014#PolymorphicMapType_25489| (select (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| Heap@@14) null (WandMaskField_17687 pm_f_37@@2))) o2_37@@5 f_29@@5) (= (select (|PolymorphicMapType_24940_17470_17471#PolymorphicMapType_24940| Heap@@14) o2_37@@5 f_29@@5) (select (|PolymorphicMapType_24940_17470_17471#PolymorphicMapType_24940| ExhaleHeap@@4) o2_37@@5 f_29@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24940_17470_17471#PolymorphicMapType_24940| ExhaleHeap@@4) o2_37@@5 f_29@@5))
))) (forall ((o2_37@@6 T@Ref) (f_29@@6 T@Field_31050_3373) ) (!  (=> (select (|PolymorphicMapType_25489_25000_3373#PolymorphicMapType_25489| (select (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| Heap@@14) null (WandMaskField_17687 pm_f_37@@2))) o2_37@@6 f_29@@6) (= (select (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| Heap@@14) o2_37@@6 f_29@@6) (select (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| ExhaleHeap@@4) o2_37@@6 f_29@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| ExhaleHeap@@4) o2_37@@6 f_29@@6))
))) (forall ((o2_37@@7 T@Ref) (f_29@@7 T@Field_17687_68156) ) (!  (=> (select (|PolymorphicMapType_25489_25000_68156#PolymorphicMapType_25489| (select (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| Heap@@14) null (WandMaskField_17687 pm_f_37@@2))) o2_37@@7 f_29@@7) (= (select (|PolymorphicMapType_24940_25000_68156#PolymorphicMapType_24940| Heap@@14) o2_37@@7 f_29@@7) (select (|PolymorphicMapType_24940_25000_68156#PolymorphicMapType_24940| ExhaleHeap@@4) o2_37@@7 f_29@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24940_25000_68156#PolymorphicMapType_24940| ExhaleHeap@@4) o2_37@@7 f_29@@7))
))) (forall ((o2_37@@8 T@Ref) (f_29@@8 T@Field_17687_68289) ) (!  (=> (select (|PolymorphicMapType_25489_25000_69467#PolymorphicMapType_25489| (select (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| Heap@@14) null (WandMaskField_17687 pm_f_37@@2))) o2_37@@8 f_29@@8) (= (select (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| Heap@@14) o2_37@@8 f_29@@8) (select (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| ExhaleHeap@@4) o2_37@@8 f_29@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| ExhaleHeap@@4) o2_37@@8 f_29@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@4 Mask@@18) (IsWandField_17687_69994 pm_f_37@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.227:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3251| (|Seq#Range| q@min@@0 q@max@@0) j@@6) (+ q@min@@0 j@@6)))
 :qid |stdinbpl.600:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3251| (|Seq#Range| q@min@@0 q@max@@0) j@@6))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_24940) (ExhaleHeap@@5 T@PolymorphicMapType_24940) (Mask@@19 T@PolymorphicMapType_24961) (o_20@@0 T@Ref) (f_29@@9 T@Field_17687_68289) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@5 Mask@@19) (=> (HasDirectPerm_17687_73994 Mask@@19 o_20@@0 f_29@@9) (= (select (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| Heap@@15) o_20@@0 f_29@@9) (select (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| ExhaleHeap@@5) o_20@@0 f_29@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@5 Mask@@19) (select (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| ExhaleHeap@@5) o_20@@0 f_29@@9))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_24940) (ExhaleHeap@@6 T@PolymorphicMapType_24940) (Mask@@20 T@PolymorphicMapType_24961) (o_20@@1 T@Ref) (f_29@@10 T@Field_17687_68156) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@6 Mask@@20) (=> (HasDirectPerm_17687_68220 Mask@@20 o_20@@1 f_29@@10) (= (select (|PolymorphicMapType_24940_25000_68156#PolymorphicMapType_24940| Heap@@16) o_20@@1 f_29@@10) (select (|PolymorphicMapType_24940_25000_68156#PolymorphicMapType_24940| ExhaleHeap@@6) o_20@@1 f_29@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@6 Mask@@20) (select (|PolymorphicMapType_24940_25000_68156#PolymorphicMapType_24940| ExhaleHeap@@6) o_20@@1 f_29@@10))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_24940) (ExhaleHeap@@7 T@PolymorphicMapType_24940) (Mask@@21 T@PolymorphicMapType_24961) (o_20@@2 T@Ref) (f_29@@11 T@Field_25013_25014) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@7 Mask@@21) (=> (HasDirectPerm_17687_25014 Mask@@21 o_20@@2 f_29@@11) (= (select (|PolymorphicMapType_24940_17470_17471#PolymorphicMapType_24940| Heap@@17) o_20@@2 f_29@@11) (select (|PolymorphicMapType_24940_17470_17471#PolymorphicMapType_24940| ExhaleHeap@@7) o_20@@2 f_29@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@7 Mask@@21) (select (|PolymorphicMapType_24940_17470_17471#PolymorphicMapType_24940| ExhaleHeap@@7) o_20@@2 f_29@@11))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_24940) (ExhaleHeap@@8 T@PolymorphicMapType_24940) (Mask@@22 T@PolymorphicMapType_24961) (o_20@@3 T@Ref) (f_29@@12 T@Field_25000_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@8 Mask@@22) (=> (HasDirectPerm_17687_53 Mask@@22 o_20@@3 f_29@@12) (= (select (|PolymorphicMapType_24940_17467_53#PolymorphicMapType_24940| Heap@@18) o_20@@3 f_29@@12) (select (|PolymorphicMapType_24940_17467_53#PolymorphicMapType_24940| ExhaleHeap@@8) o_20@@3 f_29@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@8 Mask@@22) (select (|PolymorphicMapType_24940_17467_53#PolymorphicMapType_24940| ExhaleHeap@@8) o_20@@3 f_29@@12))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_24940) (ExhaleHeap@@9 T@PolymorphicMapType_24940) (Mask@@23 T@PolymorphicMapType_24961) (o_20@@4 T@Ref) (f_29@@13 T@Field_31050_3373) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@9 Mask@@23) (=> (HasDirectPerm_17687_3373 Mask@@23 o_20@@4 f_29@@13) (= (select (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| Heap@@19) o_20@@4 f_29@@13) (select (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| ExhaleHeap@@9) o_20@@4 f_29@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@9 Mask@@23) (select (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| ExhaleHeap@@9) o_20@@4 f_29@@13))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_24940) (Mask@@24 T@PolymorphicMapType_24961) (i@@14 Int) (lo@@6 Int) (hi@@10 Int) (step@@4 Int) (vmin@@4 Int) (vmax_1@@4 Int) (ar_1@@10 T@Seq_32092) ) (!  (=> (and (state Heap@@20 Mask@@24) (< AssumeFunctionsAbove 3)) (=> (and (and (and (and (<= 0 lo@@6) (and (<= lo@@6 hi@@10) (and (<= hi@@10 step@@4) (> step@@4 0)))) (and (<= 0 vmin@@4) (and (<= vmin@@4 i@@14) (<= i@@14 vmax_1@@4)))) (<= vmax_1@@4 (|Seq#Length_17726| ar_1@@10))) (forall ((j@@7 Int) (k@@0 Int) ) (!  (=> (and (<= 0 j@@7) (and (< j@@7 vmax_1@@4) (and (<= 0 k@@0) (and (< k@@0 vmax_1@@4) (not (= j@@7 k@@0)))))) (not (= (|Seq#Index_17726| ar_1@@10 j@@7) (|Seq#Index_17726| ar_1@@10 k@@0))))
 :qid |stdinbpl.955:195|
 :skolemid |85|
 :pattern ( (|Seq#Index_17726| ar_1@@10 j@@7) (|Seq#Index_17726| ar_1@@10 k@@0))
))) (= (sum_square Heap@@20 i@@14 lo@@6 hi@@10 step@@4 vmin@@4 vmax_1@@4 ar_1@@10) (ite (< i@@14 vmax_1@@4) (+ (ite  (and (<= lo@@6 (mod i@@14 step@@4)) (< (mod i@@14 step@@4) hi@@10)) (select (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| Heap@@20) (|Seq#Index_17726| ar_1@@10 i@@14) Ref__Integer_value) 0) (|sum_square'| Heap@@20 (+ i@@14 1) lo@@6 hi@@10 step@@4 vmin@@4 vmax_1@@4 ar_1@@10)) 0))))
 :qid |stdinbpl.953:15|
 :skolemid |86|
 :pattern ( (state Heap@@20 Mask@@24) (sum_square Heap@@20 i@@14 lo@@6 hi@@10 step@@4 vmin@@4 vmax_1@@4 ar_1@@10))
)))
(assert (forall ((s0@@1 T@Seq_32092) (s1@@1 T@Seq_32092) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_17726|)) (not (= s1@@1 |Seq#Empty_17726|))) (= (|Seq#Length_17726| (|Seq#Append_32092| s0@@1 s1@@1)) (+ (|Seq#Length_17726| s0@@1) (|Seq#Length_17726| s1@@1))))
 :qid |stdinbpl.277:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_17726| (|Seq#Append_32092| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3251) (s1@@2 T@Seq_3251) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3251|)) (not (= s1@@2 |Seq#Empty_3251|))) (= (|Seq#Length_3251| (|Seq#Append_3251| s0@@2 s1@@2)) (+ (|Seq#Length_3251| s0@@2) (|Seq#Length_3251| s1@@2))))
 :qid |stdinbpl.277:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3251| (|Seq#Append_3251| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_17687_68289) ) (! (= (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_17687_68156) ) (! (= (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_25013_25014) ) (! (= (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_25000_53) ) (! (= (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_31050_3373) ) (! (= (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_24940) (Mask@@25 T@PolymorphicMapType_24961) (i@@15 Int) (hi@@11 Int) (ar_1@@11 T@Seq_3251) (v_2@@5 Int) ) (!  (=> (and (state Heap@@21 Mask@@25) (< AssumeFunctionsAbove 5)) (=> (and (and (<= 0 i@@15) (<= i@@15 hi@@11)) (<= hi@@11 (|Seq#Length_3251| ar_1@@11))) (= (count_list Heap@@21 i@@15 hi@@11 ar_1@@11 v_2@@5) (ite (< i@@15 hi@@11) (+ (ite (= (|Seq#Index_3251| ar_1@@11 i@@15) v_2@@5) 1 0) (|count_list'| Heap@@21 (+ i@@15 1) hi@@11 ar_1@@11 v_2@@5)) 0))))
 :qid |stdinbpl.1485:15|
 :skolemid |127|
 :pattern ( (state Heap@@21 Mask@@25) (count_list Heap@@21 i@@15 hi@@11 ar_1@@11 v_2@@5))
)))
(assert (forall ((s@@15 T@Seq_32092) (t@@1 T@Seq_32092) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_17726| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_17726| s@@15)) (|Seq#Length_17726| s@@15)) n@@15) (= (|Seq#Drop_17726| (|Seq#Append_32092| s@@15 t@@1) n@@15) (|Seq#Drop_17726| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_17726| s@@15))))))
 :qid |stdinbpl.434:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_17726| (|Seq#Append_32092| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3251) (t@@2 T@Seq_3251) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3251| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3251| s@@16)) (|Seq#Length_3251| s@@16)) n@@16) (= (|Seq#Drop_3251| (|Seq#Append_3251| s@@16 t@@2) n@@16) (|Seq#Drop_3251| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3251| s@@16))))))
 :qid |stdinbpl.434:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3251| (|Seq#Append_3251| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_24940) (i@@16 Int) (lo@@7 Int) (hi@@12 Int) (ar_1@@12 T@Seq_32092) ) (!  (and (= (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12) (|sum_array'| Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12)) (dummyFunction_3680 (|sum_array#triggerStateless| i@@16 lo@@7 hi@@12 ar_1@@12)))
 :qid |stdinbpl.708:15|
 :skolemid |62|
 :pattern ( (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_24940) (i@@17 Int) (hi@@13 Int) (ar_1@@13 T@Seq_3251) (v_2@@6 Int) ) (!  (and (= (count_list Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6) (|count_list'| Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6)) (dummyFunction_3680 (|count_list#triggerStateless| i@@17 hi@@13 ar_1@@13 v_2@@6)))
 :qid |stdinbpl.1475:15|
 :skolemid |125|
 :pattern ( (count_list Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_24940) (i@@18 Int) (hi@@14 Int) (ar_1@@14 T@Seq_32092) (v_2@@7 Int) ) (!  (and (= (count_array Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7) (|count_array'| Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7)) (dummyFunction_3680 (|count_array#triggerStateless| i@@18 hi@@14 ar_1@@14 v_2@@7)))
 :qid |stdinbpl.1560:15|
 :skolemid |129|
 :pattern ( (count_array Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_24961) (SummandMask1 T@PolymorphicMapType_24961) (SummandMask2 T@PolymorphicMapType_24961) (o_2@@19 T@Ref) (f_4@@19 T@Field_17687_68289) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_24961) (SummandMask1@@0 T@PolymorphicMapType_24961) (SummandMask2@@0 T@PolymorphicMapType_24961) (o_2@@20 T@Ref) (f_4@@20 T@Field_17687_68156) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_24961) (SummandMask1@@1 T@PolymorphicMapType_24961) (SummandMask2@@1 T@PolymorphicMapType_24961) (o_2@@21 T@Ref) (f_4@@21 T@Field_25013_25014) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_24961) (SummandMask1@@2 T@PolymorphicMapType_24961) (SummandMask2@@2 T@PolymorphicMapType_24961) (o_2@@22 T@Ref) (f_4@@22 T@Field_25000_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_24961) (SummandMask1@@3 T@PolymorphicMapType_24961) (SummandMask2@@3 T@PolymorphicMapType_24961) (o_2@@23 T@Ref) (f_4@@23 T@Field_31050_3373) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_24940) (i@@19 Int) (lo@@8 Int) (hi@@15 Int) (step@@5 Int) (vmin@@5 Int) (vmax_1@@5 Int) (ar_1@@15 T@Seq_32092) ) (!  (and (= (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15) (|sum_square'| Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15)) (dummyFunction_3680 (|sum_square#triggerStateless| i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15)))
 :qid |stdinbpl.943:15|
 :skolemid |83|
 :pattern ( (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_24940) (Mask@@26 T@PolymorphicMapType_24961) (i@@20 Int) (hi@@16 Int) (ar_1@@16 T@Seq_3251) (v_2@@8 Int) ) (!  (=> (state Heap@@26 Mask@@26) (= (|count_list'| Heap@@26 i@@20 hi@@16 ar_1@@16 v_2@@8) (|count_list#frame| EmptyFrame i@@20 hi@@16 ar_1@@16 v_2@@8)))
 :qid |stdinbpl.1492:15|
 :skolemid |128|
 :pattern ( (state Heap@@26 Mask@@26) (|count_list'| Heap@@26 i@@20 hi@@16 ar_1@@16 v_2@@8))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3251| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3251| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.599:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3251| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_32092) (b T@Seq_32092) ) (!  (=> (|Seq#Equal_32092| a b) (= a b))
 :qid |stdinbpl.572:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_32092| a b))
)))
(assert (forall ((a@@0 T@Seq_3251) (b@@0 T@Seq_3251) ) (!  (=> (|Seq#Equal_3251| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.572:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3251| a@@0 b@@0))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_24940) (i@@21 Int) (hi@@17 Int) (ar_1@@17 T@Seq_3251) ) (!  (and (= (sum_list Heap@@27 i@@21 hi@@17 ar_1@@17) (|sum_list'| Heap@@27 i@@21 hi@@17 ar_1@@17)) (dummyFunction_3680 (|sum_list#triggerStateless| i@@21 hi@@17 ar_1@@17)))
 :qid |stdinbpl.623:15|
 :skolemid |58|
 :pattern ( (sum_list Heap@@27 i@@21 hi@@17 ar_1@@17))
)))
(assert (forall ((s@@17 T@Seq_32092) (i@@22 Int) ) (!  (=> (and (<= 0 i@@22) (< i@@22 (|Seq#Length_17726| s@@17))) (|Seq#ContainsTrigger_17726| s@@17 (|Seq#Index_17726| s@@17 i@@22)))
 :qid |stdinbpl.465:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_17726| s@@17 i@@22))
)))
(assert (forall ((s@@18 T@Seq_3251) (i@@23 Int) ) (!  (=> (and (<= 0 i@@23) (< i@@23 (|Seq#Length_3251| s@@18))) (|Seq#ContainsTrigger_3251| s@@18 (|Seq#Index_3251| s@@18 i@@23)))
 :qid |stdinbpl.465:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3251| s@@18 i@@23))
)))
(assert (forall ((s0@@3 T@Seq_32092) (s1@@3 T@Seq_32092) ) (!  (and (=> (= s0@@3 |Seq#Empty_17726|) (= (|Seq#Append_32092| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_17726|) (= (|Seq#Append_32092| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.283:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_32092| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3251) (s1@@4 T@Seq_3251) ) (!  (and (=> (= s0@@4 |Seq#Empty_3251|) (= (|Seq#Append_3251| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3251|) (= (|Seq#Append_3251| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.283:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3251| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_17726| (|Seq#Singleton_17726| t@@3) 0) t@@3)
 :qid |stdinbpl.287:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_17726| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3251| (|Seq#Singleton_3251| t@@4) 0) t@@4)
 :qid |stdinbpl.287:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3251| t@@4))
)))
(assert (forall ((s@@19 T@Seq_32092) ) (! (<= 0 (|Seq#Length_17726| s@@19))
 :qid |stdinbpl.266:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_17726| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3251) ) (! (<= 0 (|Seq#Length_3251| s@@20))
 :qid |stdinbpl.266:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3251| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_32092) (s1@@5 T@Seq_32092) ) (!  (=> (|Seq#Equal_32092| s0@@5 s1@@5) (and (= (|Seq#Length_17726| s0@@5) (|Seq#Length_17726| s1@@5)) (forall ((j@@8 Int) ) (!  (=> (and (<= 0 j@@8) (< j@@8 (|Seq#Length_17726| s0@@5))) (= (|Seq#Index_17726| s0@@5 j@@8) (|Seq#Index_17726| s1@@5 j@@8)))
 :qid |stdinbpl.562:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_17726| s0@@5 j@@8))
 :pattern ( (|Seq#Index_17726| s1@@5 j@@8))
))))
 :qid |stdinbpl.559:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_32092| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3251) (s1@@6 T@Seq_3251) ) (!  (=> (|Seq#Equal_3251| s0@@6 s1@@6) (and (= (|Seq#Length_3251| s0@@6) (|Seq#Length_3251| s1@@6)) (forall ((j@@9 Int) ) (!  (=> (and (<= 0 j@@9) (< j@@9 (|Seq#Length_3251| s0@@6))) (= (|Seq#Index_3251| s0@@6 j@@9) (|Seq#Index_3251| s1@@6 j@@9)))
 :qid |stdinbpl.562:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3251| s0@@6 j@@9))
 :pattern ( (|Seq#Index_3251| s1@@6 j@@9))
))))
 :qid |stdinbpl.559:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3251| s0@@6 s1@@6))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_24940) (Heap1Heap@@1 T@PolymorphicMapType_24940) (i@@24 Int) (hi@@18 Int) (ar_1@@18 T@Seq_32092) (v_2@@9 Int) ) (!  (=> (and (=  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9)) hi@@18))  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9)) hi@@18))) (=> (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9)) hi@@18)) (= (select (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| Heap2Heap@@1) (|Seq#Index_17726| ar_1@@18 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9))) Ref__Integer_value) (select (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| Heap1Heap@@1) (|Seq#Index_17726| ar_1@@18 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9))) Ref__Integer_value)))) (= (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9)))
 :qid |stdinbpl.1590:15|
 :skolemid |134|
 :pattern ( (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_17726| (|Seq#Singleton_17726| t@@5)) 1)
 :qid |stdinbpl.274:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_17726| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3251| (|Seq#Singleton_3251| t@@6)) 1)
 :qid |stdinbpl.274:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3251| t@@6))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_24940) (Heap1Heap@@2 T@PolymorphicMapType_24940) (i@@25 Int) (lo@@9 Int) (hi@@19 Int) (ar_1@@19 T@Seq_32092) ) (!  (=> (and (=  (and (<= lo@@9 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19)) hi@@19))  (and (<= lo@@9 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19)) hi@@19))) (=> (and (<= lo@@9 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19)) hi@@19)) (= (select (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| Heap2Heap@@2) (|Seq#Index_17726| ar_1@@19 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19))) Ref__Integer_value) (select (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| Heap1Heap@@2) (|Seq#Index_17726| ar_1@@19 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19))) Ref__Integer_value)))) (= (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19)))
 :qid |stdinbpl.738:15|
 :skolemid |67|
 :pattern ( (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_24940) (Mask@@27 T@PolymorphicMapType_24961) (i@@26 Int) (lo@@10 Int) (hi@@20 Int) (step@@6 Int) (vmin@@6 Int) (vmax_1@@6 Int) (ar_1@@20 T@Seq_32092) (v_2@@10 Int) ) (!  (=> (and (state Heap@@28 Mask@@27) (< AssumeFunctionsAbove 0)) (=> (and (and (and (and (<= 0 lo@@10) (and (<= lo@@10 hi@@20) (and (<= hi@@20 step@@6) (> step@@6 0)))) (and (<= 0 vmin@@6) (and (<= vmin@@6 i@@26) (<= i@@26 vmax_1@@6)))) (<= vmax_1@@6 (|Seq#Length_17726| ar_1@@20))) (forall ((j@@10 Int) (k@@1 Int) ) (!  (=> (and (<= 0 j@@10) (and (< j@@10 vmax_1@@6) (and (<= 0 k@@1) (and (< k@@1 vmax_1@@6) (not (= j@@10 k@@1)))))) (not (= (|Seq#Index_17726| ar_1@@20 j@@10) (|Seq#Index_17726| ar_1@@20 k@@1))))
 :qid |stdinbpl.1221:195|
 :skolemid |106|
 :pattern ( (|Seq#Index_17726| ar_1@@20 j@@10) (|Seq#Index_17726| ar_1@@20 k@@1))
))) (= (count_square Heap@@28 i@@26 lo@@10 hi@@20 step@@6 vmin@@6 vmax_1@@6 ar_1@@20 v_2@@10) (ite (< i@@26 vmax_1@@6) (+ (ite  (and (<= lo@@10 (mod i@@26 step@@6)) (and (< (mod i@@26 step@@6) hi@@20) (= (select (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| Heap@@28) (|Seq#Index_17726| ar_1@@20 i@@26) Ref__Integer_value) v_2@@10))) 1 0) (|count_square'| Heap@@28 (+ i@@26 1) lo@@10 hi@@20 step@@6 vmin@@6 vmax_1@@6 ar_1@@20 v_2@@10)) 0))))
 :qid |stdinbpl.1219:15|
 :skolemid |107|
 :pattern ( (state Heap@@28 Mask@@27) (count_square Heap@@28 i@@26 lo@@10 hi@@20 step@@6 vmin@@6 vmax_1@@6 ar_1@@20 v_2@@10))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_24940) (Mask@@28 T@PolymorphicMapType_24961) (i@@27 Int) (hi@@21 Int) (ar_1@@21 T@Seq_3251) ) (!  (=> (and (state Heap@@29 Mask@@28) (< AssumeFunctionsAbove 4)) (=> (and (and (<= 0 i@@27) (<= i@@27 hi@@21)) (<= hi@@21 (|Seq#Length_3251| ar_1@@21))) (= (sum_list Heap@@29 i@@27 hi@@21 ar_1@@21) (ite (< i@@27 hi@@21) (+ (|Seq#Index_3251| ar_1@@21 i@@27) (|sum_list'| Heap@@29 (+ i@@27 1) hi@@21 ar_1@@21)) 0))))
 :qid |stdinbpl.633:15|
 :skolemid |60|
 :pattern ( (state Heap@@29 Mask@@28) (sum_list Heap@@29 i@@27 hi@@21 ar_1@@21))
)))
(assert (forall ((s@@21 T@Seq_32092) (t@@7 T@Seq_32092) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_17726| s@@21))) (= (|Seq#Take_17726| (|Seq#Append_32092| s@@21 t@@7) n@@17) (|Seq#Take_17726| s@@21 n@@17)))
 :qid |stdinbpl.416:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_17726| (|Seq#Append_32092| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3251) (t@@8 T@Seq_3251) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3251| s@@22))) (= (|Seq#Take_3251| (|Seq#Append_3251| s@@22 t@@8) n@@18) (|Seq#Take_3251| s@@22 n@@18)))
 :qid |stdinbpl.416:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3251| (|Seq#Append_3251| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_32092) (i@@28 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@28) (< i@@28 (|Seq#Length_17726| s@@23))) (= (|Seq#Length_17726| (|Seq#Update_17726| s@@23 i@@28 v@@2)) (|Seq#Length_17726| s@@23)))
 :qid |stdinbpl.315:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_17726| (|Seq#Update_17726| s@@23 i@@28 v@@2)))
 :pattern ( (|Seq#Length_17726| s@@23) (|Seq#Update_17726| s@@23 i@@28 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3251) (i@@29 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@29) (< i@@29 (|Seq#Length_3251| s@@24))) (= (|Seq#Length_3251| (|Seq#Update_3251| s@@24 i@@29 v@@3)) (|Seq#Length_3251| s@@24)))
 :qid |stdinbpl.315:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3251| (|Seq#Update_3251| s@@24 i@@29 v@@3)))
 :pattern ( (|Seq#Length_3251| s@@24) (|Seq#Update_3251| s@@24 i@@29 v@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_24940) (o_13 T@Ref) (f_66 T@Field_17687_68156) (v@@4 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_24940 (|PolymorphicMapType_24940_17467_53#PolymorphicMapType_24940| Heap@@30) (|PolymorphicMapType_24940_17470_17471#PolymorphicMapType_24940| Heap@@30) (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| Heap@@30) (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| Heap@@30) (store (|PolymorphicMapType_24940_25000_68156#PolymorphicMapType_24940| Heap@@30) o_13 f_66 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24940 (|PolymorphicMapType_24940_17467_53#PolymorphicMapType_24940| Heap@@30) (|PolymorphicMapType_24940_17470_17471#PolymorphicMapType_24940| Heap@@30) (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| Heap@@30) (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| Heap@@30) (store (|PolymorphicMapType_24940_25000_68156#PolymorphicMapType_24940| Heap@@30) o_13 f_66 v@@4)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_24940) (o_13@@0 T@Ref) (f_66@@0 T@Field_17687_68289) (v@@5 T@PolymorphicMapType_25489) ) (! (succHeap Heap@@31 (PolymorphicMapType_24940 (|PolymorphicMapType_24940_17467_53#PolymorphicMapType_24940| Heap@@31) (|PolymorphicMapType_24940_17470_17471#PolymorphicMapType_24940| Heap@@31) (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| Heap@@31) (store (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| Heap@@31) o_13@@0 f_66@@0 v@@5) (|PolymorphicMapType_24940_25000_68156#PolymorphicMapType_24940| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24940 (|PolymorphicMapType_24940_17467_53#PolymorphicMapType_24940| Heap@@31) (|PolymorphicMapType_24940_17470_17471#PolymorphicMapType_24940| Heap@@31) (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| Heap@@31) (store (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| Heap@@31) o_13@@0 f_66@@0 v@@5) (|PolymorphicMapType_24940_25000_68156#PolymorphicMapType_24940| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_24940) (o_13@@1 T@Ref) (f_66@@1 T@Field_31050_3373) (v@@6 Int) ) (! (succHeap Heap@@32 (PolymorphicMapType_24940 (|PolymorphicMapType_24940_17467_53#PolymorphicMapType_24940| Heap@@32) (|PolymorphicMapType_24940_17470_17471#PolymorphicMapType_24940| Heap@@32) (store (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| Heap@@32) o_13@@1 f_66@@1 v@@6) (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| Heap@@32) (|PolymorphicMapType_24940_25000_68156#PolymorphicMapType_24940| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24940 (|PolymorphicMapType_24940_17467_53#PolymorphicMapType_24940| Heap@@32) (|PolymorphicMapType_24940_17470_17471#PolymorphicMapType_24940| Heap@@32) (store (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| Heap@@32) o_13@@1 f_66@@1 v@@6) (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| Heap@@32) (|PolymorphicMapType_24940_25000_68156#PolymorphicMapType_24940| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_24940) (o_13@@2 T@Ref) (f_66@@2 T@Field_25013_25014) (v@@7 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_24940 (|PolymorphicMapType_24940_17467_53#PolymorphicMapType_24940| Heap@@33) (store (|PolymorphicMapType_24940_17470_17471#PolymorphicMapType_24940| Heap@@33) o_13@@2 f_66@@2 v@@7) (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| Heap@@33) (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| Heap@@33) (|PolymorphicMapType_24940_25000_68156#PolymorphicMapType_24940| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24940 (|PolymorphicMapType_24940_17467_53#PolymorphicMapType_24940| Heap@@33) (store (|PolymorphicMapType_24940_17470_17471#PolymorphicMapType_24940| Heap@@33) o_13@@2 f_66@@2 v@@7) (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| Heap@@33) (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| Heap@@33) (|PolymorphicMapType_24940_25000_68156#PolymorphicMapType_24940| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_24940) (o_13@@3 T@Ref) (f_66@@3 T@Field_25000_53) (v@@8 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_24940 (store (|PolymorphicMapType_24940_17467_53#PolymorphicMapType_24940| Heap@@34) o_13@@3 f_66@@3 v@@8) (|PolymorphicMapType_24940_17470_17471#PolymorphicMapType_24940| Heap@@34) (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| Heap@@34) (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| Heap@@34) (|PolymorphicMapType_24940_25000_68156#PolymorphicMapType_24940| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24940 (store (|PolymorphicMapType_24940_17467_53#PolymorphicMapType_24940| Heap@@34) o_13@@3 f_66@@3 v@@8) (|PolymorphicMapType_24940_17470_17471#PolymorphicMapType_24940| Heap@@34) (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| Heap@@34) (|PolymorphicMapType_24940_17687_68333#PolymorphicMapType_24940| Heap@@34) (|PolymorphicMapType_24940_25000_68156#PolymorphicMapType_24940| Heap@@34)))
)))
(assert (forall ((s@@25 T@Seq_32092) (t@@9 T@Seq_32092) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_17726| s@@25))) (= (|Seq#Drop_17726| (|Seq#Append_32092| s@@25 t@@9) n@@19) (|Seq#Append_32092| (|Seq#Drop_17726| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.430:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_17726| (|Seq#Append_32092| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3251) (t@@10 T@Seq_3251) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3251| s@@26))) (= (|Seq#Drop_3251| (|Seq#Append_3251| s@@26 t@@10) n@@20) (|Seq#Append_3251| (|Seq#Drop_3251| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.430:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3251| (|Seq#Append_3251| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_32092) (n@@21 Int) (i@@30 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@30)) (< i@@30 (|Seq#Length_17726| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@30 n@@21) n@@21) i@@30) (= (|Seq#Index_17726| (|Seq#Drop_17726| s@@27 n@@21) (|Seq#Sub| i@@30 n@@21)) (|Seq#Index_17726| s@@27 i@@30))))
 :qid |stdinbpl.366:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_17726| s@@27 n@@21) (|Seq#Index_17726| s@@27 i@@30))
)))
(assert (forall ((s@@28 T@Seq_3251) (n@@22 Int) (i@@31 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@31)) (< i@@31 (|Seq#Length_3251| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@31 n@@22) n@@22) i@@31) (= (|Seq#Index_3251| (|Seq#Drop_3251| s@@28 n@@22) (|Seq#Sub| i@@31 n@@22)) (|Seq#Index_3251| s@@28 i@@31))))
 :qid |stdinbpl.366:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3251| s@@28 n@@22) (|Seq#Index_3251| s@@28 i@@31))
)))
(assert (forall ((s0@@7 T@Seq_32092) (s1@@7 T@Seq_32092) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_17726|)) (not (= s1@@7 |Seq#Empty_17726|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_17726| s0@@7))) (= (|Seq#Index_17726| (|Seq#Append_32092| s0@@7 s1@@7) n@@23) (|Seq#Index_17726| s0@@7 n@@23)))
 :qid |stdinbpl.306:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_17726| (|Seq#Append_32092| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_17726| s0@@7 n@@23) (|Seq#Append_32092| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3251) (s1@@8 T@Seq_3251) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3251|)) (not (= s1@@8 |Seq#Empty_3251|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3251| s0@@8))) (= (|Seq#Index_3251| (|Seq#Append_3251| s0@@8 s1@@8) n@@24) (|Seq#Index_3251| s0@@8 n@@24)))
 :qid |stdinbpl.306:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3251| (|Seq#Append_3251| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3251| s0@@8 n@@24) (|Seq#Append_3251| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_32092) (s1@@9 T@Seq_32092) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_17726|)) (not (= s1@@9 |Seq#Empty_17726|))) (<= 0 m)) (< m (|Seq#Length_17726| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_17726| s0@@9)) (|Seq#Length_17726| s0@@9)) m) (= (|Seq#Index_17726| (|Seq#Append_32092| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_17726| s0@@9))) (|Seq#Index_17726| s1@@9 m))))
 :qid |stdinbpl.311:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_17726| s1@@9 m) (|Seq#Append_32092| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3251) (s1@@10 T@Seq_3251) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3251|)) (not (= s1@@10 |Seq#Empty_3251|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3251| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3251| s0@@10)) (|Seq#Length_3251| s0@@10)) m@@0) (= (|Seq#Index_3251| (|Seq#Append_3251| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3251| s0@@10))) (|Seq#Index_3251| s1@@10 m@@0))))
 :qid |stdinbpl.311:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3251| s1@@10 m@@0) (|Seq#Append_3251| s0@@10 s1@@10))
)))
(assert (forall ((o_13@@4 T@Ref) (f_20 T@Field_25013_25014) (Heap@@35 T@PolymorphicMapType_24940) ) (!  (=> (select (|PolymorphicMapType_24940_17467_53#PolymorphicMapType_24940| Heap@@35) o_13@@4 $allocated) (select (|PolymorphicMapType_24940_17467_53#PolymorphicMapType_24940| Heap@@35) (select (|PolymorphicMapType_24940_17470_17471#PolymorphicMapType_24940| Heap@@35) o_13@@4 f_20) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_24940_17470_17471#PolymorphicMapType_24940| Heap@@35) o_13@@4 f_20))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_24940) (Mask@@29 T@PolymorphicMapType_24961) (i@@32 Int) (lo@@11 Int) (hi@@22 Int) (step@@7 Int) (vmin@@7 Int) (vmax_1@@7 Int) (ar_1@@22 T@Seq_32092) ) (!  (=> (state Heap@@36 Mask@@29) (= (|sum_square'| Heap@@36 i@@32 lo@@11 hi@@22 step@@7 vmin@@7 vmax_1@@7 ar_1@@22) (|sum_square#frame| (FrameFragment_4228 (|sum_square#condqp2| Heap@@36 i@@32 lo@@11 hi@@22 step@@7 vmin@@7 vmax_1@@7 ar_1@@22)) i@@32 lo@@11 hi@@22 step@@7 vmin@@7 vmax_1@@7 ar_1@@22)))
 :qid |stdinbpl.963:15|
 :skolemid |87|
 :pattern ( (state Heap@@36 Mask@@29) (|sum_square'| Heap@@36 i@@32 lo@@11 hi@@22 step@@7 vmin@@7 vmax_1@@7 ar_1@@22))
)))
(assert (forall ((s@@29 T@Seq_32092) (x@@3 T@Ref) (i@@33 Int) ) (!  (=> (and (and (<= 0 i@@33) (< i@@33 (|Seq#Length_17726| s@@29))) (= (|Seq#Index_17726| s@@29 i@@33) x@@3)) (|Seq#Contains_32092| s@@29 x@@3))
 :qid |stdinbpl.463:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_32092| s@@29 x@@3) (|Seq#Index_17726| s@@29 i@@33))
)))
(assert (forall ((s@@30 T@Seq_3251) (x@@4 Int) (i@@34 Int) ) (!  (=> (and (and (<= 0 i@@34) (< i@@34 (|Seq#Length_3251| s@@30))) (= (|Seq#Index_3251| s@@30 i@@34) x@@4)) (|Seq#Contains_3251| s@@30 x@@4))
 :qid |stdinbpl.463:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3251| s@@30 x@@4) (|Seq#Index_3251| s@@30 i@@34))
)))
(assert (forall ((s0@@11 T@Seq_32092) (s1@@11 T@Seq_32092) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_32092| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_32092| s0@@11 s1@@11))) (not (= (|Seq#Length_17726| s0@@11) (|Seq#Length_17726| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_32092| s0@@11 s1@@11))) (= (|Seq#Length_17726| s0@@11) (|Seq#Length_17726| s1@@11))) (= (|Seq#SkolemDiff_32092| s0@@11 s1@@11) (|Seq#SkolemDiff_32092| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_32092| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_32092| s0@@11 s1@@11) (|Seq#Length_17726| s0@@11))) (not (= (|Seq#Index_17726| s0@@11 (|Seq#SkolemDiff_32092| s0@@11 s1@@11)) (|Seq#Index_17726| s1@@11 (|Seq#SkolemDiff_32092| s0@@11 s1@@11))))))
 :qid |stdinbpl.567:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_32092| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3251) (s1@@12 T@Seq_3251) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3251| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3251| s0@@12 s1@@12))) (not (= (|Seq#Length_3251| s0@@12) (|Seq#Length_3251| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3251| s0@@12 s1@@12))) (= (|Seq#Length_3251| s0@@12) (|Seq#Length_3251| s1@@12))) (= (|Seq#SkolemDiff_3251| s0@@12 s1@@12) (|Seq#SkolemDiff_3251| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3251| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3251| s0@@12 s1@@12) (|Seq#Length_3251| s0@@12))) (not (= (|Seq#Index_3251| s0@@12 (|Seq#SkolemDiff_3251| s0@@12 s1@@12)) (|Seq#Index_3251| s1@@12 (|Seq#SkolemDiff_3251| s0@@12 s1@@12))))))
 :qid |stdinbpl.567:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3251| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_17687_68156) (v_1@@0 T@FrameType) (q T@Field_17687_68156) (w@@0 T@FrameType) (r T@Field_17687_68156) (u T@FrameType) ) (!  (=> (and (InsidePredicate_25000_25000 p@@1 v_1@@0 q w@@0) (InsidePredicate_25000_25000 q w@@0 r u)) (InsidePredicate_25000_25000 p@@1 v_1@@0 r u))
 :qid |stdinbpl.234:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25000_25000 p@@1 v_1@@0 q w@@0) (InsidePredicate_25000_25000 q w@@0 r u))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_24940) (i@@35 Int) (lo@@12 Int) (hi@@23 Int) (step@@8 Int) (vmin@@8 Int) (vmax_1@@8 Int) (ar_1@@23 T@Seq_32092) ) (! (dummyFunction_3680 (|sum_square#triggerStateless| i@@35 lo@@12 hi@@23 step@@8 vmin@@8 vmax_1@@8 ar_1@@23))
 :qid |stdinbpl.947:15|
 :skolemid |84|
 :pattern ( (|sum_square'| Heap@@37 i@@35 lo@@12 hi@@23 step@@8 vmin@@8 vmax_1@@8 ar_1@@23))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_24940) (Mask@@30 T@PolymorphicMapType_24961) (i@@36 Int) (hi@@24 Int) (ar_1@@24 T@Seq_32092) (v_2@@11 Int) ) (!  (=> (and (state Heap@@38 Mask@@30) (< AssumeFunctionsAbove 1)) (=> (and (and (and (<= 0 i@@36) (<= i@@36 hi@@24)) (<= hi@@24 (|Seq#Length_17726| ar_1@@24))) (forall ((j@@11 Int) (k@@2 Int) ) (!  (=> (and (<= 0 j@@11) (and (< j@@11 hi@@24) (and (<= 0 k@@2) (and (< k@@2 hi@@24) (not (= j@@11 k@@2)))))) (not (= (|Seq#Index_17726| ar_1@@24 j@@11) (|Seq#Index_17726| ar_1@@24 k@@2))))
 :qid |stdinbpl.1572:112|
 :skolemid |131|
 :pattern ( (|Seq#Index_17726| ar_1@@24 j@@11) (|Seq#Index_17726| ar_1@@24 k@@2))
))) (= (count_array Heap@@38 i@@36 hi@@24 ar_1@@24 v_2@@11) (ite (< i@@36 hi@@24) (+ (ite (= (select (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| Heap@@38) (|Seq#Index_17726| ar_1@@24 i@@36) Ref__Integer_value) v_2@@11) 1 0) (|count_array'| Heap@@38 (+ i@@36 1) hi@@24 ar_1@@24 v_2@@11)) 0))))
 :qid |stdinbpl.1570:15|
 :skolemid |132|
 :pattern ( (state Heap@@38 Mask@@30) (count_array Heap@@38 i@@36 hi@@24 ar_1@@24 v_2@@11))
)))
(assert (forall ((s@@31 T@Seq_32092) ) (!  (=> (= (|Seq#Length_17726| s@@31) 0) (= s@@31 |Seq#Empty_17726|))
 :qid |stdinbpl.270:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_17726| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3251) ) (!  (=> (= (|Seq#Length_3251| s@@32) 0) (= s@@32 |Seq#Empty_3251|))
 :qid |stdinbpl.270:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3251| s@@32))
)))
(assert (forall ((s@@33 T@Seq_32092) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_17726| s@@33 n@@25) |Seq#Empty_17726|))
 :qid |stdinbpl.446:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_17726| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3251) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3251| s@@34 n@@26) |Seq#Empty_3251|))
 :qid |stdinbpl.446:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3251| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@39 T@PolymorphicMapType_24940) (Mask@@31 T@PolymorphicMapType_24961) (i@@37 Int) (lo@@13 Int) (hi@@25 Int) (ar_1@@25 T@Seq_32092) ) (!  (=> (state Heap@@39 Mask@@31) (= (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25) (|sum_array#frame| (FrameFragment_4228 (|sum_array#condqp1| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25)) i@@37 lo@@13 hi@@25 ar_1@@25)))
 :qid |stdinbpl.728:15|
 :skolemid |66|
 :pattern ( (state Heap@@39 Mask@@31) (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_24940) (Mask@@32 T@PolymorphicMapType_24961) (i@@38 Int) (hi@@26 Int) (ar_1@@26 T@Seq_32092) (v_2@@12 Int) ) (!  (=> (state Heap@@40 Mask@@32) (= (|count_array'| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12) (|count_array#frame| (FrameFragment_4228 (|count_array#condqp4| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12)) i@@38 hi@@26 ar_1@@26 v_2@@12)))
 :qid |stdinbpl.1580:15|
 :skolemid |133|
 :pattern ( (state Heap@@40 Mask@@32) (|count_array'| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun k_37 () Int)
(declare-fun ar_1@@27 () T@Seq_32092)
(declare-fun QPMask@4 () T@PolymorphicMapType_24961)
(declare-fun qpRange13 (T@Ref) Bool)
(declare-fun invRecv13 (T@Ref) Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_24940)
(declare-fun k_32 () Int)
(declare-fun k_9_1 () Int)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_24940)
(declare-fun M_1 () Int)
(declare-fun N () Int)
(declare-fun neverTriggered15 (Int) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_24961)
(declare-fun qpRange15 (T@Ref) Bool)
(declare-fun invRecv15 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_24961)
(declare-fun Heap@@41 () T@PolymorphicMapType_24940)
(declare-fun qpRange16 (T@Ref) Bool)
(declare-fun invRecv16 (T@Ref) Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_24961)
(declare-fun neverTriggered14 (Int) Bool)
(declare-fun qpRange14 (T@Ref) Bool)
(declare-fun invRecv14 (T@Ref) Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_24961)
(declare-fun j_2_2 () Int)
(declare-fun k_11 () Int)
(declare-fun i@@39 () Int)
(declare-fun diz () T@Ref)
(declare-fun current_thread_id () Int)
(declare-fun qpRange12 (T@Ref) Bool)
(declare-fun invRecv12 (T@Ref) Int)
(declare-fun k_21 () Int)
(declare-fun j_23 () Int)
(declare-fun k_24 () Int)
(set-info :boogie-vc-id Ref__zero_array)
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
 (=> (= (ControlFlow 0 0) 56) (let ((anon16_correct true))
(let ((anon39_Else_correct  (=> (and (not (and (<= 0 k_37) (< k_37 (|Seq#Length_17726| ar_1@@27)))) (= (ControlFlow 0 48) 43)) anon16_correct)))
(let ((anon39_Then_correct  (=> (and (<= 0 k_37) (< k_37 (|Seq#Length_17726| ar_1@@27))) (and (=> (= (ControlFlow 0 44) (- 0 47)) (>= k_37 0)) (=> (>= k_37 0) (and (=> (= (ControlFlow 0 44) (- 0 46)) (< k_37 (|Seq#Length_17726| ar_1@@27))) (=> (< k_37 (|Seq#Length_17726| ar_1@@27)) (and (=> (= (ControlFlow 0 44) (- 0 45)) (HasDirectPerm_17687_3373 QPMask@4 (|Seq#Index_17726| ar_1@@27 k_37) Ref__Integer_value)) (=> (HasDirectPerm_17687_3373 QPMask@4 (|Seq#Index_17726| ar_1@@27 k_37) Ref__Integer_value) (=> (= (ControlFlow 0 44) 43) anon16_correct))))))))))
(let ((anon38_Else_correct true))
(let ((anon36_Else_correct  (and (=> (= (ControlFlow 0 49) (- 0 50)) (forall ((k_5 Int) (k_5_1 Int) ) (!  (=> (and (and (and (and (not (= k_5 k_5_1)) (and (<= 0 k_5) (< k_5 (|Seq#Length_17726| ar_1@@27)))) (and (<= 0 k_5_1) (< k_5_1 (|Seq#Length_17726| ar_1@@27)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17726| ar_1@@27 k_5) (|Seq#Index_17726| ar_1@@27 k_5_1))))
 :qid |stdinbpl.2348:15|
 :skolemid |181|
))) (=> (forall ((k_5@@0 Int) (k_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= k_5@@0 k_5_1@@0)) (and (<= 0 k_5@@0) (< k_5@@0 (|Seq#Length_17726| ar_1@@27)))) (and (<= 0 k_5_1@@0) (< k_5_1@@0 (|Seq#Length_17726| ar_1@@27)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17726| ar_1@@27 k_5@@0) (|Seq#Index_17726| ar_1@@27 k_5_1@@0))))
 :qid |stdinbpl.2348:15|
 :skolemid |181|
)) (=> (and (and (forall ((k_5@@1 Int) ) (!  (=> (and (and (<= 0 k_5@@1) (< k_5@@1 (|Seq#Length_17726| ar_1@@27))) (< NoPerm FullPerm)) (and (qpRange13 (|Seq#Index_17726| ar_1@@27 k_5@@1)) (= (invRecv13 (|Seq#Index_17726| ar_1@@27 k_5@@1)) k_5@@1)))
 :qid |stdinbpl.2354:22|
 :skolemid |182|
 :pattern ( (|Seq#Index_17726| ar_1@@27 k_5@@1))
 :pattern ( (|Seq#Index_17726| ar_1@@27 k_5@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv13 o_9)) (< (invRecv13 o_9) (|Seq#Length_17726| ar_1@@27))) (< NoPerm FullPerm)) (qpRange13 o_9)) (= (|Seq#Index_17726| ar_1@@27 (invRecv13 o_9)) o_9))
 :qid |stdinbpl.2358:22|
 :skolemid |183|
 :pattern ( (invRecv13 o_9))
))) (and (forall ((k_5@@2 Int) ) (!  (=> (and (<= 0 k_5@@2) (< k_5@@2 (|Seq#Length_17726| ar_1@@27))) (not (= (|Seq#Index_17726| ar_1@@27 k_5@@2) null)))
 :qid |stdinbpl.2364:22|
 :skolemid |184|
 :pattern ( (|Seq#Index_17726| ar_1@@27 k_5@@2))
 :pattern ( (|Seq#Index_17726| ar_1@@27 k_5@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv13 o_9@@0)) (< (invRecv13 o_9@@0) (|Seq#Length_17726| ar_1@@27))) (< NoPerm FullPerm)) (qpRange13 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_17726| ar_1@@27 (invRecv13 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@4) o_9@@0 Ref__Integer_value) (+ (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| ZeroMask) o_9@@0 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv13 o_9@@0)) (< (invRecv13 o_9@@0) (|Seq#Length_17726| ar_1@@27))) (< NoPerm FullPerm)) (qpRange13 o_9@@0))) (= (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@4) o_9@@0 Ref__Integer_value) (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| ZeroMask) o_9@@0 Ref__Integer_value))))
 :qid |stdinbpl.2370:22|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@4) o_9@@0 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_25000_53) ) (!  (=> true (= (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| QPMask@4) o_9@@1 f_5)))
 :qid |stdinbpl.2374:29|
 :skolemid |186|
 :pattern ( (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| QPMask@4) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_25013_25014) ) (!  (=> true (= (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| QPMask@4) o_9@@2 f_5@@0)))
 :qid |stdinbpl.2374:29|
 :skolemid |186|
 :pattern ( (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| QPMask@4) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_31050_3373) ) (!  (=> (not (= f_5@@1 Ref__Integer_value)) (= (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@4) o_9@@3 f_5@@1)))
 :qid |stdinbpl.2374:29|
 :skolemid |186|
 :pattern ( (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@4) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_17687_68156) ) (!  (=> true (= (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| QPMask@4) o_9@@4 f_5@@2)))
 :qid |stdinbpl.2374:29|
 :skolemid |186|
 :pattern ( (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| QPMask@4) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_17687_68289) ) (!  (=> true (= (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| ZeroMask) o_9@@5 f_5@@3) (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| QPMask@4) o_9@@5 f_5@@3)))
 :qid |stdinbpl.2374:29|
 :skolemid |186|
 :pattern ( (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| ZeroMask) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| QPMask@4) o_9@@5 f_5@@3))
))) (and (state PostHeap@0 QPMask@4) (state PostHeap@0 QPMask@4))) (and (and (=> (= (ControlFlow 0 49) 42) anon38_Else_correct) (=> (= (ControlFlow 0 49) 44) anon39_Then_correct)) (=> (= (ControlFlow 0 49) 48) anon39_Else_correct))))))))
(let ((anon12_correct true))
(let ((anon37_Else_correct  (=> (and (not (and (<= 0 k_32) (< k_32 (|Seq#Length_17726| ar_1@@27)))) (= (ControlFlow 0 41) 37)) anon12_correct)))
(let ((anon37_Then_correct  (=> (and (<= 0 k_32) (< k_32 (|Seq#Length_17726| ar_1@@27))) (and (=> (= (ControlFlow 0 38) (- 0 40)) (>= k_32 0)) (=> (>= k_32 0) (and (=> (= (ControlFlow 0 38) (- 0 39)) (< k_32 (|Seq#Length_17726| ar_1@@27))) (=> (< k_32 (|Seq#Length_17726| ar_1@@27)) (=> (= (ControlFlow 0 38) 37) anon12_correct))))))))
(let ((anon35_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (and (=> (= (ControlFlow 0 51) 49) anon36_Else_correct) (=> (= (ControlFlow 0 51) 38) anon37_Then_correct)) (=> (= (ControlFlow 0 51) 41) anon37_Else_correct)))))
(let ((anon29_correct true))
(let ((anon45_Else_correct  (=> (and (not (and (<= 0 k_9_1) (< k_9_1 (|Seq#Length_17726| ar_1@@27)))) (= (ControlFlow 0 25) 22)) anon29_correct)))
(let ((anon45_Then_correct  (=> (and (<= 0 k_9_1) (< k_9_1 (|Seq#Length_17726| ar_1@@27))) (and (=> (= (ControlFlow 0 23) (- 0 24)) (= (select (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| ExhaleHeap@0) (|Seq#Index_17726| ar_1@@27 k_9_1) Ref__Integer_value) 0)) (=> (= (select (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| ExhaleHeap@0) (|Seq#Index_17726| ar_1@@27 k_9_1) Ref__Integer_value) 0) (=> (= (ControlFlow 0 23) 22) anon29_correct))))))
(let ((anon44_Else_correct true))
(let ((anon42_Else_correct  (=> (forall ((j_3_1_1 Int) (k_12_1 Int) ) (!  (=> (and (<= 0 j_3_1_1) (and (< j_3_1_1 (* M_1 N)) (and (<= 0 k_12_1) (and (< k_12_1 (* M_1 N)) (not (= j_3_1_1 k_12_1)))))) (not (= (|Seq#Index_17726| ar_1@@27 j_3_1_1) (|Seq#Index_17726| ar_1@@27 k_12_1))))
 :qid |stdinbpl.2434:22|
 :skolemid |189|
 :pattern ( (|Seq#Index_17726| ar_1@@27 j_3_1_1) (|Seq#Index_17726| ar_1@@27 k_12_1))
)) (and (=> (= (ControlFlow 0 26) (- 0 31)) (forall ((j_4_1 Int) (j_4_2 Int) ) (!  (=> (and (and (and (and (not (= j_4_1 j_4_2)) (and (<= 0 j_4_1) (< j_4_1 (* M_1 N)))) (and (<= 0 j_4_2) (< j_4_2 (* M_1 N)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17726| ar_1@@27 j_4_1) (|Seq#Index_17726| ar_1@@27 j_4_2))))
 :qid |stdinbpl.2445:19|
 :skolemid |190|
 :pattern ( (neverTriggered15 j_4_1) (neverTriggered15 j_4_2))
))) (=> (forall ((j_4_1@@0 Int) (j_4_2@@0 Int) ) (!  (=> (and (and (and (and (not (= j_4_1@@0 j_4_2@@0)) (and (<= 0 j_4_1@@0) (< j_4_1@@0 (* M_1 N)))) (and (<= 0 j_4_2@@0) (< j_4_2@@0 (* M_1 N)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17726| ar_1@@27 j_4_1@@0) (|Seq#Index_17726| ar_1@@27 j_4_2@@0))))
 :qid |stdinbpl.2445:19|
 :skolemid |190|
 :pattern ( (neverTriggered15 j_4_1@@0) (neverTriggered15 j_4_2@@0))
)) (and (=> (= (ControlFlow 0 26) (- 0 30)) (forall ((j_4_1@@1 Int) ) (!  (=> (and (<= 0 j_4_1@@1) (< j_4_1@@1 (* M_1 N))) (>= (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@0) (|Seq#Index_17726| ar_1@@27 j_4_1@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.2452:19|
 :skolemid |191|
 :pattern ( (|Seq#Index_17726| ar_1@@27 j_4_1@@1))
 :pattern ( (|Seq#Index_17726| ar_1@@27 j_4_1@@1))
))) (=> (forall ((j_4_1@@2 Int) ) (!  (=> (and (<= 0 j_4_1@@2) (< j_4_1@@2 (* M_1 N))) (>= (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@0) (|Seq#Index_17726| ar_1@@27 j_4_1@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.2452:19|
 :skolemid |191|
 :pattern ( (|Seq#Index_17726| ar_1@@27 j_4_1@@2))
 :pattern ( (|Seq#Index_17726| ar_1@@27 j_4_1@@2))
)) (=> (forall ((j_4_1@@3 Int) ) (!  (=> (and (and (<= 0 j_4_1@@3) (< j_4_1@@3 (* M_1 N))) (< NoPerm FullPerm)) (and (qpRange15 (|Seq#Index_17726| ar_1@@27 j_4_1@@3)) (= (invRecv15 (|Seq#Index_17726| ar_1@@27 j_4_1@@3)) j_4_1@@3)))
 :qid |stdinbpl.2458:24|
 :skolemid |192|
 :pattern ( (|Seq#Index_17726| ar_1@@27 j_4_1@@3))
 :pattern ( (|Seq#Index_17726| ar_1@@27 j_4_1@@3))
)) (=> (and (forall ((o_9@@6 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv15 o_9@@6)) (< (invRecv15 o_9@@6) (* M_1 N))) (and (< NoPerm FullPerm) (qpRange15 o_9@@6))) (= (|Seq#Index_17726| ar_1@@27 (invRecv15 o_9@@6)) o_9@@6))
 :qid |stdinbpl.2462:24|
 :skolemid |193|
 :pattern ( (invRecv15 o_9@@6))
)) (forall ((o_9@@7 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv15 o_9@@7)) (< (invRecv15 o_9@@7) (* M_1 N))) (and (< NoPerm FullPerm) (qpRange15 o_9@@7))) (and (= (|Seq#Index_17726| ar_1@@27 (invRecv15 o_9@@7)) o_9@@7) (= (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@1) o_9@@7 Ref__Integer_value) (- (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@0) o_9@@7 Ref__Integer_value) FullPerm)))) (=> (not (and (and (<= 0 (invRecv15 o_9@@7)) (< (invRecv15 o_9@@7) (* M_1 N))) (and (< NoPerm FullPerm) (qpRange15 o_9@@7)))) (= (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@1) o_9@@7 Ref__Integer_value) (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@0) o_9@@7 Ref__Integer_value))))
 :qid |stdinbpl.2468:24|
 :skolemid |194|
 :pattern ( (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@1) o_9@@7 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_25000_53) ) (!  (=> true (= (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| QPMask@0) o_9@@8 f_5@@4) (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| QPMask@1) o_9@@8 f_5@@4)))
 :qid |stdinbpl.2474:31|
 :skolemid |195|
 :pattern ( (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| QPMask@1) o_9@@8 f_5@@4))
)) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_25013_25014) ) (!  (=> true (= (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| QPMask@0) o_9@@9 f_5@@5) (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| QPMask@1) o_9@@9 f_5@@5)))
 :qid |stdinbpl.2474:31|
 :skolemid |195|
 :pattern ( (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| QPMask@1) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_31050_3373) ) (!  (=> (not (= f_5@@6 Ref__Integer_value)) (= (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@0) o_9@@10 f_5@@6) (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@1) o_9@@10 f_5@@6)))
 :qid |stdinbpl.2474:31|
 :skolemid |195|
 :pattern ( (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@1) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_17687_68156) ) (!  (=> true (= (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| QPMask@0) o_9@@11 f_5@@7) (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| QPMask@1) o_9@@11 f_5@@7)))
 :qid |stdinbpl.2474:31|
 :skolemid |195|
 :pattern ( (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| QPMask@1) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_17687_68289) ) (!  (=> true (= (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| QPMask@0) o_9@@12 f_5@@8) (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| QPMask@1) o_9@@12 f_5@@8)))
 :qid |stdinbpl.2474:31|
 :skolemid |195|
 :pattern ( (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| QPMask@1) o_9@@12 f_5@@8))
))) (and (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@0 QPMask@1) (forall ((i_2 Int) ) (!  (=> (and (<= 0 i_2) (and (< i_2 M_1) (< 0 N))) (= (* M_1 N) (|Seq#Length_17726| ar_1@@27)))
 :qid |stdinbpl.2485:22|
 :skolemid |196|
)))) (and (=> (= (ControlFlow 0 26) (- 0 29)) (forall ((j_5 Int) (j_5_1 Int) ) (!  (=> (and (and (and (and (not (= j_5 j_5_1)) (and (<= 0 j_5) (< j_5 (* M_1 N)))) (and (<= 0 j_5_1) (< j_5_1 (* M_1 N)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17726| ar_1@@27 j_5) (|Seq#Index_17726| ar_1@@27 j_5_1))))
 :qid |stdinbpl.2491:17|
 :skolemid |197|
))) (=> (forall ((j_5@@0 Int) (j_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j_5@@0 j_5_1@@0)) (and (<= 0 j_5@@0) (< j_5@@0 (* M_1 N)))) (and (<= 0 j_5_1@@0) (< j_5_1@@0 (* M_1 N)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17726| ar_1@@27 j_5@@0) (|Seq#Index_17726| ar_1@@27 j_5_1@@0))))
 :qid |stdinbpl.2491:17|
 :skolemid |197|
)) (=> (and (and (forall ((j_5@@1 Int) ) (!  (=> (and (and (<= 0 j_5@@1) (< j_5@@1 (* M_1 N))) (< NoPerm FullPerm)) (and (qpRange16 (|Seq#Index_17726| ar_1@@27 j_5@@1)) (= (invRecv16 (|Seq#Index_17726| ar_1@@27 j_5@@1)) j_5@@1)))
 :qid |stdinbpl.2497:24|
 :skolemid |198|
 :pattern ( (|Seq#Index_17726| ar_1@@27 j_5@@1))
 :pattern ( (|Seq#Index_17726| ar_1@@27 j_5@@1))
)) (forall ((o_9@@13 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv16 o_9@@13)) (< (invRecv16 o_9@@13) (* M_1 N))) (< NoPerm FullPerm)) (qpRange16 o_9@@13)) (= (|Seq#Index_17726| ar_1@@27 (invRecv16 o_9@@13)) o_9@@13))
 :qid |stdinbpl.2501:24|
 :skolemid |199|
 :pattern ( (invRecv16 o_9@@13))
))) (and (forall ((j_5@@2 Int) ) (!  (=> (and (<= 0 j_5@@2) (< j_5@@2 (* M_1 N))) (not (= (|Seq#Index_17726| ar_1@@27 j_5@@2) null)))
 :qid |stdinbpl.2507:24|
 :skolemid |200|
 :pattern ( (|Seq#Index_17726| ar_1@@27 j_5@@2))
 :pattern ( (|Seq#Index_17726| ar_1@@27 j_5@@2))
)) (forall ((o_9@@14 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv16 o_9@@14)) (< (invRecv16 o_9@@14) (* M_1 N))) (< NoPerm FullPerm)) (qpRange16 o_9@@14)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_17726| ar_1@@27 (invRecv16 o_9@@14)) o_9@@14)) (= (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@2) o_9@@14 Ref__Integer_value) (+ (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@1) o_9@@14 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv16 o_9@@14)) (< (invRecv16 o_9@@14) (* M_1 N))) (< NoPerm FullPerm)) (qpRange16 o_9@@14))) (= (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@2) o_9@@14 Ref__Integer_value) (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@1) o_9@@14 Ref__Integer_value))))
 :qid |stdinbpl.2513:24|
 :skolemid |201|
 :pattern ( (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@2) o_9@@14 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@15 T@Ref) (f_5@@9 T@Field_25000_53) ) (!  (=> true (= (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| QPMask@1) o_9@@15 f_5@@9) (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| QPMask@2) o_9@@15 f_5@@9)))
 :qid |stdinbpl.2517:31|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| QPMask@1) o_9@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| QPMask@2) o_9@@15 f_5@@9))
)) (forall ((o_9@@16 T@Ref) (f_5@@10 T@Field_25013_25014) ) (!  (=> true (= (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| QPMask@1) o_9@@16 f_5@@10) (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| QPMask@2) o_9@@16 f_5@@10)))
 :qid |stdinbpl.2517:31|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| QPMask@1) o_9@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| QPMask@2) o_9@@16 f_5@@10))
))) (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_31050_3373) ) (!  (=> (not (= f_5@@11 Ref__Integer_value)) (= (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@1) o_9@@17 f_5@@11) (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@2) o_9@@17 f_5@@11)))
 :qid |stdinbpl.2517:31|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@1) o_9@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@2) o_9@@17 f_5@@11))
))) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_17687_68156) ) (!  (=> true (= (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| QPMask@1) o_9@@18 f_5@@12) (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| QPMask@2) o_9@@18 f_5@@12)))
 :qid |stdinbpl.2517:31|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| QPMask@1) o_9@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| QPMask@2) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_17687_68289) ) (!  (=> true (= (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| QPMask@1) o_9@@19 f_5@@13) (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| QPMask@2) o_9@@19 f_5@@13)))
 :qid |stdinbpl.2517:31|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| QPMask@1) o_9@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| QPMask@2) o_9@@19 f_5@@13))
))) (and (and (state ExhaleHeap@0 QPMask@2) (forall ((j_6_2 Int) ) (!  (=> (and (<= 0 j_6_2) (< j_6_2 (* M_1 N))) (= (select (|PolymorphicMapType_24940_17687_3373#PolymorphicMapType_24940| ExhaleHeap@0) (|Seq#Index_17726| ar_1@@27 j_6_2) Ref__Integer_value) 0))
 :qid |stdinbpl.2523:22|
 :skolemid |203|
 :pattern ( (|Seq#Index_17726| ar_1@@27 j_6_2))
))) (and (state ExhaleHeap@0 QPMask@2) (state ExhaleHeap@0 QPMask@2)))) (and (=> (= (ControlFlow 0 26) (- 0 28)) (forall ((k_8 Int) (k_8_1 Int) ) (!  (=> (and (and (and (and (not (= k_8 k_8_1)) (and (<= 0 k_8) (< k_8 (|Seq#Length_17726| ar_1@@27)))) (and (<= 0 k_8_1) (< k_8_1 (|Seq#Length_17726| ar_1@@27)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17726| ar_1@@27 k_8) (|Seq#Index_17726| ar_1@@27 k_8_1))))
 :qid |stdinbpl.2540:17|
 :skolemid |204|
 :pattern ( (neverTriggered14 k_8) (neverTriggered14 k_8_1))
))) (=> (forall ((k_8@@0 Int) (k_8_1@@0 Int) ) (!  (=> (and (and (and (and (not (= k_8@@0 k_8_1@@0)) (and (<= 0 k_8@@0) (< k_8@@0 (|Seq#Length_17726| ar_1@@27)))) (and (<= 0 k_8_1@@0) (< k_8_1@@0 (|Seq#Length_17726| ar_1@@27)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17726| ar_1@@27 k_8@@0) (|Seq#Index_17726| ar_1@@27 k_8_1@@0))))
 :qid |stdinbpl.2540:17|
 :skolemid |204|
 :pattern ( (neverTriggered14 k_8@@0) (neverTriggered14 k_8_1@@0))
)) (and (=> (= (ControlFlow 0 26) (- 0 27)) (forall ((k_8@@1 Int) ) (!  (=> (and (<= 0 k_8@@1) (< k_8@@1 (|Seq#Length_17726| ar_1@@27))) (>= (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@2) (|Seq#Index_17726| ar_1@@27 k_8@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.2547:17|
 :skolemid |205|
 :pattern ( (|Seq#Index_17726| ar_1@@27 k_8@@1))
 :pattern ( (|Seq#Index_17726| ar_1@@27 k_8@@1))
))) (=> (forall ((k_8@@2 Int) ) (!  (=> (and (<= 0 k_8@@2) (< k_8@@2 (|Seq#Length_17726| ar_1@@27))) (>= (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@2) (|Seq#Index_17726| ar_1@@27 k_8@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.2547:17|
 :skolemid |205|
 :pattern ( (|Seq#Index_17726| ar_1@@27 k_8@@2))
 :pattern ( (|Seq#Index_17726| ar_1@@27 k_8@@2))
)) (=> (forall ((k_8@@3 Int) ) (!  (=> (and (and (<= 0 k_8@@3) (< k_8@@3 (|Seq#Length_17726| ar_1@@27))) (< NoPerm FullPerm)) (and (qpRange14 (|Seq#Index_17726| ar_1@@27 k_8@@3)) (= (invRecv14 (|Seq#Index_17726| ar_1@@27 k_8@@3)) k_8@@3)))
 :qid |stdinbpl.2553:22|
 :skolemid |206|
 :pattern ( (|Seq#Index_17726| ar_1@@27 k_8@@3))
 :pattern ( (|Seq#Index_17726| ar_1@@27 k_8@@3))
)) (=> (and (forall ((o_9@@20 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv14 o_9@@20)) (< (invRecv14 o_9@@20) (|Seq#Length_17726| ar_1@@27))) (and (< NoPerm FullPerm) (qpRange14 o_9@@20))) (= (|Seq#Index_17726| ar_1@@27 (invRecv14 o_9@@20)) o_9@@20))
 :qid |stdinbpl.2557:22|
 :skolemid |207|
 :pattern ( (invRecv14 o_9@@20))
)) (forall ((o_9@@21 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv14 o_9@@21)) (< (invRecv14 o_9@@21) (|Seq#Length_17726| ar_1@@27))) (and (< NoPerm FullPerm) (qpRange14 o_9@@21))) (and (= (|Seq#Index_17726| ar_1@@27 (invRecv14 o_9@@21)) o_9@@21) (= (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@3) o_9@@21 Ref__Integer_value) (- (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@2) o_9@@21 Ref__Integer_value) FullPerm)))) (=> (not (and (and (<= 0 (invRecv14 o_9@@21)) (< (invRecv14 o_9@@21) (|Seq#Length_17726| ar_1@@27))) (and (< NoPerm FullPerm) (qpRange14 o_9@@21)))) (= (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@3) o_9@@21 Ref__Integer_value) (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@2) o_9@@21 Ref__Integer_value))))
 :qid |stdinbpl.2563:22|
 :skolemid |208|
 :pattern ( (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@3) o_9@@21 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@22 T@Ref) (f_5@@14 T@Field_25000_53) ) (!  (=> true (= (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| QPMask@2) o_9@@22 f_5@@14) (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| QPMask@3) o_9@@22 f_5@@14)))
 :qid |stdinbpl.2569:29|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| QPMask@3) o_9@@22 f_5@@14))
)) (forall ((o_9@@23 T@Ref) (f_5@@15 T@Field_25013_25014) ) (!  (=> true (= (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| QPMask@2) o_9@@23 f_5@@15) (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| QPMask@3) o_9@@23 f_5@@15)))
 :qid |stdinbpl.2569:29|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| QPMask@3) o_9@@23 f_5@@15))
))) (forall ((o_9@@24 T@Ref) (f_5@@16 T@Field_31050_3373) ) (!  (=> (not (= f_5@@16 Ref__Integer_value)) (= (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@2) o_9@@24 f_5@@16) (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@3) o_9@@24 f_5@@16)))
 :qid |stdinbpl.2569:29|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@3) o_9@@24 f_5@@16))
))) (forall ((o_9@@25 T@Ref) (f_5@@17 T@Field_17687_68156) ) (!  (=> true (= (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| QPMask@2) o_9@@25 f_5@@17) (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| QPMask@3) o_9@@25 f_5@@17)))
 :qid |stdinbpl.2569:29|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| QPMask@3) o_9@@25 f_5@@17))
))) (forall ((o_9@@26 T@Ref) (f_5@@18 T@Field_17687_68289) ) (!  (=> true (= (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| QPMask@2) o_9@@26 f_5@@18) (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| QPMask@3) o_9@@26 f_5@@18)))
 :qid |stdinbpl.2569:29|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| QPMask@3) o_9@@26 f_5@@18))
))) (and (and (=> (= (ControlFlow 0 26) 21) anon44_Else_correct) (=> (= (ControlFlow 0 26) 23) anon45_Then_correct)) (=> (= (ControlFlow 0 26) 25) anon45_Else_correct)))))))))))))))))))))))
(let ((anon25_correct true))
(let ((anon43_Else_correct  (=> (and (not (and (<= 0 j_2_2) (and (< j_2_2 (* M_1 N)) (and (<= 0 k_11) (and (< k_11 (* M_1 N)) (not (= j_2_2 k_11))))))) (= (ControlFlow 0 20) 17)) anon25_correct)))
(let ((anon43_Then_correct  (=> (and (<= 0 j_2_2) (and (< j_2_2 (* M_1 N)) (and (<= 0 k_11) (and (< k_11 (* M_1 N)) (not (= j_2_2 k_11)))))) (and (=> (= (ControlFlow 0 18) (- 0 19)) (not (= (|Seq#Index_17726| ar_1@@27 j_2_2) (|Seq#Index_17726| ar_1@@27 k_11)))) (=> (not (= (|Seq#Index_17726| ar_1@@27 j_2_2) (|Seq#Index_17726| ar_1@@27 k_11))) (=> (= (ControlFlow 0 18) 17) anon25_correct))))))
(let ((anon40_Else_correct  (=> (forall ((i_1_1_1 Int) ) (!  (=> (and (<= 0 i_1_1_1) (and (< i_1_1_1 M_1) (< 0 N))) (= (* M_1 N) (|Seq#Length_17726| ar_1@@27)))
 :qid |stdinbpl.2421:22|
 :skolemid |188|
)) (and (=> (= (ControlFlow 0 32) (- 0 33)) (<= (* M_1 N) (|Seq#Length_17726| ar_1@@27))) (=> (<= (* M_1 N) (|Seq#Length_17726| ar_1@@27)) (and (and (=> (= (ControlFlow 0 32) 26) anon42_Else_correct) (=> (= (ControlFlow 0 32) 18) anon43_Then_correct)) (=> (= (ControlFlow 0 32) 20) anon43_Else_correct)))))))
(let ((anon21_correct true))
(let ((anon41_Else_correct  (=> (and (not (and (<= 0 i@@39) (and (< i@@39 M_1) (< 0 N)))) (= (ControlFlow 0 16) 13)) anon21_correct)))
(let ((anon41_Then_correct  (=> (and (<= 0 i@@39) (and (< i@@39 M_1) (< 0 N))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (= (* M_1 N) (|Seq#Length_17726| ar_1@@27))) (=> (= (* M_1 N) (|Seq#Length_17726| ar_1@@27)) (=> (= (ControlFlow 0 14) 13) anon21_correct))))))
(let ((anon35_Else_correct  (and (=> (= (ControlFlow 0 34) (- 0 36)) (not (= diz null))) (=> (not (= diz null)) (and (=> (= (ControlFlow 0 34) (- 0 35)) (>= current_thread_id 0)) (=> (>= current_thread_id 0) (and (and (=> (= (ControlFlow 0 34) 32) anon40_Else_correct) (=> (= (ControlFlow 0 34) 14) anon41_Then_correct)) (=> (= (ControlFlow 0 34) 16) anon41_Else_correct))))))))
(let ((anon33_Else_correct  (and (=> (= (ControlFlow 0 52) (- 0 53)) (forall ((k_3 Int) (k_3_2 Int) ) (!  (=> (and (and (and (and (not (= k_3 k_3_2)) (and (<= 0 k_3) (< k_3 (|Seq#Length_17726| ar_1@@27)))) (and (<= 0 k_3_2) (< k_3_2 (|Seq#Length_17726| ar_1@@27)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17726| ar_1@@27 k_3) (|Seq#Index_17726| ar_1@@27 k_3_2))))
 :qid |stdinbpl.2291:15|
 :skolemid |175|
))) (=> (forall ((k_3@@0 Int) (k_3_2@@0 Int) ) (!  (=> (and (and (and (and (not (= k_3@@0 k_3_2@@0)) (and (<= 0 k_3@@0) (< k_3@@0 (|Seq#Length_17726| ar_1@@27)))) (and (<= 0 k_3_2@@0) (< k_3_2@@0 (|Seq#Length_17726| ar_1@@27)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17726| ar_1@@27 k_3@@0) (|Seq#Index_17726| ar_1@@27 k_3_2@@0))))
 :qid |stdinbpl.2291:15|
 :skolemid |175|
)) (=> (and (and (forall ((k_3@@1 Int) ) (!  (=> (and (and (<= 0 k_3@@1) (< k_3@@1 (|Seq#Length_17726| ar_1@@27))) (< NoPerm FullPerm)) (and (qpRange12 (|Seq#Index_17726| ar_1@@27 k_3@@1)) (= (invRecv12 (|Seq#Index_17726| ar_1@@27 k_3@@1)) k_3@@1)))
 :qid |stdinbpl.2297:22|
 :skolemid |176|
 :pattern ( (|Seq#Index_17726| ar_1@@27 k_3@@1))
 :pattern ( (|Seq#Index_17726| ar_1@@27 k_3@@1))
)) (forall ((o_9@@27 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv12 o_9@@27)) (< (invRecv12 o_9@@27) (|Seq#Length_17726| ar_1@@27))) (< NoPerm FullPerm)) (qpRange12 o_9@@27)) (= (|Seq#Index_17726| ar_1@@27 (invRecv12 o_9@@27)) o_9@@27))
 :qid |stdinbpl.2301:22|
 :skolemid |177|
 :pattern ( (invRecv12 o_9@@27))
))) (and (forall ((k_3@@2 Int) ) (!  (=> (and (<= 0 k_3@@2) (< k_3@@2 (|Seq#Length_17726| ar_1@@27))) (not (= (|Seq#Index_17726| ar_1@@27 k_3@@2) null)))
 :qid |stdinbpl.2307:22|
 :skolemid |178|
 :pattern ( (|Seq#Index_17726| ar_1@@27 k_3@@2))
 :pattern ( (|Seq#Index_17726| ar_1@@27 k_3@@2))
)) (forall ((o_9@@28 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv12 o_9@@28)) (< (invRecv12 o_9@@28) (|Seq#Length_17726| ar_1@@27))) (< NoPerm FullPerm)) (qpRange12 o_9@@28)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_17726| ar_1@@27 (invRecv12 o_9@@28)) o_9@@28)) (= (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@0) o_9@@28 Ref__Integer_value) (+ (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| ZeroMask) o_9@@28 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv12 o_9@@28)) (< (invRecv12 o_9@@28) (|Seq#Length_17726| ar_1@@27))) (< NoPerm FullPerm)) (qpRange12 o_9@@28))) (= (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@0) o_9@@28 Ref__Integer_value) (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| ZeroMask) o_9@@28 Ref__Integer_value))))
 :qid |stdinbpl.2313:22|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@0) o_9@@28 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@29 T@Ref) (f_5@@19 T@Field_25000_53) ) (!  (=> true (= (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| ZeroMask) o_9@@29 f_5@@19) (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| QPMask@0) o_9@@29 f_5@@19)))
 :qid |stdinbpl.2317:29|
 :skolemid |180|
 :pattern ( (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| ZeroMask) o_9@@29 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_24961_17687_53#PolymorphicMapType_24961| QPMask@0) o_9@@29 f_5@@19))
)) (forall ((o_9@@30 T@Ref) (f_5@@20 T@Field_25013_25014) ) (!  (=> true (= (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| ZeroMask) o_9@@30 f_5@@20) (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| QPMask@0) o_9@@30 f_5@@20)))
 :qid |stdinbpl.2317:29|
 :skolemid |180|
 :pattern ( (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| ZeroMask) o_9@@30 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_24961_17687_25014#PolymorphicMapType_24961| QPMask@0) o_9@@30 f_5@@20))
))) (forall ((o_9@@31 T@Ref) (f_5@@21 T@Field_31050_3373) ) (!  (=> (not (= f_5@@21 Ref__Integer_value)) (= (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| ZeroMask) o_9@@31 f_5@@21) (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@0) o_9@@31 f_5@@21)))
 :qid |stdinbpl.2317:29|
 :skolemid |180|
 :pattern ( (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| ZeroMask) o_9@@31 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_24961_17687_3373#PolymorphicMapType_24961| QPMask@0) o_9@@31 f_5@@21))
))) (forall ((o_9@@32 T@Ref) (f_5@@22 T@Field_17687_68156) ) (!  (=> true (= (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| ZeroMask) o_9@@32 f_5@@22) (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| QPMask@0) o_9@@32 f_5@@22)))
 :qid |stdinbpl.2317:29|
 :skolemid |180|
 :pattern ( (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| ZeroMask) o_9@@32 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_24961_17687_68156#PolymorphicMapType_24961| QPMask@0) o_9@@32 f_5@@22))
))) (forall ((o_9@@33 T@Ref) (f_5@@23 T@Field_17687_68289) ) (!  (=> true (= (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| ZeroMask) o_9@@33 f_5@@23) (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| QPMask@0) o_9@@33 f_5@@23)))
 :qid |stdinbpl.2317:29|
 :skolemid |180|
 :pattern ( (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| ZeroMask) o_9@@33 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_24961_17687_72411#PolymorphicMapType_24961| QPMask@0) o_9@@33 f_5@@23))
))) (and (state Heap@@41 QPMask@0) (state Heap@@41 QPMask@0))) (and (=> (= (ControlFlow 0 52) 51) anon35_Then_correct) (=> (= (ControlFlow 0 52) 34) anon35_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon34_Else_correct  (=> (and (not (and (<= 0 k_21) (< k_21 (|Seq#Length_17726| ar_1@@27)))) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon34_Then_correct  (=> (and (<= 0 k_21) (< k_21 (|Seq#Length_17726| ar_1@@27))) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= k_21 0)) (=> (>= k_21 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< k_21 (|Seq#Length_17726| ar_1@@27))) (=> (< k_21 (|Seq#Length_17726| ar_1@@27)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon31_Else_correct  (=> (and (forall ((j_1 Int) (k_1 Int) ) (!  (=> (and (<= 0 j_1) (and (< j_1 (|Seq#Length_17726| ar_1@@27)) (and (<= 0 k_1) (and (< k_1 (|Seq#Length_17726| ar_1@@27)) (not (= j_1 k_1)))))) (not (= (|Seq#Index_17726| ar_1@@27 j_1) (|Seq#Index_17726| ar_1@@27 k_1))))
 :qid |stdinbpl.2273:20|
 :skolemid |174|
 :pattern ( (|Seq#Index_17726| ar_1@@27 j_1) (|Seq#Index_17726| ar_1@@27 k_1))
)) (state Heap@@41 ZeroMask)) (and (and (=> (= (ControlFlow 0 54) 52) anon33_Else_correct) (=> (= (ControlFlow 0 54) 9) anon34_Then_correct)) (=> (= (ControlFlow 0 54) 12) anon34_Else_correct)))))
(let ((anon3_correct true))
(let ((anon32_Else_correct  (=> (and (not (and (<= 0 j_23) (and (< j_23 (|Seq#Length_17726| ar_1@@27)) (and (<= 0 k_24) (and (< k_24 (|Seq#Length_17726| ar_1@@27)) (not (= j_23 k_24))))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon32_Then_correct  (=> (and (<= 0 j_23) (and (< j_23 (|Seq#Length_17726| ar_1@@27)) (and (<= 0 k_24) (and (< k_24 (|Seq#Length_17726| ar_1@@27)) (not (= j_23 k_24)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= j_23 0)) (=> (>= j_23 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< j_23 (|Seq#Length_17726| ar_1@@27))) (=> (< j_23 (|Seq#Length_17726| ar_1@@27)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= k_24 0)) (=> (>= k_24 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< k_24 (|Seq#Length_17726| ar_1@@27))) (=> (< k_24 (|Seq#Length_17726| ar_1@@27)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (state Heap@@41 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_24940_17467_53#PolymorphicMapType_24940| Heap@@41) diz $allocated)) (and (not (= diz null)) (state Heap@@41 ZeroMask))) (=> (and (and (and (>= current_thread_id 0) (state Heap@@41 ZeroMask)) (and (> M_1 0) (state Heap@@41 ZeroMask))) (and (and (> N 0) (state Heap@@41 ZeroMask)) (and (= (* M_1 N) (|Seq#Length_17726| ar_1@@27)) (state Heap@@41 ZeroMask)))) (and (and (=> (= (ControlFlow 0 55) 54) anon31_Else_correct) (=> (= (ControlFlow 0 55) 2) anon32_Then_correct)) (=> (= (ControlFlow 0 55) 7) anon32_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 56) 55) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
