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
(declare-sort T@Field_38298_53 0)
(declare-sort T@Field_38311_38312 0)
(declare-sort T@Field_44386_3829 0)
(declare-sort T@Field_27059_109050 0)
(declare-sort T@Field_27059_108917 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_38259 0)) (((PolymorphicMapType_38259 (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| (Array T@Ref T@Field_44386_3829 Real)) (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| (Array T@Ref T@Field_38298_53 Real)) (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| (Array T@Ref T@Field_38311_38312 Real)) (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| (Array T@Ref T@Field_27059_108917 Real)) (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| (Array T@Ref T@Field_27059_109050 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_38787 0)) (((PolymorphicMapType_38787 (|PolymorphicMapType_38787_38298_53#PolymorphicMapType_38787| (Array T@Ref T@Field_38298_53 Bool)) (|PolymorphicMapType_38787_38298_38312#PolymorphicMapType_38787| (Array T@Ref T@Field_38311_38312 Bool)) (|PolymorphicMapType_38787_38298_3829#PolymorphicMapType_38787| (Array T@Ref T@Field_44386_3829 Bool)) (|PolymorphicMapType_38787_38298_108917#PolymorphicMapType_38787| (Array T@Ref T@Field_27059_108917 Bool)) (|PolymorphicMapType_38787_38298_110228#PolymorphicMapType_38787| (Array T@Ref T@Field_27059_109050 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_38238 0)) (((PolymorphicMapType_38238 (|PolymorphicMapType_38238_26801_53#PolymorphicMapType_38238| (Array T@Ref T@Field_38298_53 Bool)) (|PolymorphicMapType_38238_26804_26805#PolymorphicMapType_38238| (Array T@Ref T@Field_38311_38312 T@Ref)) (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| (Array T@Ref T@Field_44386_3829 Int)) (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| (Array T@Ref T@Field_27059_109050 T@PolymorphicMapType_38787)) (|PolymorphicMapType_38238_38298_108917#PolymorphicMapType_38238| (Array T@Ref T@Field_27059_108917 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_38298_53)
(declare-fun Ref__Integer_value () T@Field_44386_3829)
(declare-sort T@Seq_45428 0)
(declare-fun |Seq#Length_27098| (T@Seq_45428) Int)
(declare-fun |Seq#Drop_27098| (T@Seq_45428 Int) T@Seq_45428)
(declare-sort T@Seq_3707 0)
(declare-fun |Seq#Length_3707| (T@Seq_3707) Int)
(declare-fun |Seq#Drop_3707| (T@Seq_3707 Int) T@Seq_3707)
(declare-fun state (T@PolymorphicMapType_38238 T@PolymorphicMapType_38259) Bool)
(declare-fun |count_square'| (T@PolymorphicMapType_38238 Int Int Int Int Int Int T@Seq_45428 Int) Int)
(declare-fun |count_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_45428 Int) Int)
(declare-fun FrameFragment_4688 (Int) T@FrameType)
(declare-fun |count_square#condqp3| (T@PolymorphicMapType_38238 Int Int Int Int Int Int T@Seq_45428 Int) Int)
(declare-fun succHeap (T@PolymorphicMapType_38238 T@PolymorphicMapType_38238) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_38238 T@PolymorphicMapType_38238) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_38259) Bool)
(declare-fun |sum_list'| (T@PolymorphicMapType_38238 Int Int T@Seq_3707) Int)
(declare-fun dummyFunction_4136 (Int) Bool)
(declare-fun |sum_list#triggerStateless| (Int Int T@Seq_3707) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_38787)
(declare-fun |Seq#Index_27098| (T@Seq_45428 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3707| (T@Seq_3707 Int) Int)
(declare-fun |Seq#Empty_27098| () T@Seq_45428)
(declare-fun |Seq#Empty_3707| () T@Seq_3707)
(declare-fun |Seq#Update_27098| (T@Seq_45428 Int T@Ref) T@Seq_45428)
(declare-fun |Seq#Update_3707| (T@Seq_3707 Int Int) T@Seq_3707)
(declare-fun |Seq#Take_27098| (T@Seq_45428 Int) T@Seq_45428)
(declare-fun |Seq#Take_3707| (T@Seq_3707 Int) T@Seq_3707)
(declare-fun |Seq#Contains_3707| (T@Seq_3707 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3707)
(declare-fun |Seq#Contains_45428| (T@Seq_45428 T@Ref) Bool)
(declare-fun |Seq#Skolem_45428| (T@Seq_45428 T@Ref) Int)
(declare-fun |Seq#Skolem_3707| (T@Seq_3707 Int) Int)
(declare-fun sum_array (T@PolymorphicMapType_38238 Int Int Int T@Seq_45428) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |sum_array'| (T@PolymorphicMapType_38238 Int Int Int T@Seq_45428) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_38238 T@PolymorphicMapType_38238 T@PolymorphicMapType_38259) Bool)
(declare-fun IsPredicateField_27059_109008 (T@Field_27059_108917) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_27059 (T@Field_27059_108917) T@Field_27059_109050)
(declare-fun HasDirectPerm_27059_108981 (T@PolymorphicMapType_38259 T@Ref T@Field_27059_108917) Bool)
(declare-fun IsWandField_27059_110755 (T@Field_27059_108917) Bool)
(declare-fun WandMaskField_27059 (T@Field_27059_108917) T@Field_27059_109050)
(declare-fun |Seq#Singleton_27098| (T@Ref) T@Seq_45428)
(declare-fun |Seq#Singleton_3707| (Int) T@Seq_3707)
(declare-fun count_square (T@PolymorphicMapType_38238 Int Int Int Int Int Int T@Seq_45428 Int) Int)
(declare-fun |count_square#triggerStateless| (Int Int Int Int Int Int T@Seq_45428 Int) Int)
(declare-fun |Seq#Append_45428| (T@Seq_45428 T@Seq_45428) T@Seq_45428)
(declare-fun |Seq#Append_3707| (T@Seq_3707 T@Seq_3707) T@Seq_3707)
(declare-fun |sum_square#condqp2| (T@PolymorphicMapType_38238 Int Int Int Int Int Int T@Seq_45428) Int)
(declare-fun |sk_sum_square#condqp2| (Int Int) Int)
(declare-fun |sk_count_square#condqp3| (Int Int) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_38238)
(declare-fun ZeroMask () T@PolymorphicMapType_38259)
(declare-fun sum_square (T@PolymorphicMapType_38238 Int Int Int Int Int Int T@Seq_45428) Int)
(declare-fun |sum_square'| (T@PolymorphicMapType_38238 Int Int Int Int Int Int T@Seq_45428) Int)
(declare-fun InsidePredicate_38298_38298 (T@Field_27059_108917 T@FrameType T@Field_27059_108917 T@FrameType) Bool)
(declare-fun IsPredicateField_27059_3829 (T@Field_44386_3829) Bool)
(declare-fun IsWandField_27059_3829 (T@Field_44386_3829) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_27059_114301 (T@Field_27059_109050) Bool)
(declare-fun IsWandField_27059_114317 (T@Field_27059_109050) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_27059_38312 (T@Field_38311_38312) Bool)
(declare-fun IsWandField_27059_38312 (T@Field_38311_38312) Bool)
(declare-fun IsPredicateField_27059_53 (T@Field_38298_53) Bool)
(declare-fun IsWandField_27059_53 (T@Field_38298_53) Bool)
(declare-fun |sum_list#frame| (T@FrameType Int Int T@Seq_3707) Int)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun HasDirectPerm_27059_114755 (T@PolymorphicMapType_38259 T@Ref T@Field_27059_109050) Bool)
(declare-fun HasDirectPerm_27059_38312 (T@PolymorphicMapType_38259 T@Ref T@Field_38311_38312) Bool)
(declare-fun HasDirectPerm_27059_53 (T@PolymorphicMapType_38259 T@Ref T@Field_38298_53) Bool)
(declare-fun HasDirectPerm_27059_3829 (T@PolymorphicMapType_38259 T@Ref T@Field_44386_3829) Bool)
(declare-fun |sum_array#triggerStateless| (Int Int Int T@Seq_45428) Int)
(declare-fun |count_list'| (T@PolymorphicMapType_38238 Int Int T@Seq_3707 Int) Int)
(declare-fun |count_list#triggerStateless| (Int Int T@Seq_3707 Int) Int)
(declare-fun |count_array'| (T@PolymorphicMapType_38238 Int Int T@Seq_45428 Int) Int)
(declare-fun |count_array#triggerStateless| (Int Int T@Seq_45428 Int) Int)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun count_list (T@PolymorphicMapType_38238 Int Int T@Seq_3707 Int) Int)
(declare-fun count_array (T@PolymorphicMapType_38238 Int Int T@Seq_45428 Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_38259 T@PolymorphicMapType_38259 T@PolymorphicMapType_38259) Bool)
(declare-fun |sum_square#triggerStateless| (Int Int Int Int Int Int T@Seq_45428) Int)
(declare-fun |count_list#frame| (T@FrameType Int Int T@Seq_3707 Int) Int)
(declare-fun |Seq#Equal_45428| (T@Seq_45428 T@Seq_45428) Bool)
(declare-fun |Seq#Equal_3707| (T@Seq_3707 T@Seq_3707) Bool)
(declare-fun sum_list (T@PolymorphicMapType_38238 Int Int T@Seq_3707) Int)
(declare-fun |Seq#ContainsTrigger_27098| (T@Seq_45428 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3707| (T@Seq_3707 Int) Bool)
(declare-fun |count_array#condqp4| (T@PolymorphicMapType_38238 Int Int T@Seq_45428 Int) Int)
(declare-fun |sk_count_array#condqp4| (Int Int) Int)
(declare-fun |sum_array#condqp1| (T@PolymorphicMapType_38238 Int Int Int T@Seq_45428) Int)
(declare-fun |sk_sum_array#condqp1| (Int Int) Int)
(declare-fun |sum_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_45428) Int)
(declare-fun |Seq#SkolemDiff_45428| (T@Seq_45428 T@Seq_45428) Int)
(declare-fun |Seq#SkolemDiff_3707| (T@Seq_3707 T@Seq_3707) Int)
(declare-fun |sum_array#frame| (T@FrameType Int Int Int T@Seq_45428) Int)
(declare-fun |count_array#frame| (T@FrameType Int Int T@Seq_45428 Int) Int)
(assert (forall ((s T@Seq_45428) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_27098| s)) (= (|Seq#Length_27098| (|Seq#Drop_27098| s n)) (- (|Seq#Length_27098| s) n))) (=> (< (|Seq#Length_27098| s) n) (= (|Seq#Length_27098| (|Seq#Drop_27098| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_27098| (|Seq#Drop_27098| s n)) (|Seq#Length_27098| s))))
 :qid |stdinbpl.398:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_27098| (|Seq#Drop_27098| s n)))
 :pattern ( (|Seq#Length_27098| s) (|Seq#Drop_27098| s n))
)))
(assert (forall ((s@@0 T@Seq_3707) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3707| s@@0)) (= (|Seq#Length_3707| (|Seq#Drop_3707| s@@0 n@@0)) (- (|Seq#Length_3707| s@@0) n@@0))) (=> (< (|Seq#Length_3707| s@@0) n@@0) (= (|Seq#Length_3707| (|Seq#Drop_3707| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3707| (|Seq#Drop_3707| s@@0 n@@0)) (|Seq#Length_3707| s@@0))))
 :qid |stdinbpl.398:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3707| (|Seq#Drop_3707| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3707| s@@0) (|Seq#Drop_3707| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_38238) (Mask T@PolymorphicMapType_38259) (i Int) (lo Int) (hi Int) (step Int) (vmin Int) (vmax Int) (ar T@Seq_45428) (v_2 Int) ) (!  (=> (state Heap Mask) (= (|count_square'| Heap i lo hi step vmin vmax ar v_2) (|count_square#frame| (FrameFragment_4688 (|count_square#condqp3| Heap i lo hi step vmin vmax ar v_2)) i lo hi step vmin vmax ar v_2)))
 :qid |stdinbpl.1286:15|
 :skolemid |108|
 :pattern ( (state Heap Mask) (|count_square'| Heap i lo hi step vmin vmax ar v_2))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_38238) (Heap1 T@PolymorphicMapType_38238) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_38238) (Mask@@0 T@PolymorphicMapType_38259) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_38238) (Heap1@@0 T@PolymorphicMapType_38238) (Heap2 T@PolymorphicMapType_38238) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_38238) (i@@0 Int) (hi@@0 Int) (ar@@0 T@Seq_3707) ) (! (dummyFunction_4136 (|sum_list#triggerStateless| i@@0 hi@@0 ar@@0))
 :qid |stdinbpl.684:15|
 :skolemid |59|
 :pattern ( (|sum_list'| Heap@@1 i@@0 hi@@0 ar@@0))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_27059_109050) ) (!  (not (select (|PolymorphicMapType_38787_38298_110228#PolymorphicMapType_38787| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38787_38298_110228#PolymorphicMapType_38787| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_27059_108917) ) (!  (not (select (|PolymorphicMapType_38787_38298_108917#PolymorphicMapType_38787| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38787_38298_108917#PolymorphicMapType_38787| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_44386_3829) ) (!  (not (select (|PolymorphicMapType_38787_38298_3829#PolymorphicMapType_38787| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38787_38298_3829#PolymorphicMapType_38787| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_38311_38312) ) (!  (not (select (|PolymorphicMapType_38787_38298_38312#PolymorphicMapType_38787| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38787_38298_38312#PolymorphicMapType_38787| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_38298_53) ) (!  (not (select (|PolymorphicMapType_38787_38298_53#PolymorphicMapType_38787| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38787_38298_53#PolymorphicMapType_38787| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_45428) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_27098| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_27098| (|Seq#Drop_27098| s@@1 n@@1) j) (|Seq#Index_27098| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.419:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_27098| (|Seq#Drop_27098| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3707) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3707| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3707| (|Seq#Drop_3707| s@@2 n@@2) j@@0) (|Seq#Index_3707| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.419:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3707| (|Seq#Drop_3707| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_27098| |Seq#Empty_27098|) 0))
(assert (= (|Seq#Length_3707| |Seq#Empty_3707|) 0))
(assert (forall ((s@@3 T@Seq_45428) (i@@1 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_27098| s@@3))) (and (=> (= i@@1 n@@3) (= (|Seq#Index_27098| (|Seq#Update_27098| s@@3 i@@1 v) n@@3) v)) (=> (not (= i@@1 n@@3)) (= (|Seq#Index_27098| (|Seq#Update_27098| s@@3 i@@1 v) n@@3) (|Seq#Index_27098| s@@3 n@@3)))))
 :qid |stdinbpl.374:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_27098| (|Seq#Update_27098| s@@3 i@@1 v) n@@3))
 :pattern ( (|Seq#Index_27098| s@@3 n@@3) (|Seq#Update_27098| s@@3 i@@1 v))
)))
(assert (forall ((s@@4 T@Seq_3707) (i@@2 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3707| s@@4))) (and (=> (= i@@2 n@@4) (= (|Seq#Index_3707| (|Seq#Update_3707| s@@4 i@@2 v@@0) n@@4) v@@0)) (=> (not (= i@@2 n@@4)) (= (|Seq#Index_3707| (|Seq#Update_3707| s@@4 i@@2 v@@0) n@@4) (|Seq#Index_3707| s@@4 n@@4)))))
 :qid |stdinbpl.374:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3707| (|Seq#Update_3707| s@@4 i@@2 v@@0) n@@4))
 :pattern ( (|Seq#Index_3707| s@@4 n@@4) (|Seq#Update_3707| s@@4 i@@2 v@@0))
)))
(assert (forall ((s@@5 T@Seq_45428) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_27098| s@@5)) (= (|Seq#Length_27098| (|Seq#Take_27098| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_27098| s@@5) n@@5) (= (|Seq#Length_27098| (|Seq#Take_27098| s@@5 n@@5)) (|Seq#Length_27098| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_27098| (|Seq#Take_27098| s@@5 n@@5)) 0)))
 :qid |stdinbpl.385:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_27098| (|Seq#Take_27098| s@@5 n@@5)))
 :pattern ( (|Seq#Take_27098| s@@5 n@@5) (|Seq#Length_27098| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3707) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3707| s@@6)) (= (|Seq#Length_3707| (|Seq#Take_3707| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3707| s@@6) n@@6) (= (|Seq#Length_3707| (|Seq#Take_3707| s@@6 n@@6)) (|Seq#Length_3707| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3707| (|Seq#Take_3707| s@@6 n@@6)) 0)))
 :qid |stdinbpl.385:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3707| (|Seq#Take_3707| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3707| s@@6 n@@6) (|Seq#Length_3707| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3707| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.659:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3707| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_45428) (x T@Ref) ) (!  (=> (|Seq#Contains_45428| s@@7 x) (and (and (<= 0 (|Seq#Skolem_45428| s@@7 x)) (< (|Seq#Skolem_45428| s@@7 x) (|Seq#Length_27098| s@@7))) (= (|Seq#Index_27098| s@@7 (|Seq#Skolem_45428| s@@7 x)) x)))
 :qid |stdinbpl.517:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_45428| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3707) (x@@0 Int) ) (!  (=> (|Seq#Contains_3707| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3707| s@@8 x@@0)) (< (|Seq#Skolem_3707| s@@8 x@@0) (|Seq#Length_3707| s@@8))) (= (|Seq#Index_3707| s@@8 (|Seq#Skolem_3707| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.517:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3707| s@@8 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_38238) (Mask@@1 T@PolymorphicMapType_38259) (i@@3 Int) (lo@@0 Int) (hi@@1 Int) (ar@@1 T@Seq_45428) ) (!  (=> (and (state Heap@@2 Mask@@1) (< AssumeFunctionsAbove 1)) (=> (and (and (and (<= 0 lo@@0) (and (<= lo@@0 i@@3) (<= i@@3 hi@@1))) (<= hi@@1 (|Seq#Length_27098| ar@@1))) (forall ((k Int) (j_9 Int) ) (!  (=> (and (>= k 0) (and (< k (|Seq#Length_27098| ar@@1)) (and (>= j_9 0) (and (< j_9 (|Seq#Length_27098| ar@@1)) (not (= k j_9)))))) (not (= (|Seq#Index_27098| ar@@1 k) (|Seq#Index_27098| ar@@1 j_9))))
 :qid |stdinbpl.777:124|
 :skolemid |64|
 :pattern ( (|Seq#Index_27098| ar@@1 k) (|Seq#Index_27098| ar@@1 j_9))
))) (= (sum_array Heap@@2 i@@3 lo@@0 hi@@1 ar@@1) (ite (< i@@3 hi@@1) (+ (select (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| Heap@@2) (|Seq#Index_27098| ar@@1 i@@3) Ref__Integer_value) (|sum_array'| Heap@@2 (+ i@@3 1) lo@@0 hi@@1 ar@@1)) 0))))
 :qid |stdinbpl.775:15|
 :skolemid |65|
 :pattern ( (state Heap@@2 Mask@@1) (sum_array Heap@@2 i@@3 lo@@0 hi@@1 ar@@1))
)))
(assert (forall ((s@@9 T@Seq_45428) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_27098| s@@9 n@@7) s@@9))
 :qid |stdinbpl.501:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_27098| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3707) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3707| s@@10 n@@8) s@@10))
 :qid |stdinbpl.501:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3707| s@@10 n@@8))
)))
(assert (forall ((i@@4 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@4 j@@1) (- i@@4 j@@1))
 :qid |stdinbpl.354:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@4 j@@1))
)))
(assert (forall ((i@@5 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@5 j@@2) (+ i@@5 j@@2))
 :qid |stdinbpl.352:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@5 j@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_38238) (ExhaleHeap T@PolymorphicMapType_38238) (Mask@@2 T@PolymorphicMapType_38259) (pm_f_14 T@Field_27059_108917) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_27059_108981 Mask@@2 null pm_f_14) (IsPredicateField_27059_109008 pm_f_14)) (= (select (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| Heap@@3) null (PredicateMaskField_27059 pm_f_14)) (select (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| ExhaleHeap) null (PredicateMaskField_27059 pm_f_14)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (IsPredicateField_27059_109008 pm_f_14) (select (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| ExhaleHeap) null (PredicateMaskField_27059 pm_f_14)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_38238) (ExhaleHeap@@0 T@PolymorphicMapType_38238) (Mask@@3 T@PolymorphicMapType_38259) (pm_f_14@@0 T@Field_27059_108917) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_27059_108981 Mask@@3 null pm_f_14@@0) (IsWandField_27059_110755 pm_f_14@@0)) (= (select (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| Heap@@4) null (WandMaskField_27059 pm_f_14@@0)) (select (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| ExhaleHeap@@0) null (WandMaskField_27059 pm_f_14@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (IsWandField_27059_110755 pm_f_14@@0) (select (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| ExhaleHeap@@0) null (WandMaskField_27059 pm_f_14@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_45428| (|Seq#Singleton_27098| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.642:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_45428| (|Seq#Singleton_27098| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3707| (|Seq#Singleton_3707| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.642:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3707| (|Seq#Singleton_3707| x@@2) y@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_38238) (i@@6 Int) (lo@@1 Int) (hi@@2 Int) (step@@0 Int) (vmin@@0 Int) (vmax@@0 Int) (ar@@2 T@Seq_45428) (v_2@@0 Int) ) (!  (and (= (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax@@0 ar@@2 v_2@@0) (|count_square'| Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax@@0 ar@@2 v_2@@0)) (dummyFunction_4136 (|count_square#triggerStateless| i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax@@0 ar@@2 v_2@@0)))
 :qid |stdinbpl.1266:15|
 :skolemid |104|
 :pattern ( (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax@@0 ar@@2 v_2@@0))
)))
(assert (forall ((s@@11 T@Seq_45428) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_27098| s@@11))) (= (|Seq#Index_27098| (|Seq#Take_27098| s@@11 n@@9) j@@3) (|Seq#Index_27098| s@@11 j@@3)))
 :qid |stdinbpl.393:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_27098| (|Seq#Take_27098| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_27098| s@@11 j@@3) (|Seq#Take_27098| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3707) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3707| s@@12))) (= (|Seq#Index_3707| (|Seq#Take_3707| s@@12 n@@10) j@@4) (|Seq#Index_3707| s@@12 j@@4)))
 :qid |stdinbpl.393:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3707| (|Seq#Take_3707| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3707| s@@12 j@@4) (|Seq#Take_3707| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_45428) (t T@Seq_45428) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_27098| s@@13))) (< n@@11 (|Seq#Length_27098| (|Seq#Append_45428| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_27098| s@@13)) (|Seq#Length_27098| s@@13)) n@@11) (= (|Seq#Take_27098| (|Seq#Append_45428| s@@13 t) n@@11) (|Seq#Append_45428| s@@13 (|Seq#Take_27098| t (|Seq#Sub| n@@11 (|Seq#Length_27098| s@@13)))))))
 :qid |stdinbpl.478:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_27098| (|Seq#Append_45428| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3707) (t@@0 T@Seq_3707) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3707| s@@14))) (< n@@12 (|Seq#Length_3707| (|Seq#Append_3707| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3707| s@@14)) (|Seq#Length_3707| s@@14)) n@@12) (= (|Seq#Take_3707| (|Seq#Append_3707| s@@14 t@@0) n@@12) (|Seq#Append_3707| s@@14 (|Seq#Take_3707| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3707| s@@14)))))))
 :qid |stdinbpl.478:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3707| (|Seq#Append_3707| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_38238) (i@@7 Int) (lo@@2 Int) (hi@@3 Int) (step@@1 Int) (vmin@@1 Int) (vmax@@1 Int) (ar@@3 T@Seq_45428) (v_2@@1 Int) ) (! (dummyFunction_4136 (|count_square#triggerStateless| i@@7 lo@@2 hi@@3 step@@1 vmin@@1 vmax@@1 ar@@3 v_2@@1))
 :qid |stdinbpl.1270:15|
 :skolemid |105|
 :pattern ( (|count_square'| Heap@@6 i@@7 lo@@2 hi@@3 step@@1 vmin@@1 vmax@@1 ar@@3 v_2@@1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_38238) (Heap1Heap T@PolymorphicMapType_38238) (i@@8 Int) (lo@@3 Int) (hi@@4 Int) (step@@2 Int) (vmin@@2 Int) (vmax@@2 Int) (ar@@4 T@Seq_45428) ) (!  (=> (and (=  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) vmax@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2) hi@@4))))  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) vmax@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2) hi@@4))))) (=> (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) vmax@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2) hi@@4)))) (= (select (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| Heap2Heap) (|Seq#Index_27098| ar@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4))) Ref__Integer_value) (select (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| Heap1Heap) (|Seq#Index_27098| ar@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4))) Ref__Integer_value)))) (= (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)))
 :qid |stdinbpl.1030:15|
 :skolemid |88|
 :pattern ( (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_38238) (Heap1Heap@@0 T@PolymorphicMapType_38238) (i@@9 Int) (lo@@4 Int) (hi@@5 Int) (step@@3 Int) (vmin@@3 Int) (vmax@@3 Int) (ar@@5 T@Seq_45428) (v_2@@2 Int) ) (!  (=> (and (=  (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) vmax@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) step@@3) hi@@5))))  (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) vmax@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) step@@3) hi@@5))))) (=> (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) vmax@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) step@@3) hi@@5)))) (= (select (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| Heap2Heap@@0) (|Seq#Index_27098| ar@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2))) Ref__Integer_value) (select (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| Heap1Heap@@0) (|Seq#Index_27098| ar@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2))) Ref__Integer_value)))) (= (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)))
 :qid |stdinbpl.1296:15|
 :skolemid |109|
 :pattern ( (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_38238) (Mask@@4 T@PolymorphicMapType_38259) (i@@10 Int) (lo@@5 Int) (hi@@6 Int) (step@@4 Int) (vmin@@4 Int) (vmax@@4 Int) (ar@@6 T@Seq_45428) ) (!  (=> (and (state Heap@@7 Mask@@4) (< AssumeFunctionsAbove 2)) (=> (and (and (and (and (<= 0 lo@@5) (and (<= lo@@5 hi@@6) (and (<= hi@@6 step@@4) (> step@@4 0)))) (and (<= 0 vmin@@4) (and (<= vmin@@4 i@@10) (<= i@@10 vmax@@4)))) (<= vmax@@4 (|Seq#Length_27098| ar@@6))) (forall ((k@@0 Int) (j_9@@0 Int) ) (!  (=> (and (>= k@@0 0) (and (< k@@0 (|Seq#Length_27098| ar@@6)) (and (>= j_9@@0 0) (and (< j_9@@0 (|Seq#Length_27098| ar@@6)) (not (= k@@0 j_9@@0)))))) (not (= (|Seq#Index_27098| ar@@6 k@@0) (|Seq#Index_27098| ar@@6 j_9@@0))))
 :qid |stdinbpl.1012:189|
 :skolemid |85|
 :pattern ( (|Seq#Index_27098| ar@@6 k@@0) (|Seq#Index_27098| ar@@6 j_9@@0))
))) (= (sum_square Heap@@7 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6) (ite (< i@@10 vmax@@4) (+ (ite  (and (<= lo@@5 (mod i@@10 step@@4)) (< (mod i@@10 step@@4) hi@@6)) (select (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| Heap@@7) (|Seq#Index_27098| ar@@6 i@@10) Ref__Integer_value) 0) (|sum_square'| Heap@@7 (+ i@@10 1) lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6)) 0))))
 :qid |stdinbpl.1010:15|
 :skolemid |86|
 :pattern ( (state Heap@@7 Mask@@4) (sum_square Heap@@7 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_38238) (ExhaleHeap@@1 T@PolymorphicMapType_38238) (Mask@@5 T@PolymorphicMapType_38259) (o_37 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (=> (select (|PolymorphicMapType_38238_26801_53#PolymorphicMapType_38238| Heap@@8) o_37 $allocated) (select (|PolymorphicMapType_38238_26801_53#PolymorphicMapType_38238| ExhaleHeap@@1) o_37 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (select (|PolymorphicMapType_38238_26801_53#PolymorphicMapType_38238| ExhaleHeap@@1) o_37 $allocated))
)))
(assert (forall ((p T@Field_27059_108917) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_38298_38298 p v_1 p w))
 :qid |stdinbpl.296:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_38298_38298 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_45428) (s1 T@Seq_45428) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_27098|)) (not (= s1 |Seq#Empty_27098|))) (<= (|Seq#Length_27098| s0) n@@13)) (< n@@13 (|Seq#Length_27098| (|Seq#Append_45428| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_27098| s0)) (|Seq#Length_27098| s0)) n@@13) (= (|Seq#Index_27098| (|Seq#Append_45428| s0 s1) n@@13) (|Seq#Index_27098| s1 (|Seq#Sub| n@@13 (|Seq#Length_27098| s0))))))
 :qid |stdinbpl.365:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_27098| (|Seq#Append_45428| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3707) (s1@@0 T@Seq_3707) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3707|)) (not (= s1@@0 |Seq#Empty_3707|))) (<= (|Seq#Length_3707| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3707| (|Seq#Append_3707| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3707| s0@@0)) (|Seq#Length_3707| s0@@0)) n@@14) (= (|Seq#Index_3707| (|Seq#Append_3707| s0@@0 s1@@0) n@@14) (|Seq#Index_3707| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3707| s0@@0))))))
 :qid |stdinbpl.365:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3707| (|Seq#Append_3707| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_27059_3829 Ref__Integer_value)))
(assert  (not (IsWandField_27059_3829 Ref__Integer_value)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_38238) (ExhaleHeap@@2 T@PolymorphicMapType_38238) (Mask@@6 T@PolymorphicMapType_38259) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6) (succHeap Heap@@9 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_38259) (o_2@@4 T@Ref) (f_4@@4 T@Field_27059_109050) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_27059_114301 f_4@@4))) (not (IsWandField_27059_114317 f_4@@4))) (<= (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_38259) (o_2@@5 T@Ref) (f_4@@5 T@Field_27059_108917) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_27059_109008 f_4@@5))) (not (IsWandField_27059_110755 f_4@@5))) (<= (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_38259) (o_2@@6 T@Ref) (f_4@@6 T@Field_38311_38312) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_27059_38312 f_4@@6))) (not (IsWandField_27059_38312 f_4@@6))) (<= (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_38259) (o_2@@7 T@Ref) (f_4@@7 T@Field_38298_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_27059_53 f_4@@7))) (not (IsWandField_27059_53 f_4@@7))) (<= (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_38259) (o_2@@8 T@Ref) (f_4@@8 T@Field_44386_3829) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_27059_3829 f_4@@8))) (not (IsWandField_27059_3829 f_4@@8))) (<= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_38238) (Mask@@12 T@PolymorphicMapType_38259) (i@@11 Int) (hi@@7 Int) (ar@@7 T@Seq_3707) ) (!  (=> (state Heap@@10 Mask@@12) (= (|sum_list'| Heap@@10 i@@11 hi@@7 ar@@7) (|sum_list#frame| EmptyFrame i@@11 hi@@7 ar@@7)))
 :qid |stdinbpl.697:15|
 :skolemid |61|
 :pattern ( (state Heap@@10 Mask@@12) (|sum_list'| Heap@@10 i@@11 hi@@7 ar@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_38259) (o_2@@9 T@Ref) (f_4@@9 T@Field_27059_109050) ) (! (= (HasDirectPerm_27059_114755 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27059_114755 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_38259) (o_2@@10 T@Ref) (f_4@@10 T@Field_27059_108917) ) (! (= (HasDirectPerm_27059_108981 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27059_108981 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_38259) (o_2@@11 T@Ref) (f_4@@11 T@Field_38311_38312) ) (! (= (HasDirectPerm_27059_38312 Mask@@15 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| Mask@@15) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27059_38312 Mask@@15 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_38259) (o_2@@12 T@Ref) (f_4@@12 T@Field_38298_53) ) (! (= (HasDirectPerm_27059_53 Mask@@16 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| Mask@@16) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27059_53 Mask@@16 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_38259) (o_2@@13 T@Ref) (f_4@@13 T@Field_44386_3829) ) (! (= (HasDirectPerm_27059_3829 Mask@@17 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| Mask@@17) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27059_3829 Mask@@17 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_38238) (i@@12 Int) (lo@@6 Int) (hi@@8 Int) (ar@@8 T@Seq_45428) ) (! (dummyFunction_4136 (|sum_array#triggerStateless| i@@12 lo@@6 hi@@8 ar@@8))
 :qid |stdinbpl.769:15|
 :skolemid |63|
 :pattern ( (|sum_array'| Heap@@11 i@@12 lo@@6 hi@@8 ar@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_38238) (i@@13 Int) (hi@@9 Int) (ar@@9 T@Seq_3707) (v_2@@3 Int) ) (! (dummyFunction_4136 (|count_list#triggerStateless| i@@13 hi@@9 ar@@9 v_2@@3))
 :qid |stdinbpl.1536:15|
 :skolemid |126|
 :pattern ( (|count_list'| Heap@@12 i@@13 hi@@9 ar@@9 v_2@@3))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_38238) (i@@14 Int) (hi@@10 Int) (ar@@10 T@Seq_45428) (v_2@@4 Int) ) (! (dummyFunction_4136 (|count_array#triggerStateless| i@@14 hi@@10 ar@@10 v_2@@4))
 :qid |stdinbpl.1621:15|
 :skolemid |130|
 :pattern ( (|count_array'| Heap@@13 i@@14 hi@@10 ar@@10 v_2@@4))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_38238) (ExhaleHeap@@3 T@PolymorphicMapType_38238) (Mask@@18 T@PolymorphicMapType_38259) (pm_f_14@@1 T@Field_27059_108917) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@18) (=> (and (HasDirectPerm_27059_108981 Mask@@18 null pm_f_14@@1) (IsPredicateField_27059_109008 pm_f_14@@1)) (and (and (and (and (forall ((o2_14 T@Ref) (f_42 T@Field_38298_53) ) (!  (=> (select (|PolymorphicMapType_38787_38298_53#PolymorphicMapType_38787| (select (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| Heap@@14) null (PredicateMaskField_27059 pm_f_14@@1))) o2_14 f_42) (= (select (|PolymorphicMapType_38238_26801_53#PolymorphicMapType_38238| Heap@@14) o2_14 f_42) (select (|PolymorphicMapType_38238_26801_53#PolymorphicMapType_38238| ExhaleHeap@@3) o2_14 f_42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38238_26801_53#PolymorphicMapType_38238| ExhaleHeap@@3) o2_14 f_42))
)) (forall ((o2_14@@0 T@Ref) (f_42@@0 T@Field_38311_38312) ) (!  (=> (select (|PolymorphicMapType_38787_38298_38312#PolymorphicMapType_38787| (select (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| Heap@@14) null (PredicateMaskField_27059 pm_f_14@@1))) o2_14@@0 f_42@@0) (= (select (|PolymorphicMapType_38238_26804_26805#PolymorphicMapType_38238| Heap@@14) o2_14@@0 f_42@@0) (select (|PolymorphicMapType_38238_26804_26805#PolymorphicMapType_38238| ExhaleHeap@@3) o2_14@@0 f_42@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38238_26804_26805#PolymorphicMapType_38238| ExhaleHeap@@3) o2_14@@0 f_42@@0))
))) (forall ((o2_14@@1 T@Ref) (f_42@@1 T@Field_44386_3829) ) (!  (=> (select (|PolymorphicMapType_38787_38298_3829#PolymorphicMapType_38787| (select (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| Heap@@14) null (PredicateMaskField_27059 pm_f_14@@1))) o2_14@@1 f_42@@1) (= (select (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| Heap@@14) o2_14@@1 f_42@@1) (select (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| ExhaleHeap@@3) o2_14@@1 f_42@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| ExhaleHeap@@3) o2_14@@1 f_42@@1))
))) (forall ((o2_14@@2 T@Ref) (f_42@@2 T@Field_27059_108917) ) (!  (=> (select (|PolymorphicMapType_38787_38298_108917#PolymorphicMapType_38787| (select (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| Heap@@14) null (PredicateMaskField_27059 pm_f_14@@1))) o2_14@@2 f_42@@2) (= (select (|PolymorphicMapType_38238_38298_108917#PolymorphicMapType_38238| Heap@@14) o2_14@@2 f_42@@2) (select (|PolymorphicMapType_38238_38298_108917#PolymorphicMapType_38238| ExhaleHeap@@3) o2_14@@2 f_42@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38238_38298_108917#PolymorphicMapType_38238| ExhaleHeap@@3) o2_14@@2 f_42@@2))
))) (forall ((o2_14@@3 T@Ref) (f_42@@3 T@Field_27059_109050) ) (!  (=> (select (|PolymorphicMapType_38787_38298_110228#PolymorphicMapType_38787| (select (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| Heap@@14) null (PredicateMaskField_27059 pm_f_14@@1))) o2_14@@3 f_42@@3) (= (select (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| Heap@@14) o2_14@@3 f_42@@3) (select (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| ExhaleHeap@@3) o2_14@@3 f_42@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| ExhaleHeap@@3) o2_14@@3 f_42@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@18) (IsPredicateField_27059_109008 pm_f_14@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_38238) (ExhaleHeap@@4 T@PolymorphicMapType_38238) (Mask@@19 T@PolymorphicMapType_38259) (pm_f_14@@2 T@Field_27059_108917) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@19) (=> (and (HasDirectPerm_27059_108981 Mask@@19 null pm_f_14@@2) (IsWandField_27059_110755 pm_f_14@@2)) (and (and (and (and (forall ((o2_14@@4 T@Ref) (f_42@@4 T@Field_38298_53) ) (!  (=> (select (|PolymorphicMapType_38787_38298_53#PolymorphicMapType_38787| (select (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| Heap@@15) null (WandMaskField_27059 pm_f_14@@2))) o2_14@@4 f_42@@4) (= (select (|PolymorphicMapType_38238_26801_53#PolymorphicMapType_38238| Heap@@15) o2_14@@4 f_42@@4) (select (|PolymorphicMapType_38238_26801_53#PolymorphicMapType_38238| ExhaleHeap@@4) o2_14@@4 f_42@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38238_26801_53#PolymorphicMapType_38238| ExhaleHeap@@4) o2_14@@4 f_42@@4))
)) (forall ((o2_14@@5 T@Ref) (f_42@@5 T@Field_38311_38312) ) (!  (=> (select (|PolymorphicMapType_38787_38298_38312#PolymorphicMapType_38787| (select (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| Heap@@15) null (WandMaskField_27059 pm_f_14@@2))) o2_14@@5 f_42@@5) (= (select (|PolymorphicMapType_38238_26804_26805#PolymorphicMapType_38238| Heap@@15) o2_14@@5 f_42@@5) (select (|PolymorphicMapType_38238_26804_26805#PolymorphicMapType_38238| ExhaleHeap@@4) o2_14@@5 f_42@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38238_26804_26805#PolymorphicMapType_38238| ExhaleHeap@@4) o2_14@@5 f_42@@5))
))) (forall ((o2_14@@6 T@Ref) (f_42@@6 T@Field_44386_3829) ) (!  (=> (select (|PolymorphicMapType_38787_38298_3829#PolymorphicMapType_38787| (select (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| Heap@@15) null (WandMaskField_27059 pm_f_14@@2))) o2_14@@6 f_42@@6) (= (select (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| Heap@@15) o2_14@@6 f_42@@6) (select (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| ExhaleHeap@@4) o2_14@@6 f_42@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| ExhaleHeap@@4) o2_14@@6 f_42@@6))
))) (forall ((o2_14@@7 T@Ref) (f_42@@7 T@Field_27059_108917) ) (!  (=> (select (|PolymorphicMapType_38787_38298_108917#PolymorphicMapType_38787| (select (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| Heap@@15) null (WandMaskField_27059 pm_f_14@@2))) o2_14@@7 f_42@@7) (= (select (|PolymorphicMapType_38238_38298_108917#PolymorphicMapType_38238| Heap@@15) o2_14@@7 f_42@@7) (select (|PolymorphicMapType_38238_38298_108917#PolymorphicMapType_38238| ExhaleHeap@@4) o2_14@@7 f_42@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38238_38298_108917#PolymorphicMapType_38238| ExhaleHeap@@4) o2_14@@7 f_42@@7))
))) (forall ((o2_14@@8 T@Ref) (f_42@@8 T@Field_27059_109050) ) (!  (=> (select (|PolymorphicMapType_38787_38298_110228#PolymorphicMapType_38787| (select (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| Heap@@15) null (WandMaskField_27059 pm_f_14@@2))) o2_14@@8 f_42@@8) (= (select (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| Heap@@15) o2_14@@8 f_42@@8) (select (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| ExhaleHeap@@4) o2_14@@8 f_42@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| ExhaleHeap@@4) o2_14@@8 f_42@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@19) (IsWandField_27059_110755 pm_f_14@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.284:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3707| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.657:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3707| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_38238) (ExhaleHeap@@5 T@PolymorphicMapType_38238) (Mask@@20 T@PolymorphicMapType_38259) (o_37@@0 T@Ref) (f_42@@9 T@Field_27059_109050) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@20) (=> (HasDirectPerm_27059_114755 Mask@@20 o_37@@0 f_42@@9) (= (select (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| Heap@@16) o_37@@0 f_42@@9) (select (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| ExhaleHeap@@5) o_37@@0 f_42@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@20) (select (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| ExhaleHeap@@5) o_37@@0 f_42@@9))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_38238) (ExhaleHeap@@6 T@PolymorphicMapType_38238) (Mask@@21 T@PolymorphicMapType_38259) (o_37@@1 T@Ref) (f_42@@10 T@Field_27059_108917) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@21) (=> (HasDirectPerm_27059_108981 Mask@@21 o_37@@1 f_42@@10) (= (select (|PolymorphicMapType_38238_38298_108917#PolymorphicMapType_38238| Heap@@17) o_37@@1 f_42@@10) (select (|PolymorphicMapType_38238_38298_108917#PolymorphicMapType_38238| ExhaleHeap@@6) o_37@@1 f_42@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@21) (select (|PolymorphicMapType_38238_38298_108917#PolymorphicMapType_38238| ExhaleHeap@@6) o_37@@1 f_42@@10))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_38238) (ExhaleHeap@@7 T@PolymorphicMapType_38238) (Mask@@22 T@PolymorphicMapType_38259) (o_37@@2 T@Ref) (f_42@@11 T@Field_38311_38312) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@22) (=> (HasDirectPerm_27059_38312 Mask@@22 o_37@@2 f_42@@11) (= (select (|PolymorphicMapType_38238_26804_26805#PolymorphicMapType_38238| Heap@@18) o_37@@2 f_42@@11) (select (|PolymorphicMapType_38238_26804_26805#PolymorphicMapType_38238| ExhaleHeap@@7) o_37@@2 f_42@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@22) (select (|PolymorphicMapType_38238_26804_26805#PolymorphicMapType_38238| ExhaleHeap@@7) o_37@@2 f_42@@11))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_38238) (ExhaleHeap@@8 T@PolymorphicMapType_38238) (Mask@@23 T@PolymorphicMapType_38259) (o_37@@3 T@Ref) (f_42@@12 T@Field_38298_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@23) (=> (HasDirectPerm_27059_53 Mask@@23 o_37@@3 f_42@@12) (= (select (|PolymorphicMapType_38238_26801_53#PolymorphicMapType_38238| Heap@@19) o_37@@3 f_42@@12) (select (|PolymorphicMapType_38238_26801_53#PolymorphicMapType_38238| ExhaleHeap@@8) o_37@@3 f_42@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@23) (select (|PolymorphicMapType_38238_26801_53#PolymorphicMapType_38238| ExhaleHeap@@8) o_37@@3 f_42@@12))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_38238) (ExhaleHeap@@9 T@PolymorphicMapType_38238) (Mask@@24 T@PolymorphicMapType_38259) (o_37@@4 T@Ref) (f_42@@13 T@Field_44386_3829) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@24) (=> (HasDirectPerm_27059_3829 Mask@@24 o_37@@4 f_42@@13) (= (select (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| Heap@@20) o_37@@4 f_42@@13) (select (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| ExhaleHeap@@9) o_37@@4 f_42@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@24) (select (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| ExhaleHeap@@9) o_37@@4 f_42@@13))
)))
(assert (forall ((s0@@1 T@Seq_45428) (s1@@1 T@Seq_45428) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_27098|)) (not (= s1@@1 |Seq#Empty_27098|))) (= (|Seq#Length_27098| (|Seq#Append_45428| s0@@1 s1@@1)) (+ (|Seq#Length_27098| s0@@1) (|Seq#Length_27098| s1@@1))))
 :qid |stdinbpl.334:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_27098| (|Seq#Append_45428| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3707) (s1@@2 T@Seq_3707) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3707|)) (not (= s1@@2 |Seq#Empty_3707|))) (= (|Seq#Length_3707| (|Seq#Append_3707| s0@@2 s1@@2)) (+ (|Seq#Length_3707| s0@@2) (|Seq#Length_3707| s1@@2))))
 :qid |stdinbpl.334:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3707| (|Seq#Append_3707| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_27059_109050) ) (! (= (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_27059_108917) ) (! (= (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_38311_38312) ) (! (= (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_38298_53) ) (! (= (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_44386_3829) ) (! (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_38238) (Mask@@25 T@PolymorphicMapType_38259) (i@@15 Int) (hi@@11 Int) (ar@@11 T@Seq_3707) (v_2@@5 Int) ) (!  (=> (and (state Heap@@21 Mask@@25) (< AssumeFunctionsAbove 5)) (=> (and (and (<= 0 i@@15) (<= i@@15 hi@@11)) (<= hi@@11 (|Seq#Length_3707| ar@@11))) (= (count_list Heap@@21 i@@15 hi@@11 ar@@11 v_2@@5) (ite (< i@@15 hi@@11) (+ (ite (= (|Seq#Index_3707| ar@@11 i@@15) v_2@@5) 1 0) (|count_list'| Heap@@21 (+ i@@15 1) hi@@11 ar@@11 v_2@@5)) 0))))
 :qid |stdinbpl.1542:15|
 :skolemid |127|
 :pattern ( (state Heap@@21 Mask@@25) (count_list Heap@@21 i@@15 hi@@11 ar@@11 v_2@@5))
)))
(assert (forall ((s@@15 T@Seq_45428) (t@@1 T@Seq_45428) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_27098| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_27098| s@@15)) (|Seq#Length_27098| s@@15)) n@@15) (= (|Seq#Drop_27098| (|Seq#Append_45428| s@@15 t@@1) n@@15) (|Seq#Drop_27098| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_27098| s@@15))))))
 :qid |stdinbpl.491:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_27098| (|Seq#Append_45428| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3707) (t@@2 T@Seq_3707) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3707| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3707| s@@16)) (|Seq#Length_3707| s@@16)) n@@16) (= (|Seq#Drop_3707| (|Seq#Append_3707| s@@16 t@@2) n@@16) (|Seq#Drop_3707| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3707| s@@16))))))
 :qid |stdinbpl.491:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3707| (|Seq#Append_3707| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_38238) (i@@16 Int) (lo@@7 Int) (hi@@12 Int) (ar@@12 T@Seq_45428) ) (!  (and (= (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar@@12) (|sum_array'| Heap@@22 i@@16 lo@@7 hi@@12 ar@@12)) (dummyFunction_4136 (|sum_array#triggerStateless| i@@16 lo@@7 hi@@12 ar@@12)))
 :qid |stdinbpl.765:15|
 :skolemid |62|
 :pattern ( (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar@@12))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_38238) (i@@17 Int) (hi@@13 Int) (ar@@13 T@Seq_3707) (v_2@@6 Int) ) (!  (and (= (count_list Heap@@23 i@@17 hi@@13 ar@@13 v_2@@6) (|count_list'| Heap@@23 i@@17 hi@@13 ar@@13 v_2@@6)) (dummyFunction_4136 (|count_list#triggerStateless| i@@17 hi@@13 ar@@13 v_2@@6)))
 :qid |stdinbpl.1532:15|
 :skolemid |125|
 :pattern ( (count_list Heap@@23 i@@17 hi@@13 ar@@13 v_2@@6))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_38238) (i@@18 Int) (hi@@14 Int) (ar@@14 T@Seq_45428) (v_2@@7 Int) ) (!  (and (= (count_array Heap@@24 i@@18 hi@@14 ar@@14 v_2@@7) (|count_array'| Heap@@24 i@@18 hi@@14 ar@@14 v_2@@7)) (dummyFunction_4136 (|count_array#triggerStateless| i@@18 hi@@14 ar@@14 v_2@@7)))
 :qid |stdinbpl.1617:15|
 :skolemid |129|
 :pattern ( (count_array Heap@@24 i@@18 hi@@14 ar@@14 v_2@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_38259) (SummandMask1 T@PolymorphicMapType_38259) (SummandMask2 T@PolymorphicMapType_38259) (o_2@@19 T@Ref) (f_4@@19 T@Field_27059_109050) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_38259) (SummandMask1@@0 T@PolymorphicMapType_38259) (SummandMask2@@0 T@PolymorphicMapType_38259) (o_2@@20 T@Ref) (f_4@@20 T@Field_27059_108917) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_38259) (SummandMask1@@1 T@PolymorphicMapType_38259) (SummandMask2@@1 T@PolymorphicMapType_38259) (o_2@@21 T@Ref) (f_4@@21 T@Field_38311_38312) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_38259) (SummandMask1@@2 T@PolymorphicMapType_38259) (SummandMask2@@2 T@PolymorphicMapType_38259) (o_2@@22 T@Ref) (f_4@@22 T@Field_38298_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_38259) (SummandMask1@@3 T@PolymorphicMapType_38259) (SummandMask2@@3 T@PolymorphicMapType_38259) (o_2@@23 T@Ref) (f_4@@23 T@Field_44386_3829) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_38238) (i@@19 Int) (lo@@8 Int) (hi@@15 Int) (step@@5 Int) (vmin@@5 Int) (vmax@@5 Int) (ar@@15 T@Seq_45428) ) (!  (and (= (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax@@5 ar@@15) (|sum_square'| Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax@@5 ar@@15)) (dummyFunction_4136 (|sum_square#triggerStateless| i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax@@5 ar@@15)))
 :qid |stdinbpl.1000:15|
 :skolemid |83|
 :pattern ( (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax@@5 ar@@15))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_38238) (Mask@@26 T@PolymorphicMapType_38259) (i@@20 Int) (hi@@16 Int) (ar@@16 T@Seq_3707) (v_2@@8 Int) ) (!  (=> (state Heap@@26 Mask@@26) (= (|count_list'| Heap@@26 i@@20 hi@@16 ar@@16 v_2@@8) (|count_list#frame| EmptyFrame i@@20 hi@@16 ar@@16 v_2@@8)))
 :qid |stdinbpl.1549:15|
 :skolemid |128|
 :pattern ( (state Heap@@26 Mask@@26) (|count_list'| Heap@@26 i@@20 hi@@16 ar@@16 v_2@@8))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3707| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3707| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.656:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3707| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_45428) (b T@Seq_45428) ) (!  (=> (|Seq#Equal_45428| a b) (= a b))
 :qid |stdinbpl.629:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_45428| a b))
)))
(assert (forall ((a@@0 T@Seq_3707) (b@@0 T@Seq_3707) ) (!  (=> (|Seq#Equal_3707| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.629:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3707| a@@0 b@@0))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_38238) (Mask@@27 T@PolymorphicMapType_38259) (i@@21 Int) (lo@@9 Int) (hi@@17 Int) (step@@6 Int) (vmin@@6 Int) (vmax@@6 Int) (ar@@17 T@Seq_45428) (v_2@@9 Int) ) (!  (=> (and (state Heap@@27 Mask@@27) (< AssumeFunctionsAbove 0)) (=> (and (and (and (and (<= 0 lo@@9) (and (<= lo@@9 hi@@17) (and (<= hi@@17 step@@6) (> step@@6 0)))) (and (<= 0 vmin@@6) (and (<= vmin@@6 i@@21) (<= i@@21 vmax@@6)))) (<= vmax@@6 (|Seq#Length_27098| ar@@17))) (forall ((k@@1 Int) (j_9@@1 Int) ) (!  (=> (and (>= k@@1 0) (and (< k@@1 (|Seq#Length_27098| ar@@17)) (and (>= j_9@@1 0) (and (< j_9@@1 (|Seq#Length_27098| ar@@17)) (not (= k@@1 j_9@@1)))))) (not (= (|Seq#Index_27098| ar@@17 k@@1) (|Seq#Index_27098| ar@@17 j_9@@1))))
 :qid |stdinbpl.1278:189|
 :skolemid |106|
 :pattern ( (|Seq#Index_27098| ar@@17 k@@1) (|Seq#Index_27098| ar@@17 j_9@@1))
))) (= (count_square Heap@@27 i@@21 lo@@9 hi@@17 step@@6 vmin@@6 vmax@@6 ar@@17 v_2@@9) (ite (< i@@21 vmax@@6) (+ (ite  (and (<= lo@@9 (mod i@@21 step@@6)) (and (< (mod i@@21 step@@6) hi@@17) (= (select (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| Heap@@27) (|Seq#Index_27098| ar@@17 i@@21) Ref__Integer_value) v_2@@9))) 1 0) (|count_square'| Heap@@27 (+ i@@21 1) lo@@9 hi@@17 step@@6 vmin@@6 vmax@@6 ar@@17 v_2@@9)) 0))))
 :qid |stdinbpl.1276:15|
 :skolemid |107|
 :pattern ( (state Heap@@27 Mask@@27) (count_square Heap@@27 i@@21 lo@@9 hi@@17 step@@6 vmin@@6 vmax@@6 ar@@17 v_2@@9))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_38238) (i@@22 Int) (hi@@18 Int) (ar@@18 T@Seq_3707) ) (!  (and (= (sum_list Heap@@28 i@@22 hi@@18 ar@@18) (|sum_list'| Heap@@28 i@@22 hi@@18 ar@@18)) (dummyFunction_4136 (|sum_list#triggerStateless| i@@22 hi@@18 ar@@18)))
 :qid |stdinbpl.680:15|
 :skolemid |58|
 :pattern ( (sum_list Heap@@28 i@@22 hi@@18 ar@@18))
)))
(assert (forall ((s@@17 T@Seq_45428) (i@@23 Int) ) (!  (=> (and (<= 0 i@@23) (< i@@23 (|Seq#Length_27098| s@@17))) (|Seq#ContainsTrigger_27098| s@@17 (|Seq#Index_27098| s@@17 i@@23)))
 :qid |stdinbpl.522:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_27098| s@@17 i@@23))
)))
(assert (forall ((s@@18 T@Seq_3707) (i@@24 Int) ) (!  (=> (and (<= 0 i@@24) (< i@@24 (|Seq#Length_3707| s@@18))) (|Seq#ContainsTrigger_3707| s@@18 (|Seq#Index_3707| s@@18 i@@24)))
 :qid |stdinbpl.522:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3707| s@@18 i@@24))
)))
(assert (forall ((s0@@3 T@Seq_45428) (s1@@3 T@Seq_45428) ) (!  (and (=> (= s0@@3 |Seq#Empty_27098|) (= (|Seq#Append_45428| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_27098|) (= (|Seq#Append_45428| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.340:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_45428| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3707) (s1@@4 T@Seq_3707) ) (!  (and (=> (= s0@@4 |Seq#Empty_3707|) (= (|Seq#Append_3707| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3707|) (= (|Seq#Append_3707| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.340:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3707| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_27098| (|Seq#Singleton_27098| t@@3) 0) t@@3)
 :qid |stdinbpl.344:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_27098| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3707| (|Seq#Singleton_3707| t@@4) 0) t@@4)
 :qid |stdinbpl.344:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3707| t@@4))
)))
(assert (forall ((s@@19 T@Seq_45428) ) (! (<= 0 (|Seq#Length_27098| s@@19))
 :qid |stdinbpl.323:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_27098| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3707) ) (! (<= 0 (|Seq#Length_3707| s@@20))
 :qid |stdinbpl.323:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3707| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_45428) (s1@@5 T@Seq_45428) ) (!  (=> (|Seq#Equal_45428| s0@@5 s1@@5) (and (= (|Seq#Length_27098| s0@@5) (|Seq#Length_27098| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_27098| s0@@5))) (= (|Seq#Index_27098| s0@@5 j@@6) (|Seq#Index_27098| s1@@5 j@@6)))
 :qid |stdinbpl.619:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_27098| s0@@5 j@@6))
 :pattern ( (|Seq#Index_27098| s1@@5 j@@6))
))))
 :qid |stdinbpl.616:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_45428| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3707) (s1@@6 T@Seq_3707) ) (!  (=> (|Seq#Equal_3707| s0@@6 s1@@6) (and (= (|Seq#Length_3707| s0@@6) (|Seq#Length_3707| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3707| s0@@6))) (= (|Seq#Index_3707| s0@@6 j@@7) (|Seq#Index_3707| s1@@6 j@@7)))
 :qid |stdinbpl.619:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3707| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3707| s1@@6 j@@7))
))))
 :qid |stdinbpl.616:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3707| s0@@6 s1@@6))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_38238) (Heap1Heap@@1 T@PolymorphicMapType_38238) (i@@25 Int) (hi@@19 Int) (ar@@19 T@Seq_45428) (v_2@@10 Int) ) (!  (=> (and (=  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10)) hi@@19))  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10)) hi@@19))) (=> (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10)) hi@@19)) (= (select (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| Heap2Heap@@1) (|Seq#Index_27098| ar@@19 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10))) Ref__Integer_value) (select (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| Heap1Heap@@1) (|Seq#Index_27098| ar@@19 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10))) Ref__Integer_value)))) (= (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10)))
 :qid |stdinbpl.1647:15|
 :skolemid |134|
 :pattern ( (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_27098| (|Seq#Singleton_27098| t@@5)) 1)
 :qid |stdinbpl.331:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_27098| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3707| (|Seq#Singleton_3707| t@@6)) 1)
 :qid |stdinbpl.331:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3707| t@@6))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_38238) (Heap1Heap@@2 T@PolymorphicMapType_38238) (i@@26 Int) (lo@@10 Int) (hi@@20 Int) (ar@@20 T@Seq_45428) ) (!  (=> (and (=  (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20)) hi@@20))  (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20)) hi@@20))) (=> (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20)) hi@@20)) (= (select (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| Heap2Heap@@2) (|Seq#Index_27098| ar@@20 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20))) Ref__Integer_value) (select (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| Heap1Heap@@2) (|Seq#Index_27098| ar@@20 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20))) Ref__Integer_value)))) (= (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20)))
 :qid |stdinbpl.795:15|
 :skolemid |67|
 :pattern ( (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_38238) (Mask@@28 T@PolymorphicMapType_38259) (i@@27 Int) (hi@@21 Int) (ar@@21 T@Seq_3707) ) (!  (=> (and (state Heap@@29 Mask@@28) (< AssumeFunctionsAbove 4)) (=> (and (and (<= 0 i@@27) (<= i@@27 hi@@21)) (<= hi@@21 (|Seq#Length_3707| ar@@21))) (= (sum_list Heap@@29 i@@27 hi@@21 ar@@21) (ite (< i@@27 hi@@21) (+ (|Seq#Index_3707| ar@@21 i@@27) (|sum_list'| Heap@@29 (+ i@@27 1) hi@@21 ar@@21)) 0))))
 :qid |stdinbpl.690:15|
 :skolemid |60|
 :pattern ( (state Heap@@29 Mask@@28) (sum_list Heap@@29 i@@27 hi@@21 ar@@21))
)))
(assert (forall ((s@@21 T@Seq_45428) (t@@7 T@Seq_45428) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_27098| s@@21))) (= (|Seq#Take_27098| (|Seq#Append_45428| s@@21 t@@7) n@@17) (|Seq#Take_27098| s@@21 n@@17)))
 :qid |stdinbpl.473:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_27098| (|Seq#Append_45428| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3707) (t@@8 T@Seq_3707) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3707| s@@22))) (= (|Seq#Take_3707| (|Seq#Append_3707| s@@22 t@@8) n@@18) (|Seq#Take_3707| s@@22 n@@18)))
 :qid |stdinbpl.473:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3707| (|Seq#Append_3707| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_45428) (i@@28 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@28) (< i@@28 (|Seq#Length_27098| s@@23))) (= (|Seq#Length_27098| (|Seq#Update_27098| s@@23 i@@28 v@@2)) (|Seq#Length_27098| s@@23)))
 :qid |stdinbpl.372:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_27098| (|Seq#Update_27098| s@@23 i@@28 v@@2)))
 :pattern ( (|Seq#Length_27098| s@@23) (|Seq#Update_27098| s@@23 i@@28 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3707) (i@@29 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@29) (< i@@29 (|Seq#Length_3707| s@@24))) (= (|Seq#Length_3707| (|Seq#Update_3707| s@@24 i@@29 v@@3)) (|Seq#Length_3707| s@@24)))
 :qid |stdinbpl.372:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3707| (|Seq#Update_3707| s@@24 i@@29 v@@3)))
 :pattern ( (|Seq#Length_3707| s@@24) (|Seq#Update_3707| s@@24 i@@29 v@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_38238) (Mask@@29 T@PolymorphicMapType_38259) (i@@30 Int) (hi@@22 Int) (ar@@22 T@Seq_45428) (v_2@@11 Int) ) (!  (=> (and (state Heap@@30 Mask@@29) (< AssumeFunctionsAbove 3)) (=> (and (and (and (<= 0 i@@30) (<= i@@30 hi@@22)) (<= hi@@22 (|Seq#Length_27098| ar@@22))) (forall ((k@@2 Int) (j_9@@2 Int) ) (!  (=> (and (>= k@@2 0) (and (< k@@2 (|Seq#Length_27098| ar@@22)) (and (>= j_9@@2 0) (and (< j_9@@2 (|Seq#Length_27098| ar@@22)) (not (= k@@2 j_9@@2)))))) (not (= (|Seq#Index_27098| ar@@22 k@@2) (|Seq#Index_27098| ar@@22 j_9@@2))))
 :qid |stdinbpl.1629:110|
 :skolemid |131|
 :pattern ( (|Seq#Index_27098| ar@@22 k@@2) (|Seq#Index_27098| ar@@22 j_9@@2))
))) (= (count_array Heap@@30 i@@30 hi@@22 ar@@22 v_2@@11) (ite (< i@@30 hi@@22) (+ (ite (= (select (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| Heap@@30) (|Seq#Index_27098| ar@@22 i@@30) Ref__Integer_value) v_2@@11) 1 0) (|count_array'| Heap@@30 (+ i@@30 1) hi@@22 ar@@22 v_2@@11)) 0))))
 :qid |stdinbpl.1627:15|
 :skolemid |132|
 :pattern ( (state Heap@@30 Mask@@29) (count_array Heap@@30 i@@30 hi@@22 ar@@22 v_2@@11))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_38238) (o_36 T@Ref) (f_43 T@Field_27059_108917) (v@@4 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_38238 (|PolymorphicMapType_38238_26801_53#PolymorphicMapType_38238| Heap@@31) (|PolymorphicMapType_38238_26804_26805#PolymorphicMapType_38238| Heap@@31) (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| Heap@@31) (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| Heap@@31) (store (|PolymorphicMapType_38238_38298_108917#PolymorphicMapType_38238| Heap@@31) o_36 f_43 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38238 (|PolymorphicMapType_38238_26801_53#PolymorphicMapType_38238| Heap@@31) (|PolymorphicMapType_38238_26804_26805#PolymorphicMapType_38238| Heap@@31) (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| Heap@@31) (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| Heap@@31) (store (|PolymorphicMapType_38238_38298_108917#PolymorphicMapType_38238| Heap@@31) o_36 f_43 v@@4)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_38238) (o_36@@0 T@Ref) (f_43@@0 T@Field_27059_109050) (v@@5 T@PolymorphicMapType_38787) ) (! (succHeap Heap@@32 (PolymorphicMapType_38238 (|PolymorphicMapType_38238_26801_53#PolymorphicMapType_38238| Heap@@32) (|PolymorphicMapType_38238_26804_26805#PolymorphicMapType_38238| Heap@@32) (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| Heap@@32) (store (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| Heap@@32) o_36@@0 f_43@@0 v@@5) (|PolymorphicMapType_38238_38298_108917#PolymorphicMapType_38238| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38238 (|PolymorphicMapType_38238_26801_53#PolymorphicMapType_38238| Heap@@32) (|PolymorphicMapType_38238_26804_26805#PolymorphicMapType_38238| Heap@@32) (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| Heap@@32) (store (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| Heap@@32) o_36@@0 f_43@@0 v@@5) (|PolymorphicMapType_38238_38298_108917#PolymorphicMapType_38238| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_38238) (o_36@@1 T@Ref) (f_43@@1 T@Field_44386_3829) (v@@6 Int) ) (! (succHeap Heap@@33 (PolymorphicMapType_38238 (|PolymorphicMapType_38238_26801_53#PolymorphicMapType_38238| Heap@@33) (|PolymorphicMapType_38238_26804_26805#PolymorphicMapType_38238| Heap@@33) (store (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| Heap@@33) o_36@@1 f_43@@1 v@@6) (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| Heap@@33) (|PolymorphicMapType_38238_38298_108917#PolymorphicMapType_38238| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38238 (|PolymorphicMapType_38238_26801_53#PolymorphicMapType_38238| Heap@@33) (|PolymorphicMapType_38238_26804_26805#PolymorphicMapType_38238| Heap@@33) (store (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| Heap@@33) o_36@@1 f_43@@1 v@@6) (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| Heap@@33) (|PolymorphicMapType_38238_38298_108917#PolymorphicMapType_38238| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_38238) (o_36@@2 T@Ref) (f_43@@2 T@Field_38311_38312) (v@@7 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_38238 (|PolymorphicMapType_38238_26801_53#PolymorphicMapType_38238| Heap@@34) (store (|PolymorphicMapType_38238_26804_26805#PolymorphicMapType_38238| Heap@@34) o_36@@2 f_43@@2 v@@7) (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| Heap@@34) (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| Heap@@34) (|PolymorphicMapType_38238_38298_108917#PolymorphicMapType_38238| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38238 (|PolymorphicMapType_38238_26801_53#PolymorphicMapType_38238| Heap@@34) (store (|PolymorphicMapType_38238_26804_26805#PolymorphicMapType_38238| Heap@@34) o_36@@2 f_43@@2 v@@7) (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| Heap@@34) (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| Heap@@34) (|PolymorphicMapType_38238_38298_108917#PolymorphicMapType_38238| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_38238) (o_36@@3 T@Ref) (f_43@@3 T@Field_38298_53) (v@@8 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_38238 (store (|PolymorphicMapType_38238_26801_53#PolymorphicMapType_38238| Heap@@35) o_36@@3 f_43@@3 v@@8) (|PolymorphicMapType_38238_26804_26805#PolymorphicMapType_38238| Heap@@35) (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| Heap@@35) (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| Heap@@35) (|PolymorphicMapType_38238_38298_108917#PolymorphicMapType_38238| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38238 (store (|PolymorphicMapType_38238_26801_53#PolymorphicMapType_38238| Heap@@35) o_36@@3 f_43@@3 v@@8) (|PolymorphicMapType_38238_26804_26805#PolymorphicMapType_38238| Heap@@35) (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| Heap@@35) (|PolymorphicMapType_38238_27059_109094#PolymorphicMapType_38238| Heap@@35) (|PolymorphicMapType_38238_38298_108917#PolymorphicMapType_38238| Heap@@35)))
)))
(assert (forall ((s@@25 T@Seq_45428) (t@@9 T@Seq_45428) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_27098| s@@25))) (= (|Seq#Drop_27098| (|Seq#Append_45428| s@@25 t@@9) n@@19) (|Seq#Append_45428| (|Seq#Drop_27098| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.487:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_27098| (|Seq#Append_45428| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3707) (t@@10 T@Seq_3707) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3707| s@@26))) (= (|Seq#Drop_3707| (|Seq#Append_3707| s@@26 t@@10) n@@20) (|Seq#Append_3707| (|Seq#Drop_3707| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.487:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3707| (|Seq#Append_3707| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_45428) (n@@21 Int) (i@@31 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@31)) (< i@@31 (|Seq#Length_27098| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@31 n@@21) n@@21) i@@31) (= (|Seq#Index_27098| (|Seq#Drop_27098| s@@27 n@@21) (|Seq#Sub| i@@31 n@@21)) (|Seq#Index_27098| s@@27 i@@31))))
 :qid |stdinbpl.423:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_27098| s@@27 n@@21) (|Seq#Index_27098| s@@27 i@@31))
)))
(assert (forall ((s@@28 T@Seq_3707) (n@@22 Int) (i@@32 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@32)) (< i@@32 (|Seq#Length_3707| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@32 n@@22) n@@22) i@@32) (= (|Seq#Index_3707| (|Seq#Drop_3707| s@@28 n@@22) (|Seq#Sub| i@@32 n@@22)) (|Seq#Index_3707| s@@28 i@@32))))
 :qid |stdinbpl.423:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3707| s@@28 n@@22) (|Seq#Index_3707| s@@28 i@@32))
)))
(assert (forall ((s0@@7 T@Seq_45428) (s1@@7 T@Seq_45428) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_27098|)) (not (= s1@@7 |Seq#Empty_27098|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_27098| s0@@7))) (= (|Seq#Index_27098| (|Seq#Append_45428| s0@@7 s1@@7) n@@23) (|Seq#Index_27098| s0@@7 n@@23)))
 :qid |stdinbpl.363:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_27098| (|Seq#Append_45428| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_27098| s0@@7 n@@23) (|Seq#Append_45428| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3707) (s1@@8 T@Seq_3707) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3707|)) (not (= s1@@8 |Seq#Empty_3707|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3707| s0@@8))) (= (|Seq#Index_3707| (|Seq#Append_3707| s0@@8 s1@@8) n@@24) (|Seq#Index_3707| s0@@8 n@@24)))
 :qid |stdinbpl.363:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3707| (|Seq#Append_3707| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3707| s0@@8 n@@24) (|Seq#Append_3707| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_45428) (s1@@9 T@Seq_45428) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_27098|)) (not (= s1@@9 |Seq#Empty_27098|))) (<= 0 m)) (< m (|Seq#Length_27098| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_27098| s0@@9)) (|Seq#Length_27098| s0@@9)) m) (= (|Seq#Index_27098| (|Seq#Append_45428| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_27098| s0@@9))) (|Seq#Index_27098| s1@@9 m))))
 :qid |stdinbpl.368:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_27098| s1@@9 m) (|Seq#Append_45428| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3707) (s1@@10 T@Seq_3707) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3707|)) (not (= s1@@10 |Seq#Empty_3707|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3707| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3707| s0@@10)) (|Seq#Length_3707| s0@@10)) m@@0) (= (|Seq#Index_3707| (|Seq#Append_3707| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3707| s0@@10))) (|Seq#Index_3707| s1@@10 m@@0))))
 :qid |stdinbpl.368:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3707| s1@@10 m@@0) (|Seq#Append_3707| s0@@10 s1@@10))
)))
(assert (forall ((o_36@@4 T@Ref) (f_41 T@Field_38311_38312) (Heap@@36 T@PolymorphicMapType_38238) ) (!  (=> (select (|PolymorphicMapType_38238_26801_53#PolymorphicMapType_38238| Heap@@36) o_36@@4 $allocated) (select (|PolymorphicMapType_38238_26801_53#PolymorphicMapType_38238| Heap@@36) (select (|PolymorphicMapType_38238_26804_26805#PolymorphicMapType_38238| Heap@@36) o_36@@4 f_41) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_38238_26804_26805#PolymorphicMapType_38238| Heap@@36) o_36@@4 f_41))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_38238) (Mask@@30 T@PolymorphicMapType_38259) (i@@33 Int) (lo@@11 Int) (hi@@23 Int) (step@@7 Int) (vmin@@7 Int) (vmax@@7 Int) (ar@@23 T@Seq_45428) ) (!  (=> (state Heap@@37 Mask@@30) (= (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax@@7 ar@@23) (|sum_square#frame| (FrameFragment_4688 (|sum_square#condqp2| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax@@7 ar@@23)) i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax@@7 ar@@23)))
 :qid |stdinbpl.1020:15|
 :skolemid |87|
 :pattern ( (state Heap@@37 Mask@@30) (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax@@7 ar@@23))
)))
(assert (forall ((s@@29 T@Seq_45428) (x@@3 T@Ref) (i@@34 Int) ) (!  (=> (and (and (<= 0 i@@34) (< i@@34 (|Seq#Length_27098| s@@29))) (= (|Seq#Index_27098| s@@29 i@@34) x@@3)) (|Seq#Contains_45428| s@@29 x@@3))
 :qid |stdinbpl.520:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_45428| s@@29 x@@3) (|Seq#Index_27098| s@@29 i@@34))
)))
(assert (forall ((s@@30 T@Seq_3707) (x@@4 Int) (i@@35 Int) ) (!  (=> (and (and (<= 0 i@@35) (< i@@35 (|Seq#Length_3707| s@@30))) (= (|Seq#Index_3707| s@@30 i@@35) x@@4)) (|Seq#Contains_3707| s@@30 x@@4))
 :qid |stdinbpl.520:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3707| s@@30 x@@4) (|Seq#Index_3707| s@@30 i@@35))
)))
(assert (forall ((s0@@11 T@Seq_45428) (s1@@11 T@Seq_45428) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_45428| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_45428| s0@@11 s1@@11))) (not (= (|Seq#Length_27098| s0@@11) (|Seq#Length_27098| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_45428| s0@@11 s1@@11))) (= (|Seq#Length_27098| s0@@11) (|Seq#Length_27098| s1@@11))) (= (|Seq#SkolemDiff_45428| s0@@11 s1@@11) (|Seq#SkolemDiff_45428| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_45428| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_45428| s0@@11 s1@@11) (|Seq#Length_27098| s0@@11))) (not (= (|Seq#Index_27098| s0@@11 (|Seq#SkolemDiff_45428| s0@@11 s1@@11)) (|Seq#Index_27098| s1@@11 (|Seq#SkolemDiff_45428| s0@@11 s1@@11))))))
 :qid |stdinbpl.624:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_45428| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3707) (s1@@12 T@Seq_3707) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3707| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3707| s0@@12 s1@@12))) (not (= (|Seq#Length_3707| s0@@12) (|Seq#Length_3707| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3707| s0@@12 s1@@12))) (= (|Seq#Length_3707| s0@@12) (|Seq#Length_3707| s1@@12))) (= (|Seq#SkolemDiff_3707| s0@@12 s1@@12) (|Seq#SkolemDiff_3707| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3707| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3707| s0@@12 s1@@12) (|Seq#Length_3707| s0@@12))) (not (= (|Seq#Index_3707| s0@@12 (|Seq#SkolemDiff_3707| s0@@12 s1@@12)) (|Seq#Index_3707| s1@@12 (|Seq#SkolemDiff_3707| s0@@12 s1@@12))))))
 :qid |stdinbpl.624:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3707| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_27059_108917) (v_1@@0 T@FrameType) (q T@Field_27059_108917) (w@@0 T@FrameType) (r T@Field_27059_108917) (u T@FrameType) ) (!  (=> (and (InsidePredicate_38298_38298 p@@1 v_1@@0 q w@@0) (InsidePredicate_38298_38298 q w@@0 r u)) (InsidePredicate_38298_38298 p@@1 v_1@@0 r u))
 :qid |stdinbpl.291:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38298_38298 p@@1 v_1@@0 q w@@0) (InsidePredicate_38298_38298 q w@@0 r u))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_38238) (i@@36 Int) (lo@@12 Int) (hi@@24 Int) (step@@8 Int) (vmin@@8 Int) (vmax@@8 Int) (ar@@24 T@Seq_45428) ) (! (dummyFunction_4136 (|sum_square#triggerStateless| i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax@@8 ar@@24))
 :qid |stdinbpl.1004:15|
 :skolemid |84|
 :pattern ( (|sum_square'| Heap@@38 i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax@@8 ar@@24))
)))
(assert (forall ((s@@31 T@Seq_45428) ) (!  (=> (= (|Seq#Length_27098| s@@31) 0) (= s@@31 |Seq#Empty_27098|))
 :qid |stdinbpl.327:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_27098| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3707) ) (!  (=> (= (|Seq#Length_3707| s@@32) 0) (= s@@32 |Seq#Empty_3707|))
 :qid |stdinbpl.327:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3707| s@@32))
)))
(assert (forall ((s@@33 T@Seq_45428) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_27098| s@@33 n@@25) |Seq#Empty_27098|))
 :qid |stdinbpl.503:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_27098| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3707) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3707| s@@34 n@@26) |Seq#Empty_3707|))
 :qid |stdinbpl.503:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3707| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@39 T@PolymorphicMapType_38238) (Mask@@31 T@PolymorphicMapType_38259) (i@@37 Int) (lo@@13 Int) (hi@@25 Int) (ar@@25 T@Seq_45428) ) (!  (=> (state Heap@@39 Mask@@31) (= (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar@@25) (|sum_array#frame| (FrameFragment_4688 (|sum_array#condqp1| Heap@@39 i@@37 lo@@13 hi@@25 ar@@25)) i@@37 lo@@13 hi@@25 ar@@25)))
 :qid |stdinbpl.785:15|
 :skolemid |66|
 :pattern ( (state Heap@@39 Mask@@31) (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar@@25))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_38238) (Mask@@32 T@PolymorphicMapType_38259) (i@@38 Int) (hi@@26 Int) (ar@@26 T@Seq_45428) (v_2@@12 Int) ) (!  (=> (state Heap@@40 Mask@@32) (= (|count_array'| Heap@@40 i@@38 hi@@26 ar@@26 v_2@@12) (|count_array#frame| (FrameFragment_4688 (|count_array#condqp4| Heap@@40 i@@38 hi@@26 ar@@26 v_2@@12)) i@@38 hi@@26 ar@@26 v_2@@12)))
 :qid |stdinbpl.1637:15|
 :skolemid |133|
 :pattern ( (state Heap@@40 Mask@@32) (|count_array'| Heap@@40 i@@38 hi@@26 ar@@26 v_2@@12))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i_45 () Int)
(declare-fun N () Int)
(declare-fun b_24 () T@Seq_45428)
(declare-fun qpRange25 (T@Ref) Bool)
(declare-fun invRecv25 (T@Ref) Int)
(declare-fun c () T@Seq_45428)
(declare-fun qpRange24 (T@Ref) Bool)
(declare-fun invRecv24 (T@Ref) Int)
(declare-fun QPMask@14 () T@PolymorphicMapType_38259)
(declare-fun QPMask@13 () T@PolymorphicMapType_38259)
(declare-fun PostHeap@0 () T@PolymorphicMapType_38238)
(declare-fun i_43 () Int)
(declare-fun a_2 () T@Seq_45428)
(declare-fun qpRange23 (T@Ref) Bool)
(declare-fun invRecv23 (T@Ref) Int)
(declare-fun i_41 () Int)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_38238)
(declare-fun Mask@1 () T@PolymorphicMapType_38259)
(declare-fun neverTriggered26 (Int) Bool)
(declare-fun qpRange26 (T@Ref) Bool)
(declare-fun invRecv26 (T@Ref) Int)
(declare-fun QPMask@10 () T@PolymorphicMapType_38259)
(declare-fun neverTriggered27 (Int) Bool)
(declare-fun qpRange27 (T@Ref) Bool)
(declare-fun invRecv27 (T@Ref) Int)
(declare-fun QPMask@11 () T@PolymorphicMapType_38259)
(declare-fun neverTriggered28 (Int) Bool)
(declare-fun QPMask@9 () T@PolymorphicMapType_38259)
(declare-fun perm@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_38259)
(declare-fun neverTriggered29 (Int) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_38259)
(declare-fun qpRange29 (T@Ref) Bool)
(declare-fun invRecv29 (T@Ref) Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_38259)
(declare-fun Heap@@41 () T@PolymorphicMapType_38238)
(declare-fun neverTriggered30 (Int) Bool)
(declare-fun qpRange30 (T@Ref) Bool)
(declare-fun invRecv30 (T@Ref) Int)
(declare-fun QPMask@4 () T@PolymorphicMapType_38259)
(declare-fun neverTriggered31 (Int) Bool)
(declare-fun qpRange31 (T@Ref) Bool)
(declare-fun invRecv31 (T@Ref) Int)
(declare-fun QPMask@5 () T@PolymorphicMapType_38259)
(declare-fun qpRange32 (T@Ref) Bool)
(declare-fun invRecv32 (T@Ref) Int)
(declare-fun QPMask@6 () T@PolymorphicMapType_38259)
(declare-fun qpRange33 (T@Ref) Bool)
(declare-fun invRecv33 (T@Ref) Int)
(declare-fun QPMask@7 () T@PolymorphicMapType_38259)
(declare-fun qpRange34 (T@Ref) Bool)
(declare-fun invRecv34 (T@Ref) Int)
(declare-fun QPMask@8 () T@PolymorphicMapType_38259)
(declare-fun qpRange35 (T@Ref) Bool)
(declare-fun invRecv35 (T@Ref) Int)
(declare-fun k_10_2 () Int)
(declare-fun j_10_2 () Int)
(declare-fun k_8 () Int)
(declare-fun j_8 () Int)
(declare-fun k_6 () Int)
(declare-fun j_6_1 () Int)
(declare-fun diz () T@Ref)
(declare-fun current_thread_id () Int)
(declare-fun qpRange22 (T@Ref) Bool)
(declare-fun invRecv22 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_38259)
(declare-fun i_36 () Int)
(declare-fun qpRange21 (T@Ref) Bool)
(declare-fun invRecv21 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_38259)
(declare-fun i_35 () Int)
(declare-fun qpRange20 (T@Ref) Bool)
(declare-fun invRecv20 (T@Ref) Int)
(declare-fun i_34 () Int)
(declare-fun k_26 () Int)
(declare-fun j_17 () Int)
(declare-fun k_25 () Int)
(declare-fun j_23 () Int)
(declare-fun k_24 () Int)
(declare-fun j_19 () Int)
(set-info :boogie-vc-id Ref__example)
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
 (=> (= (ControlFlow 0 0) 120) (let ((anon36_correct true))
(let ((anon71_Else_correct  (=> (and (not (and (<= 0 i_45) (< i_45 N))) (= (ControlFlow 0 103) 99)) anon36_correct)))
(let ((anon71_Then_correct  (=> (and (<= 0 i_45) (< i_45 N)) (and (=> (= (ControlFlow 0 100) (- 0 102)) (>= i_45 0)) (=> (>= i_45 0) (and (=> (= (ControlFlow 0 100) (- 0 101)) (< i_45 (|Seq#Length_27098| b_24))) (=> (< i_45 (|Seq#Length_27098| b_24)) (=> (= (ControlFlow 0 100) 99) anon36_correct))))))))
(let ((anon70_Else_correct  (and (=> (= (ControlFlow 0 97) (- 0 98)) (forall ((i_11_1 Int) (i_11_2 Int) ) (!  (=> (and (and (and (and (not (= i_11_1 i_11_2)) (and (<= 0 i_11_1) (< i_11_1 N))) (and (<= 0 i_11_2) (< i_11_2 N))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27098| b_24 i_11_1) (|Seq#Index_27098| b_24 i_11_2))))
 :qid |stdinbpl.3570:15|
 :skolemid |260|
))) (=> (forall ((i_11_1@@0 Int) (i_11_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_11_1@@0 i_11_2@@0)) (and (<= 0 i_11_1@@0) (< i_11_1@@0 N))) (and (<= 0 i_11_2@@0) (< i_11_2@@0 N))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27098| b_24 i_11_1@@0) (|Seq#Index_27098| b_24 i_11_2@@0))))
 :qid |stdinbpl.3570:15|
 :skolemid |260|
)) (=> (forall ((i_11_1@@1 Int) ) (!  (=> (and (and (<= 0 i_11_1@@1) (< i_11_1@@1 N)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange25 (|Seq#Index_27098| b_24 i_11_1@@1)) (= (invRecv25 (|Seq#Index_27098| b_24 i_11_1@@1)) i_11_1@@1)))
 :qid |stdinbpl.3576:22|
 :skolemid |261|
 :pattern ( (|Seq#Index_27098| b_24 i_11_1@@1))
 :pattern ( (|Seq#Index_27098| b_24 i_11_1@@1))
)) (=> (and (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv25 o_4)) (< (invRecv25 o_4) N)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange25 o_4)) (= (|Seq#Index_27098| b_24 (invRecv25 o_4)) o_4))
 :qid |stdinbpl.3580:22|
 :skolemid |262|
 :pattern ( (invRecv25 o_4))
)) (= (ControlFlow 0 97) (- 0 96))) (forall ((i_11_1@@2 Int) ) (!  (=> (and (<= 0 i_11_1@@2) (< i_11_1@@2 N)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3586:15|
 :skolemid |263|
 :pattern ( (|Seq#Index_27098| b_24 i_11_1@@2))
 :pattern ( (|Seq#Index_27098| b_24 i_11_1@@2))
))))))))
(let ((anon68_Else_correct  (and (=> (= (ControlFlow 0 104) (- 0 105)) (forall ((i_9_1 Int) (i_9_2 Int) ) (!  (=> (and (and (and (and (not (= i_9_1 i_9_2)) (and (<= 0 i_9_1) (< i_9_1 N))) (and (<= 0 i_9_2) (< i_9_2 N))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27098| c i_9_1) (|Seq#Index_27098| c i_9_2))))
 :qid |stdinbpl.3522:15|
 :skolemid |254|
))) (=> (forall ((i_9_1@@0 Int) (i_9_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_9_1@@0 i_9_2@@0)) (and (<= 0 i_9_1@@0) (< i_9_1@@0 N))) (and (<= 0 i_9_2@@0) (< i_9_2@@0 N))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27098| c i_9_1@@0) (|Seq#Index_27098| c i_9_2@@0))))
 :qid |stdinbpl.3522:15|
 :skolemid |254|
)) (=> (and (and (forall ((i_9_1@@1 Int) ) (!  (=> (and (and (<= 0 i_9_1@@1) (< i_9_1@@1 N)) (< NoPerm FullPerm)) (and (qpRange24 (|Seq#Index_27098| c i_9_1@@1)) (= (invRecv24 (|Seq#Index_27098| c i_9_1@@1)) i_9_1@@1)))
 :qid |stdinbpl.3528:22|
 :skolemid |255|
 :pattern ( (|Seq#Index_27098| c i_9_1@@1))
 :pattern ( (|Seq#Index_27098| c i_9_1@@1))
)) (forall ((o_4@@0 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv24 o_4@@0)) (< (invRecv24 o_4@@0) N)) (< NoPerm FullPerm)) (qpRange24 o_4@@0)) (= (|Seq#Index_27098| c (invRecv24 o_4@@0)) o_4@@0))
 :qid |stdinbpl.3532:22|
 :skolemid |256|
 :pattern ( (invRecv24 o_4@@0))
))) (and (forall ((i_9_1@@2 Int) ) (!  (=> (and (<= 0 i_9_1@@2) (< i_9_1@@2 N)) (not (= (|Seq#Index_27098| c i_9_1@@2) null)))
 :qid |stdinbpl.3538:22|
 :skolemid |257|
 :pattern ( (|Seq#Index_27098| c i_9_1@@2))
 :pattern ( (|Seq#Index_27098| c i_9_1@@2))
)) (forall ((o_4@@1 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv24 o_4@@1)) (< (invRecv24 o_4@@1) N)) (< NoPerm FullPerm)) (qpRange24 o_4@@1)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_27098| c (invRecv24 o_4@@1)) o_4@@1)) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@14) o_4@@1 Ref__Integer_value) (+ (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@13) o_4@@1 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv24 o_4@@1)) (< (invRecv24 o_4@@1) N)) (< NoPerm FullPerm)) (qpRange24 o_4@@1))) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@14) o_4@@1 Ref__Integer_value) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@13) o_4@@1 Ref__Integer_value))))
 :qid |stdinbpl.3544:22|
 :skolemid |258|
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@14) o_4@@1 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_4@@2 T@Ref) (f_5 T@Field_38298_53) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@13) o_4@@2 f_5) (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@14) o_4@@2 f_5)))
 :qid |stdinbpl.3548:29|
 :skolemid |259|
 :pattern ( (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@13) o_4@@2 f_5))
 :pattern ( (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@14) o_4@@2 f_5))
)) (forall ((o_4@@3 T@Ref) (f_5@@0 T@Field_38311_38312) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@13) o_4@@3 f_5@@0) (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@14) o_4@@3 f_5@@0)))
 :qid |stdinbpl.3548:29|
 :skolemid |259|
 :pattern ( (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@13) o_4@@3 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@14) o_4@@3 f_5@@0))
))) (forall ((o_4@@4 T@Ref) (f_5@@1 T@Field_44386_3829) ) (!  (=> (not (= f_5@@1 Ref__Integer_value)) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@13) o_4@@4 f_5@@1) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@14) o_4@@4 f_5@@1)))
 :qid |stdinbpl.3548:29|
 :skolemid |259|
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@13) o_4@@4 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@14) o_4@@4 f_5@@1))
))) (forall ((o_4@@5 T@Ref) (f_5@@2 T@Field_27059_108917) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@13) o_4@@5 f_5@@2) (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@14) o_4@@5 f_5@@2)))
 :qid |stdinbpl.3548:29|
 :skolemid |259|
 :pattern ( (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@13) o_4@@5 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@14) o_4@@5 f_5@@2))
))) (forall ((o_4@@6 T@Ref) (f_5@@3 T@Field_27059_109050) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@13) o_4@@6 f_5@@3) (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@14) o_4@@6 f_5@@3)))
 :qid |stdinbpl.3548:29|
 :skolemid |259|
 :pattern ( (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@13) o_4@@6 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@14) o_4@@6 f_5@@3))
))) (and (and (state PostHeap@0 QPMask@14) (state PostHeap@0 QPMask@14)) (and (= (|Seq#Length_27098| b_24) N) (state PostHeap@0 QPMask@14)))) (and (and (=> (= (ControlFlow 0 104) 97) anon70_Else_correct) (=> (= (ControlFlow 0 104) 100) anon71_Then_correct)) (=> (= (ControlFlow 0 104) 103) anon71_Else_correct))))))))
(let ((anon32_correct true))
(let ((anon69_Else_correct  (=> (and (not (and (<= 0 i_43) (< i_43 N))) (= (ControlFlow 0 95) 91)) anon32_correct)))
(let ((anon69_Then_correct  (=> (and (<= 0 i_43) (< i_43 N)) (and (=> (= (ControlFlow 0 92) (- 0 94)) (>= i_43 0)) (=> (>= i_43 0) (and (=> (= (ControlFlow 0 92) (- 0 93)) (< i_43 (|Seq#Length_27098| c))) (=> (< i_43 (|Seq#Length_27098| c)) (=> (= (ControlFlow 0 92) 91) anon32_correct))))))))
(let ((anon66_Else_correct  (and (=> (= (ControlFlow 0 106) (- 0 107)) (forall ((i_7_1 Int) (i_7_2 Int) ) (!  (=> (and (and (and (and (not (= i_7_1 i_7_2)) (and (<= 0 i_7_1) (< i_7_1 N))) (and (<= 0 i_7_2) (< i_7_2 N))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27098| a_2 i_7_1) (|Seq#Index_27098| a_2 i_7_2))))
 :qid |stdinbpl.3474:15|
 :skolemid |248|
))) (=> (forall ((i_7_1@@0 Int) (i_7_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_7_1@@0 i_7_2@@0)) (and (<= 0 i_7_1@@0) (< i_7_1@@0 N))) (and (<= 0 i_7_2@@0) (< i_7_2@@0 N))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27098| a_2 i_7_1@@0) (|Seq#Index_27098| a_2 i_7_2@@0))))
 :qid |stdinbpl.3474:15|
 :skolemid |248|
)) (=> (and (and (forall ((i_7_1@@1 Int) ) (!  (=> (and (and (<= 0 i_7_1@@1) (< i_7_1@@1 N)) (< NoPerm FullPerm)) (and (qpRange23 (|Seq#Index_27098| a_2 i_7_1@@1)) (= (invRecv23 (|Seq#Index_27098| a_2 i_7_1@@1)) i_7_1@@1)))
 :qid |stdinbpl.3480:22|
 :skolemid |249|
 :pattern ( (|Seq#Index_27098| a_2 i_7_1@@1))
 :pattern ( (|Seq#Index_27098| a_2 i_7_1@@1))
)) (forall ((o_4@@7 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv23 o_4@@7)) (< (invRecv23 o_4@@7) N)) (< NoPerm FullPerm)) (qpRange23 o_4@@7)) (= (|Seq#Index_27098| a_2 (invRecv23 o_4@@7)) o_4@@7))
 :qid |stdinbpl.3484:22|
 :skolemid |250|
 :pattern ( (invRecv23 o_4@@7))
))) (and (forall ((i_7_1@@2 Int) ) (!  (=> (and (<= 0 i_7_1@@2) (< i_7_1@@2 N)) (not (= (|Seq#Index_27098| a_2 i_7_1@@2) null)))
 :qid |stdinbpl.3490:22|
 :skolemid |251|
 :pattern ( (|Seq#Index_27098| a_2 i_7_1@@2))
 :pattern ( (|Seq#Index_27098| a_2 i_7_1@@2))
)) (forall ((o_4@@8 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv23 o_4@@8)) (< (invRecv23 o_4@@8) N)) (< NoPerm FullPerm)) (qpRange23 o_4@@8)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_27098| a_2 (invRecv23 o_4@@8)) o_4@@8)) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@13) o_4@@8 Ref__Integer_value) (+ (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| ZeroMask) o_4@@8 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv23 o_4@@8)) (< (invRecv23 o_4@@8) N)) (< NoPerm FullPerm)) (qpRange23 o_4@@8))) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@13) o_4@@8 Ref__Integer_value) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| ZeroMask) o_4@@8 Ref__Integer_value))))
 :qid |stdinbpl.3496:22|
 :skolemid |252|
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@13) o_4@@8 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_4@@9 T@Ref) (f_5@@4 T@Field_38298_53) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| ZeroMask) o_4@@9 f_5@@4) (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@13) o_4@@9 f_5@@4)))
 :qid |stdinbpl.3500:29|
 :skolemid |253|
 :pattern ( (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| ZeroMask) o_4@@9 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@13) o_4@@9 f_5@@4))
)) (forall ((o_4@@10 T@Ref) (f_5@@5 T@Field_38311_38312) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| ZeroMask) o_4@@10 f_5@@5) (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@13) o_4@@10 f_5@@5)))
 :qid |stdinbpl.3500:29|
 :skolemid |253|
 :pattern ( (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| ZeroMask) o_4@@10 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@13) o_4@@10 f_5@@5))
))) (forall ((o_4@@11 T@Ref) (f_5@@6 T@Field_44386_3829) ) (!  (=> (not (= f_5@@6 Ref__Integer_value)) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| ZeroMask) o_4@@11 f_5@@6) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@13) o_4@@11 f_5@@6)))
 :qid |stdinbpl.3500:29|
 :skolemid |253|
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| ZeroMask) o_4@@11 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@13) o_4@@11 f_5@@6))
))) (forall ((o_4@@12 T@Ref) (f_5@@7 T@Field_27059_108917) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| ZeroMask) o_4@@12 f_5@@7) (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@13) o_4@@12 f_5@@7)))
 :qid |stdinbpl.3500:29|
 :skolemid |253|
 :pattern ( (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| ZeroMask) o_4@@12 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@13) o_4@@12 f_5@@7))
))) (forall ((o_4@@13 T@Ref) (f_5@@8 T@Field_27059_109050) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| ZeroMask) o_4@@13 f_5@@8) (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@13) o_4@@13 f_5@@8)))
 :qid |stdinbpl.3500:29|
 :skolemid |253|
 :pattern ( (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| ZeroMask) o_4@@13 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@13) o_4@@13 f_5@@8))
))) (and (and (state PostHeap@0 QPMask@13) (state PostHeap@0 QPMask@13)) (and (= (|Seq#Length_27098| c) N) (state PostHeap@0 QPMask@13)))) (and (and (=> (= (ControlFlow 0 106) 104) anon68_Else_correct) (=> (= (ControlFlow 0 106) 92) anon69_Then_correct)) (=> (= (ControlFlow 0 106) 95) anon69_Else_correct))))))))
(let ((anon28_correct true))
(let ((anon67_Else_correct  (=> (and (not (and (<= 0 i_41) (< i_41 N))) (= (ControlFlow 0 90) 86)) anon28_correct)))
(let ((anon67_Then_correct  (=> (and (<= 0 i_41) (< i_41 N)) (and (=> (= (ControlFlow 0 87) (- 0 89)) (>= i_41 0)) (=> (>= i_41 0) (and (=> (= (ControlFlow 0 87) (- 0 88)) (< i_41 (|Seq#Length_27098| a_2))) (=> (< i_41 (|Seq#Length_27098| a_2)) (=> (= (ControlFlow 0 87) 86) anon28_correct))))))))
(let ((anon65_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (= (|Seq#Length_27098| a_2) N) (state PostHeap@0 ZeroMask)) (and (and (=> (= (ControlFlow 0 108) 106) anon66_Else_correct) (=> (= (ControlFlow 0 108) 87) anon67_Then_correct)) (=> (= (ControlFlow 0 108) 90) anon67_Else_correct))))))
(let ((anon52_correct  (=> (and (state ExhaleHeap@0 Mask@1) (state ExhaleHeap@0 Mask@1)) (and (=> (= (ControlFlow 0 50) (- 0 59)) (= (|Seq#Length_27098| a_2) N)) (=> (= (|Seq#Length_27098| a_2) N) (and (=> (= (ControlFlow 0 50) (- 0 58)) (forall ((i_12_1 Int) (i_12_2 Int) ) (!  (=> (and (and (and (and (not (= i_12_1 i_12_2)) (and (<= 0 i_12_1) (< i_12_1 N))) (and (<= 0 i_12_2) (< i_12_2 N))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27098| a_2 i_12_1) (|Seq#Index_27098| a_2 i_12_2))))
 :qid |stdinbpl.3973:17|
 :skolemid |316|
 :pattern ( (neverTriggered26 i_12_1) (neverTriggered26 i_12_2))
))) (=> (forall ((i_12_1@@0 Int) (i_12_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_12_1@@0 i_12_2@@0)) (and (<= 0 i_12_1@@0) (< i_12_1@@0 N))) (and (<= 0 i_12_2@@0) (< i_12_2@@0 N))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27098| a_2 i_12_1@@0) (|Seq#Index_27098| a_2 i_12_2@@0))))
 :qid |stdinbpl.3973:17|
 :skolemid |316|
 :pattern ( (neverTriggered26 i_12_1@@0) (neverTriggered26 i_12_2@@0))
)) (and (=> (= (ControlFlow 0 50) (- 0 57)) (forall ((i_12_1@@1 Int) ) (!  (=> (and (<= 0 i_12_1@@1) (< i_12_1@@1 N)) (>= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| Mask@1) (|Seq#Index_27098| a_2 i_12_1@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.3980:17|
 :skolemid |317|
 :pattern ( (|Seq#Index_27098| a_2 i_12_1@@1))
 :pattern ( (|Seq#Index_27098| a_2 i_12_1@@1))
))) (=> (forall ((i_12_1@@2 Int) ) (!  (=> (and (<= 0 i_12_1@@2) (< i_12_1@@2 N)) (>= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| Mask@1) (|Seq#Index_27098| a_2 i_12_1@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.3980:17|
 :skolemid |317|
 :pattern ( (|Seq#Index_27098| a_2 i_12_1@@2))
 :pattern ( (|Seq#Index_27098| a_2 i_12_1@@2))
)) (=> (forall ((i_12_1@@3 Int) ) (!  (=> (and (and (<= 0 i_12_1@@3) (< i_12_1@@3 N)) (< NoPerm FullPerm)) (and (qpRange26 (|Seq#Index_27098| a_2 i_12_1@@3)) (= (invRecv26 (|Seq#Index_27098| a_2 i_12_1@@3)) i_12_1@@3)))
 :qid |stdinbpl.3986:22|
 :skolemid |318|
 :pattern ( (|Seq#Index_27098| a_2 i_12_1@@3))
 :pattern ( (|Seq#Index_27098| a_2 i_12_1@@3))
)) (=> (and (forall ((o_4@@14 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv26 o_4@@14)) (< (invRecv26 o_4@@14) N)) (and (< NoPerm FullPerm) (qpRange26 o_4@@14))) (= (|Seq#Index_27098| a_2 (invRecv26 o_4@@14)) o_4@@14))
 :qid |stdinbpl.3990:22|
 :skolemid |319|
 :pattern ( (invRecv26 o_4@@14))
)) (forall ((o_4@@15 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv26 o_4@@15)) (< (invRecv26 o_4@@15) N)) (and (< NoPerm FullPerm) (qpRange26 o_4@@15))) (and (= (|Seq#Index_27098| a_2 (invRecv26 o_4@@15)) o_4@@15) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@10) o_4@@15 Ref__Integer_value) (- (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| Mask@1) o_4@@15 Ref__Integer_value) FullPerm)))) (=> (not (and (and (<= 0 (invRecv26 o_4@@15)) (< (invRecv26 o_4@@15) N)) (and (< NoPerm FullPerm) (qpRange26 o_4@@15)))) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@10) o_4@@15 Ref__Integer_value) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| Mask@1) o_4@@15 Ref__Integer_value))))
 :qid |stdinbpl.3996:22|
 :skolemid |320|
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@10) o_4@@15 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_4@@16 T@Ref) (f_5@@9 T@Field_38298_53) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| Mask@1) o_4@@16 f_5@@9) (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@10) o_4@@16 f_5@@9)))
 :qid |stdinbpl.4002:29|
 :skolemid |321|
 :pattern ( (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@10) o_4@@16 f_5@@9))
)) (forall ((o_4@@17 T@Ref) (f_5@@10 T@Field_38311_38312) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| Mask@1) o_4@@17 f_5@@10) (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@10) o_4@@17 f_5@@10)))
 :qid |stdinbpl.4002:29|
 :skolemid |321|
 :pattern ( (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@10) o_4@@17 f_5@@10))
))) (forall ((o_4@@18 T@Ref) (f_5@@11 T@Field_44386_3829) ) (!  (=> (not (= f_5@@11 Ref__Integer_value)) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| Mask@1) o_4@@18 f_5@@11) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@10) o_4@@18 f_5@@11)))
 :qid |stdinbpl.4002:29|
 :skolemid |321|
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@10) o_4@@18 f_5@@11))
))) (forall ((o_4@@19 T@Ref) (f_5@@12 T@Field_27059_108917) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| Mask@1) o_4@@19 f_5@@12) (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@10) o_4@@19 f_5@@12)))
 :qid |stdinbpl.4002:29|
 :skolemid |321|
 :pattern ( (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@10) o_4@@19 f_5@@12))
))) (forall ((o_4@@20 T@Ref) (f_5@@13 T@Field_27059_109050) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| Mask@1) o_4@@20 f_5@@13) (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@10) o_4@@20 f_5@@13)))
 :qid |stdinbpl.4002:29|
 :skolemid |321|
 :pattern ( (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@10) o_4@@20 f_5@@13))
))) (and (=> (= (ControlFlow 0 50) (- 0 56)) (= (|Seq#Length_27098| c) N)) (=> (= (|Seq#Length_27098| c) N) (and (=> (= (ControlFlow 0 50) (- 0 55)) (forall ((i_13_1 Int) (i_13_2 Int) ) (!  (=> (and (and (and (and (not (= i_13_1 i_13_2)) (and (<= 0 i_13_1) (< i_13_1 N))) (and (<= 0 i_13_2) (< i_13_2 N))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27098| c i_13_1) (|Seq#Index_27098| c i_13_2))))
 :qid |stdinbpl.4016:17|
 :skolemid |322|
 :pattern ( (neverTriggered27 i_13_1) (neverTriggered27 i_13_2))
))) (=> (forall ((i_13_1@@0 Int) (i_13_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_13_1@@0 i_13_2@@0)) (and (<= 0 i_13_1@@0) (< i_13_1@@0 N))) (and (<= 0 i_13_2@@0) (< i_13_2@@0 N))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27098| c i_13_1@@0) (|Seq#Index_27098| c i_13_2@@0))))
 :qid |stdinbpl.4016:17|
 :skolemid |322|
 :pattern ( (neverTriggered27 i_13_1@@0) (neverTriggered27 i_13_2@@0))
)) (and (=> (= (ControlFlow 0 50) (- 0 54)) (forall ((i_13_1@@1 Int) ) (!  (=> (and (<= 0 i_13_1@@1) (< i_13_1@@1 N)) (>= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@10) (|Seq#Index_27098| c i_13_1@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.4023:17|
 :skolemid |323|
 :pattern ( (|Seq#Index_27098| c i_13_1@@1))
 :pattern ( (|Seq#Index_27098| c i_13_1@@1))
))) (=> (forall ((i_13_1@@2 Int) ) (!  (=> (and (<= 0 i_13_1@@2) (< i_13_1@@2 N)) (>= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@10) (|Seq#Index_27098| c i_13_1@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.4023:17|
 :skolemid |323|
 :pattern ( (|Seq#Index_27098| c i_13_1@@2))
 :pattern ( (|Seq#Index_27098| c i_13_1@@2))
)) (=> (forall ((i_13_1@@3 Int) ) (!  (=> (and (and (<= 0 i_13_1@@3) (< i_13_1@@3 N)) (< NoPerm FullPerm)) (and (qpRange27 (|Seq#Index_27098| c i_13_1@@3)) (= (invRecv27 (|Seq#Index_27098| c i_13_1@@3)) i_13_1@@3)))
 :qid |stdinbpl.4029:22|
 :skolemid |324|
 :pattern ( (|Seq#Index_27098| c i_13_1@@3))
 :pattern ( (|Seq#Index_27098| c i_13_1@@3))
)) (=> (and (forall ((o_4@@21 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv27 o_4@@21)) (< (invRecv27 o_4@@21) N)) (and (< NoPerm FullPerm) (qpRange27 o_4@@21))) (= (|Seq#Index_27098| c (invRecv27 o_4@@21)) o_4@@21))
 :qid |stdinbpl.4033:22|
 :skolemid |325|
 :pattern ( (invRecv27 o_4@@21))
)) (forall ((o_4@@22 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv27 o_4@@22)) (< (invRecv27 o_4@@22) N)) (and (< NoPerm FullPerm) (qpRange27 o_4@@22))) (and (= (|Seq#Index_27098| c (invRecv27 o_4@@22)) o_4@@22) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@11) o_4@@22 Ref__Integer_value) (- (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@10) o_4@@22 Ref__Integer_value) FullPerm)))) (=> (not (and (and (<= 0 (invRecv27 o_4@@22)) (< (invRecv27 o_4@@22) N)) (and (< NoPerm FullPerm) (qpRange27 o_4@@22)))) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@11) o_4@@22 Ref__Integer_value) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@10) o_4@@22 Ref__Integer_value))))
 :qid |stdinbpl.4039:22|
 :skolemid |326|
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@11) o_4@@22 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_4@@23 T@Ref) (f_5@@14 T@Field_38298_53) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@10) o_4@@23 f_5@@14) (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@11) o_4@@23 f_5@@14)))
 :qid |stdinbpl.4045:29|
 :skolemid |327|
 :pattern ( (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@11) o_4@@23 f_5@@14))
)) (forall ((o_4@@24 T@Ref) (f_5@@15 T@Field_38311_38312) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@10) o_4@@24 f_5@@15) (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@11) o_4@@24 f_5@@15)))
 :qid |stdinbpl.4045:29|
 :skolemid |327|
 :pattern ( (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@11) o_4@@24 f_5@@15))
))) (forall ((o_4@@25 T@Ref) (f_5@@16 T@Field_44386_3829) ) (!  (=> (not (= f_5@@16 Ref__Integer_value)) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@10) o_4@@25 f_5@@16) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@11) o_4@@25 f_5@@16)))
 :qid |stdinbpl.4045:29|
 :skolemid |327|
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@11) o_4@@25 f_5@@16))
))) (forall ((o_4@@26 T@Ref) (f_5@@17 T@Field_27059_108917) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@10) o_4@@26 f_5@@17) (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@11) o_4@@26 f_5@@17)))
 :qid |stdinbpl.4045:29|
 :skolemid |327|
 :pattern ( (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@11) o_4@@26 f_5@@17))
))) (forall ((o_4@@27 T@Ref) (f_5@@18 T@Field_27059_109050) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@10) o_4@@27 f_5@@18) (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@11) o_4@@27 f_5@@18)))
 :qid |stdinbpl.4045:29|
 :skolemid |327|
 :pattern ( (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@11) o_4@@27 f_5@@18))
))) (and (=> (= (ControlFlow 0 50) (- 0 53)) (= (|Seq#Length_27098| b_24) N)) (=> (= (|Seq#Length_27098| b_24) N) (and (=> (= (ControlFlow 0 50) (- 0 52)) (forall ((i_14_1 Int) ) (!  (=> (and (and (<= 0 i_14_1) (< i_14_1 N)) (dummyFunction_4136 (select (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| ExhaleHeap@0) (|Seq#Index_27098| b_24 i_14_1) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4056:17|
 :skolemid |328|
 :pattern ( (|Seq#Index_27098| b_24 i_14_1))
 :pattern ( (|Seq#Index_27098| b_24 i_14_1))
))) (=> (forall ((i_14_1@@0 Int) ) (!  (=> (and (and (<= 0 i_14_1@@0) (< i_14_1@@0 N)) (dummyFunction_4136 (select (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| ExhaleHeap@0) (|Seq#Index_27098| b_24 i_14_1@@0) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4056:17|
 :skolemid |328|
 :pattern ( (|Seq#Index_27098| b_24 i_14_1@@0))
 :pattern ( (|Seq#Index_27098| b_24 i_14_1@@0))
)) (and (=> (= (ControlFlow 0 50) (- 0 51)) (forall ((i_14_1@@1 Int) (i_14_2 Int) ) (!  (=> (and (and (and (and (not (= i_14_1@@1 i_14_2)) (and (<= 0 i_14_1@@1) (< i_14_1@@1 N))) (and (<= 0 i_14_2) (< i_14_2 N))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27098| b_24 i_14_1@@1) (|Seq#Index_27098| b_24 i_14_2))))
 :qid |stdinbpl.4063:17|
 :skolemid |329|
 :pattern ( (neverTriggered28 i_14_1@@1) (neverTriggered28 i_14_2))
))) (=> (forall ((i_14_1@@2 Int) (i_14_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_14_1@@2 i_14_2@@0)) (and (<= 0 i_14_1@@2) (< i_14_1@@2 N))) (and (<= 0 i_14_2@@0) (< i_14_2@@0 N))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27098| b_24 i_14_1@@2) (|Seq#Index_27098| b_24 i_14_2@@0))))
 :qid |stdinbpl.4063:17|
 :skolemid |329|
 :pattern ( (neverTriggered28 i_14_1@@2) (neverTriggered28 i_14_2@@0))
)) (=> (= (ControlFlow 0 50) (- 0 49)) (forall ((i_14_1@@3 Int) ) (!  (=> (and (<= 0 i_14_1@@3) (< i_14_1@@3 N)) (>= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@11) (|Seq#Index_27098| b_24 i_14_1@@3) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.4070:17|
 :skolemid |330|
 :pattern ( (|Seq#Index_27098| b_24 i_14_1@@3))
 :pattern ( (|Seq#Index_27098| b_24 i_14_1@@3))
))))))))))))))))))))))))))))))
(let ((anon78_Else_correct  (=> (not (and (<= 0 (- N 1)) (< (- N 1) N))) (=> (and (= Mask@1 QPMask@9) (= (ControlFlow 0 62) 50)) anon52_correct))))
(let ((anon78_Then_correct  (=> (and (and (<= 0 (- N 1)) (< (- N 1) N)) (= perm@0 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 60) (- 0 61)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (=> (> perm@0 NoPerm) (not (= (|Seq#Index_27098| a_2 (- N 1)) null))) (=> (and (and (= Mask@0 (PolymorphicMapType_38259 (store (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@9) (|Seq#Index_27098| a_2 (- N 1)) Ref__Integer_value (+ (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@9) (|Seq#Index_27098| a_2 (- N 1)) Ref__Integer_value) perm@0)) (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@9) (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@9) (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@9) (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@9))) (state ExhaleHeap@0 Mask@0)) (and (= Mask@1 Mask@0) (= (ControlFlow 0 60) 50))) anon52_correct)))))))
(let ((anon76_Else_correct  (=> (forall ((k_11_1_1 Int) (j_11_1 Int) ) (!  (=> (and (>= k_11_1_1 0) (and (< k_11_1_1 (|Seq#Length_27098| c)) (and (>= j_11_1 0) (and (< j_11_1 (|Seq#Length_27098| c)) (not (= k_11_1_1 j_11_1)))))) (not (= (|Seq#Index_27098| c k_11_1_1) (|Seq#Index_27098| c j_11_1))))
 :qid |stdinbpl.3659:22|
 :skolemid |269|
 :pattern ( (|Seq#Index_27098| c k_11_1_1) (|Seq#Index_27098| c j_11_1))
)) (and (=> (= (ControlFlow 0 63) (- 0 77)) (forall ((i_15 Int) (i_15_1 Int) ) (!  (=> (and (and (and (and (not (= i_15 i_15_1)) (and (<= 0 i_15) (< i_15 N))) (and (<= 0 i_15_1) (< i_15_1 N))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27098| a_2 i_15) (|Seq#Index_27098| a_2 i_15_1))))
 :qid |stdinbpl.3670:19|
 :skolemid |270|
 :pattern ( (neverTriggered29 i_15) (neverTriggered29 i_15_1))
))) (=> (forall ((i_15@@0 Int) (i_15_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_15@@0 i_15_1@@0)) (and (<= 0 i_15@@0) (< i_15@@0 N))) (and (<= 0 i_15_1@@0) (< i_15_1@@0 N))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27098| a_2 i_15@@0) (|Seq#Index_27098| a_2 i_15_1@@0))))
 :qid |stdinbpl.3670:19|
 :skolemid |270|
 :pattern ( (neverTriggered29 i_15@@0) (neverTriggered29 i_15_1@@0))
)) (and (=> (= (ControlFlow 0 63) (- 0 76)) (forall ((i_15@@1 Int) ) (!  (=> (and (<= 0 i_15@@1) (< i_15@@1 N)) (>= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@2) (|Seq#Index_27098| a_2 i_15@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.3677:19|
 :skolemid |271|
 :pattern ( (|Seq#Index_27098| a_2 i_15@@1))
 :pattern ( (|Seq#Index_27098| a_2 i_15@@1))
))) (=> (forall ((i_15@@2 Int) ) (!  (=> (and (<= 0 i_15@@2) (< i_15@@2 N)) (>= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@2) (|Seq#Index_27098| a_2 i_15@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.3677:19|
 :skolemid |271|
 :pattern ( (|Seq#Index_27098| a_2 i_15@@2))
 :pattern ( (|Seq#Index_27098| a_2 i_15@@2))
)) (=> (forall ((i_15@@3 Int) ) (!  (=> (and (and (<= 0 i_15@@3) (< i_15@@3 N)) (< NoPerm FullPerm)) (and (qpRange29 (|Seq#Index_27098| a_2 i_15@@3)) (= (invRecv29 (|Seq#Index_27098| a_2 i_15@@3)) i_15@@3)))
 :qid |stdinbpl.3683:24|
 :skolemid |272|
 :pattern ( (|Seq#Index_27098| a_2 i_15@@3))
 :pattern ( (|Seq#Index_27098| a_2 i_15@@3))
)) (=> (and (forall ((o_4@@28 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv29 o_4@@28)) (< (invRecv29 o_4@@28) N)) (and (< NoPerm FullPerm) (qpRange29 o_4@@28))) (= (|Seq#Index_27098| a_2 (invRecv29 o_4@@28)) o_4@@28))
 :qid |stdinbpl.3687:24|
 :skolemid |273|
 :pattern ( (invRecv29 o_4@@28))
)) (forall ((o_4@@29 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv29 o_4@@29)) (< (invRecv29 o_4@@29) N)) (and (< NoPerm FullPerm) (qpRange29 o_4@@29))) (and (= (|Seq#Index_27098| a_2 (invRecv29 o_4@@29)) o_4@@29) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@3) o_4@@29 Ref__Integer_value) (- (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@2) o_4@@29 Ref__Integer_value) FullPerm)))) (=> (not (and (and (<= 0 (invRecv29 o_4@@29)) (< (invRecv29 o_4@@29) N)) (and (< NoPerm FullPerm) (qpRange29 o_4@@29)))) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@3) o_4@@29 Ref__Integer_value) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@2) o_4@@29 Ref__Integer_value))))
 :qid |stdinbpl.3693:24|
 :skolemid |274|
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@3) o_4@@29 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_4@@30 T@Ref) (f_5@@19 T@Field_38298_53) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@2) o_4@@30 f_5@@19) (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@3) o_4@@30 f_5@@19)))
 :qid |stdinbpl.3699:31|
 :skolemid |275|
 :pattern ( (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@3) o_4@@30 f_5@@19))
)) (forall ((o_4@@31 T@Ref) (f_5@@20 T@Field_38311_38312) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@2) o_4@@31 f_5@@20) (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@3) o_4@@31 f_5@@20)))
 :qid |stdinbpl.3699:31|
 :skolemid |275|
 :pattern ( (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@3) o_4@@31 f_5@@20))
))) (forall ((o_4@@32 T@Ref) (f_5@@21 T@Field_44386_3829) ) (!  (=> (not (= f_5@@21 Ref__Integer_value)) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@2) o_4@@32 f_5@@21) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@3) o_4@@32 f_5@@21)))
 :qid |stdinbpl.3699:31|
 :skolemid |275|
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@3) o_4@@32 f_5@@21))
))) (forall ((o_4@@33 T@Ref) (f_5@@22 T@Field_27059_108917) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@2) o_4@@33 f_5@@22) (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@3) o_4@@33 f_5@@22)))
 :qid |stdinbpl.3699:31|
 :skolemid |275|
 :pattern ( (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@3) o_4@@33 f_5@@22))
))) (forall ((o_4@@34 T@Ref) (f_5@@23 T@Field_27059_109050) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@2) o_4@@34 f_5@@23) (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@3) o_4@@34 f_5@@23)))
 :qid |stdinbpl.3699:31|
 :skolemid |275|
 :pattern ( (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@3) o_4@@34 f_5@@23))
))) (and (=> (= (ControlFlow 0 63) (- 0 75)) (forall ((i_16_1 Int) ) (!  (=> (and (and (<= 0 i_16_1) (< i_16_1 N)) (dummyFunction_4136 (select (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| Heap@@41) (|Seq#Index_27098| b_24 i_16_1) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3708:19|
 :skolemid |276|
 :pattern ( (|Seq#Index_27098| b_24 i_16_1))
 :pattern ( (|Seq#Index_27098| b_24 i_16_1))
))) (=> (forall ((i_16_1@@0 Int) ) (!  (=> (and (and (<= 0 i_16_1@@0) (< i_16_1@@0 N)) (dummyFunction_4136 (select (|PolymorphicMapType_38238_27059_3829#PolymorphicMapType_38238| Heap@@41) (|Seq#Index_27098| b_24 i_16_1@@0) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3708:19|
 :skolemid |276|
 :pattern ( (|Seq#Index_27098| b_24 i_16_1@@0))
 :pattern ( (|Seq#Index_27098| b_24 i_16_1@@0))
)) (and (=> (= (ControlFlow 0 63) (- 0 74)) (forall ((i_16_1@@1 Int) (i_16_2 Int) ) (!  (=> (and (and (and (and (not (= i_16_1@@1 i_16_2)) (and (<= 0 i_16_1@@1) (< i_16_1@@1 N))) (and (<= 0 i_16_2) (< i_16_2 N))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27098| b_24 i_16_1@@1) (|Seq#Index_27098| b_24 i_16_2))))
 :qid |stdinbpl.3715:19|
 :skolemid |277|
 :pattern ( (neverTriggered30 i_16_1@@1) (neverTriggered30 i_16_2))
))) (=> (forall ((i_16_1@@2 Int) (i_16_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_16_1@@2 i_16_2@@0)) (and (<= 0 i_16_1@@2) (< i_16_1@@2 N))) (and (<= 0 i_16_2@@0) (< i_16_2@@0 N))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27098| b_24 i_16_1@@2) (|Seq#Index_27098| b_24 i_16_2@@0))))
 :qid |stdinbpl.3715:19|
 :skolemid |277|
 :pattern ( (neverTriggered30 i_16_1@@2) (neverTriggered30 i_16_2@@0))
)) (and (=> (= (ControlFlow 0 63) (- 0 73)) (forall ((i_16_1@@3 Int) ) (!  (=> (and (<= 0 i_16_1@@3) (< i_16_1@@3 N)) (>= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@3) (|Seq#Index_27098| b_24 i_16_1@@3) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.3722:19|
 :skolemid |278|
 :pattern ( (|Seq#Index_27098| b_24 i_16_1@@3))
 :pattern ( (|Seq#Index_27098| b_24 i_16_1@@3))
))) (=> (forall ((i_16_1@@4 Int) ) (!  (=> (and (<= 0 i_16_1@@4) (< i_16_1@@4 N)) (>= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@3) (|Seq#Index_27098| b_24 i_16_1@@4) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.3722:19|
 :skolemid |278|
 :pattern ( (|Seq#Index_27098| b_24 i_16_1@@4))
 :pattern ( (|Seq#Index_27098| b_24 i_16_1@@4))
)) (=> (forall ((i_16_1@@5 Int) ) (!  (=> (and (and (<= 0 i_16_1@@5) (< i_16_1@@5 N)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange30 (|Seq#Index_27098| b_24 i_16_1@@5)) (= (invRecv30 (|Seq#Index_27098| b_24 i_16_1@@5)) i_16_1@@5)))
 :qid |stdinbpl.3728:24|
 :skolemid |279|
 :pattern ( (|Seq#Index_27098| b_24 i_16_1@@5))
 :pattern ( (|Seq#Index_27098| b_24 i_16_1@@5))
)) (=> (and (forall ((o_4@@35 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv30 o_4@@35)) (< (invRecv30 o_4@@35) N)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange30 o_4@@35))) (= (|Seq#Index_27098| b_24 (invRecv30 o_4@@35)) o_4@@35))
 :qid |stdinbpl.3732:24|
 :skolemid |280|
 :pattern ( (invRecv30 o_4@@35))
)) (forall ((o_4@@36 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv30 o_4@@36)) (< (invRecv30 o_4@@36) N)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange30 o_4@@36))) (and (= (|Seq#Index_27098| b_24 (invRecv30 o_4@@36)) o_4@@36) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@4) o_4@@36 Ref__Integer_value) (- (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@3) o_4@@36 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (<= 0 (invRecv30 o_4@@36)) (< (invRecv30 o_4@@36) N)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange30 o_4@@36)))) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@4) o_4@@36 Ref__Integer_value) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@3) o_4@@36 Ref__Integer_value))))
 :qid |stdinbpl.3738:24|
 :skolemid |281|
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@4) o_4@@36 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_4@@37 T@Ref) (f_5@@24 T@Field_38298_53) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@3) o_4@@37 f_5@@24) (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@4) o_4@@37 f_5@@24)))
 :qid |stdinbpl.3744:31|
 :skolemid |282|
 :pattern ( (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@4) o_4@@37 f_5@@24))
)) (forall ((o_4@@38 T@Ref) (f_5@@25 T@Field_38311_38312) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@3) o_4@@38 f_5@@25) (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@4) o_4@@38 f_5@@25)))
 :qid |stdinbpl.3744:31|
 :skolemid |282|
 :pattern ( (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@4) o_4@@38 f_5@@25))
))) (forall ((o_4@@39 T@Ref) (f_5@@26 T@Field_44386_3829) ) (!  (=> (not (= f_5@@26 Ref__Integer_value)) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@3) o_4@@39 f_5@@26) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@4) o_4@@39 f_5@@26)))
 :qid |stdinbpl.3744:31|
 :skolemid |282|
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@4) o_4@@39 f_5@@26))
))) (forall ((o_4@@40 T@Ref) (f_5@@27 T@Field_27059_108917) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@3) o_4@@40 f_5@@27) (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@4) o_4@@40 f_5@@27)))
 :qid |stdinbpl.3744:31|
 :skolemid |282|
 :pattern ( (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@4) o_4@@40 f_5@@27))
))) (forall ((o_4@@41 T@Ref) (f_5@@28 T@Field_27059_109050) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@3) o_4@@41 f_5@@28) (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@4) o_4@@41 f_5@@28)))
 :qid |stdinbpl.3744:31|
 :skolemid |282|
 :pattern ( (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@4) o_4@@41 f_5@@28))
))) (and (=> (= (ControlFlow 0 63) (- 0 72)) (forall ((i_17 Int) (i_17_1 Int) ) (!  (=> (and (and (and (and (not (= i_17 i_17_1)) (and (<= 0 i_17) (< i_17 N))) (and (<= 0 i_17_1) (< i_17_1 N))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27098| c i_17) (|Seq#Index_27098| c i_17_1))))
 :qid |stdinbpl.3756:19|
 :skolemid |283|
 :pattern ( (neverTriggered31 i_17) (neverTriggered31 i_17_1))
))) (=> (forall ((i_17@@0 Int) (i_17_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_17@@0 i_17_1@@0)) (and (<= 0 i_17@@0) (< i_17@@0 N))) (and (<= 0 i_17_1@@0) (< i_17_1@@0 N))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27098| c i_17@@0) (|Seq#Index_27098| c i_17_1@@0))))
 :qid |stdinbpl.3756:19|
 :skolemid |283|
 :pattern ( (neverTriggered31 i_17@@0) (neverTriggered31 i_17_1@@0))
)) (and (=> (= (ControlFlow 0 63) (- 0 71)) (forall ((i_17@@1 Int) ) (!  (=> (and (<= 0 i_17@@1) (< i_17@@1 N)) (>= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@4) (|Seq#Index_27098| c i_17@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.3763:19|
 :skolemid |284|
 :pattern ( (|Seq#Index_27098| c i_17@@1))
 :pattern ( (|Seq#Index_27098| c i_17@@1))
))) (=> (forall ((i_17@@2 Int) ) (!  (=> (and (<= 0 i_17@@2) (< i_17@@2 N)) (>= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@4) (|Seq#Index_27098| c i_17@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.3763:19|
 :skolemid |284|
 :pattern ( (|Seq#Index_27098| c i_17@@2))
 :pattern ( (|Seq#Index_27098| c i_17@@2))
)) (=> (forall ((i_17@@3 Int) ) (!  (=> (and (and (<= 0 i_17@@3) (< i_17@@3 N)) (< NoPerm FullPerm)) (and (qpRange31 (|Seq#Index_27098| c i_17@@3)) (= (invRecv31 (|Seq#Index_27098| c i_17@@3)) i_17@@3)))
 :qid |stdinbpl.3769:24|
 :skolemid |285|
 :pattern ( (|Seq#Index_27098| c i_17@@3))
 :pattern ( (|Seq#Index_27098| c i_17@@3))
)) (=> (and (forall ((o_4@@42 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv31 o_4@@42)) (< (invRecv31 o_4@@42) N)) (and (< NoPerm FullPerm) (qpRange31 o_4@@42))) (= (|Seq#Index_27098| c (invRecv31 o_4@@42)) o_4@@42))
 :qid |stdinbpl.3773:24|
 :skolemid |286|
 :pattern ( (invRecv31 o_4@@42))
)) (forall ((o_4@@43 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv31 o_4@@43)) (< (invRecv31 o_4@@43) N)) (and (< NoPerm FullPerm) (qpRange31 o_4@@43))) (and (= (|Seq#Index_27098| c (invRecv31 o_4@@43)) o_4@@43) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@5) o_4@@43 Ref__Integer_value) (- (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@4) o_4@@43 Ref__Integer_value) FullPerm)))) (=> (not (and (and (<= 0 (invRecv31 o_4@@43)) (< (invRecv31 o_4@@43) N)) (and (< NoPerm FullPerm) (qpRange31 o_4@@43)))) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@5) o_4@@43 Ref__Integer_value) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@4) o_4@@43 Ref__Integer_value))))
 :qid |stdinbpl.3779:24|
 :skolemid |287|
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@5) o_4@@43 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@44 T@Ref) (f_5@@29 T@Field_38298_53) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@4) o_4@@44 f_5@@29) (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@5) o_4@@44 f_5@@29)))
 :qid |stdinbpl.3785:31|
 :skolemid |288|
 :pattern ( (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@5) o_4@@44 f_5@@29))
)) (forall ((o_4@@45 T@Ref) (f_5@@30 T@Field_38311_38312) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@4) o_4@@45 f_5@@30) (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@5) o_4@@45 f_5@@30)))
 :qid |stdinbpl.3785:31|
 :skolemid |288|
 :pattern ( (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@5) o_4@@45 f_5@@30))
))) (forall ((o_4@@46 T@Ref) (f_5@@31 T@Field_44386_3829) ) (!  (=> (not (= f_5@@31 Ref__Integer_value)) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@4) o_4@@46 f_5@@31) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@5) o_4@@46 f_5@@31)))
 :qid |stdinbpl.3785:31|
 :skolemid |288|
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@5) o_4@@46 f_5@@31))
))) (forall ((o_4@@47 T@Ref) (f_5@@32 T@Field_27059_108917) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@4) o_4@@47 f_5@@32) (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@5) o_4@@47 f_5@@32)))
 :qid |stdinbpl.3785:31|
 :skolemid |288|
 :pattern ( (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@5) o_4@@47 f_5@@32))
))) (forall ((o_4@@48 T@Ref) (f_5@@33 T@Field_27059_109050) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@4) o_4@@48 f_5@@33) (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@5) o_4@@48 f_5@@33)))
 :qid |stdinbpl.3785:31|
 :skolemid |288|
 :pattern ( (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@5) o_4@@48 f_5@@33))
))) (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@0 QPMask@5)) (and (=> (= (ControlFlow 0 63) (- 0 70)) (forall ((i_18_1 Int) (i_18_2 Int) ) (!  (=> (and (and (and (and (not (= i_18_1 i_18_2)) (and (<= 0 i_18_1) (< i_18_1 N))) (and (<= 0 i_18_2) (< i_18_2 N))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27098| a_2 i_18_1) (|Seq#Index_27098| a_2 i_18_2))))
 :qid |stdinbpl.3798:17|
 :skolemid |289|
))) (=> (forall ((i_18_1@@0 Int) (i_18_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_18_1@@0 i_18_2@@0)) (and (<= 0 i_18_1@@0) (< i_18_1@@0 N))) (and (<= 0 i_18_2@@0) (< i_18_2@@0 N))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27098| a_2 i_18_1@@0) (|Seq#Index_27098| a_2 i_18_2@@0))))
 :qid |stdinbpl.3798:17|
 :skolemid |289|
)) (=> (and (forall ((i_18_1@@1 Int) ) (!  (=> (and (and (<= 0 i_18_1@@1) (< i_18_1@@1 N)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange32 (|Seq#Index_27098| a_2 i_18_1@@1)) (= (invRecv32 (|Seq#Index_27098| a_2 i_18_1@@1)) i_18_1@@1)))
 :qid |stdinbpl.3804:24|
 :skolemid |290|
 :pattern ( (|Seq#Index_27098| a_2 i_18_1@@1))
 :pattern ( (|Seq#Index_27098| a_2 i_18_1@@1))
)) (forall ((o_4@@49 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv32 o_4@@49)) (< (invRecv32 o_4@@49) N)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange32 o_4@@49)) (= (|Seq#Index_27098| a_2 (invRecv32 o_4@@49)) o_4@@49))
 :qid |stdinbpl.3808:24|
 :skolemid |291|
 :pattern ( (invRecv32 o_4@@49))
))) (and (=> (= (ControlFlow 0 63) (- 0 69)) (forall ((i_18_1@@2 Int) ) (!  (=> (and (<= 0 i_18_1@@2) (< i_18_1@@2 N)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3814:17|
 :skolemid |292|
 :pattern ( (|Seq#Index_27098| a_2 i_18_1@@2))
 :pattern ( (|Seq#Index_27098| a_2 i_18_1@@2))
))) (=> (forall ((i_18_1@@3 Int) ) (!  (=> (and (<= 0 i_18_1@@3) (< i_18_1@@3 N)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3814:17|
 :skolemid |292|
 :pattern ( (|Seq#Index_27098| a_2 i_18_1@@3))
 :pattern ( (|Seq#Index_27098| a_2 i_18_1@@3))
)) (=> (and (forall ((i_18_1@@4 Int) ) (!  (=> (and (and (<= 0 i_18_1@@4) (< i_18_1@@4 N)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_27098| a_2 i_18_1@@4) null)))
 :qid |stdinbpl.3820:24|
 :skolemid |293|
 :pattern ( (|Seq#Index_27098| a_2 i_18_1@@4))
 :pattern ( (|Seq#Index_27098| a_2 i_18_1@@4))
)) (forall ((o_4@@50 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv32 o_4@@50)) (< (invRecv32 o_4@@50) N)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange32 o_4@@50)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_27098| a_2 (invRecv32 o_4@@50)) o_4@@50)) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@6) o_4@@50 Ref__Integer_value) (+ (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@5) o_4@@50 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv32 o_4@@50)) (< (invRecv32 o_4@@50) N)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange32 o_4@@50))) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@6) o_4@@50 Ref__Integer_value) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@5) o_4@@50 Ref__Integer_value))))
 :qid |stdinbpl.3826:24|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@6) o_4@@50 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@51 T@Ref) (f_5@@34 T@Field_38298_53) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@5) o_4@@51 f_5@@34) (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@6) o_4@@51 f_5@@34)))
 :qid |stdinbpl.3830:31|
 :skolemid |295|
 :pattern ( (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@5) o_4@@51 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@6) o_4@@51 f_5@@34))
)) (forall ((o_4@@52 T@Ref) (f_5@@35 T@Field_38311_38312) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@5) o_4@@52 f_5@@35) (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@6) o_4@@52 f_5@@35)))
 :qid |stdinbpl.3830:31|
 :skolemid |295|
 :pattern ( (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@5) o_4@@52 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@6) o_4@@52 f_5@@35))
))) (forall ((o_4@@53 T@Ref) (f_5@@36 T@Field_44386_3829) ) (!  (=> (not (= f_5@@36 Ref__Integer_value)) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@5) o_4@@53 f_5@@36) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@6) o_4@@53 f_5@@36)))
 :qid |stdinbpl.3830:31|
 :skolemid |295|
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@5) o_4@@53 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@6) o_4@@53 f_5@@36))
))) (forall ((o_4@@54 T@Ref) (f_5@@37 T@Field_27059_108917) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@5) o_4@@54 f_5@@37) (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@6) o_4@@54 f_5@@37)))
 :qid |stdinbpl.3830:31|
 :skolemid |295|
 :pattern ( (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@5) o_4@@54 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@6) o_4@@54 f_5@@37))
))) (forall ((o_4@@55 T@Ref) (f_5@@38 T@Field_27059_109050) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@5) o_4@@55 f_5@@38) (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@6) o_4@@55 f_5@@38)))
 :qid |stdinbpl.3830:31|
 :skolemid |295|
 :pattern ( (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@5) o_4@@55 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@6) o_4@@55 f_5@@38))
))) (state ExhaleHeap@0 QPMask@6)) (and (=> (= (ControlFlow 0 63) (- 0 68)) (forall ((i_19 Int) (i_19_1 Int) ) (!  (=> (and (and (and (and (not (= i_19 i_19_1)) (and (<= 0 i_19) (< i_19 N))) (and (<= 0 i_19_1) (< i_19_1 N))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27098| b_24 i_19) (|Seq#Index_27098| b_24 i_19_1))))
 :qid |stdinbpl.3838:17|
 :skolemid |296|
))) (=> (forall ((i_19@@0 Int) (i_19_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_19@@0 i_19_1@@0)) (and (<= 0 i_19@@0) (< i_19@@0 N))) (and (<= 0 i_19_1@@0) (< i_19_1@@0 N))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27098| b_24 i_19@@0) (|Seq#Index_27098| b_24 i_19_1@@0))))
 :qid |stdinbpl.3838:17|
 :skolemid |296|
)) (=> (and (forall ((i_19@@1 Int) ) (!  (=> (and (and (<= 0 i_19@@1) (< i_19@@1 N)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange33 (|Seq#Index_27098| b_24 i_19@@1)) (= (invRecv33 (|Seq#Index_27098| b_24 i_19@@1)) i_19@@1)))
 :qid |stdinbpl.3844:24|
 :skolemid |297|
 :pattern ( (|Seq#Index_27098| b_24 i_19@@1))
 :pattern ( (|Seq#Index_27098| b_24 i_19@@1))
)) (forall ((o_4@@56 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv33 o_4@@56)) (< (invRecv33 o_4@@56) N)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange33 o_4@@56)) (= (|Seq#Index_27098| b_24 (invRecv33 o_4@@56)) o_4@@56))
 :qid |stdinbpl.3848:24|
 :skolemid |298|
 :pattern ( (invRecv33 o_4@@56))
))) (and (=> (= (ControlFlow 0 63) (- 0 67)) (forall ((i_19@@2 Int) ) (!  (=> (and (<= 0 i_19@@2) (< i_19@@2 N)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3854:17|
 :skolemid |299|
 :pattern ( (|Seq#Index_27098| b_24 i_19@@2))
 :pattern ( (|Seq#Index_27098| b_24 i_19@@2))
))) (=> (forall ((i_19@@3 Int) ) (!  (=> (and (<= 0 i_19@@3) (< i_19@@3 N)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3854:17|
 :skolemid |299|
 :pattern ( (|Seq#Index_27098| b_24 i_19@@3))
 :pattern ( (|Seq#Index_27098| b_24 i_19@@3))
)) (=> (and (forall ((i_19@@4 Int) ) (!  (=> (and (and (<= 0 i_19@@4) (< i_19@@4 N)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_27098| b_24 i_19@@4) null)))
 :qid |stdinbpl.3860:24|
 :skolemid |300|
 :pattern ( (|Seq#Index_27098| b_24 i_19@@4))
 :pattern ( (|Seq#Index_27098| b_24 i_19@@4))
)) (forall ((o_4@@57 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv33 o_4@@57)) (< (invRecv33 o_4@@57) N)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange33 o_4@@57)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_27098| b_24 (invRecv33 o_4@@57)) o_4@@57)) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@7) o_4@@57 Ref__Integer_value) (+ (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@6) o_4@@57 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv33 o_4@@57)) (< (invRecv33 o_4@@57) N)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange33 o_4@@57))) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@7) o_4@@57 Ref__Integer_value) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@6) o_4@@57 Ref__Integer_value))))
 :qid |stdinbpl.3866:24|
 :skolemid |301|
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@7) o_4@@57 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@58 T@Ref) (f_5@@39 T@Field_38298_53) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@6) o_4@@58 f_5@@39) (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@7) o_4@@58 f_5@@39)))
 :qid |stdinbpl.3870:31|
 :skolemid |302|
 :pattern ( (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@6) o_4@@58 f_5@@39))
 :pattern ( (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@7) o_4@@58 f_5@@39))
)) (forall ((o_4@@59 T@Ref) (f_5@@40 T@Field_38311_38312) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@6) o_4@@59 f_5@@40) (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@7) o_4@@59 f_5@@40)))
 :qid |stdinbpl.3870:31|
 :skolemid |302|
 :pattern ( (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@6) o_4@@59 f_5@@40))
 :pattern ( (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@7) o_4@@59 f_5@@40))
))) (forall ((o_4@@60 T@Ref) (f_5@@41 T@Field_44386_3829) ) (!  (=> (not (= f_5@@41 Ref__Integer_value)) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@6) o_4@@60 f_5@@41) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@7) o_4@@60 f_5@@41)))
 :qid |stdinbpl.3870:31|
 :skolemid |302|
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@6) o_4@@60 f_5@@41))
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@7) o_4@@60 f_5@@41))
))) (forall ((o_4@@61 T@Ref) (f_5@@42 T@Field_27059_108917) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@6) o_4@@61 f_5@@42) (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@7) o_4@@61 f_5@@42)))
 :qid |stdinbpl.3870:31|
 :skolemid |302|
 :pattern ( (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@6) o_4@@61 f_5@@42))
 :pattern ( (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@7) o_4@@61 f_5@@42))
))) (forall ((o_4@@62 T@Ref) (f_5@@43 T@Field_27059_109050) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@6) o_4@@62 f_5@@43) (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@7) o_4@@62 f_5@@43)))
 :qid |stdinbpl.3870:31|
 :skolemid |302|
 :pattern ( (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@6) o_4@@62 f_5@@43))
 :pattern ( (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@7) o_4@@62 f_5@@43))
))) (state ExhaleHeap@0 QPMask@7)) (and (=> (= (ControlFlow 0 63) (- 0 66)) (forall ((i_20_1 Int) (i_20_2 Int) ) (!  (=> (and (and (and (and (not (= i_20_1 i_20_2)) (and (<= 0 i_20_1) (< i_20_1 N))) (and (<= 0 i_20_2) (< i_20_2 N))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27098| c i_20_1) (|Seq#Index_27098| c i_20_2))))
 :qid |stdinbpl.3878:17|
 :skolemid |303|
))) (=> (forall ((i_20_1@@0 Int) (i_20_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_20_1@@0 i_20_2@@0)) (and (<= 0 i_20_1@@0) (< i_20_1@@0 N))) (and (<= 0 i_20_2@@0) (< i_20_2@@0 N))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27098| c i_20_1@@0) (|Seq#Index_27098| c i_20_2@@0))))
 :qid |stdinbpl.3878:17|
 :skolemid |303|
)) (=> (and (and (forall ((i_20_1@@1 Int) ) (!  (=> (and (and (<= 0 i_20_1@@1) (< i_20_1@@1 N)) (< NoPerm FullPerm)) (and (qpRange34 (|Seq#Index_27098| c i_20_1@@1)) (= (invRecv34 (|Seq#Index_27098| c i_20_1@@1)) i_20_1@@1)))
 :qid |stdinbpl.3884:24|
 :skolemid |304|
 :pattern ( (|Seq#Index_27098| c i_20_1@@1))
 :pattern ( (|Seq#Index_27098| c i_20_1@@1))
)) (forall ((o_4@@63 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv34 o_4@@63)) (< (invRecv34 o_4@@63) N)) (< NoPerm FullPerm)) (qpRange34 o_4@@63)) (= (|Seq#Index_27098| c (invRecv34 o_4@@63)) o_4@@63))
 :qid |stdinbpl.3888:24|
 :skolemid |305|
 :pattern ( (invRecv34 o_4@@63))
))) (and (forall ((i_20_1@@2 Int) ) (!  (=> (and (<= 0 i_20_1@@2) (< i_20_1@@2 N)) (not (= (|Seq#Index_27098| c i_20_1@@2) null)))
 :qid |stdinbpl.3894:24|
 :skolemid |306|
 :pattern ( (|Seq#Index_27098| c i_20_1@@2))
 :pattern ( (|Seq#Index_27098| c i_20_1@@2))
)) (forall ((o_4@@64 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv34 o_4@@64)) (< (invRecv34 o_4@@64) N)) (< NoPerm FullPerm)) (qpRange34 o_4@@64)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_27098| c (invRecv34 o_4@@64)) o_4@@64)) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@8) o_4@@64 Ref__Integer_value) (+ (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@7) o_4@@64 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv34 o_4@@64)) (< (invRecv34 o_4@@64) N)) (< NoPerm FullPerm)) (qpRange34 o_4@@64))) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@8) o_4@@64 Ref__Integer_value) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@7) o_4@@64 Ref__Integer_value))))
 :qid |stdinbpl.3900:24|
 :skolemid |307|
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@8) o_4@@64 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_4@@65 T@Ref) (f_5@@44 T@Field_38298_53) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@7) o_4@@65 f_5@@44) (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@8) o_4@@65 f_5@@44)))
 :qid |stdinbpl.3904:31|
 :skolemid |308|
 :pattern ( (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@7) o_4@@65 f_5@@44))
 :pattern ( (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@8) o_4@@65 f_5@@44))
)) (forall ((o_4@@66 T@Ref) (f_5@@45 T@Field_38311_38312) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@7) o_4@@66 f_5@@45) (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@8) o_4@@66 f_5@@45)))
 :qid |stdinbpl.3904:31|
 :skolemid |308|
 :pattern ( (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@7) o_4@@66 f_5@@45))
 :pattern ( (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@8) o_4@@66 f_5@@45))
))) (forall ((o_4@@67 T@Ref) (f_5@@46 T@Field_44386_3829) ) (!  (=> (not (= f_5@@46 Ref__Integer_value)) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@7) o_4@@67 f_5@@46) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@8) o_4@@67 f_5@@46)))
 :qid |stdinbpl.3904:31|
 :skolemid |308|
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@7) o_4@@67 f_5@@46))
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@8) o_4@@67 f_5@@46))
))) (forall ((o_4@@68 T@Ref) (f_5@@47 T@Field_27059_108917) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@7) o_4@@68 f_5@@47) (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@8) o_4@@68 f_5@@47)))
 :qid |stdinbpl.3904:31|
 :skolemid |308|
 :pattern ( (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@7) o_4@@68 f_5@@47))
 :pattern ( (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@8) o_4@@68 f_5@@47))
))) (forall ((o_4@@69 T@Ref) (f_5@@48 T@Field_27059_109050) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@7) o_4@@69 f_5@@48) (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@8) o_4@@69 f_5@@48)))
 :qid |stdinbpl.3904:31|
 :skolemid |308|
 :pattern ( (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@7) o_4@@69 f_5@@48))
 :pattern ( (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@8) o_4@@69 f_5@@48))
))) (state ExhaleHeap@0 QPMask@8)) (and (=> (= (ControlFlow 0 63) (- 0 65)) (forall ((i_21 Int) (i_21_1 Int) ) (!  (=> (and (and (and (and (not (= i_21 i_21_1)) (and (<= 0 i_21) (< i_21 (- N 1)))) (and (<= 0 i_21_1) (< i_21_1 (- N 1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27098| a_2 i_21) (|Seq#Index_27098| a_2 i_21_1))))
 :qid |stdinbpl.3912:17|
 :skolemid |309|
))) (=> (forall ((i_21@@0 Int) (i_21_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_21@@0 i_21_1@@0)) (and (<= 0 i_21@@0) (< i_21@@0 (- N 1)))) (and (<= 0 i_21_1@@0) (< i_21_1@@0 (- N 1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27098| a_2 i_21@@0) (|Seq#Index_27098| a_2 i_21_1@@0))))
 :qid |stdinbpl.3912:17|
 :skolemid |309|
)) (=> (and (forall ((i_21@@1 Int) ) (!  (=> (and (and (<= 0 i_21@@1) (< i_21@@1 (- N 1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange35 (|Seq#Index_27098| a_2 i_21@@1)) (= (invRecv35 (|Seq#Index_27098| a_2 i_21@@1)) i_21@@1)))
 :qid |stdinbpl.3918:24|
 :skolemid |310|
 :pattern ( (|Seq#Index_27098| a_2 i_21@@1))
 :pattern ( (|Seq#Index_27098| a_2 i_21@@1))
)) (forall ((o_4@@70 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv35 o_4@@70)) (< (invRecv35 o_4@@70) (- N 1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange35 o_4@@70)) (= (|Seq#Index_27098| a_2 (invRecv35 o_4@@70)) o_4@@70))
 :qid |stdinbpl.3922:24|
 :skolemid |311|
 :pattern ( (invRecv35 o_4@@70))
))) (and (=> (= (ControlFlow 0 63) (- 0 64)) (forall ((i_21@@2 Int) ) (!  (=> (and (<= 0 i_21@@2) (< i_21@@2 (- N 1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3928:17|
 :skolemid |312|
 :pattern ( (|Seq#Index_27098| a_2 i_21@@2))
 :pattern ( (|Seq#Index_27098| a_2 i_21@@2))
))) (=> (forall ((i_21@@3 Int) ) (!  (=> (and (<= 0 i_21@@3) (< i_21@@3 (- N 1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3928:17|
 :skolemid |312|
 :pattern ( (|Seq#Index_27098| a_2 i_21@@3))
 :pattern ( (|Seq#Index_27098| a_2 i_21@@3))
)) (=> (and (forall ((i_21@@4 Int) ) (!  (=> (and (and (<= 0 i_21@@4) (< i_21@@4 (- N 1))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_27098| a_2 i_21@@4) null)))
 :qid |stdinbpl.3934:24|
 :skolemid |313|
 :pattern ( (|Seq#Index_27098| a_2 i_21@@4))
 :pattern ( (|Seq#Index_27098| a_2 i_21@@4))
)) (forall ((o_4@@71 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv35 o_4@@71)) (< (invRecv35 o_4@@71) (- N 1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange35 o_4@@71)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_27098| a_2 (invRecv35 o_4@@71)) o_4@@71)) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@9) o_4@@71 Ref__Integer_value) (+ (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@8) o_4@@71 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv35 o_4@@71)) (< (invRecv35 o_4@@71) (- N 1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange35 o_4@@71))) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@9) o_4@@71 Ref__Integer_value) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@8) o_4@@71 Ref__Integer_value))))
 :qid |stdinbpl.3940:24|
 :skolemid |314|
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@9) o_4@@71 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@72 T@Ref) (f_5@@49 T@Field_38298_53) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@8) o_4@@72 f_5@@49) (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@9) o_4@@72 f_5@@49)))
 :qid |stdinbpl.3944:31|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@8) o_4@@72 f_5@@49))
 :pattern ( (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@9) o_4@@72 f_5@@49))
)) (forall ((o_4@@73 T@Ref) (f_5@@50 T@Field_38311_38312) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@8) o_4@@73 f_5@@50) (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@9) o_4@@73 f_5@@50)))
 :qid |stdinbpl.3944:31|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@8) o_4@@73 f_5@@50))
 :pattern ( (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@9) o_4@@73 f_5@@50))
))) (forall ((o_4@@74 T@Ref) (f_5@@51 T@Field_44386_3829) ) (!  (=> (not (= f_5@@51 Ref__Integer_value)) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@8) o_4@@74 f_5@@51) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@9) o_4@@74 f_5@@51)))
 :qid |stdinbpl.3944:31|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@8) o_4@@74 f_5@@51))
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@9) o_4@@74 f_5@@51))
))) (forall ((o_4@@75 T@Ref) (f_5@@52 T@Field_27059_108917) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@8) o_4@@75 f_5@@52) (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@9) o_4@@75 f_5@@52)))
 :qid |stdinbpl.3944:31|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@8) o_4@@75 f_5@@52))
 :pattern ( (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@9) o_4@@75 f_5@@52))
))) (forall ((o_4@@76 T@Ref) (f_5@@53 T@Field_27059_109050) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@8) o_4@@76 f_5@@53) (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@9) o_4@@76 f_5@@53)))
 :qid |stdinbpl.3944:31|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@8) o_4@@76 f_5@@53))
 :pattern ( (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@9) o_4@@76 f_5@@53))
))) (state ExhaleHeap@0 QPMask@9)) (and (=> (= (ControlFlow 0 63) 60) anon78_Then_correct) (=> (= (ControlFlow 0 63) 62) anon78_Else_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon49_correct true))
(let ((anon77_Else_correct  (=> (and (not (and (>= k_10_2 0) (and (< k_10_2 (|Seq#Length_27098| c)) (and (>= j_10_2 0) (and (< j_10_2 (|Seq#Length_27098| c)) (not (= k_10_2 j_10_2))))))) (= (ControlFlow 0 48) 45)) anon49_correct)))
(let ((anon77_Then_correct  (=> (and (>= k_10_2 0) (and (< k_10_2 (|Seq#Length_27098| c)) (and (>= j_10_2 0) (and (< j_10_2 (|Seq#Length_27098| c)) (not (= k_10_2 j_10_2)))))) (and (=> (= (ControlFlow 0 46) (- 0 47)) (not (= (|Seq#Index_27098| c k_10_2) (|Seq#Index_27098| c j_10_2)))) (=> (not (= (|Seq#Index_27098| c k_10_2) (|Seq#Index_27098| c j_10_2))) (=> (= (ControlFlow 0 46) 45) anon49_correct))))))
(let ((anon74_Else_correct  (=> (forall ((k_9_1 Int) (j_9_1_1 Int) ) (!  (=> (and (>= k_9_1 0) (and (< k_9_1 (|Seq#Length_27098| b_24)) (and (>= j_9_1_1 0) (and (< j_9_1_1 (|Seq#Length_27098| b_24)) (not (= k_9_1 j_9_1_1)))))) (not (= (|Seq#Index_27098| b_24 k_9_1) (|Seq#Index_27098| b_24 j_9_1_1))))
 :qid |stdinbpl.3648:22|
 :skolemid |268|
 :pattern ( (|Seq#Index_27098| b_24 k_9_1) (|Seq#Index_27098| b_24 j_9_1_1))
)) (and (and (=> (= (ControlFlow 0 78) 63) anon76_Else_correct) (=> (= (ControlFlow 0 78) 46) anon77_Then_correct)) (=> (= (ControlFlow 0 78) 48) anon77_Else_correct)))))
(let ((anon45_correct true))
(let ((anon75_Else_correct  (=> (and (not (and (>= k_8 0) (and (< k_8 (|Seq#Length_27098| b_24)) (and (>= j_8 0) (and (< j_8 (|Seq#Length_27098| b_24)) (not (= k_8 j_8))))))) (= (ControlFlow 0 44) 41)) anon45_correct)))
(let ((anon75_Then_correct  (=> (and (>= k_8 0) (and (< k_8 (|Seq#Length_27098| b_24)) (and (>= j_8 0) (and (< j_8 (|Seq#Length_27098| b_24)) (not (= k_8 j_8)))))) (and (=> (= (ControlFlow 0 42) (- 0 43)) (not (= (|Seq#Index_27098| b_24 k_8) (|Seq#Index_27098| b_24 j_8)))) (=> (not (= (|Seq#Index_27098| b_24 k_8) (|Seq#Index_27098| b_24 j_8))) (=> (= (ControlFlow 0 42) 41) anon45_correct))))))
(let ((anon72_Else_correct  (=> (forall ((k_7_1_1 Int) (j_7_1_1 Int) ) (!  (=> (and (>= k_7_1_1 0) (and (< k_7_1_1 (|Seq#Length_27098| a_2)) (and (>= j_7_1_1 0) (and (< j_7_1_1 (|Seq#Length_27098| a_2)) (not (= k_7_1_1 j_7_1_1)))))) (not (= (|Seq#Index_27098| a_2 k_7_1_1) (|Seq#Index_27098| a_2 j_7_1_1))))
 :qid |stdinbpl.3637:22|
 :skolemid |267|
 :pattern ( (|Seq#Index_27098| a_2 k_7_1_1) (|Seq#Index_27098| a_2 j_7_1_1))
)) (and (and (=> (= (ControlFlow 0 79) 78) anon74_Else_correct) (=> (= (ControlFlow 0 79) 42) anon75_Then_correct)) (=> (= (ControlFlow 0 79) 44) anon75_Else_correct)))))
(let ((anon41_correct true))
(let ((anon73_Else_correct  (=> (and (not (and (>= k_6 0) (and (< k_6 (|Seq#Length_27098| a_2)) (and (>= j_6_1 0) (and (< j_6_1 (|Seq#Length_27098| a_2)) (not (= k_6 j_6_1))))))) (= (ControlFlow 0 40) 37)) anon41_correct)))
(let ((anon73_Then_correct  (=> (and (>= k_6 0) (and (< k_6 (|Seq#Length_27098| a_2)) (and (>= j_6_1 0) (and (< j_6_1 (|Seq#Length_27098| a_2)) (not (= k_6 j_6_1)))))) (and (=> (= (ControlFlow 0 38) (- 0 39)) (not (= (|Seq#Index_27098| a_2 k_6) (|Seq#Index_27098| a_2 j_6_1)))) (=> (not (= (|Seq#Index_27098| a_2 k_6) (|Seq#Index_27098| a_2 j_6_1))) (=> (= (ControlFlow 0 38) 37) anon41_correct))))))
(let ((anon65_Else_correct  (and (=> (= (ControlFlow 0 80) (- 0 85)) (not (= diz null))) (=> (not (= diz null)) (and (=> (= (ControlFlow 0 80) (- 0 84)) (>= current_thread_id 0)) (=> (>= current_thread_id 0) (and (=> (= (ControlFlow 0 80) (- 0 83)) (<= N (|Seq#Length_27098| a_2))) (=> (<= N (|Seq#Length_27098| a_2)) (and (=> (= (ControlFlow 0 80) (- 0 82)) (<= N (|Seq#Length_27098| b_24))) (=> (<= N (|Seq#Length_27098| b_24)) (and (=> (= (ControlFlow 0 80) (- 0 81)) (<= N (|Seq#Length_27098| c))) (=> (<= N (|Seq#Length_27098| c)) (and (and (=> (= (ControlFlow 0 80) 79) anon72_Else_correct) (=> (= (ControlFlow 0 80) 38) anon73_Then_correct)) (=> (= (ControlFlow 0 80) 40) anon73_Else_correct))))))))))))))
(let ((anon63_Else_correct  (and (=> (= (ControlFlow 0 109) (- 0 111)) (forall ((i_5 Int) (i_5_1 Int) ) (!  (=> (and (and (and (and (not (= i_5 i_5_1)) (and (<= 0 i_5) (< i_5 N))) (and (<= 0 i_5_1) (< i_5_1 N))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27098| b_24 i_5) (|Seq#Index_27098| b_24 i_5_1))))
 :qid |stdinbpl.3409:15|
 :skolemid |241|
))) (=> (forall ((i_5@@0 Int) (i_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_5@@0 i_5_1@@0)) (and (<= 0 i_5@@0) (< i_5@@0 N))) (and (<= 0 i_5_1@@0) (< i_5_1@@0 N))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27098| b_24 i_5@@0) (|Seq#Index_27098| b_24 i_5_1@@0))))
 :qid |stdinbpl.3409:15|
 :skolemid |241|
)) (=> (and (forall ((i_5@@1 Int) ) (!  (=> (and (and (<= 0 i_5@@1) (< i_5@@1 N)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange22 (|Seq#Index_27098| b_24 i_5@@1)) (= (invRecv22 (|Seq#Index_27098| b_24 i_5@@1)) i_5@@1)))
 :qid |stdinbpl.3415:22|
 :skolemid |242|
 :pattern ( (|Seq#Index_27098| b_24 i_5@@1))
 :pattern ( (|Seq#Index_27098| b_24 i_5@@1))
)) (forall ((o_4@@77 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv22 o_4@@77)) (< (invRecv22 o_4@@77) N)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange22 o_4@@77)) (= (|Seq#Index_27098| b_24 (invRecv22 o_4@@77)) o_4@@77))
 :qid |stdinbpl.3419:22|
 :skolemid |243|
 :pattern ( (invRecv22 o_4@@77))
))) (and (=> (= (ControlFlow 0 109) (- 0 110)) (forall ((i_5@@2 Int) ) (!  (=> (and (<= 0 i_5@@2) (< i_5@@2 N)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3425:15|
 :skolemid |244|
 :pattern ( (|Seq#Index_27098| b_24 i_5@@2))
 :pattern ( (|Seq#Index_27098| b_24 i_5@@2))
))) (=> (forall ((i_5@@3 Int) ) (!  (=> (and (<= 0 i_5@@3) (< i_5@@3 N)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3425:15|
 :skolemid |244|
 :pattern ( (|Seq#Index_27098| b_24 i_5@@3))
 :pattern ( (|Seq#Index_27098| b_24 i_5@@3))
)) (=> (and (forall ((i_5@@4 Int) ) (!  (=> (and (and (<= 0 i_5@@4) (< i_5@@4 N)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_27098| b_24 i_5@@4) null)))
 :qid |stdinbpl.3431:22|
 :skolemid |245|
 :pattern ( (|Seq#Index_27098| b_24 i_5@@4))
 :pattern ( (|Seq#Index_27098| b_24 i_5@@4))
)) (forall ((o_4@@78 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv22 o_4@@78)) (< (invRecv22 o_4@@78) N)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange22 o_4@@78)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_27098| b_24 (invRecv22 o_4@@78)) o_4@@78)) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@2) o_4@@78 Ref__Integer_value) (+ (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@1) o_4@@78 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv22 o_4@@78)) (< (invRecv22 o_4@@78) N)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange22 o_4@@78))) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@2) o_4@@78 Ref__Integer_value) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@1) o_4@@78 Ref__Integer_value))))
 :qid |stdinbpl.3437:22|
 :skolemid |246|
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@2) o_4@@78 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@79 T@Ref) (f_5@@54 T@Field_38298_53) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@1) o_4@@79 f_5@@54) (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@2) o_4@@79 f_5@@54)))
 :qid |stdinbpl.3441:29|
 :skolemid |247|
 :pattern ( (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@1) o_4@@79 f_5@@54))
 :pattern ( (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@2) o_4@@79 f_5@@54))
)) (forall ((o_4@@80 T@Ref) (f_5@@55 T@Field_38311_38312) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@1) o_4@@80 f_5@@55) (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@2) o_4@@80 f_5@@55)))
 :qid |stdinbpl.3441:29|
 :skolemid |247|
 :pattern ( (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@1) o_4@@80 f_5@@55))
 :pattern ( (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@2) o_4@@80 f_5@@55))
))) (forall ((o_4@@81 T@Ref) (f_5@@56 T@Field_44386_3829) ) (!  (=> (not (= f_5@@56 Ref__Integer_value)) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@1) o_4@@81 f_5@@56) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@2) o_4@@81 f_5@@56)))
 :qid |stdinbpl.3441:29|
 :skolemid |247|
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@1) o_4@@81 f_5@@56))
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@2) o_4@@81 f_5@@56))
))) (forall ((o_4@@82 T@Ref) (f_5@@57 T@Field_27059_108917) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@1) o_4@@82 f_5@@57) (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@2) o_4@@82 f_5@@57)))
 :qid |stdinbpl.3441:29|
 :skolemid |247|
 :pattern ( (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@1) o_4@@82 f_5@@57))
 :pattern ( (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@2) o_4@@82 f_5@@57))
))) (forall ((o_4@@83 T@Ref) (f_5@@58 T@Field_27059_109050) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@1) o_4@@83 f_5@@58) (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@2) o_4@@83 f_5@@58)))
 :qid |stdinbpl.3441:29|
 :skolemid |247|
 :pattern ( (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@1) o_4@@83 f_5@@58))
 :pattern ( (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@2) o_4@@83 f_5@@58))
))) (and (state Heap@@41 QPMask@2) (state Heap@@41 QPMask@2))) (and (=> (= (ControlFlow 0 109) 108) anon65_Then_correct) (=> (= (ControlFlow 0 109) 80) anon65_Else_correct)))))))))))
(let ((anon23_correct true))
(let ((anon64_Else_correct  (=> (and (not (and (<= 0 i_36) (< i_36 N))) (= (ControlFlow 0 36) 32)) anon23_correct)))
(let ((anon64_Then_correct  (=> (and (<= 0 i_36) (< i_36 N)) (and (=> (= (ControlFlow 0 33) (- 0 35)) (>= i_36 0)) (=> (>= i_36 0) (and (=> (= (ControlFlow 0 33) (- 0 34)) (< i_36 (|Seq#Length_27098| b_24))) (=> (< i_36 (|Seq#Length_27098| b_24)) (=> (= (ControlFlow 0 33) 32) anon23_correct))))))))
(let ((anon61_Else_correct  (and (=> (= (ControlFlow 0 112) (- 0 113)) (forall ((i_3 Int) (i_3_1 Int) ) (!  (=> (and (and (and (and (not (= i_3 i_3_1)) (and (<= 0 i_3) (< i_3 N))) (and (<= 0 i_3_1) (< i_3_1 N))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27098| c i_3) (|Seq#Index_27098| c i_3_1))))
 :qid |stdinbpl.3361:15|
 :skolemid |235|
))) (=> (forall ((i_3@@0 Int) (i_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3@@0 i_3_1@@0)) (and (<= 0 i_3@@0) (< i_3@@0 N))) (and (<= 0 i_3_1@@0) (< i_3_1@@0 N))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27098| c i_3@@0) (|Seq#Index_27098| c i_3_1@@0))))
 :qid |stdinbpl.3361:15|
 :skolemid |235|
)) (=> (and (and (forall ((i_3@@1 Int) ) (!  (=> (and (and (<= 0 i_3@@1) (< i_3@@1 N)) (< NoPerm FullPerm)) (and (qpRange21 (|Seq#Index_27098| c i_3@@1)) (= (invRecv21 (|Seq#Index_27098| c i_3@@1)) i_3@@1)))
 :qid |stdinbpl.3367:22|
 :skolemid |236|
 :pattern ( (|Seq#Index_27098| c i_3@@1))
 :pattern ( (|Seq#Index_27098| c i_3@@1))
)) (forall ((o_4@@84 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv21 o_4@@84)) (< (invRecv21 o_4@@84) N)) (< NoPerm FullPerm)) (qpRange21 o_4@@84)) (= (|Seq#Index_27098| c (invRecv21 o_4@@84)) o_4@@84))
 :qid |stdinbpl.3371:22|
 :skolemid |237|
 :pattern ( (invRecv21 o_4@@84))
))) (and (forall ((i_3@@2 Int) ) (!  (=> (and (<= 0 i_3@@2) (< i_3@@2 N)) (not (= (|Seq#Index_27098| c i_3@@2) null)))
 :qid |stdinbpl.3377:22|
 :skolemid |238|
 :pattern ( (|Seq#Index_27098| c i_3@@2))
 :pattern ( (|Seq#Index_27098| c i_3@@2))
)) (forall ((o_4@@85 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv21 o_4@@85)) (< (invRecv21 o_4@@85) N)) (< NoPerm FullPerm)) (qpRange21 o_4@@85)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_27098| c (invRecv21 o_4@@85)) o_4@@85)) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@1) o_4@@85 Ref__Integer_value) (+ (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@0) o_4@@85 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv21 o_4@@85)) (< (invRecv21 o_4@@85) N)) (< NoPerm FullPerm)) (qpRange21 o_4@@85))) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@1) o_4@@85 Ref__Integer_value) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@0) o_4@@85 Ref__Integer_value))))
 :qid |stdinbpl.3383:22|
 :skolemid |239|
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@1) o_4@@85 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_4@@86 T@Ref) (f_5@@59 T@Field_38298_53) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@0) o_4@@86 f_5@@59) (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@1) o_4@@86 f_5@@59)))
 :qid |stdinbpl.3387:29|
 :skolemid |240|
 :pattern ( (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@0) o_4@@86 f_5@@59))
 :pattern ( (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@1) o_4@@86 f_5@@59))
)) (forall ((o_4@@87 T@Ref) (f_5@@60 T@Field_38311_38312) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@0) o_4@@87 f_5@@60) (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@1) o_4@@87 f_5@@60)))
 :qid |stdinbpl.3387:29|
 :skolemid |240|
 :pattern ( (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@0) o_4@@87 f_5@@60))
 :pattern ( (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@1) o_4@@87 f_5@@60))
))) (forall ((o_4@@88 T@Ref) (f_5@@61 T@Field_44386_3829) ) (!  (=> (not (= f_5@@61 Ref__Integer_value)) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@0) o_4@@88 f_5@@61) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@1) o_4@@88 f_5@@61)))
 :qid |stdinbpl.3387:29|
 :skolemid |240|
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@0) o_4@@88 f_5@@61))
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@1) o_4@@88 f_5@@61))
))) (forall ((o_4@@89 T@Ref) (f_5@@62 T@Field_27059_108917) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@0) o_4@@89 f_5@@62) (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@1) o_4@@89 f_5@@62)))
 :qid |stdinbpl.3387:29|
 :skolemid |240|
 :pattern ( (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@0) o_4@@89 f_5@@62))
 :pattern ( (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@1) o_4@@89 f_5@@62))
))) (forall ((o_4@@90 T@Ref) (f_5@@63 T@Field_27059_109050) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@0) o_4@@90 f_5@@63) (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@1) o_4@@90 f_5@@63)))
 :qid |stdinbpl.3387:29|
 :skolemid |240|
 :pattern ( (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@0) o_4@@90 f_5@@63))
 :pattern ( (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@1) o_4@@90 f_5@@63))
))) (and (and (state Heap@@41 QPMask@1) (state Heap@@41 QPMask@1)) (and (= (|Seq#Length_27098| b_24) N) (state Heap@@41 QPMask@1)))) (and (and (=> (= (ControlFlow 0 112) 109) anon63_Else_correct) (=> (= (ControlFlow 0 112) 33) anon64_Then_correct)) (=> (= (ControlFlow 0 112) 36) anon64_Else_correct))))))))
(let ((anon19_correct true))
(let ((anon62_Else_correct  (=> (and (not (and (<= 0 i_35) (< i_35 N))) (= (ControlFlow 0 31) 27)) anon19_correct)))
(let ((anon62_Then_correct  (=> (and (<= 0 i_35) (< i_35 N)) (and (=> (= (ControlFlow 0 28) (- 0 30)) (>= i_35 0)) (=> (>= i_35 0) (and (=> (= (ControlFlow 0 28) (- 0 29)) (< i_35 (|Seq#Length_27098| c))) (=> (< i_35 (|Seq#Length_27098| c)) (=> (= (ControlFlow 0 28) 27) anon19_correct))))))))
(let ((anon59_Else_correct  (and (=> (= (ControlFlow 0 114) (- 0 115)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (and (<= 0 i_1) (< i_1 N))) (and (<= 0 i_1_1) (< i_1_1 N))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27098| a_2 i_1) (|Seq#Index_27098| a_2 i_1_1))))
 :qid |stdinbpl.3313:15|
 :skolemid |229|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (and (<= 0 i_1@@0) (< i_1@@0 N))) (and (<= 0 i_1_1@@0) (< i_1_1@@0 N))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27098| a_2 i_1@@0) (|Seq#Index_27098| a_2 i_1_1@@0))))
 :qid |stdinbpl.3313:15|
 :skolemid |229|
)) (=> (and (and (forall ((i_1@@1 Int) ) (!  (=> (and (and (<= 0 i_1@@1) (< i_1@@1 N)) (< NoPerm FullPerm)) (and (qpRange20 (|Seq#Index_27098| a_2 i_1@@1)) (= (invRecv20 (|Seq#Index_27098| a_2 i_1@@1)) i_1@@1)))
 :qid |stdinbpl.3319:22|
 :skolemid |230|
 :pattern ( (|Seq#Index_27098| a_2 i_1@@1))
 :pattern ( (|Seq#Index_27098| a_2 i_1@@1))
)) (forall ((o_4@@91 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv20 o_4@@91)) (< (invRecv20 o_4@@91) N)) (< NoPerm FullPerm)) (qpRange20 o_4@@91)) (= (|Seq#Index_27098| a_2 (invRecv20 o_4@@91)) o_4@@91))
 :qid |stdinbpl.3323:22|
 :skolemid |231|
 :pattern ( (invRecv20 o_4@@91))
))) (and (forall ((i_1@@2 Int) ) (!  (=> (and (<= 0 i_1@@2) (< i_1@@2 N)) (not (= (|Seq#Index_27098| a_2 i_1@@2) null)))
 :qid |stdinbpl.3329:22|
 :skolemid |232|
 :pattern ( (|Seq#Index_27098| a_2 i_1@@2))
 :pattern ( (|Seq#Index_27098| a_2 i_1@@2))
)) (forall ((o_4@@92 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv20 o_4@@92)) (< (invRecv20 o_4@@92) N)) (< NoPerm FullPerm)) (qpRange20 o_4@@92)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_27098| a_2 (invRecv20 o_4@@92)) o_4@@92)) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@0) o_4@@92 Ref__Integer_value) (+ (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| ZeroMask) o_4@@92 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv20 o_4@@92)) (< (invRecv20 o_4@@92) N)) (< NoPerm FullPerm)) (qpRange20 o_4@@92))) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@0) o_4@@92 Ref__Integer_value) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| ZeroMask) o_4@@92 Ref__Integer_value))))
 :qid |stdinbpl.3335:22|
 :skolemid |233|
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@0) o_4@@92 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_4@@93 T@Ref) (f_5@@64 T@Field_38298_53) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| ZeroMask) o_4@@93 f_5@@64) (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@0) o_4@@93 f_5@@64)))
 :qid |stdinbpl.3339:29|
 :skolemid |234|
 :pattern ( (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| ZeroMask) o_4@@93 f_5@@64))
 :pattern ( (select (|PolymorphicMapType_38259_27059_53#PolymorphicMapType_38259| QPMask@0) o_4@@93 f_5@@64))
)) (forall ((o_4@@94 T@Ref) (f_5@@65 T@Field_38311_38312) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| ZeroMask) o_4@@94 f_5@@65) (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@0) o_4@@94 f_5@@65)))
 :qid |stdinbpl.3339:29|
 :skolemid |234|
 :pattern ( (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| ZeroMask) o_4@@94 f_5@@65))
 :pattern ( (select (|PolymorphicMapType_38259_27059_38312#PolymorphicMapType_38259| QPMask@0) o_4@@94 f_5@@65))
))) (forall ((o_4@@95 T@Ref) (f_5@@66 T@Field_44386_3829) ) (!  (=> (not (= f_5@@66 Ref__Integer_value)) (= (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| ZeroMask) o_4@@95 f_5@@66) (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@0) o_4@@95 f_5@@66)))
 :qid |stdinbpl.3339:29|
 :skolemid |234|
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| ZeroMask) o_4@@95 f_5@@66))
 :pattern ( (select (|PolymorphicMapType_38259_27059_3829#PolymorphicMapType_38259| QPMask@0) o_4@@95 f_5@@66))
))) (forall ((o_4@@96 T@Ref) (f_5@@67 T@Field_27059_108917) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| ZeroMask) o_4@@96 f_5@@67) (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@0) o_4@@96 f_5@@67)))
 :qid |stdinbpl.3339:29|
 :skolemid |234|
 :pattern ( (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| ZeroMask) o_4@@96 f_5@@67))
 :pattern ( (select (|PolymorphicMapType_38259_27059_108917#PolymorphicMapType_38259| QPMask@0) o_4@@96 f_5@@67))
))) (forall ((o_4@@97 T@Ref) (f_5@@68 T@Field_27059_109050) ) (!  (=> true (= (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| ZeroMask) o_4@@97 f_5@@68) (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@0) o_4@@97 f_5@@68)))
 :qid |stdinbpl.3339:29|
 :skolemid |234|
 :pattern ( (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| ZeroMask) o_4@@97 f_5@@68))
 :pattern ( (select (|PolymorphicMapType_38259_27059_113172#PolymorphicMapType_38259| QPMask@0) o_4@@97 f_5@@68))
))) (and (and (state Heap@@41 QPMask@0) (state Heap@@41 QPMask@0)) (and (= (|Seq#Length_27098| c) N) (state Heap@@41 QPMask@0)))) (and (and (=> (= (ControlFlow 0 114) 112) anon61_Else_correct) (=> (= (ControlFlow 0 114) 28) anon62_Then_correct)) (=> (= (ControlFlow 0 114) 31) anon62_Else_correct))))))))
(let ((anon15_correct true))
(let ((anon60_Else_correct  (=> (and (not (and (<= 0 i_34) (< i_34 N))) (= (ControlFlow 0 26) 22)) anon15_correct)))
(let ((anon60_Then_correct  (=> (and (<= 0 i_34) (< i_34 N)) (and (=> (= (ControlFlow 0 23) (- 0 25)) (>= i_34 0)) (=> (>= i_34 0) (and (=> (= (ControlFlow 0 23) (- 0 24)) (< i_34 (|Seq#Length_27098| a_2))) (=> (< i_34 (|Seq#Length_27098| a_2)) (=> (= (ControlFlow 0 23) 22) anon15_correct))))))))
(let ((anon57_Else_correct  (=> (and (and (forall ((k_5 Int) (j_5_1 Int) ) (!  (=> (and (>= k_5 0) (and (< k_5 (|Seq#Length_27098| c)) (and (>= j_5_1 0) (and (< j_5_1 (|Seq#Length_27098| c)) (not (= k_5 j_5_1)))))) (not (= (|Seq#Index_27098| c k_5) (|Seq#Index_27098| c j_5_1))))
 :qid |stdinbpl.3293:20|
 :skolemid |228|
 :pattern ( (|Seq#Index_27098| c k_5) (|Seq#Index_27098| c j_5_1))
)) (state Heap@@41 ZeroMask)) (and (= (|Seq#Length_27098| a_2) N) (state Heap@@41 ZeroMask))) (and (and (=> (= (ControlFlow 0 116) 114) anon59_Else_correct) (=> (= (ControlFlow 0 116) 23) anon60_Then_correct)) (=> (= (ControlFlow 0 116) 26) anon60_Else_correct)))))
(let ((anon11_correct true))
(let ((anon58_Else_correct  (=> (and (not (and (>= k_26 0) (and (< k_26 (|Seq#Length_27098| c)) (and (>= j_17 0) (and (< j_17 (|Seq#Length_27098| c)) (not (= k_26 j_17))))))) (= (ControlFlow 0 21) 15)) anon11_correct)))
(let ((anon58_Then_correct  (=> (and (>= k_26 0) (and (< k_26 (|Seq#Length_27098| c)) (and (>= j_17 0) (and (< j_17 (|Seq#Length_27098| c)) (not (= k_26 j_17)))))) (and (=> (= (ControlFlow 0 16) (- 0 20)) (>= k_26 0)) (=> (>= k_26 0) (and (=> (= (ControlFlow 0 16) (- 0 19)) (< k_26 (|Seq#Length_27098| c))) (=> (< k_26 (|Seq#Length_27098| c)) (and (=> (= (ControlFlow 0 16) (- 0 18)) (>= j_17 0)) (=> (>= j_17 0) (and (=> (= (ControlFlow 0 16) (- 0 17)) (< j_17 (|Seq#Length_27098| c))) (=> (< j_17 (|Seq#Length_27098| c)) (=> (= (ControlFlow 0 16) 15) anon11_correct))))))))))))
(let ((anon55_Else_correct  (=> (and (forall ((k_3 Int) (j_3_1 Int) ) (!  (=> (and (>= k_3 0) (and (< k_3 (|Seq#Length_27098| b_24)) (and (>= j_3_1 0) (and (< j_3_1 (|Seq#Length_27098| b_24)) (not (= k_3 j_3_1)))))) (not (= (|Seq#Index_27098| b_24 k_3) (|Seq#Index_27098| b_24 j_3_1))))
 :qid |stdinbpl.3273:20|
 :skolemid |227|
 :pattern ( (|Seq#Index_27098| b_24 k_3) (|Seq#Index_27098| b_24 j_3_1))
)) (state Heap@@41 ZeroMask)) (and (and (=> (= (ControlFlow 0 117) 116) anon57_Else_correct) (=> (= (ControlFlow 0 117) 16) anon58_Then_correct)) (=> (= (ControlFlow 0 117) 21) anon58_Else_correct)))))
(let ((anon7_correct true))
(let ((anon56_Else_correct  (=> (and (not (and (>= k_25 0) (and (< k_25 (|Seq#Length_27098| b_24)) (and (>= j_23 0) (and (< j_23 (|Seq#Length_27098| b_24)) (not (= k_25 j_23))))))) (= (ControlFlow 0 14) 8)) anon7_correct)))
(let ((anon56_Then_correct  (=> (and (>= k_25 0) (and (< k_25 (|Seq#Length_27098| b_24)) (and (>= j_23 0) (and (< j_23 (|Seq#Length_27098| b_24)) (not (= k_25 j_23)))))) (and (=> (= (ControlFlow 0 9) (- 0 13)) (>= k_25 0)) (=> (>= k_25 0) (and (=> (= (ControlFlow 0 9) (- 0 12)) (< k_25 (|Seq#Length_27098| b_24))) (=> (< k_25 (|Seq#Length_27098| b_24)) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= j_23 0)) (=> (>= j_23 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< j_23 (|Seq#Length_27098| b_24))) (=> (< j_23 (|Seq#Length_27098| b_24)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))))))
(let ((anon53_Else_correct  (=> (and (forall ((k_1_1 Int) (j_1 Int) ) (!  (=> (and (>= k_1_1 0) (and (< k_1_1 (|Seq#Length_27098| a_2)) (and (>= j_1 0) (and (< j_1 (|Seq#Length_27098| a_2)) (not (= k_1_1 j_1)))))) (not (= (|Seq#Index_27098| a_2 k_1_1) (|Seq#Index_27098| a_2 j_1))))
 :qid |stdinbpl.3253:20|
 :skolemid |226|
 :pattern ( (|Seq#Index_27098| a_2 k_1_1) (|Seq#Index_27098| a_2 j_1))
)) (state Heap@@41 ZeroMask)) (and (and (=> (= (ControlFlow 0 118) 117) anon55_Else_correct) (=> (= (ControlFlow 0 118) 9) anon56_Then_correct)) (=> (= (ControlFlow 0 118) 14) anon56_Else_correct)))))
(let ((anon3_correct true))
(let ((anon54_Else_correct  (=> (and (not (and (>= k_24 0) (and (< k_24 (|Seq#Length_27098| a_2)) (and (>= j_19 0) (and (< j_19 (|Seq#Length_27098| a_2)) (not (= k_24 j_19))))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon54_Then_correct  (=> (and (>= k_24 0) (and (< k_24 (|Seq#Length_27098| a_2)) (and (>= j_19 0) (and (< j_19 (|Seq#Length_27098| a_2)) (not (= k_24 j_19)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= k_24 0)) (=> (>= k_24 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< k_24 (|Seq#Length_27098| a_2))) (=> (< k_24 (|Seq#Length_27098| a_2)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_19 0)) (=> (>= j_19 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_19 (|Seq#Length_27098| a_2))) (=> (< j_19 (|Seq#Length_27098| a_2)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (and (and (state Heap@@41 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_38238_26801_53#PolymorphicMapType_38238| Heap@@41) diz $allocated))) (and (and (not (= diz null)) (state Heap@@41 ZeroMask)) (and (>= current_thread_id 0) (state Heap@@41 ZeroMask)))) (and (and (=> (= (ControlFlow 0 119) 118) anon53_Else_correct) (=> (= (ControlFlow 0 119) 2) anon54_Then_correct)) (=> (= (ControlFlow 0 119) 7) anon54_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 120) 119) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
