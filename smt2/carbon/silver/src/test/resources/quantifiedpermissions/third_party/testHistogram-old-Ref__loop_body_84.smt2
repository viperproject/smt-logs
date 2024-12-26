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
(declare-sort T@Field_35456_53 0)
(declare-sort T@Field_35469_35470 0)
(declare-sort T@Field_41542_3805 0)
(declare-sort T@Field_24826_99191 0)
(declare-sort T@Field_24826_99058 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_35417 0)) (((PolymorphicMapType_35417 (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| (Array T@Ref T@Field_41542_3805 Real)) (|PolymorphicMapType_35417_24826_53#PolymorphicMapType_35417| (Array T@Ref T@Field_35456_53 Real)) (|PolymorphicMapType_35417_24826_35470#PolymorphicMapType_35417| (Array T@Ref T@Field_35469_35470 Real)) (|PolymorphicMapType_35417_24826_99058#PolymorphicMapType_35417| (Array T@Ref T@Field_24826_99058 Real)) (|PolymorphicMapType_35417_24826_103313#PolymorphicMapType_35417| (Array T@Ref T@Field_24826_99191 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_35945 0)) (((PolymorphicMapType_35945 (|PolymorphicMapType_35945_35456_53#PolymorphicMapType_35945| (Array T@Ref T@Field_35456_53 Bool)) (|PolymorphicMapType_35945_35456_35470#PolymorphicMapType_35945| (Array T@Ref T@Field_35469_35470 Bool)) (|PolymorphicMapType_35945_35456_3805#PolymorphicMapType_35945| (Array T@Ref T@Field_41542_3805 Bool)) (|PolymorphicMapType_35945_35456_99058#PolymorphicMapType_35945| (Array T@Ref T@Field_24826_99058 Bool)) (|PolymorphicMapType_35945_35456_100369#PolymorphicMapType_35945| (Array T@Ref T@Field_24826_99191 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_35396 0)) (((PolymorphicMapType_35396 (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| (Array T@Ref T@Field_35456_53 Bool)) (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| (Array T@Ref T@Field_35469_35470 T@Ref)) (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| (Array T@Ref T@Field_41542_3805 Int)) (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| (Array T@Ref T@Field_24826_99191 T@PolymorphicMapType_35945)) (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| (Array T@Ref T@Field_24826_99058 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_35456_53)
(declare-fun Ref__Integer_value () T@Field_41542_3805)
(declare-sort T@Seq_42584 0)
(declare-fun |Seq#Length_24888| (T@Seq_42584) Int)
(declare-fun |Seq#Drop_24888| (T@Seq_42584 Int) T@Seq_42584)
(declare-sort T@Seq_3683 0)
(declare-fun |Seq#Length_3683| (T@Seq_3683) Int)
(declare-fun |Seq#Drop_3683| (T@Seq_3683 Int) T@Seq_3683)
(declare-fun state (T@PolymorphicMapType_35396 T@PolymorphicMapType_35417) Bool)
(declare-fun |count_square'| (T@PolymorphicMapType_35396 Int Int Int Int Int Int T@Seq_42584 Int) Int)
(declare-fun |count_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_42584 Int) Int)
(declare-fun FrameFragment_4608 (Int) T@FrameType)
(declare-fun |count_square#condqp3| (T@PolymorphicMapType_35396 Int Int Int Int Int Int T@Seq_42584 Int) Int)
(declare-fun succHeap (T@PolymorphicMapType_35396 T@PolymorphicMapType_35396) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_35396 T@PolymorphicMapType_35396) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_35417) Bool)
(declare-fun sum_square (T@PolymorphicMapType_35396 Int Int Int Int Int Int T@Seq_42584) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#Index_24865| (T@Seq_42584 Int) T@Ref)
(declare-fun |sum_square'| (T@PolymorphicMapType_35396 Int Int Int Int Int Int T@Seq_42584) Int)
(declare-fun |sum_list'| (T@PolymorphicMapType_35396 Int Int T@Seq_3683) Int)
(declare-fun dummyFunction_4112 (Int) Bool)
(declare-fun |sum_list#triggerStateless| (Int Int T@Seq_3683) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_35945)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3683| (T@Seq_3683 Int) Int)
(declare-fun |Seq#Empty_24888| () T@Seq_42584)
(declare-fun |Seq#Empty_3683| () T@Seq_3683)
(declare-fun |Seq#Update_24888| (T@Seq_42584 Int T@Ref) T@Seq_42584)
(declare-fun |Seq#Update_3683| (T@Seq_3683 Int Int) T@Seq_3683)
(declare-fun |Seq#Take_24888| (T@Seq_42584 Int) T@Seq_42584)
(declare-fun |Seq#Take_3683| (T@Seq_3683 Int) T@Seq_3683)
(declare-fun |Seq#Contains_3683| (T@Seq_3683 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3683)
(declare-fun |Seq#Contains_42584| (T@Seq_42584 T@Ref) Bool)
(declare-fun |Seq#Skolem_42584| (T@Seq_42584 T@Ref) Int)
(declare-fun |Seq#Skolem_3683| (T@Seq_3683 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_35396 T@PolymorphicMapType_35396 T@PolymorphicMapType_35417) Bool)
(declare-fun IsPredicateField_24826_99149 (T@Field_24826_99058) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_24826 (T@Field_24826_99058) T@Field_24826_99191)
(declare-fun HasDirectPerm_24826_99122 (T@PolymorphicMapType_35417 T@Ref T@Field_24826_99058) Bool)
(declare-fun IsWandField_24826_100896 (T@Field_24826_99058) Bool)
(declare-fun WandMaskField_24826 (T@Field_24826_99058) T@Field_24826_99191)
(declare-fun |Seq#Singleton_24888| (T@Ref) T@Seq_42584)
(declare-fun |Seq#Singleton_3683| (Int) T@Seq_3683)
(declare-fun count_square (T@PolymorphicMapType_35396 Int Int Int Int Int Int T@Seq_42584 Int) Int)
(declare-fun |count_square#triggerStateless| (Int Int Int Int Int Int T@Seq_42584 Int) Int)
(declare-fun |Seq#Append_42584| (T@Seq_42584 T@Seq_42584) T@Seq_42584)
(declare-fun |Seq#Append_3683| (T@Seq_3683 T@Seq_3683) T@Seq_3683)
(declare-fun |sum_square#condqp2| (T@PolymorphicMapType_35396 Int Int Int Int Int Int T@Seq_42584) Int)
(declare-fun |sk_sum_square#condqp2| (Int Int) Int)
(declare-fun |sk_count_square#condqp3| (Int Int) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_35396)
(declare-fun ZeroMask () T@PolymorphicMapType_35417)
(declare-fun InsidePredicate_35456_35456 (T@Field_24826_99058 T@FrameType T@Field_24826_99058 T@FrameType) Bool)
(declare-fun IsPredicateField_24826_3805 (T@Field_41542_3805) Bool)
(declare-fun IsWandField_24826_3805 (T@Field_41542_3805) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_24826_104442 (T@Field_24826_99191) Bool)
(declare-fun IsWandField_24826_104458 (T@Field_24826_99191) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_24826_35470 (T@Field_35469_35470) Bool)
(declare-fun IsWandField_24826_35470 (T@Field_35469_35470) Bool)
(declare-fun IsPredicateField_24826_53 (T@Field_35456_53) Bool)
(declare-fun IsWandField_24826_53 (T@Field_35456_53) Bool)
(declare-fun |sum_list#frame| (T@FrameType Int Int T@Seq_3683) Int)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun count_array (T@PolymorphicMapType_35396 Int Int T@Seq_42584 Int) Int)
(declare-fun |count_array'| (T@PolymorphicMapType_35396 Int Int T@Seq_42584 Int) Int)
(declare-fun HasDirectPerm_24826_104896 (T@PolymorphicMapType_35417 T@Ref T@Field_24826_99191) Bool)
(declare-fun HasDirectPerm_24826_35470 (T@PolymorphicMapType_35417 T@Ref T@Field_35469_35470) Bool)
(declare-fun HasDirectPerm_24826_53 (T@PolymorphicMapType_35417 T@Ref T@Field_35456_53) Bool)
(declare-fun HasDirectPerm_24826_3805 (T@PolymorphicMapType_35417 T@Ref T@Field_41542_3805) Bool)
(declare-fun |sum_array'| (T@PolymorphicMapType_35396 Int Int Int T@Seq_42584) Int)
(declare-fun |sum_array#triggerStateless| (Int Int Int T@Seq_42584) Int)
(declare-fun |count_list'| (T@PolymorphicMapType_35396 Int Int T@Seq_3683 Int) Int)
(declare-fun |count_list#triggerStateless| (Int Int T@Seq_3683 Int) Int)
(declare-fun |count_array#triggerStateless| (Int Int T@Seq_42584 Int) Int)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun count_list (T@PolymorphicMapType_35396 Int Int T@Seq_3683 Int) Int)
(declare-fun sum_array (T@PolymorphicMapType_35396 Int Int Int T@Seq_42584) Int)
(declare-fun sumMask (T@PolymorphicMapType_35417 T@PolymorphicMapType_35417 T@PolymorphicMapType_35417) Bool)
(declare-fun |sum_square#triggerStateless| (Int Int Int Int Int Int T@Seq_42584) Int)
(declare-fun |count_list#frame| (T@FrameType Int Int T@Seq_3683 Int) Int)
(declare-fun |count_array#condqp4| (T@PolymorphicMapType_35396 Int Int T@Seq_42584 Int) Int)
(declare-fun |sk_count_array#condqp4| (Int Int) Int)
(declare-fun |sum_array#condqp1| (T@PolymorphicMapType_35396 Int Int Int T@Seq_42584) Int)
(declare-fun |sk_sum_array#condqp1| (Int Int) Int)
(declare-fun |Seq#Equal_42584| (T@Seq_42584 T@Seq_42584) Bool)
(declare-fun |Seq#Equal_3683| (T@Seq_3683 T@Seq_3683) Bool)
(declare-fun sum_list (T@PolymorphicMapType_35396 Int Int T@Seq_3683) Int)
(declare-fun |Seq#ContainsTrigger_24888| (T@Seq_42584 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3683| (T@Seq_3683 Int) Bool)
(declare-fun |sum_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_42584) Int)
(declare-fun |Seq#SkolemDiff_42584| (T@Seq_42584 T@Seq_42584) Int)
(declare-fun |Seq#SkolemDiff_3683| (T@Seq_3683 T@Seq_3683) Int)
(declare-fun |sum_array#frame| (T@FrameType Int Int Int T@Seq_42584) Int)
(declare-fun |count_array#frame| (T@FrameType Int Int T@Seq_42584 Int) Int)
(assert (forall ((s T@Seq_42584) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_24888| s)) (= (|Seq#Length_24888| (|Seq#Drop_24888| s n)) (- (|Seq#Length_24888| s) n))) (=> (< (|Seq#Length_24888| s) n) (= (|Seq#Length_24888| (|Seq#Drop_24888| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_24888| (|Seq#Drop_24888| s n)) (|Seq#Length_24888| s))))
 :qid |stdinbpl.395:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_24888| (|Seq#Drop_24888| s n)))
 :pattern ( (|Seq#Length_24888| s) (|Seq#Drop_24888| s n))
)))
(assert (forall ((s@@0 T@Seq_3683) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3683| s@@0)) (= (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)) (- (|Seq#Length_3683| s@@0) n@@0))) (=> (< (|Seq#Length_3683| s@@0) n@@0) (= (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)) (|Seq#Length_3683| s@@0))))
 :qid |stdinbpl.395:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3683| s@@0) (|Seq#Drop_3683| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_35396) (Mask T@PolymorphicMapType_35417) (i Int) (lo Int) (hi Int) (step Int) (vmin Int) (vmax Int) (ar T@Seq_42584) (v_2 Int) ) (!  (=> (state Heap Mask) (= (|count_square'| Heap i lo hi step vmin vmax ar v_2) (|count_square#frame| (FrameFragment_4608 (|count_square#condqp3| Heap i lo hi step vmin vmax ar v_2)) i lo hi step vmin vmax ar v_2)))
 :qid |stdinbpl.1196:15|
 :skolemid |101|
 :pattern ( (state Heap Mask) (|count_square'| Heap i lo hi step vmin vmax ar v_2))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_35396) (Heap1 T@PolymorphicMapType_35396) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_35396) (Mask@@0 T@PolymorphicMapType_35417) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_35396) (Heap1@@0 T@PolymorphicMapType_35396) (Heap2 T@PolymorphicMapType_35396) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_35396) (Mask@@1 T@PolymorphicMapType_35417) (i@@0 Int) (lo@@0 Int) (hi@@0 Int) (step@@0 Int) (vmin@@0 Int) (vmax@@0 Int) (ar@@0 T@Seq_42584) ) (!  (=> (and (state Heap@@1 Mask@@1) (< AssumeFunctionsAbove 0)) (=> (and (and (<= 0 lo@@0) (and (<= lo@@0 hi@@0) (and (<= hi@@0 step@@0) (> step@@0 0)))) (and (<= 0 vmin@@0) (and (<= vmin@@0 i@@0) (<= i@@0 vmax@@0)))) (= (sum_square Heap@@1 i@@0 lo@@0 hi@@0 step@@0 vmin@@0 vmax@@0 ar@@0) (ite (< i@@0 vmax@@0) (+ (ite  (and (<= lo@@0 (mod i@@0 step@@0)) (< (mod i@@0 step@@0) hi@@0)) (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@1) (|Seq#Index_24865| ar@@0 i@@0) Ref__Integer_value) 0) (|sum_square'| Heap@@1 (+ i@@0 1) lo@@0 hi@@0 step@@0 vmin@@0 vmax@@0 ar@@0)) 0))))
 :qid |stdinbpl.965:15|
 :skolemid |82|
 :pattern ( (state Heap@@1 Mask@@1) (sum_square Heap@@1 i@@0 lo@@0 hi@@0 step@@0 vmin@@0 vmax@@0 ar@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_35396) (i@@1 Int) (hi@@1 Int) (ar@@1 T@Seq_3683) ) (! (dummyFunction_4112 (|sum_list#triggerStateless| i@@1 hi@@1 ar@@1))
 :qid |stdinbpl.681:15|
 :skolemid |59|
 :pattern ( (|sum_list'| Heap@@2 i@@1 hi@@1 ar@@1))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_24826_99191) ) (!  (not (select (|PolymorphicMapType_35945_35456_100369#PolymorphicMapType_35945| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35945_35456_100369#PolymorphicMapType_35945| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_24826_99058) ) (!  (not (select (|PolymorphicMapType_35945_35456_99058#PolymorphicMapType_35945| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35945_35456_99058#PolymorphicMapType_35945| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_41542_3805) ) (!  (not (select (|PolymorphicMapType_35945_35456_3805#PolymorphicMapType_35945| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35945_35456_3805#PolymorphicMapType_35945| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_35469_35470) ) (!  (not (select (|PolymorphicMapType_35945_35456_35470#PolymorphicMapType_35945| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35945_35456_35470#PolymorphicMapType_35945| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_35456_53) ) (!  (not (select (|PolymorphicMapType_35945_35456_53#PolymorphicMapType_35945| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35945_35456_53#PolymorphicMapType_35945| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_42584) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_24888| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_24865| (|Seq#Drop_24888| s@@1 n@@1) j) (|Seq#Index_24865| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.416:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_24865| (|Seq#Drop_24888| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3683) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3683| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3683| (|Seq#Drop_3683| s@@2 n@@2) j@@0) (|Seq#Index_3683| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.416:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3683| (|Seq#Drop_3683| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_24888| |Seq#Empty_24888|) 0))
(assert (= (|Seq#Length_3683| |Seq#Empty_3683|) 0))
(assert (forall ((s@@3 T@Seq_42584) (i@@2 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_24888| s@@3))) (and (=> (= i@@2 n@@3) (= (|Seq#Index_24865| (|Seq#Update_24888| s@@3 i@@2 v) n@@3) v)) (=> (not (= i@@2 n@@3)) (= (|Seq#Index_24865| (|Seq#Update_24888| s@@3 i@@2 v) n@@3) (|Seq#Index_24865| s@@3 n@@3)))))
 :qid |stdinbpl.371:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_24865| (|Seq#Update_24888| s@@3 i@@2 v) n@@3))
 :pattern ( (|Seq#Index_24865| s@@3 n@@3) (|Seq#Update_24888| s@@3 i@@2 v))
)))
(assert (forall ((s@@4 T@Seq_3683) (i@@3 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3683| s@@4))) (and (=> (= i@@3 n@@4) (= (|Seq#Index_3683| (|Seq#Update_3683| s@@4 i@@3 v@@0) n@@4) v@@0)) (=> (not (= i@@3 n@@4)) (= (|Seq#Index_3683| (|Seq#Update_3683| s@@4 i@@3 v@@0) n@@4) (|Seq#Index_3683| s@@4 n@@4)))))
 :qid |stdinbpl.371:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3683| (|Seq#Update_3683| s@@4 i@@3 v@@0) n@@4))
 :pattern ( (|Seq#Index_3683| s@@4 n@@4) (|Seq#Update_3683| s@@4 i@@3 v@@0))
)))
(assert (forall ((s@@5 T@Seq_42584) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_24888| s@@5)) (= (|Seq#Length_24888| (|Seq#Take_24888| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_24888| s@@5) n@@5) (= (|Seq#Length_24888| (|Seq#Take_24888| s@@5 n@@5)) (|Seq#Length_24888| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_24888| (|Seq#Take_24888| s@@5 n@@5)) 0)))
 :qid |stdinbpl.382:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_24888| (|Seq#Take_24888| s@@5 n@@5)))
 :pattern ( (|Seq#Take_24888| s@@5 n@@5) (|Seq#Length_24888| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3683) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3683| s@@6)) (= (|Seq#Length_3683| (|Seq#Take_3683| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3683| s@@6) n@@6) (= (|Seq#Length_3683| (|Seq#Take_3683| s@@6 n@@6)) (|Seq#Length_3683| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3683| (|Seq#Take_3683| s@@6 n@@6)) 0)))
 :qid |stdinbpl.382:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3683| (|Seq#Take_3683| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3683| s@@6 n@@6) (|Seq#Length_3683| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3683| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.656:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_42584) (x T@Ref) ) (!  (=> (|Seq#Contains_42584| s@@7 x) (and (and (<= 0 (|Seq#Skolem_42584| s@@7 x)) (< (|Seq#Skolem_42584| s@@7 x) (|Seq#Length_24888| s@@7))) (= (|Seq#Index_24865| s@@7 (|Seq#Skolem_42584| s@@7 x)) x)))
 :qid |stdinbpl.514:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_42584| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3683) (x@@0 Int) ) (!  (=> (|Seq#Contains_3683| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3683| s@@8 x@@0)) (< (|Seq#Skolem_3683| s@@8 x@@0) (|Seq#Length_3683| s@@8))) (= (|Seq#Index_3683| s@@8 (|Seq#Skolem_3683| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.514:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3683| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_42584) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_24888| s@@9 n@@7) s@@9))
 :qid |stdinbpl.498:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_24888| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3683) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3683| s@@10 n@@8) s@@10))
 :qid |stdinbpl.498:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3683| s@@10 n@@8))
)))
(assert (forall ((i@@4 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@4 j@@1) (- i@@4 j@@1))
 :qid |stdinbpl.351:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@4 j@@1))
)))
(assert (forall ((i@@5 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@5 j@@2) (+ i@@5 j@@2))
 :qid |stdinbpl.349:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@5 j@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_35396) (ExhaleHeap T@PolymorphicMapType_35396) (Mask@@2 T@PolymorphicMapType_35417) (pm_f_6 T@Field_24826_99058) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_24826_99122 Mask@@2 null pm_f_6) (IsPredicateField_24826_99149 pm_f_6)) (= (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@3) null (PredicateMaskField_24826 pm_f_6)) (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| ExhaleHeap) null (PredicateMaskField_24826 pm_f_6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (IsPredicateField_24826_99149 pm_f_6) (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| ExhaleHeap) null (PredicateMaskField_24826 pm_f_6)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_35396) (ExhaleHeap@@0 T@PolymorphicMapType_35396) (Mask@@3 T@PolymorphicMapType_35417) (pm_f_6@@0 T@Field_24826_99058) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_24826_99122 Mask@@3 null pm_f_6@@0) (IsWandField_24826_100896 pm_f_6@@0)) (= (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@4) null (WandMaskField_24826 pm_f_6@@0)) (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| ExhaleHeap@@0) null (WandMaskField_24826 pm_f_6@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (IsWandField_24826_100896 pm_f_6@@0) (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| ExhaleHeap@@0) null (WandMaskField_24826 pm_f_6@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_42584| (|Seq#Singleton_24888| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.639:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_42584| (|Seq#Singleton_24888| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3683| (|Seq#Singleton_3683| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.639:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3683| (|Seq#Singleton_3683| x@@2) y@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_35396) (i@@6 Int) (lo@@1 Int) (hi@@2 Int) (step@@1 Int) (vmin@@1 Int) (vmax@@1 Int) (ar@@2 T@Seq_42584) (v_2@@0 Int) ) (!  (and (= (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@1 vmin@@1 vmax@@1 ar@@2 v_2@@0) (|count_square'| Heap@@5 i@@6 lo@@1 hi@@2 step@@1 vmin@@1 vmax@@1 ar@@2 v_2@@0)) (dummyFunction_4112 (|count_square#triggerStateless| i@@6 lo@@1 hi@@2 step@@1 vmin@@1 vmax@@1 ar@@2 v_2@@0)))
 :qid |stdinbpl.1179:15|
 :skolemid |98|
 :pattern ( (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@1 vmin@@1 vmax@@1 ar@@2 v_2@@0))
)))
(assert (forall ((s@@11 T@Seq_42584) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_24888| s@@11))) (= (|Seq#Index_24865| (|Seq#Take_24888| s@@11 n@@9) j@@3) (|Seq#Index_24865| s@@11 j@@3)))
 :qid |stdinbpl.390:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_24865| (|Seq#Take_24888| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_24865| s@@11 j@@3) (|Seq#Take_24888| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3683) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3683| s@@12))) (= (|Seq#Index_3683| (|Seq#Take_3683| s@@12 n@@10) j@@4) (|Seq#Index_3683| s@@12 j@@4)))
 :qid |stdinbpl.390:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3683| (|Seq#Take_3683| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3683| s@@12 j@@4) (|Seq#Take_3683| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_42584) (t T@Seq_42584) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_24888| s@@13))) (< n@@11 (|Seq#Length_24888| (|Seq#Append_42584| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_24888| s@@13)) (|Seq#Length_24888| s@@13)) n@@11) (= (|Seq#Take_24888| (|Seq#Append_42584| s@@13 t) n@@11) (|Seq#Append_42584| s@@13 (|Seq#Take_24888| t (|Seq#Sub| n@@11 (|Seq#Length_24888| s@@13)))))))
 :qid |stdinbpl.475:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_24888| (|Seq#Append_42584| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3683) (t@@0 T@Seq_3683) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3683| s@@14))) (< n@@12 (|Seq#Length_3683| (|Seq#Append_3683| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3683| s@@14)) (|Seq#Length_3683| s@@14)) n@@12) (= (|Seq#Take_3683| (|Seq#Append_3683| s@@14 t@@0) n@@12) (|Seq#Append_3683| s@@14 (|Seq#Take_3683| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3683| s@@14)))))))
 :qid |stdinbpl.475:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3683| (|Seq#Append_3683| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_35396) (i@@7 Int) (lo@@2 Int) (hi@@3 Int) (step@@2 Int) (vmin@@2 Int) (vmax@@2 Int) (ar@@3 T@Seq_42584) (v_2@@1 Int) ) (! (dummyFunction_4112 (|count_square#triggerStateless| i@@7 lo@@2 hi@@3 step@@2 vmin@@2 vmax@@2 ar@@3 v_2@@1))
 :qid |stdinbpl.1183:15|
 :skolemid |99|
 :pattern ( (|count_square'| Heap@@6 i@@7 lo@@2 hi@@3 step@@2 vmin@@2 vmax@@2 ar@@3 v_2@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_35396) (Mask@@4 T@PolymorphicMapType_35417) (i@@8 Int) (lo@@3 Int) (hi@@4 Int) (step@@3 Int) (vmin@@3 Int) (vmax@@3 Int) (ar@@4 T@Seq_42584) (v_2@@2 Int) ) (!  (=> (and (state Heap@@7 Mask@@4) (< AssumeFunctionsAbove 1)) (=> (and (and (<= 0 lo@@3) (and (<= lo@@3 hi@@4) (and (<= hi@@4 step@@3) (> step@@3 0)))) (and (<= 0 vmin@@3) (and (<= vmin@@3 i@@8) (<= i@@8 vmax@@3)))) (= (count_square Heap@@7 i@@8 lo@@3 hi@@4 step@@3 vmin@@3 vmax@@3 ar@@4 v_2@@2) (ite (< i@@8 vmax@@3) (+ (ite  (and (<= lo@@3 (mod i@@8 step@@3)) (and (< (mod i@@8 step@@3) hi@@4) (= (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@7) (|Seq#Index_24865| ar@@4 i@@8) Ref__Integer_value) v_2@@2))) 1 0) (|count_square'| Heap@@7 (+ i@@8 1) lo@@3 hi@@4 step@@3 vmin@@3 vmax@@3 ar@@4 v_2@@2)) 0))))
 :qid |stdinbpl.1189:15|
 :skolemid |100|
 :pattern ( (state Heap@@7 Mask@@4) (count_square Heap@@7 i@@8 lo@@3 hi@@4 step@@3 vmin@@3 vmax@@3 ar@@4 v_2@@2))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_35396) (Heap1Heap T@PolymorphicMapType_35396) (i@@9 Int) (lo@@4 Int) (hi@@5 Int) (step@@4 Int) (vmin@@4 Int) (vmax@@4 Int) (ar@@5 T@Seq_42584) ) (!  (=> (and (=  (and (<= vmin@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5)) vmax@@4) (and (<= lo@@4 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5)) step@@4)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5)) step@@4) hi@@5))))  (and (<= vmin@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5)) vmax@@4) (and (<= lo@@4 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5)) step@@4)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5)) step@@4) hi@@5))))) (=> (and (<= vmin@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5)) vmax@@4) (and (<= lo@@4 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5)) step@@4)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5)) step@@4) hi@@5)))) (= (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap2Heap) (|Seq#Index_24865| ar@@5 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5))) Ref__Integer_value) (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap1Heap) (|Seq#Index_24865| ar@@5 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5))) Ref__Integer_value)))) (= (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5)))
 :qid |stdinbpl.982:15|
 :skolemid |84|
 :pattern ( (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_35396) (Heap1Heap@@0 T@PolymorphicMapType_35396) (i@@10 Int) (lo@@5 Int) (hi@@6 Int) (step@@5 Int) (vmin@@5 Int) (vmax@@5 Int) (ar@@6 T@Seq_42584) (v_2@@3 Int) ) (!  (=> (and (=  (and (<= vmin@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3)) vmax@@5) (and (<= lo@@5 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3)) step@@5)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3)) step@@5) hi@@6))))  (and (<= vmin@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3)) vmax@@5) (and (<= lo@@5 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3)) step@@5)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3)) step@@5) hi@@6))))) (=> (and (<= vmin@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3)) vmax@@5) (and (<= lo@@5 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3)) step@@5)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3)) step@@5) hi@@6)))) (= (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap2Heap@@0) (|Seq#Index_24865| ar@@6 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3))) Ref__Integer_value) (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap1Heap@@0) (|Seq#Index_24865| ar@@6 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3))) Ref__Integer_value)))) (= (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3)))
 :qid |stdinbpl.1206:15|
 :skolemid |102|
 :pattern ( (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_35396) (ExhaleHeap@@1 T@PolymorphicMapType_35396) (Mask@@5 T@PolymorphicMapType_35417) (o_14 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (=> (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@8) o_14 $allocated) (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| ExhaleHeap@@1) o_14 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| ExhaleHeap@@1) o_14 $allocated))
)))
(assert (forall ((p T@Field_24826_99058) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_35456_35456 p v_1 p w))
 :qid |stdinbpl.293:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_35456_35456 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_42584) (s1 T@Seq_42584) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_24888|)) (not (= s1 |Seq#Empty_24888|))) (<= (|Seq#Length_24888| s0) n@@13)) (< n@@13 (|Seq#Length_24888| (|Seq#Append_42584| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_24888| s0)) (|Seq#Length_24888| s0)) n@@13) (= (|Seq#Index_24865| (|Seq#Append_42584| s0 s1) n@@13) (|Seq#Index_24865| s1 (|Seq#Sub| n@@13 (|Seq#Length_24888| s0))))))
 :qid |stdinbpl.362:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_24865| (|Seq#Append_42584| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3683) (s1@@0 T@Seq_3683) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3683|)) (not (= s1@@0 |Seq#Empty_3683|))) (<= (|Seq#Length_3683| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3683| (|Seq#Append_3683| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3683| s0@@0)) (|Seq#Length_3683| s0@@0)) n@@14) (= (|Seq#Index_3683| (|Seq#Append_3683| s0@@0 s1@@0) n@@14) (|Seq#Index_3683| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3683| s0@@0))))))
 :qid |stdinbpl.362:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3683| (|Seq#Append_3683| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_24826_3805 Ref__Integer_value)))
(assert  (not (IsWandField_24826_3805 Ref__Integer_value)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_35396) (ExhaleHeap@@2 T@PolymorphicMapType_35396) (Mask@@6 T@PolymorphicMapType_35417) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6) (succHeap Heap@@9 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_35417) (o_2@@4 T@Ref) (f_4@@4 T@Field_24826_99191) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_35417_24826_103313#PolymorphicMapType_35417| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_24826_104442 f_4@@4))) (not (IsWandField_24826_104458 f_4@@4))) (<= (select (|PolymorphicMapType_35417_24826_103313#PolymorphicMapType_35417| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_35417_24826_103313#PolymorphicMapType_35417| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_35417) (o_2@@5 T@Ref) (f_4@@5 T@Field_24826_99058) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_35417_24826_99058#PolymorphicMapType_35417| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_24826_99149 f_4@@5))) (not (IsWandField_24826_100896 f_4@@5))) (<= (select (|PolymorphicMapType_35417_24826_99058#PolymorphicMapType_35417| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_35417_24826_99058#PolymorphicMapType_35417| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_35417) (o_2@@6 T@Ref) (f_4@@6 T@Field_35469_35470) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_35417_24826_35470#PolymorphicMapType_35417| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_24826_35470 f_4@@6))) (not (IsWandField_24826_35470 f_4@@6))) (<= (select (|PolymorphicMapType_35417_24826_35470#PolymorphicMapType_35417| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_35417_24826_35470#PolymorphicMapType_35417| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_35417) (o_2@@7 T@Ref) (f_4@@7 T@Field_35456_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_35417_24826_53#PolymorphicMapType_35417| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_24826_53 f_4@@7))) (not (IsWandField_24826_53 f_4@@7))) (<= (select (|PolymorphicMapType_35417_24826_53#PolymorphicMapType_35417| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_35417_24826_53#PolymorphicMapType_35417| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_35417) (o_2@@8 T@Ref) (f_4@@8 T@Field_41542_3805) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_24826_3805 f_4@@8))) (not (IsWandField_24826_3805 f_4@@8))) (<= (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_35396) (Mask@@12 T@PolymorphicMapType_35417) (i@@11 Int) (hi@@7 Int) (ar@@7 T@Seq_3683) ) (!  (=> (state Heap@@10 Mask@@12) (= (|sum_list'| Heap@@10 i@@11 hi@@7 ar@@7) (|sum_list#frame| EmptyFrame i@@11 hi@@7 ar@@7)))
 :qid |stdinbpl.694:15|
 :skolemid |61|
 :pattern ( (state Heap@@10 Mask@@12) (|sum_list'| Heap@@10 i@@11 hi@@7 ar@@7))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_35396) (Mask@@13 T@PolymorphicMapType_35417) (i@@12 Int) (hi@@8 Int) (ar@@8 T@Seq_42584) (v_2@@4 Int) ) (!  (=> (and (state Heap@@11 Mask@@13) (< AssumeFunctionsAbove 3)) (=> (and (<= 0 i@@12) (<= i@@12 hi@@8)) (= (count_array Heap@@11 i@@12 hi@@8 ar@@8 v_2@@4) (ite (< i@@12 hi@@8) (+ (ite (= (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@11) (|Seq#Index_24865| ar@@8 i@@12) Ref__Integer_value) v_2@@4) 1 0) (|count_array'| Heap@@11 (+ i@@12 1) hi@@8 ar@@8 v_2@@4)) 0))))
 :qid |stdinbpl.1498:15|
 :skolemid |122|
 :pattern ( (state Heap@@11 Mask@@13) (count_array Heap@@11 i@@12 hi@@8 ar@@8 v_2@@4))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_35417) (o_2@@9 T@Ref) (f_4@@9 T@Field_24826_99191) ) (! (= (HasDirectPerm_24826_104896 Mask@@14 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_35417_24826_103313#PolymorphicMapType_35417| Mask@@14) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24826_104896 Mask@@14 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_35417) (o_2@@10 T@Ref) (f_4@@10 T@Field_24826_99058) ) (! (= (HasDirectPerm_24826_99122 Mask@@15 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_35417_24826_99058#PolymorphicMapType_35417| Mask@@15) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24826_99122 Mask@@15 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_35417) (o_2@@11 T@Ref) (f_4@@11 T@Field_35469_35470) ) (! (= (HasDirectPerm_24826_35470 Mask@@16 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_35417_24826_35470#PolymorphicMapType_35417| Mask@@16) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24826_35470 Mask@@16 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_35417) (o_2@@12 T@Ref) (f_4@@12 T@Field_35456_53) ) (! (= (HasDirectPerm_24826_53 Mask@@17 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_35417_24826_53#PolymorphicMapType_35417| Mask@@17) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24826_53 Mask@@17 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_35417) (o_2@@13 T@Ref) (f_4@@13 T@Field_41542_3805) ) (! (= (HasDirectPerm_24826_3805 Mask@@18 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| Mask@@18) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24826_3805 Mask@@18 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_35396) (i@@13 Int) (lo@@6 Int) (hi@@9 Int) (ar@@9 T@Seq_42584) ) (! (dummyFunction_4112 (|sum_array#triggerStateless| i@@13 lo@@6 hi@@9 ar@@9))
 :qid |stdinbpl.766:15|
 :skolemid |63|
 :pattern ( (|sum_array'| Heap@@12 i@@13 lo@@6 hi@@9 ar@@9))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_35396) (i@@14 Int) (hi@@10 Int) (ar@@10 T@Seq_3683) (v_2@@5 Int) ) (! (dummyFunction_4112 (|count_list#triggerStateless| i@@14 hi@@10 ar@@10 v_2@@5))
 :qid |stdinbpl.1407:15|
 :skolemid |117|
 :pattern ( (|count_list'| Heap@@13 i@@14 hi@@10 ar@@10 v_2@@5))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_35396) (i@@15 Int) (hi@@11 Int) (ar@@11 T@Seq_42584) (v_2@@6 Int) ) (! (dummyFunction_4112 (|count_array#triggerStateless| i@@15 hi@@11 ar@@11 v_2@@6))
 :qid |stdinbpl.1492:15|
 :skolemid |121|
 :pattern ( (|count_array'| Heap@@14 i@@15 hi@@11 ar@@11 v_2@@6))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_35396) (ExhaleHeap@@3 T@PolymorphicMapType_35396) (Mask@@19 T@PolymorphicMapType_35417) (pm_f_6@@1 T@Field_24826_99058) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@3 Mask@@19) (=> (and (HasDirectPerm_24826_99122 Mask@@19 null pm_f_6@@1) (IsPredicateField_24826_99149 pm_f_6@@1)) (and (and (and (and (forall ((o2_6 T@Ref) (f_19 T@Field_35456_53) ) (!  (=> (select (|PolymorphicMapType_35945_35456_53#PolymorphicMapType_35945| (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@15) null (PredicateMaskField_24826 pm_f_6@@1))) o2_6 f_19) (= (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@15) o2_6 f_19) (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| ExhaleHeap@@3) o2_6 f_19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| ExhaleHeap@@3) o2_6 f_19))
)) (forall ((o2_6@@0 T@Ref) (f_19@@0 T@Field_35469_35470) ) (!  (=> (select (|PolymorphicMapType_35945_35456_35470#PolymorphicMapType_35945| (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@15) null (PredicateMaskField_24826 pm_f_6@@1))) o2_6@@0 f_19@@0) (= (select (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@15) o2_6@@0 f_19@@0) (select (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| ExhaleHeap@@3) o2_6@@0 f_19@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| ExhaleHeap@@3) o2_6@@0 f_19@@0))
))) (forall ((o2_6@@1 T@Ref) (f_19@@1 T@Field_41542_3805) ) (!  (=> (select (|PolymorphicMapType_35945_35456_3805#PolymorphicMapType_35945| (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@15) null (PredicateMaskField_24826 pm_f_6@@1))) o2_6@@1 f_19@@1) (= (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@15) o2_6@@1 f_19@@1) (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| ExhaleHeap@@3) o2_6@@1 f_19@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| ExhaleHeap@@3) o2_6@@1 f_19@@1))
))) (forall ((o2_6@@2 T@Ref) (f_19@@2 T@Field_24826_99058) ) (!  (=> (select (|PolymorphicMapType_35945_35456_99058#PolymorphicMapType_35945| (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@15) null (PredicateMaskField_24826 pm_f_6@@1))) o2_6@@2 f_19@@2) (= (select (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| Heap@@15) o2_6@@2 f_19@@2) (select (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| ExhaleHeap@@3) o2_6@@2 f_19@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| ExhaleHeap@@3) o2_6@@2 f_19@@2))
))) (forall ((o2_6@@3 T@Ref) (f_19@@3 T@Field_24826_99191) ) (!  (=> (select (|PolymorphicMapType_35945_35456_100369#PolymorphicMapType_35945| (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@15) null (PredicateMaskField_24826 pm_f_6@@1))) o2_6@@3 f_19@@3) (= (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@15) o2_6@@3 f_19@@3) (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| ExhaleHeap@@3) o2_6@@3 f_19@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| ExhaleHeap@@3) o2_6@@3 f_19@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@3 Mask@@19) (IsPredicateField_24826_99149 pm_f_6@@1))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_35396) (ExhaleHeap@@4 T@PolymorphicMapType_35396) (Mask@@20 T@PolymorphicMapType_35417) (pm_f_6@@2 T@Field_24826_99058) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@4 Mask@@20) (=> (and (HasDirectPerm_24826_99122 Mask@@20 null pm_f_6@@2) (IsWandField_24826_100896 pm_f_6@@2)) (and (and (and (and (forall ((o2_6@@4 T@Ref) (f_19@@4 T@Field_35456_53) ) (!  (=> (select (|PolymorphicMapType_35945_35456_53#PolymorphicMapType_35945| (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@16) null (WandMaskField_24826 pm_f_6@@2))) o2_6@@4 f_19@@4) (= (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@16) o2_6@@4 f_19@@4) (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| ExhaleHeap@@4) o2_6@@4 f_19@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| ExhaleHeap@@4) o2_6@@4 f_19@@4))
)) (forall ((o2_6@@5 T@Ref) (f_19@@5 T@Field_35469_35470) ) (!  (=> (select (|PolymorphicMapType_35945_35456_35470#PolymorphicMapType_35945| (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@16) null (WandMaskField_24826 pm_f_6@@2))) o2_6@@5 f_19@@5) (= (select (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@16) o2_6@@5 f_19@@5) (select (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| ExhaleHeap@@4) o2_6@@5 f_19@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| ExhaleHeap@@4) o2_6@@5 f_19@@5))
))) (forall ((o2_6@@6 T@Ref) (f_19@@6 T@Field_41542_3805) ) (!  (=> (select (|PolymorphicMapType_35945_35456_3805#PolymorphicMapType_35945| (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@16) null (WandMaskField_24826 pm_f_6@@2))) o2_6@@6 f_19@@6) (= (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@16) o2_6@@6 f_19@@6) (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| ExhaleHeap@@4) o2_6@@6 f_19@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| ExhaleHeap@@4) o2_6@@6 f_19@@6))
))) (forall ((o2_6@@7 T@Ref) (f_19@@7 T@Field_24826_99058) ) (!  (=> (select (|PolymorphicMapType_35945_35456_99058#PolymorphicMapType_35945| (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@16) null (WandMaskField_24826 pm_f_6@@2))) o2_6@@7 f_19@@7) (= (select (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| Heap@@16) o2_6@@7 f_19@@7) (select (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| ExhaleHeap@@4) o2_6@@7 f_19@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| ExhaleHeap@@4) o2_6@@7 f_19@@7))
))) (forall ((o2_6@@8 T@Ref) (f_19@@8 T@Field_24826_99191) ) (!  (=> (select (|PolymorphicMapType_35945_35456_100369#PolymorphicMapType_35945| (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@16) null (WandMaskField_24826 pm_f_6@@2))) o2_6@@8 f_19@@8) (= (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@16) o2_6@@8 f_19@@8) (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| ExhaleHeap@@4) o2_6@@8 f_19@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| ExhaleHeap@@4) o2_6@@8 f_19@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@4 Mask@@20) (IsWandField_24826_100896 pm_f_6@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.281:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3683| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.654:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3683| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_35396) (ExhaleHeap@@5 T@PolymorphicMapType_35396) (Mask@@21 T@PolymorphicMapType_35417) (o_14@@0 T@Ref) (f_19@@9 T@Field_24826_99191) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@5 Mask@@21) (=> (HasDirectPerm_24826_104896 Mask@@21 o_14@@0 f_19@@9) (= (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@17) o_14@@0 f_19@@9) (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| ExhaleHeap@@5) o_14@@0 f_19@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@5 Mask@@21) (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| ExhaleHeap@@5) o_14@@0 f_19@@9))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_35396) (ExhaleHeap@@6 T@PolymorphicMapType_35396) (Mask@@22 T@PolymorphicMapType_35417) (o_14@@1 T@Ref) (f_19@@10 T@Field_24826_99058) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@6 Mask@@22) (=> (HasDirectPerm_24826_99122 Mask@@22 o_14@@1 f_19@@10) (= (select (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| Heap@@18) o_14@@1 f_19@@10) (select (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| ExhaleHeap@@6) o_14@@1 f_19@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@6 Mask@@22) (select (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| ExhaleHeap@@6) o_14@@1 f_19@@10))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_35396) (ExhaleHeap@@7 T@PolymorphicMapType_35396) (Mask@@23 T@PolymorphicMapType_35417) (o_14@@2 T@Ref) (f_19@@11 T@Field_35469_35470) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@7 Mask@@23) (=> (HasDirectPerm_24826_35470 Mask@@23 o_14@@2 f_19@@11) (= (select (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@19) o_14@@2 f_19@@11) (select (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| ExhaleHeap@@7) o_14@@2 f_19@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@7 Mask@@23) (select (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| ExhaleHeap@@7) o_14@@2 f_19@@11))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_35396) (ExhaleHeap@@8 T@PolymorphicMapType_35396) (Mask@@24 T@PolymorphicMapType_35417) (o_14@@3 T@Ref) (f_19@@12 T@Field_35456_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@8 Mask@@24) (=> (HasDirectPerm_24826_53 Mask@@24 o_14@@3 f_19@@12) (= (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@20) o_14@@3 f_19@@12) (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| ExhaleHeap@@8) o_14@@3 f_19@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@8 Mask@@24) (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| ExhaleHeap@@8) o_14@@3 f_19@@12))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_35396) (ExhaleHeap@@9 T@PolymorphicMapType_35396) (Mask@@25 T@PolymorphicMapType_35417) (o_14@@4 T@Ref) (f_19@@13 T@Field_41542_3805) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@9 Mask@@25) (=> (HasDirectPerm_24826_3805 Mask@@25 o_14@@4 f_19@@13) (= (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@21) o_14@@4 f_19@@13) (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| ExhaleHeap@@9) o_14@@4 f_19@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@9 Mask@@25) (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| ExhaleHeap@@9) o_14@@4 f_19@@13))
)))
(assert (forall ((s0@@1 T@Seq_42584) (s1@@1 T@Seq_42584) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_24888|)) (not (= s1@@1 |Seq#Empty_24888|))) (= (|Seq#Length_24888| (|Seq#Append_42584| s0@@1 s1@@1)) (+ (|Seq#Length_24888| s0@@1) (|Seq#Length_24888| s1@@1))))
 :qid |stdinbpl.331:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_24888| (|Seq#Append_42584| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3683) (s1@@2 T@Seq_3683) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3683|)) (not (= s1@@2 |Seq#Empty_3683|))) (= (|Seq#Length_3683| (|Seq#Append_3683| s0@@2 s1@@2)) (+ (|Seq#Length_3683| s0@@2) (|Seq#Length_3683| s1@@2))))
 :qid |stdinbpl.331:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3683| (|Seq#Append_3683| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_24826_99191) ) (! (= (select (|PolymorphicMapType_35417_24826_103313#PolymorphicMapType_35417| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_35417_24826_103313#PolymorphicMapType_35417| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_24826_99058) ) (! (= (select (|PolymorphicMapType_35417_24826_99058#PolymorphicMapType_35417| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_35417_24826_99058#PolymorphicMapType_35417| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_35469_35470) ) (! (= (select (|PolymorphicMapType_35417_24826_35470#PolymorphicMapType_35417| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_35417_24826_35470#PolymorphicMapType_35417| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_35456_53) ) (! (= (select (|PolymorphicMapType_35417_24826_53#PolymorphicMapType_35417| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_35417_24826_53#PolymorphicMapType_35417| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_41542_3805) ) (! (= (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_35396) (Mask@@26 T@PolymorphicMapType_35417) (i@@16 Int) (hi@@12 Int) (ar@@12 T@Seq_3683) (v_2@@7 Int) ) (!  (=> (and (state Heap@@22 Mask@@26) (< AssumeFunctionsAbove 5)) (=> (and (and (<= 0 i@@16) (<= i@@16 hi@@12)) (<= hi@@12 (|Seq#Length_3683| ar@@12))) (= (count_list Heap@@22 i@@16 hi@@12 ar@@12 v_2@@7) (ite (< i@@16 hi@@12) (+ (ite (= (|Seq#Index_3683| ar@@12 i@@16) v_2@@7) 1 0) (|count_list'| Heap@@22 (+ i@@16 1) hi@@12 ar@@12 v_2@@7)) 0))))
 :qid |stdinbpl.1413:15|
 :skolemid |118|
 :pattern ( (state Heap@@22 Mask@@26) (count_list Heap@@22 i@@16 hi@@12 ar@@12 v_2@@7))
)))
(assert (forall ((s@@15 T@Seq_42584) (t@@1 T@Seq_42584) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_24888| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_24888| s@@15)) (|Seq#Length_24888| s@@15)) n@@15) (= (|Seq#Drop_24888| (|Seq#Append_42584| s@@15 t@@1) n@@15) (|Seq#Drop_24888| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_24888| s@@15))))))
 :qid |stdinbpl.488:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_24888| (|Seq#Append_42584| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3683) (t@@2 T@Seq_3683) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3683| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3683| s@@16)) (|Seq#Length_3683| s@@16)) n@@16) (= (|Seq#Drop_3683| (|Seq#Append_3683| s@@16 t@@2) n@@16) (|Seq#Drop_3683| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3683| s@@16))))))
 :qid |stdinbpl.488:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3683| (|Seq#Append_3683| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_35396) (i@@17 Int) (lo@@7 Int) (hi@@13 Int) (ar@@13 T@Seq_42584) ) (!  (and (= (sum_array Heap@@23 i@@17 lo@@7 hi@@13 ar@@13) (|sum_array'| Heap@@23 i@@17 lo@@7 hi@@13 ar@@13)) (dummyFunction_4112 (|sum_array#triggerStateless| i@@17 lo@@7 hi@@13 ar@@13)))
 :qid |stdinbpl.762:15|
 :skolemid |62|
 :pattern ( (sum_array Heap@@23 i@@17 lo@@7 hi@@13 ar@@13))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_35396) (i@@18 Int) (hi@@14 Int) (ar@@14 T@Seq_3683) (v_2@@8 Int) ) (!  (and (= (count_list Heap@@24 i@@18 hi@@14 ar@@14 v_2@@8) (|count_list'| Heap@@24 i@@18 hi@@14 ar@@14 v_2@@8)) (dummyFunction_4112 (|count_list#triggerStateless| i@@18 hi@@14 ar@@14 v_2@@8)))
 :qid |stdinbpl.1403:15|
 :skolemid |116|
 :pattern ( (count_list Heap@@24 i@@18 hi@@14 ar@@14 v_2@@8))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_35396) (i@@19 Int) (hi@@15 Int) (ar@@15 T@Seq_42584) (v_2@@9 Int) ) (!  (and (= (count_array Heap@@25 i@@19 hi@@15 ar@@15 v_2@@9) (|count_array'| Heap@@25 i@@19 hi@@15 ar@@15 v_2@@9)) (dummyFunction_4112 (|count_array#triggerStateless| i@@19 hi@@15 ar@@15 v_2@@9)))
 :qid |stdinbpl.1488:15|
 :skolemid |120|
 :pattern ( (count_array Heap@@25 i@@19 hi@@15 ar@@15 v_2@@9))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_35417) (SummandMask1 T@PolymorphicMapType_35417) (SummandMask2 T@PolymorphicMapType_35417) (o_2@@19 T@Ref) (f_4@@19 T@Field_24826_99191) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_35417_24826_103313#PolymorphicMapType_35417| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_35417_24826_103313#PolymorphicMapType_35417| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_35417_24826_103313#PolymorphicMapType_35417| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_35417_24826_103313#PolymorphicMapType_35417| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_35417_24826_103313#PolymorphicMapType_35417| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_35417_24826_103313#PolymorphicMapType_35417| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_35417) (SummandMask1@@0 T@PolymorphicMapType_35417) (SummandMask2@@0 T@PolymorphicMapType_35417) (o_2@@20 T@Ref) (f_4@@20 T@Field_24826_99058) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_35417_24826_99058#PolymorphicMapType_35417| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_35417_24826_99058#PolymorphicMapType_35417| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_35417_24826_99058#PolymorphicMapType_35417| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_35417_24826_99058#PolymorphicMapType_35417| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_35417_24826_99058#PolymorphicMapType_35417| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_35417_24826_99058#PolymorphicMapType_35417| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_35417) (SummandMask1@@1 T@PolymorphicMapType_35417) (SummandMask2@@1 T@PolymorphicMapType_35417) (o_2@@21 T@Ref) (f_4@@21 T@Field_35469_35470) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_35417_24826_35470#PolymorphicMapType_35417| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_35417_24826_35470#PolymorphicMapType_35417| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_35417_24826_35470#PolymorphicMapType_35417| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_35417_24826_35470#PolymorphicMapType_35417| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_35417_24826_35470#PolymorphicMapType_35417| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_35417_24826_35470#PolymorphicMapType_35417| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_35417) (SummandMask1@@2 T@PolymorphicMapType_35417) (SummandMask2@@2 T@PolymorphicMapType_35417) (o_2@@22 T@Ref) (f_4@@22 T@Field_35456_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_35417_24826_53#PolymorphicMapType_35417| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_35417_24826_53#PolymorphicMapType_35417| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_35417_24826_53#PolymorphicMapType_35417| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_35417_24826_53#PolymorphicMapType_35417| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_35417_24826_53#PolymorphicMapType_35417| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_35417_24826_53#PolymorphicMapType_35417| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_35417) (SummandMask1@@3 T@PolymorphicMapType_35417) (SummandMask2@@3 T@PolymorphicMapType_35417) (o_2@@23 T@Ref) (f_4@@23 T@Field_41542_3805) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_35396) (i@@20 Int) (lo@@8 Int) (hi@@16 Int) (step@@6 Int) (vmin@@6 Int) (vmax@@6 Int) (ar@@16 T@Seq_42584) ) (!  (and (= (sum_square Heap@@26 i@@20 lo@@8 hi@@16 step@@6 vmin@@6 vmax@@6 ar@@16) (|sum_square'| Heap@@26 i@@20 lo@@8 hi@@16 step@@6 vmin@@6 vmax@@6 ar@@16)) (dummyFunction_4112 (|sum_square#triggerStateless| i@@20 lo@@8 hi@@16 step@@6 vmin@@6 vmax@@6 ar@@16)))
 :qid |stdinbpl.955:15|
 :skolemid |80|
 :pattern ( (sum_square Heap@@26 i@@20 lo@@8 hi@@16 step@@6 vmin@@6 vmax@@6 ar@@16))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_35396) (Mask@@27 T@PolymorphicMapType_35417) (i@@21 Int) (hi@@17 Int) (ar@@17 T@Seq_3683) (v_2@@10 Int) ) (!  (=> (state Heap@@27 Mask@@27) (= (|count_list'| Heap@@27 i@@21 hi@@17 ar@@17 v_2@@10) (|count_list#frame| EmptyFrame i@@21 hi@@17 ar@@17 v_2@@10)))
 :qid |stdinbpl.1420:15|
 :skolemid |119|
 :pattern ( (state Heap@@27 Mask@@27) (|count_list'| Heap@@27 i@@21 hi@@17 ar@@17 v_2@@10))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_35396) (Heap1Heap@@1 T@PolymorphicMapType_35396) (i@@22 Int) (hi@@18 Int) (ar@@18 T@Seq_42584) (v_2@@11 Int) ) (!  (=> (and (= (|Seq#Contains_3683| (|Seq#Range| 0 hi@@18) (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@22 hi@@18 ar@@18 v_2@@11) (|count_array#condqp4| Heap1Heap@@1 i@@22 hi@@18 ar@@18 v_2@@11))) (|Seq#Contains_3683| (|Seq#Range| 0 hi@@18) (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@22 hi@@18 ar@@18 v_2@@11) (|count_array#condqp4| Heap1Heap@@1 i@@22 hi@@18 ar@@18 v_2@@11)))) (=> (|Seq#Contains_3683| (|Seq#Range| 0 hi@@18) (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@22 hi@@18 ar@@18 v_2@@11) (|count_array#condqp4| Heap1Heap@@1 i@@22 hi@@18 ar@@18 v_2@@11))) (= (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap2Heap@@1) (|Seq#Index_24865| ar@@18 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@22 hi@@18 ar@@18 v_2@@11) (|count_array#condqp4| Heap1Heap@@1 i@@22 hi@@18 ar@@18 v_2@@11))) Ref__Integer_value) (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap1Heap@@1) (|Seq#Index_24865| ar@@18 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@22 hi@@18 ar@@18 v_2@@11) (|count_array#condqp4| Heap1Heap@@1 i@@22 hi@@18 ar@@18 v_2@@11))) Ref__Integer_value)))) (= (|count_array#condqp4| Heap2Heap@@1 i@@22 hi@@18 ar@@18 v_2@@11) (|count_array#condqp4| Heap1Heap@@1 i@@22 hi@@18 ar@@18 v_2@@11)))
 :qid |stdinbpl.1515:15|
 :skolemid |124|
 :pattern ( (|count_array#condqp4| Heap2Heap@@1 i@@22 hi@@18 ar@@18 v_2@@11) (|count_array#condqp4| Heap1Heap@@1 i@@22 hi@@18 ar@@18 v_2@@11) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.653:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_35396) (Heap1Heap@@2 T@PolymorphicMapType_35396) (i@@23 Int) (lo@@9 Int) (hi@@19 Int) (ar@@19 T@Seq_42584) ) (!  (=> (and (= (|Seq#Contains_3683| (|Seq#Range| lo@@9 hi@@19) (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@23 lo@@9 hi@@19 ar@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@23 lo@@9 hi@@19 ar@@19))) (|Seq#Contains_3683| (|Seq#Range| lo@@9 hi@@19) (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@23 lo@@9 hi@@19 ar@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@23 lo@@9 hi@@19 ar@@19)))) (=> (|Seq#Contains_3683| (|Seq#Range| lo@@9 hi@@19) (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@23 lo@@9 hi@@19 ar@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@23 lo@@9 hi@@19 ar@@19))) (= (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap2Heap@@2) (|Seq#Index_24865| ar@@19 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@23 lo@@9 hi@@19 ar@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@23 lo@@9 hi@@19 ar@@19))) Ref__Integer_value) (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap1Heap@@2) (|Seq#Index_24865| ar@@19 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@23 lo@@9 hi@@19 ar@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@23 lo@@9 hi@@19 ar@@19))) Ref__Integer_value)))) (= (|sum_array#condqp1| Heap2Heap@@2 i@@23 lo@@9 hi@@19 ar@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@23 lo@@9 hi@@19 ar@@19)))
 :qid |stdinbpl.789:15|
 :skolemid |66|
 :pattern ( (|sum_array#condqp1| Heap2Heap@@2 i@@23 lo@@9 hi@@19 ar@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@23 lo@@9 hi@@19 ar@@19) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((a T@Seq_42584) (b T@Seq_42584) ) (!  (=> (|Seq#Equal_42584| a b) (= a b))
 :qid |stdinbpl.626:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_42584| a b))
)))
(assert (forall ((a@@0 T@Seq_3683) (b@@0 T@Seq_3683) ) (!  (=> (|Seq#Equal_3683| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.626:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3683| a@@0 b@@0))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_35396) (i@@24 Int) (hi@@20 Int) (ar@@20 T@Seq_3683) ) (!  (and (= (sum_list Heap@@28 i@@24 hi@@20 ar@@20) (|sum_list'| Heap@@28 i@@24 hi@@20 ar@@20)) (dummyFunction_4112 (|sum_list#triggerStateless| i@@24 hi@@20 ar@@20)))
 :qid |stdinbpl.677:15|
 :skolemid |58|
 :pattern ( (sum_list Heap@@28 i@@24 hi@@20 ar@@20))
)))
(assert (forall ((s@@17 T@Seq_42584) (i@@25 Int) ) (!  (=> (and (<= 0 i@@25) (< i@@25 (|Seq#Length_24888| s@@17))) (|Seq#ContainsTrigger_24888| s@@17 (|Seq#Index_24865| s@@17 i@@25)))
 :qid |stdinbpl.519:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_24865| s@@17 i@@25))
)))
(assert (forall ((s@@18 T@Seq_3683) (i@@26 Int) ) (!  (=> (and (<= 0 i@@26) (< i@@26 (|Seq#Length_3683| s@@18))) (|Seq#ContainsTrigger_3683| s@@18 (|Seq#Index_3683| s@@18 i@@26)))
 :qid |stdinbpl.519:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3683| s@@18 i@@26))
)))
(assert (forall ((s0@@3 T@Seq_42584) (s1@@3 T@Seq_42584) ) (!  (and (=> (= s0@@3 |Seq#Empty_24888|) (= (|Seq#Append_42584| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_24888|) (= (|Seq#Append_42584| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.337:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_42584| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3683) (s1@@4 T@Seq_3683) ) (!  (and (=> (= s0@@4 |Seq#Empty_3683|) (= (|Seq#Append_3683| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3683|) (= (|Seq#Append_3683| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.337:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3683| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_24865| (|Seq#Singleton_24888| t@@3) 0) t@@3)
 :qid |stdinbpl.341:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_24888| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3683| (|Seq#Singleton_3683| t@@4) 0) t@@4)
 :qid |stdinbpl.341:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3683| t@@4))
)))
(assert (forall ((s@@19 T@Seq_42584) ) (! (<= 0 (|Seq#Length_24888| s@@19))
 :qid |stdinbpl.320:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_24888| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3683) ) (! (<= 0 (|Seq#Length_3683| s@@20))
 :qid |stdinbpl.320:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3683| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_42584) (s1@@5 T@Seq_42584) ) (!  (=> (|Seq#Equal_42584| s0@@5 s1@@5) (and (= (|Seq#Length_24888| s0@@5) (|Seq#Length_24888| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_24888| s0@@5))) (= (|Seq#Index_24865| s0@@5 j@@6) (|Seq#Index_24865| s1@@5 j@@6)))
 :qid |stdinbpl.616:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_24865| s0@@5 j@@6))
 :pattern ( (|Seq#Index_24865| s1@@5 j@@6))
))))
 :qid |stdinbpl.613:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_42584| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3683) (s1@@6 T@Seq_3683) ) (!  (=> (|Seq#Equal_3683| s0@@6 s1@@6) (and (= (|Seq#Length_3683| s0@@6) (|Seq#Length_3683| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3683| s0@@6))) (= (|Seq#Index_3683| s0@@6 j@@7) (|Seq#Index_3683| s1@@6 j@@7)))
 :qid |stdinbpl.616:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3683| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3683| s1@@6 j@@7))
))))
 :qid |stdinbpl.613:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3683| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_24888| (|Seq#Singleton_24888| t@@5)) 1)
 :qid |stdinbpl.328:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_24888| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3683| (|Seq#Singleton_3683| t@@6)) 1)
 :qid |stdinbpl.328:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3683| t@@6))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_35396) (Mask@@28 T@PolymorphicMapType_35417) (i@@27 Int) (hi@@21 Int) (ar@@21 T@Seq_3683) ) (!  (=> (and (state Heap@@29 Mask@@28) (< AssumeFunctionsAbove 4)) (=> (and (and (<= 0 i@@27) (<= i@@27 hi@@21)) (<= hi@@21 (|Seq#Length_3683| ar@@21))) (= (sum_list Heap@@29 i@@27 hi@@21 ar@@21) (ite (< i@@27 hi@@21) (+ (|Seq#Index_3683| ar@@21 i@@27) (|sum_list'| Heap@@29 (+ i@@27 1) hi@@21 ar@@21)) 0))))
 :qid |stdinbpl.687:15|
 :skolemid |60|
 :pattern ( (state Heap@@29 Mask@@28) (sum_list Heap@@29 i@@27 hi@@21 ar@@21))
)))
(assert (forall ((s@@21 T@Seq_42584) (t@@7 T@Seq_42584) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_24888| s@@21))) (= (|Seq#Take_24888| (|Seq#Append_42584| s@@21 t@@7) n@@17) (|Seq#Take_24888| s@@21 n@@17)))
 :qid |stdinbpl.470:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_24888| (|Seq#Append_42584| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3683) (t@@8 T@Seq_3683) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3683| s@@22))) (= (|Seq#Take_3683| (|Seq#Append_3683| s@@22 t@@8) n@@18) (|Seq#Take_3683| s@@22 n@@18)))
 :qid |stdinbpl.470:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3683| (|Seq#Append_3683| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_42584) (i@@28 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@28) (< i@@28 (|Seq#Length_24888| s@@23))) (= (|Seq#Length_24888| (|Seq#Update_24888| s@@23 i@@28 v@@2)) (|Seq#Length_24888| s@@23)))
 :qid |stdinbpl.369:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_24888| (|Seq#Update_24888| s@@23 i@@28 v@@2)))
 :pattern ( (|Seq#Length_24888| s@@23) (|Seq#Update_24888| s@@23 i@@28 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3683) (i@@29 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@29) (< i@@29 (|Seq#Length_3683| s@@24))) (= (|Seq#Length_3683| (|Seq#Update_3683| s@@24 i@@29 v@@3)) (|Seq#Length_3683| s@@24)))
 :qid |stdinbpl.369:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3683| (|Seq#Update_3683| s@@24 i@@29 v@@3)))
 :pattern ( (|Seq#Length_3683| s@@24) (|Seq#Update_3683| s@@24 i@@29 v@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_35396) (o_13 T@Ref) (f_13 T@Field_24826_99058) (v@@4 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_35396 (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@30) (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@30) (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@30) (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@30) (store (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| Heap@@30) o_13 f_13 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_35396 (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@30) (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@30) (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@30) (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@30) (store (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| Heap@@30) o_13 f_13 v@@4)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_35396) (o_13@@0 T@Ref) (f_13@@0 T@Field_24826_99191) (v@@5 T@PolymorphicMapType_35945) ) (! (succHeap Heap@@31 (PolymorphicMapType_35396 (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@31) (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@31) (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@31) (store (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@31) o_13@@0 f_13@@0 v@@5) (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_35396 (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@31) (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@31) (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@31) (store (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@31) o_13@@0 f_13@@0 v@@5) (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_35396) (o_13@@1 T@Ref) (f_13@@1 T@Field_41542_3805) (v@@6 Int) ) (! (succHeap Heap@@32 (PolymorphicMapType_35396 (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@32) (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@32) (store (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@32) o_13@@1 f_13@@1 v@@6) (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@32) (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_35396 (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@32) (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@32) (store (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@32) o_13@@1 f_13@@1 v@@6) (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@32) (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_35396) (o_13@@2 T@Ref) (f_13@@2 T@Field_35469_35470) (v@@7 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_35396 (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@33) (store (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@33) o_13@@2 f_13@@2 v@@7) (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@33) (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@33) (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_35396 (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@33) (store (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@33) o_13@@2 f_13@@2 v@@7) (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@33) (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@33) (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_35396) (o_13@@3 T@Ref) (f_13@@3 T@Field_35456_53) (v@@8 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_35396 (store (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@34) o_13@@3 f_13@@3 v@@8) (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@34) (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@34) (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@34) (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_35396 (store (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@34) o_13@@3 f_13@@3 v@@8) (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@34) (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@34) (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@34) (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| Heap@@34)))
)))
(assert (forall ((s@@25 T@Seq_42584) (t@@9 T@Seq_42584) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_24888| s@@25))) (= (|Seq#Drop_24888| (|Seq#Append_42584| s@@25 t@@9) n@@19) (|Seq#Append_42584| (|Seq#Drop_24888| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.484:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_24888| (|Seq#Append_42584| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3683) (t@@10 T@Seq_3683) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3683| s@@26))) (= (|Seq#Drop_3683| (|Seq#Append_3683| s@@26 t@@10) n@@20) (|Seq#Append_3683| (|Seq#Drop_3683| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.484:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3683| (|Seq#Append_3683| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_42584) (n@@21 Int) (i@@30 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@30)) (< i@@30 (|Seq#Length_24888| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@30 n@@21) n@@21) i@@30) (= (|Seq#Index_24865| (|Seq#Drop_24888| s@@27 n@@21) (|Seq#Sub| i@@30 n@@21)) (|Seq#Index_24865| s@@27 i@@30))))
 :qid |stdinbpl.420:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_24888| s@@27 n@@21) (|Seq#Index_24865| s@@27 i@@30))
)))
(assert (forall ((s@@28 T@Seq_3683) (n@@22 Int) (i@@31 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@31)) (< i@@31 (|Seq#Length_3683| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@31 n@@22) n@@22) i@@31) (= (|Seq#Index_3683| (|Seq#Drop_3683| s@@28 n@@22) (|Seq#Sub| i@@31 n@@22)) (|Seq#Index_3683| s@@28 i@@31))))
 :qid |stdinbpl.420:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3683| s@@28 n@@22) (|Seq#Index_3683| s@@28 i@@31))
)))
(assert (forall ((s0@@7 T@Seq_42584) (s1@@7 T@Seq_42584) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_24888|)) (not (= s1@@7 |Seq#Empty_24888|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_24888| s0@@7))) (= (|Seq#Index_24865| (|Seq#Append_42584| s0@@7 s1@@7) n@@23) (|Seq#Index_24865| s0@@7 n@@23)))
 :qid |stdinbpl.360:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_24865| (|Seq#Append_42584| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_24865| s0@@7 n@@23) (|Seq#Append_42584| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3683) (s1@@8 T@Seq_3683) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3683|)) (not (= s1@@8 |Seq#Empty_3683|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3683| s0@@8))) (= (|Seq#Index_3683| (|Seq#Append_3683| s0@@8 s1@@8) n@@24) (|Seq#Index_3683| s0@@8 n@@24)))
 :qid |stdinbpl.360:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3683| (|Seq#Append_3683| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3683| s0@@8 n@@24) (|Seq#Append_3683| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_42584) (s1@@9 T@Seq_42584) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_24888|)) (not (= s1@@9 |Seq#Empty_24888|))) (<= 0 m)) (< m (|Seq#Length_24888| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_24888| s0@@9)) (|Seq#Length_24888| s0@@9)) m) (= (|Seq#Index_24865| (|Seq#Append_42584| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_24888| s0@@9))) (|Seq#Index_24865| s1@@9 m))))
 :qid |stdinbpl.365:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_24865| s1@@9 m) (|Seq#Append_42584| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3683) (s1@@10 T@Seq_3683) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3683|)) (not (= s1@@10 |Seq#Empty_3683|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3683| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3683| s0@@10)) (|Seq#Length_3683| s0@@10)) m@@0) (= (|Seq#Index_3683| (|Seq#Append_3683| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3683| s0@@10))) (|Seq#Index_3683| s1@@10 m@@0))))
 :qid |stdinbpl.365:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3683| s1@@10 m@@0) (|Seq#Append_3683| s0@@10 s1@@10))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_35396) (Mask@@29 T@PolymorphicMapType_35417) (i@@32 Int) (lo@@10 Int) (hi@@22 Int) (ar@@22 T@Seq_42584) ) (!  (=> (and (state Heap@@35 Mask@@29) (< AssumeFunctionsAbove 2)) (=> (and (<= 0 lo@@10) (and (<= lo@@10 i@@32) (<= i@@32 hi@@22))) (= (sum_array Heap@@35 i@@32 lo@@10 hi@@22 ar@@22) (ite (< i@@32 hi@@22) (+ (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@35) (|Seq#Index_24865| ar@@22 i@@32) Ref__Integer_value) (|sum_array'| Heap@@35 (+ i@@32 1) lo@@10 hi@@22 ar@@22)) 0))))
 :qid |stdinbpl.772:15|
 :skolemid |64|
 :pattern ( (state Heap@@35 Mask@@29) (sum_array Heap@@35 i@@32 lo@@10 hi@@22 ar@@22))
)))
(assert (forall ((o_13@@4 T@Ref) (f_18 T@Field_35469_35470) (Heap@@36 T@PolymorphicMapType_35396) ) (!  (=> (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@36) o_13@@4 $allocated) (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@36) (select (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@36) o_13@@4 f_18) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@36) o_13@@4 f_18))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_35396) (Mask@@30 T@PolymorphicMapType_35417) (i@@33 Int) (lo@@11 Int) (hi@@23 Int) (step@@7 Int) (vmin@@7 Int) (vmax@@7 Int) (ar@@23 T@Seq_42584) ) (!  (=> (state Heap@@37 Mask@@30) (= (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax@@7 ar@@23) (|sum_square#frame| (FrameFragment_4608 (|sum_square#condqp2| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax@@7 ar@@23)) i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax@@7 ar@@23)))
 :qid |stdinbpl.972:15|
 :skolemid |83|
 :pattern ( (state Heap@@37 Mask@@30) (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax@@7 ar@@23))
)))
(assert (forall ((s@@29 T@Seq_42584) (x@@3 T@Ref) (i@@34 Int) ) (!  (=> (and (and (<= 0 i@@34) (< i@@34 (|Seq#Length_24888| s@@29))) (= (|Seq#Index_24865| s@@29 i@@34) x@@3)) (|Seq#Contains_42584| s@@29 x@@3))
 :qid |stdinbpl.517:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_42584| s@@29 x@@3) (|Seq#Index_24865| s@@29 i@@34))
)))
(assert (forall ((s@@30 T@Seq_3683) (x@@4 Int) (i@@35 Int) ) (!  (=> (and (and (<= 0 i@@35) (< i@@35 (|Seq#Length_3683| s@@30))) (= (|Seq#Index_3683| s@@30 i@@35) x@@4)) (|Seq#Contains_3683| s@@30 x@@4))
 :qid |stdinbpl.517:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3683| s@@30 x@@4) (|Seq#Index_3683| s@@30 i@@35))
)))
(assert (forall ((s0@@11 T@Seq_42584) (s1@@11 T@Seq_42584) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_42584| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_42584| s0@@11 s1@@11))) (not (= (|Seq#Length_24888| s0@@11) (|Seq#Length_24888| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_42584| s0@@11 s1@@11))) (= (|Seq#Length_24888| s0@@11) (|Seq#Length_24888| s1@@11))) (= (|Seq#SkolemDiff_42584| s0@@11 s1@@11) (|Seq#SkolemDiff_42584| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_42584| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_42584| s0@@11 s1@@11) (|Seq#Length_24888| s0@@11))) (not (= (|Seq#Index_24865| s0@@11 (|Seq#SkolemDiff_42584| s0@@11 s1@@11)) (|Seq#Index_24865| s1@@11 (|Seq#SkolemDiff_42584| s0@@11 s1@@11))))))
 :qid |stdinbpl.621:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_42584| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3683) (s1@@12 T@Seq_3683) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3683| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3683| s0@@12 s1@@12))) (not (= (|Seq#Length_3683| s0@@12) (|Seq#Length_3683| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3683| s0@@12 s1@@12))) (= (|Seq#Length_3683| s0@@12) (|Seq#Length_3683| s1@@12))) (= (|Seq#SkolemDiff_3683| s0@@12 s1@@12) (|Seq#SkolemDiff_3683| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3683| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3683| s0@@12 s1@@12) (|Seq#Length_3683| s0@@12))) (not (= (|Seq#Index_3683| s0@@12 (|Seq#SkolemDiff_3683| s0@@12 s1@@12)) (|Seq#Index_3683| s1@@12 (|Seq#SkolemDiff_3683| s0@@12 s1@@12))))))
 :qid |stdinbpl.621:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3683| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_24826_99058) (v_1@@0 T@FrameType) (q T@Field_24826_99058) (w@@0 T@FrameType) (r T@Field_24826_99058) (u T@FrameType) ) (!  (=> (and (InsidePredicate_35456_35456 p@@1 v_1@@0 q w@@0) (InsidePredicate_35456_35456 q w@@0 r u)) (InsidePredicate_35456_35456 p@@1 v_1@@0 r u))
 :qid |stdinbpl.288:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35456_35456 p@@1 v_1@@0 q w@@0) (InsidePredicate_35456_35456 q w@@0 r u))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_35396) (i@@36 Int) (lo@@12 Int) (hi@@24 Int) (step@@8 Int) (vmin@@8 Int) (vmax@@8 Int) (ar@@24 T@Seq_42584) ) (! (dummyFunction_4112 (|sum_square#triggerStateless| i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax@@8 ar@@24))
 :qid |stdinbpl.959:15|
 :skolemid |81|
 :pattern ( (|sum_square'| Heap@@38 i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax@@8 ar@@24))
)))
(assert (forall ((s@@31 T@Seq_42584) ) (!  (=> (= (|Seq#Length_24888| s@@31) 0) (= s@@31 |Seq#Empty_24888|))
 :qid |stdinbpl.324:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_24888| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3683) ) (!  (=> (= (|Seq#Length_3683| s@@32) 0) (= s@@32 |Seq#Empty_3683|))
 :qid |stdinbpl.324:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3683| s@@32))
)))
(assert (forall ((s@@33 T@Seq_42584) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_24888| s@@33 n@@25) |Seq#Empty_24888|))
 :qid |stdinbpl.500:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_24888| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3683) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3683| s@@34 n@@26) |Seq#Empty_3683|))
 :qid |stdinbpl.500:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3683| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@39 T@PolymorphicMapType_35396) (Mask@@31 T@PolymorphicMapType_35417) (i@@37 Int) (lo@@13 Int) (hi@@25 Int) (ar@@25 T@Seq_42584) ) (!  (=> (state Heap@@39 Mask@@31) (= (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar@@25) (|sum_array#frame| (FrameFragment_4608 (|sum_array#condqp1| Heap@@39 i@@37 lo@@13 hi@@25 ar@@25)) i@@37 lo@@13 hi@@25 ar@@25)))
 :qid |stdinbpl.779:15|
 :skolemid |65|
 :pattern ( (state Heap@@39 Mask@@31) (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar@@25))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_35396) (Mask@@32 T@PolymorphicMapType_35417) (i@@38 Int) (hi@@26 Int) (ar@@26 T@Seq_42584) (v_2@@12 Int) ) (!  (=> (state Heap@@40 Mask@@32) (= (|count_array'| Heap@@40 i@@38 hi@@26 ar@@26 v_2@@12) (|count_array#frame| (FrameFragment_4608 (|count_array#condqp4| Heap@@40 i@@38 hi@@26 ar@@26 v_2@@12)) i@@38 hi@@26 ar@@26 v_2@@12)))
 :qid |stdinbpl.1505:15|
 :skolemid |123|
 :pattern ( (state Heap@@40 Mask@@32) (|count_array'| Heap@@40 i@@38 hi@@26 ar@@26 v_2@@12))
)))
; Invalid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@1 () T@PolymorphicMapType_35417)
(declare-fun Mask@0 () T@PolymorphicMapType_35417)
(declare-fun hist () T@Seq_42584)
(declare-fun k () Int)
(declare-fun Heap@0 () T@PolymorphicMapType_35396)
(declare-fun Heap@@41 () T@PolymorphicMapType_35396)
(declare-fun __flatten_3 () T@Ref)
(declare-fun __flatten_3@0 () T@Ref)
(declare-fun P_1 () Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_35396)
(declare-fun PostMask@0 () T@PolymorphicMapType_35417)
(declare-fun diz () T@Ref)
(set-info :boogie-vc-id Ref__loop_body_84)
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
 (=> (= (ControlFlow 0 0) 20) (let ((anon4_correct  (=> (and (= Mask@1 (PolymorphicMapType_35417 (store (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| Mask@0) (|Seq#Index_24865| hist k) Ref__Integer_value (- (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| Mask@0) (|Seq#Index_24865| hist k) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_35417_24826_53#PolymorphicMapType_35417| Mask@0) (|PolymorphicMapType_35417_24826_35470#PolymorphicMapType_35417| Mask@0) (|PolymorphicMapType_35417_24826_99058#PolymorphicMapType_35417| Mask@0) (|PolymorphicMapType_35417_24826_103313#PolymorphicMapType_35417| Mask@0))) (= (ControlFlow 0 8) (- 0 7))) (= (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@0) (|Seq#Index_24865| hist k) Ref__Integer_value) 0))))
(let ((anon6_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 11) 8)) anon4_correct)))
(let ((anon6_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (<= FullPerm (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| Mask@0) (|Seq#Index_24865| hist k) Ref__Integer_value))) (=> (<= FullPerm (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| Mask@0) (|Seq#Index_24865| hist k) Ref__Integer_value)) (=> (= (ControlFlow 0 9) 8) anon4_correct))))))
(let ((anon5_Else_correct  (=> (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@41) __flatten_3 $allocated) (and (=> (= (ControlFlow 0 12) (- 0 16)) (>= k 0)) (=> (>= k 0) (and (=> (= (ControlFlow 0 12) (- 0 15)) (< k (|Seq#Length_24888| hist))) (=> (< k (|Seq#Length_24888| hist)) (=> (and (= __flatten_3@0 (|Seq#Index_24865| hist k)) (state Heap@@41 Mask@0)) (and (=> (= (ControlFlow 0 12) (- 0 14)) (= FullPerm (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| Mask@0) __flatten_3@0 Ref__Integer_value))) (=> (= FullPerm (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| Mask@0) __flatten_3@0 Ref__Integer_value)) (=> (and (= Heap@0 (PolymorphicMapType_35396 (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@41) (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@41) (store (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@41) __flatten_3@0 Ref__Integer_value 0) (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@41) (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| Heap@@41))) (state Heap@0 Mask@0)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k)) (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k) (and (=> (= (ControlFlow 0 12) 9) anon6_Then_correct) (=> (= (ControlFlow 0 12) 11) anon6_Else_correct)))))))))))))))
(let ((anon5_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k) (state PostHeap@0 ZeroMask)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= k 0)) (=> (>= k 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< k (|Seq#Length_24888| hist))) (=> (< k (|Seq#Length_24888| hist)) (=> (and (and (not (= (|Seq#Index_24865| hist k) null)) (= PostMask@0 (PolymorphicMapType_35417 (store (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| ZeroMask) (|Seq#Index_24865| hist k) Ref__Integer_value (+ (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| ZeroMask) (|Seq#Index_24865| hist k) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_35417_24826_53#PolymorphicMapType_35417| ZeroMask) (|PolymorphicMapType_35417_24826_35470#PolymorphicMapType_35417| ZeroMask) (|PolymorphicMapType_35417_24826_99058#PolymorphicMapType_35417| ZeroMask) (|PolymorphicMapType_35417_24826_103313#PolymorphicMapType_35417| ZeroMask)))) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= k 0)) (=> (>= k 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< k (|Seq#Length_24888| hist))) (=> (< k (|Seq#Length_24888| hist)) (=> (= (ControlFlow 0 2) (- 0 1)) (HasDirectPerm_24826_3805 PostMask@0 (|Seq#Index_24865| hist k) Ref__Integer_value)))))))))))))))
(let ((anon0_correct  (=> (and (and (and (state Heap@@41 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@41) diz $allocated))) (and (and (not (= diz null)) (state Heap@@41 ZeroMask)) (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k) (state Heap@@41 ZeroMask)))) (and (=> (= (ControlFlow 0 17) (- 0 19)) (>= k 0)) (=> (>= k 0) (and (=> (= (ControlFlow 0 17) (- 0 18)) (< k (|Seq#Length_24888| hist))) (=> (< k (|Seq#Length_24888| hist)) (=> (and (and (not (= (|Seq#Index_24865| hist k) null)) (= Mask@0 (PolymorphicMapType_35417 (store (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| ZeroMask) (|Seq#Index_24865| hist k) Ref__Integer_value (+ (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| ZeroMask) (|Seq#Index_24865| hist k) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_35417_24826_53#PolymorphicMapType_35417| ZeroMask) (|PolymorphicMapType_35417_24826_35470#PolymorphicMapType_35417| ZeroMask) (|PolymorphicMapType_35417_24826_99058#PolymorphicMapType_35417| ZeroMask) (|PolymorphicMapType_35417_24826_103313#PolymorphicMapType_35417| ZeroMask)))) (and (state Heap@@41 Mask@0) (state Heap@@41 Mask@0))) (and (=> (= (ControlFlow 0 17) 2) anon5_Then_correct) (=> (= (ControlFlow 0 17) 12) anon5_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 20) 17) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 17) (- 18))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
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
(declare-sort T@Field_35456_53 0)
(declare-sort T@Field_35469_35470 0)
(declare-sort T@Field_41542_3805 0)
(declare-sort T@Field_24826_99191 0)
(declare-sort T@Field_24826_99058 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_35417 0)) (((PolymorphicMapType_35417 (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| (Array T@Ref T@Field_41542_3805 Real)) (|PolymorphicMapType_35417_24826_53#PolymorphicMapType_35417| (Array T@Ref T@Field_35456_53 Real)) (|PolymorphicMapType_35417_24826_35470#PolymorphicMapType_35417| (Array T@Ref T@Field_35469_35470 Real)) (|PolymorphicMapType_35417_24826_99058#PolymorphicMapType_35417| (Array T@Ref T@Field_24826_99058 Real)) (|PolymorphicMapType_35417_24826_103313#PolymorphicMapType_35417| (Array T@Ref T@Field_24826_99191 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_35945 0)) (((PolymorphicMapType_35945 (|PolymorphicMapType_35945_35456_53#PolymorphicMapType_35945| (Array T@Ref T@Field_35456_53 Bool)) (|PolymorphicMapType_35945_35456_35470#PolymorphicMapType_35945| (Array T@Ref T@Field_35469_35470 Bool)) (|PolymorphicMapType_35945_35456_3805#PolymorphicMapType_35945| (Array T@Ref T@Field_41542_3805 Bool)) (|PolymorphicMapType_35945_35456_99058#PolymorphicMapType_35945| (Array T@Ref T@Field_24826_99058 Bool)) (|PolymorphicMapType_35945_35456_100369#PolymorphicMapType_35945| (Array T@Ref T@Field_24826_99191 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_35396 0)) (((PolymorphicMapType_35396 (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| (Array T@Ref T@Field_35456_53 Bool)) (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| (Array T@Ref T@Field_35469_35470 T@Ref)) (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| (Array T@Ref T@Field_41542_3805 Int)) (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| (Array T@Ref T@Field_24826_99191 T@PolymorphicMapType_35945)) (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| (Array T@Ref T@Field_24826_99058 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_35456_53)
(declare-fun Ref__Integer_value () T@Field_41542_3805)
(declare-sort T@Seq_42584 0)
(declare-fun |Seq#Length_24888| (T@Seq_42584) Int)
(declare-fun |Seq#Drop_24888| (T@Seq_42584 Int) T@Seq_42584)
(declare-sort T@Seq_3683 0)
(declare-fun |Seq#Length_3683| (T@Seq_3683) Int)
(declare-fun |Seq#Drop_3683| (T@Seq_3683 Int) T@Seq_3683)
(declare-fun state (T@PolymorphicMapType_35396 T@PolymorphicMapType_35417) Bool)
(declare-fun |count_square'| (T@PolymorphicMapType_35396 Int Int Int Int Int Int T@Seq_42584 Int) Int)
(declare-fun |count_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_42584 Int) Int)
(declare-fun FrameFragment_4608 (Int) T@FrameType)
(declare-fun |count_square#condqp3| (T@PolymorphicMapType_35396 Int Int Int Int Int Int T@Seq_42584 Int) Int)
(declare-fun succHeap (T@PolymorphicMapType_35396 T@PolymorphicMapType_35396) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_35396 T@PolymorphicMapType_35396) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_35417) Bool)
(declare-fun sum_square (T@PolymorphicMapType_35396 Int Int Int Int Int Int T@Seq_42584) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#Index_24865| (T@Seq_42584 Int) T@Ref)
(declare-fun |sum_square'| (T@PolymorphicMapType_35396 Int Int Int Int Int Int T@Seq_42584) Int)
(declare-fun |sum_list'| (T@PolymorphicMapType_35396 Int Int T@Seq_3683) Int)
(declare-fun dummyFunction_4112 (Int) Bool)
(declare-fun |sum_list#triggerStateless| (Int Int T@Seq_3683) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_35945)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3683| (T@Seq_3683 Int) Int)
(declare-fun |Seq#Empty_24888| () T@Seq_42584)
(declare-fun |Seq#Empty_3683| () T@Seq_3683)
(declare-fun |Seq#Update_24888| (T@Seq_42584 Int T@Ref) T@Seq_42584)
(declare-fun |Seq#Update_3683| (T@Seq_3683 Int Int) T@Seq_3683)
(declare-fun |Seq#Take_24888| (T@Seq_42584 Int) T@Seq_42584)
(declare-fun |Seq#Take_3683| (T@Seq_3683 Int) T@Seq_3683)
(declare-fun |Seq#Contains_3683| (T@Seq_3683 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3683)
(declare-fun |Seq#Contains_42584| (T@Seq_42584 T@Ref) Bool)
(declare-fun |Seq#Skolem_42584| (T@Seq_42584 T@Ref) Int)
(declare-fun |Seq#Skolem_3683| (T@Seq_3683 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_35396 T@PolymorphicMapType_35396 T@PolymorphicMapType_35417) Bool)
(declare-fun IsPredicateField_24826_99149 (T@Field_24826_99058) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_24826 (T@Field_24826_99058) T@Field_24826_99191)
(declare-fun HasDirectPerm_24826_99122 (T@PolymorphicMapType_35417 T@Ref T@Field_24826_99058) Bool)
(declare-fun IsWandField_24826_100896 (T@Field_24826_99058) Bool)
(declare-fun WandMaskField_24826 (T@Field_24826_99058) T@Field_24826_99191)
(declare-fun |Seq#Singleton_24888| (T@Ref) T@Seq_42584)
(declare-fun |Seq#Singleton_3683| (Int) T@Seq_3683)
(declare-fun count_square (T@PolymorphicMapType_35396 Int Int Int Int Int Int T@Seq_42584 Int) Int)
(declare-fun |count_square#triggerStateless| (Int Int Int Int Int Int T@Seq_42584 Int) Int)
(declare-fun |Seq#Append_42584| (T@Seq_42584 T@Seq_42584) T@Seq_42584)
(declare-fun |Seq#Append_3683| (T@Seq_3683 T@Seq_3683) T@Seq_3683)
(declare-fun |sum_square#condqp2| (T@PolymorphicMapType_35396 Int Int Int Int Int Int T@Seq_42584) Int)
(declare-fun |sk_sum_square#condqp2| (Int Int) Int)
(declare-fun |sk_count_square#condqp3| (Int Int) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_35396)
(declare-fun ZeroMask () T@PolymorphicMapType_35417)
(declare-fun InsidePredicate_35456_35456 (T@Field_24826_99058 T@FrameType T@Field_24826_99058 T@FrameType) Bool)
(declare-fun IsPredicateField_24826_3805 (T@Field_41542_3805) Bool)
(declare-fun IsWandField_24826_3805 (T@Field_41542_3805) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_24826_104442 (T@Field_24826_99191) Bool)
(declare-fun IsWandField_24826_104458 (T@Field_24826_99191) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_24826_35470 (T@Field_35469_35470) Bool)
(declare-fun IsWandField_24826_35470 (T@Field_35469_35470) Bool)
(declare-fun IsPredicateField_24826_53 (T@Field_35456_53) Bool)
(declare-fun IsWandField_24826_53 (T@Field_35456_53) Bool)
(declare-fun |sum_list#frame| (T@FrameType Int Int T@Seq_3683) Int)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun count_array (T@PolymorphicMapType_35396 Int Int T@Seq_42584 Int) Int)
(declare-fun |count_array'| (T@PolymorphicMapType_35396 Int Int T@Seq_42584 Int) Int)
(declare-fun HasDirectPerm_24826_104896 (T@PolymorphicMapType_35417 T@Ref T@Field_24826_99191) Bool)
(declare-fun HasDirectPerm_24826_35470 (T@PolymorphicMapType_35417 T@Ref T@Field_35469_35470) Bool)
(declare-fun HasDirectPerm_24826_53 (T@PolymorphicMapType_35417 T@Ref T@Field_35456_53) Bool)
(declare-fun HasDirectPerm_24826_3805 (T@PolymorphicMapType_35417 T@Ref T@Field_41542_3805) Bool)
(declare-fun |sum_array'| (T@PolymorphicMapType_35396 Int Int Int T@Seq_42584) Int)
(declare-fun |sum_array#triggerStateless| (Int Int Int T@Seq_42584) Int)
(declare-fun |count_list'| (T@PolymorphicMapType_35396 Int Int T@Seq_3683 Int) Int)
(declare-fun |count_list#triggerStateless| (Int Int T@Seq_3683 Int) Int)
(declare-fun |count_array#triggerStateless| (Int Int T@Seq_42584 Int) Int)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun count_list (T@PolymorphicMapType_35396 Int Int T@Seq_3683 Int) Int)
(declare-fun sum_array (T@PolymorphicMapType_35396 Int Int Int T@Seq_42584) Int)
(declare-fun sumMask (T@PolymorphicMapType_35417 T@PolymorphicMapType_35417 T@PolymorphicMapType_35417) Bool)
(declare-fun |sum_square#triggerStateless| (Int Int Int Int Int Int T@Seq_42584) Int)
(declare-fun |count_list#frame| (T@FrameType Int Int T@Seq_3683 Int) Int)
(declare-fun |count_array#condqp4| (T@PolymorphicMapType_35396 Int Int T@Seq_42584 Int) Int)
(declare-fun |sk_count_array#condqp4| (Int Int) Int)
(declare-fun |sum_array#condqp1| (T@PolymorphicMapType_35396 Int Int Int T@Seq_42584) Int)
(declare-fun |sk_sum_array#condqp1| (Int Int) Int)
(declare-fun |Seq#Equal_42584| (T@Seq_42584 T@Seq_42584) Bool)
(declare-fun |Seq#Equal_3683| (T@Seq_3683 T@Seq_3683) Bool)
(declare-fun sum_list (T@PolymorphicMapType_35396 Int Int T@Seq_3683) Int)
(declare-fun |Seq#ContainsTrigger_24888| (T@Seq_42584 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3683| (T@Seq_3683 Int) Bool)
(declare-fun |sum_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_42584) Int)
(declare-fun |Seq#SkolemDiff_42584| (T@Seq_42584 T@Seq_42584) Int)
(declare-fun |Seq#SkolemDiff_3683| (T@Seq_3683 T@Seq_3683) Int)
(declare-fun |sum_array#frame| (T@FrameType Int Int Int T@Seq_42584) Int)
(declare-fun |count_array#frame| (T@FrameType Int Int T@Seq_42584 Int) Int)
(assert (forall ((s T@Seq_42584) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_24888| s)) (= (|Seq#Length_24888| (|Seq#Drop_24888| s n)) (- (|Seq#Length_24888| s) n))) (=> (< (|Seq#Length_24888| s) n) (= (|Seq#Length_24888| (|Seq#Drop_24888| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_24888| (|Seq#Drop_24888| s n)) (|Seq#Length_24888| s))))
 :qid |stdinbpl.395:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_24888| (|Seq#Drop_24888| s n)))
 :pattern ( (|Seq#Length_24888| s) (|Seq#Drop_24888| s n))
)))
(assert (forall ((s@@0 T@Seq_3683) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3683| s@@0)) (= (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)) (- (|Seq#Length_3683| s@@0) n@@0))) (=> (< (|Seq#Length_3683| s@@0) n@@0) (= (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)) (|Seq#Length_3683| s@@0))))
 :qid |stdinbpl.395:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3683| s@@0) (|Seq#Drop_3683| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_35396) (Mask T@PolymorphicMapType_35417) (i Int) (lo Int) (hi Int) (step Int) (vmin Int) (vmax Int) (ar T@Seq_42584) (v_2 Int) ) (!  (=> (state Heap Mask) (= (|count_square'| Heap i lo hi step vmin vmax ar v_2) (|count_square#frame| (FrameFragment_4608 (|count_square#condqp3| Heap i lo hi step vmin vmax ar v_2)) i lo hi step vmin vmax ar v_2)))
 :qid |stdinbpl.1196:15|
 :skolemid |101|
 :pattern ( (state Heap Mask) (|count_square'| Heap i lo hi step vmin vmax ar v_2))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_35396) (Heap1 T@PolymorphicMapType_35396) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_35396) (Mask@@0 T@PolymorphicMapType_35417) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_35396) (Heap1@@0 T@PolymorphicMapType_35396) (Heap2 T@PolymorphicMapType_35396) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_35396) (Mask@@1 T@PolymorphicMapType_35417) (i@@0 Int) (lo@@0 Int) (hi@@0 Int) (step@@0 Int) (vmin@@0 Int) (vmax@@0 Int) (ar@@0 T@Seq_42584) ) (!  (=> (and (state Heap@@1 Mask@@1) (< AssumeFunctionsAbove 0)) (=> (and (and (<= 0 lo@@0) (and (<= lo@@0 hi@@0) (and (<= hi@@0 step@@0) (> step@@0 0)))) (and (<= 0 vmin@@0) (and (<= vmin@@0 i@@0) (<= i@@0 vmax@@0)))) (= (sum_square Heap@@1 i@@0 lo@@0 hi@@0 step@@0 vmin@@0 vmax@@0 ar@@0) (ite (< i@@0 vmax@@0) (+ (ite  (and (<= lo@@0 (mod i@@0 step@@0)) (< (mod i@@0 step@@0) hi@@0)) (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@1) (|Seq#Index_24865| ar@@0 i@@0) Ref__Integer_value) 0) (|sum_square'| Heap@@1 (+ i@@0 1) lo@@0 hi@@0 step@@0 vmin@@0 vmax@@0 ar@@0)) 0))))
 :qid |stdinbpl.965:15|
 :skolemid |82|
 :pattern ( (state Heap@@1 Mask@@1) (sum_square Heap@@1 i@@0 lo@@0 hi@@0 step@@0 vmin@@0 vmax@@0 ar@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_35396) (i@@1 Int) (hi@@1 Int) (ar@@1 T@Seq_3683) ) (! (dummyFunction_4112 (|sum_list#triggerStateless| i@@1 hi@@1 ar@@1))
 :qid |stdinbpl.681:15|
 :skolemid |59|
 :pattern ( (|sum_list'| Heap@@2 i@@1 hi@@1 ar@@1))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_24826_99191) ) (!  (not (select (|PolymorphicMapType_35945_35456_100369#PolymorphicMapType_35945| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35945_35456_100369#PolymorphicMapType_35945| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_24826_99058) ) (!  (not (select (|PolymorphicMapType_35945_35456_99058#PolymorphicMapType_35945| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35945_35456_99058#PolymorphicMapType_35945| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_41542_3805) ) (!  (not (select (|PolymorphicMapType_35945_35456_3805#PolymorphicMapType_35945| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35945_35456_3805#PolymorphicMapType_35945| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_35469_35470) ) (!  (not (select (|PolymorphicMapType_35945_35456_35470#PolymorphicMapType_35945| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35945_35456_35470#PolymorphicMapType_35945| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_35456_53) ) (!  (not (select (|PolymorphicMapType_35945_35456_53#PolymorphicMapType_35945| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35945_35456_53#PolymorphicMapType_35945| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_42584) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_24888| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_24865| (|Seq#Drop_24888| s@@1 n@@1) j) (|Seq#Index_24865| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.416:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_24865| (|Seq#Drop_24888| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3683) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3683| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3683| (|Seq#Drop_3683| s@@2 n@@2) j@@0) (|Seq#Index_3683| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.416:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3683| (|Seq#Drop_3683| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_24888| |Seq#Empty_24888|) 0))
(assert (= (|Seq#Length_3683| |Seq#Empty_3683|) 0))
(assert (forall ((s@@3 T@Seq_42584) (i@@2 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_24888| s@@3))) (and (=> (= i@@2 n@@3) (= (|Seq#Index_24865| (|Seq#Update_24888| s@@3 i@@2 v) n@@3) v)) (=> (not (= i@@2 n@@3)) (= (|Seq#Index_24865| (|Seq#Update_24888| s@@3 i@@2 v) n@@3) (|Seq#Index_24865| s@@3 n@@3)))))
 :qid |stdinbpl.371:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_24865| (|Seq#Update_24888| s@@3 i@@2 v) n@@3))
 :pattern ( (|Seq#Index_24865| s@@3 n@@3) (|Seq#Update_24888| s@@3 i@@2 v))
)))
(assert (forall ((s@@4 T@Seq_3683) (i@@3 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3683| s@@4))) (and (=> (= i@@3 n@@4) (= (|Seq#Index_3683| (|Seq#Update_3683| s@@4 i@@3 v@@0) n@@4) v@@0)) (=> (not (= i@@3 n@@4)) (= (|Seq#Index_3683| (|Seq#Update_3683| s@@4 i@@3 v@@0) n@@4) (|Seq#Index_3683| s@@4 n@@4)))))
 :qid |stdinbpl.371:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3683| (|Seq#Update_3683| s@@4 i@@3 v@@0) n@@4))
 :pattern ( (|Seq#Index_3683| s@@4 n@@4) (|Seq#Update_3683| s@@4 i@@3 v@@0))
)))
(assert (forall ((s@@5 T@Seq_42584) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_24888| s@@5)) (= (|Seq#Length_24888| (|Seq#Take_24888| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_24888| s@@5) n@@5) (= (|Seq#Length_24888| (|Seq#Take_24888| s@@5 n@@5)) (|Seq#Length_24888| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_24888| (|Seq#Take_24888| s@@5 n@@5)) 0)))
 :qid |stdinbpl.382:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_24888| (|Seq#Take_24888| s@@5 n@@5)))
 :pattern ( (|Seq#Take_24888| s@@5 n@@5) (|Seq#Length_24888| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3683) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3683| s@@6)) (= (|Seq#Length_3683| (|Seq#Take_3683| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3683| s@@6) n@@6) (= (|Seq#Length_3683| (|Seq#Take_3683| s@@6 n@@6)) (|Seq#Length_3683| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3683| (|Seq#Take_3683| s@@6 n@@6)) 0)))
 :qid |stdinbpl.382:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3683| (|Seq#Take_3683| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3683| s@@6 n@@6) (|Seq#Length_3683| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3683| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.656:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_42584) (x T@Ref) ) (!  (=> (|Seq#Contains_42584| s@@7 x) (and (and (<= 0 (|Seq#Skolem_42584| s@@7 x)) (< (|Seq#Skolem_42584| s@@7 x) (|Seq#Length_24888| s@@7))) (= (|Seq#Index_24865| s@@7 (|Seq#Skolem_42584| s@@7 x)) x)))
 :qid |stdinbpl.514:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_42584| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3683) (x@@0 Int) ) (!  (=> (|Seq#Contains_3683| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3683| s@@8 x@@0)) (< (|Seq#Skolem_3683| s@@8 x@@0) (|Seq#Length_3683| s@@8))) (= (|Seq#Index_3683| s@@8 (|Seq#Skolem_3683| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.514:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3683| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_42584) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_24888| s@@9 n@@7) s@@9))
 :qid |stdinbpl.498:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_24888| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3683) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3683| s@@10 n@@8) s@@10))
 :qid |stdinbpl.498:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3683| s@@10 n@@8))
)))
(assert (forall ((i@@4 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@4 j@@1) (- i@@4 j@@1))
 :qid |stdinbpl.351:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@4 j@@1))
)))
(assert (forall ((i@@5 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@5 j@@2) (+ i@@5 j@@2))
 :qid |stdinbpl.349:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@5 j@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_35396) (ExhaleHeap T@PolymorphicMapType_35396) (Mask@@2 T@PolymorphicMapType_35417) (pm_f_6 T@Field_24826_99058) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_24826_99122 Mask@@2 null pm_f_6) (IsPredicateField_24826_99149 pm_f_6)) (= (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@3) null (PredicateMaskField_24826 pm_f_6)) (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| ExhaleHeap) null (PredicateMaskField_24826 pm_f_6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (IsPredicateField_24826_99149 pm_f_6) (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| ExhaleHeap) null (PredicateMaskField_24826 pm_f_6)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_35396) (ExhaleHeap@@0 T@PolymorphicMapType_35396) (Mask@@3 T@PolymorphicMapType_35417) (pm_f_6@@0 T@Field_24826_99058) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_24826_99122 Mask@@3 null pm_f_6@@0) (IsWandField_24826_100896 pm_f_6@@0)) (= (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@4) null (WandMaskField_24826 pm_f_6@@0)) (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| ExhaleHeap@@0) null (WandMaskField_24826 pm_f_6@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (IsWandField_24826_100896 pm_f_6@@0) (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| ExhaleHeap@@0) null (WandMaskField_24826 pm_f_6@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_42584| (|Seq#Singleton_24888| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.639:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_42584| (|Seq#Singleton_24888| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3683| (|Seq#Singleton_3683| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.639:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3683| (|Seq#Singleton_3683| x@@2) y@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_35396) (i@@6 Int) (lo@@1 Int) (hi@@2 Int) (step@@1 Int) (vmin@@1 Int) (vmax@@1 Int) (ar@@2 T@Seq_42584) (v_2@@0 Int) ) (!  (and (= (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@1 vmin@@1 vmax@@1 ar@@2 v_2@@0) (|count_square'| Heap@@5 i@@6 lo@@1 hi@@2 step@@1 vmin@@1 vmax@@1 ar@@2 v_2@@0)) (dummyFunction_4112 (|count_square#triggerStateless| i@@6 lo@@1 hi@@2 step@@1 vmin@@1 vmax@@1 ar@@2 v_2@@0)))
 :qid |stdinbpl.1179:15|
 :skolemid |98|
 :pattern ( (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@1 vmin@@1 vmax@@1 ar@@2 v_2@@0))
)))
(assert (forall ((s@@11 T@Seq_42584) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_24888| s@@11))) (= (|Seq#Index_24865| (|Seq#Take_24888| s@@11 n@@9) j@@3) (|Seq#Index_24865| s@@11 j@@3)))
 :qid |stdinbpl.390:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_24865| (|Seq#Take_24888| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_24865| s@@11 j@@3) (|Seq#Take_24888| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3683) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3683| s@@12))) (= (|Seq#Index_3683| (|Seq#Take_3683| s@@12 n@@10) j@@4) (|Seq#Index_3683| s@@12 j@@4)))
 :qid |stdinbpl.390:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3683| (|Seq#Take_3683| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3683| s@@12 j@@4) (|Seq#Take_3683| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_42584) (t T@Seq_42584) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_24888| s@@13))) (< n@@11 (|Seq#Length_24888| (|Seq#Append_42584| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_24888| s@@13)) (|Seq#Length_24888| s@@13)) n@@11) (= (|Seq#Take_24888| (|Seq#Append_42584| s@@13 t) n@@11) (|Seq#Append_42584| s@@13 (|Seq#Take_24888| t (|Seq#Sub| n@@11 (|Seq#Length_24888| s@@13)))))))
 :qid |stdinbpl.475:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_24888| (|Seq#Append_42584| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3683) (t@@0 T@Seq_3683) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3683| s@@14))) (< n@@12 (|Seq#Length_3683| (|Seq#Append_3683| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3683| s@@14)) (|Seq#Length_3683| s@@14)) n@@12) (= (|Seq#Take_3683| (|Seq#Append_3683| s@@14 t@@0) n@@12) (|Seq#Append_3683| s@@14 (|Seq#Take_3683| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3683| s@@14)))))))
 :qid |stdinbpl.475:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3683| (|Seq#Append_3683| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_35396) (i@@7 Int) (lo@@2 Int) (hi@@3 Int) (step@@2 Int) (vmin@@2 Int) (vmax@@2 Int) (ar@@3 T@Seq_42584) (v_2@@1 Int) ) (! (dummyFunction_4112 (|count_square#triggerStateless| i@@7 lo@@2 hi@@3 step@@2 vmin@@2 vmax@@2 ar@@3 v_2@@1))
 :qid |stdinbpl.1183:15|
 :skolemid |99|
 :pattern ( (|count_square'| Heap@@6 i@@7 lo@@2 hi@@3 step@@2 vmin@@2 vmax@@2 ar@@3 v_2@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_35396) (Mask@@4 T@PolymorphicMapType_35417) (i@@8 Int) (lo@@3 Int) (hi@@4 Int) (step@@3 Int) (vmin@@3 Int) (vmax@@3 Int) (ar@@4 T@Seq_42584) (v_2@@2 Int) ) (!  (=> (and (state Heap@@7 Mask@@4) (< AssumeFunctionsAbove 1)) (=> (and (and (<= 0 lo@@3) (and (<= lo@@3 hi@@4) (and (<= hi@@4 step@@3) (> step@@3 0)))) (and (<= 0 vmin@@3) (and (<= vmin@@3 i@@8) (<= i@@8 vmax@@3)))) (= (count_square Heap@@7 i@@8 lo@@3 hi@@4 step@@3 vmin@@3 vmax@@3 ar@@4 v_2@@2) (ite (< i@@8 vmax@@3) (+ (ite  (and (<= lo@@3 (mod i@@8 step@@3)) (and (< (mod i@@8 step@@3) hi@@4) (= (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@7) (|Seq#Index_24865| ar@@4 i@@8) Ref__Integer_value) v_2@@2))) 1 0) (|count_square'| Heap@@7 (+ i@@8 1) lo@@3 hi@@4 step@@3 vmin@@3 vmax@@3 ar@@4 v_2@@2)) 0))))
 :qid |stdinbpl.1189:15|
 :skolemid |100|
 :pattern ( (state Heap@@7 Mask@@4) (count_square Heap@@7 i@@8 lo@@3 hi@@4 step@@3 vmin@@3 vmax@@3 ar@@4 v_2@@2))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_35396) (Heap1Heap T@PolymorphicMapType_35396) (i@@9 Int) (lo@@4 Int) (hi@@5 Int) (step@@4 Int) (vmin@@4 Int) (vmax@@4 Int) (ar@@5 T@Seq_42584) ) (!  (=> (and (=  (and (<= vmin@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5)) vmax@@4) (and (<= lo@@4 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5)) step@@4)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5)) step@@4) hi@@5))))  (and (<= vmin@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5)) vmax@@4) (and (<= lo@@4 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5)) step@@4)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5)) step@@4) hi@@5))))) (=> (and (<= vmin@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5)) vmax@@4) (and (<= lo@@4 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5)) step@@4)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5)) step@@4) hi@@5)))) (= (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap2Heap) (|Seq#Index_24865| ar@@5 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5))) Ref__Integer_value) (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap1Heap) (|Seq#Index_24865| ar@@5 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5))) Ref__Integer_value)))) (= (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5)))
 :qid |stdinbpl.982:15|
 :skolemid |84|
 :pattern ( (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax@@4 ar@@5) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_35396) (Heap1Heap@@0 T@PolymorphicMapType_35396) (i@@10 Int) (lo@@5 Int) (hi@@6 Int) (step@@5 Int) (vmin@@5 Int) (vmax@@5 Int) (ar@@6 T@Seq_42584) (v_2@@3 Int) ) (!  (=> (and (=  (and (<= vmin@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3)) vmax@@5) (and (<= lo@@5 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3)) step@@5)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3)) step@@5) hi@@6))))  (and (<= vmin@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3)) vmax@@5) (and (<= lo@@5 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3)) step@@5)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3)) step@@5) hi@@6))))) (=> (and (<= vmin@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3)) vmax@@5) (and (<= lo@@5 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3)) step@@5)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3)) step@@5) hi@@6)))) (= (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap2Heap@@0) (|Seq#Index_24865| ar@@6 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3))) Ref__Integer_value) (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap1Heap@@0) (|Seq#Index_24865| ar@@6 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3))) Ref__Integer_value)))) (= (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3)))
 :qid |stdinbpl.1206:15|
 :skolemid |102|
 :pattern ( (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax@@5 ar@@6 v_2@@3) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_35396) (ExhaleHeap@@1 T@PolymorphicMapType_35396) (Mask@@5 T@PolymorphicMapType_35417) (o_14 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (=> (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@8) o_14 $allocated) (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| ExhaleHeap@@1) o_14 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| ExhaleHeap@@1) o_14 $allocated))
)))
(assert (forall ((p T@Field_24826_99058) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_35456_35456 p v_1 p w))
 :qid |stdinbpl.293:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_35456_35456 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_42584) (s1 T@Seq_42584) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_24888|)) (not (= s1 |Seq#Empty_24888|))) (<= (|Seq#Length_24888| s0) n@@13)) (< n@@13 (|Seq#Length_24888| (|Seq#Append_42584| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_24888| s0)) (|Seq#Length_24888| s0)) n@@13) (= (|Seq#Index_24865| (|Seq#Append_42584| s0 s1) n@@13) (|Seq#Index_24865| s1 (|Seq#Sub| n@@13 (|Seq#Length_24888| s0))))))
 :qid |stdinbpl.362:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_24865| (|Seq#Append_42584| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3683) (s1@@0 T@Seq_3683) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3683|)) (not (= s1@@0 |Seq#Empty_3683|))) (<= (|Seq#Length_3683| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3683| (|Seq#Append_3683| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3683| s0@@0)) (|Seq#Length_3683| s0@@0)) n@@14) (= (|Seq#Index_3683| (|Seq#Append_3683| s0@@0 s1@@0) n@@14) (|Seq#Index_3683| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3683| s0@@0))))))
 :qid |stdinbpl.362:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3683| (|Seq#Append_3683| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_24826_3805 Ref__Integer_value)))
(assert  (not (IsWandField_24826_3805 Ref__Integer_value)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_35396) (ExhaleHeap@@2 T@PolymorphicMapType_35396) (Mask@@6 T@PolymorphicMapType_35417) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6) (succHeap Heap@@9 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_35417) (o_2@@4 T@Ref) (f_4@@4 T@Field_24826_99191) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_35417_24826_103313#PolymorphicMapType_35417| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_24826_104442 f_4@@4))) (not (IsWandField_24826_104458 f_4@@4))) (<= (select (|PolymorphicMapType_35417_24826_103313#PolymorphicMapType_35417| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_35417_24826_103313#PolymorphicMapType_35417| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_35417) (o_2@@5 T@Ref) (f_4@@5 T@Field_24826_99058) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_35417_24826_99058#PolymorphicMapType_35417| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_24826_99149 f_4@@5))) (not (IsWandField_24826_100896 f_4@@5))) (<= (select (|PolymorphicMapType_35417_24826_99058#PolymorphicMapType_35417| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_35417_24826_99058#PolymorphicMapType_35417| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_35417) (o_2@@6 T@Ref) (f_4@@6 T@Field_35469_35470) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_35417_24826_35470#PolymorphicMapType_35417| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_24826_35470 f_4@@6))) (not (IsWandField_24826_35470 f_4@@6))) (<= (select (|PolymorphicMapType_35417_24826_35470#PolymorphicMapType_35417| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_35417_24826_35470#PolymorphicMapType_35417| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_35417) (o_2@@7 T@Ref) (f_4@@7 T@Field_35456_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_35417_24826_53#PolymorphicMapType_35417| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_24826_53 f_4@@7))) (not (IsWandField_24826_53 f_4@@7))) (<= (select (|PolymorphicMapType_35417_24826_53#PolymorphicMapType_35417| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_35417_24826_53#PolymorphicMapType_35417| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_35417) (o_2@@8 T@Ref) (f_4@@8 T@Field_41542_3805) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_24826_3805 f_4@@8))) (not (IsWandField_24826_3805 f_4@@8))) (<= (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_35396) (Mask@@12 T@PolymorphicMapType_35417) (i@@11 Int) (hi@@7 Int) (ar@@7 T@Seq_3683) ) (!  (=> (state Heap@@10 Mask@@12) (= (|sum_list'| Heap@@10 i@@11 hi@@7 ar@@7) (|sum_list#frame| EmptyFrame i@@11 hi@@7 ar@@7)))
 :qid |stdinbpl.694:15|
 :skolemid |61|
 :pattern ( (state Heap@@10 Mask@@12) (|sum_list'| Heap@@10 i@@11 hi@@7 ar@@7))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_35396) (Mask@@13 T@PolymorphicMapType_35417) (i@@12 Int) (hi@@8 Int) (ar@@8 T@Seq_42584) (v_2@@4 Int) ) (!  (=> (and (state Heap@@11 Mask@@13) (< AssumeFunctionsAbove 3)) (=> (and (<= 0 i@@12) (<= i@@12 hi@@8)) (= (count_array Heap@@11 i@@12 hi@@8 ar@@8 v_2@@4) (ite (< i@@12 hi@@8) (+ (ite (= (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@11) (|Seq#Index_24865| ar@@8 i@@12) Ref__Integer_value) v_2@@4) 1 0) (|count_array'| Heap@@11 (+ i@@12 1) hi@@8 ar@@8 v_2@@4)) 0))))
 :qid |stdinbpl.1498:15|
 :skolemid |122|
 :pattern ( (state Heap@@11 Mask@@13) (count_array Heap@@11 i@@12 hi@@8 ar@@8 v_2@@4))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_35417) (o_2@@9 T@Ref) (f_4@@9 T@Field_24826_99191) ) (! (= (HasDirectPerm_24826_104896 Mask@@14 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_35417_24826_103313#PolymorphicMapType_35417| Mask@@14) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24826_104896 Mask@@14 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_35417) (o_2@@10 T@Ref) (f_4@@10 T@Field_24826_99058) ) (! (= (HasDirectPerm_24826_99122 Mask@@15 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_35417_24826_99058#PolymorphicMapType_35417| Mask@@15) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24826_99122 Mask@@15 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_35417) (o_2@@11 T@Ref) (f_4@@11 T@Field_35469_35470) ) (! (= (HasDirectPerm_24826_35470 Mask@@16 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_35417_24826_35470#PolymorphicMapType_35417| Mask@@16) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24826_35470 Mask@@16 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_35417) (o_2@@12 T@Ref) (f_4@@12 T@Field_35456_53) ) (! (= (HasDirectPerm_24826_53 Mask@@17 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_35417_24826_53#PolymorphicMapType_35417| Mask@@17) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24826_53 Mask@@17 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_35417) (o_2@@13 T@Ref) (f_4@@13 T@Field_41542_3805) ) (! (= (HasDirectPerm_24826_3805 Mask@@18 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| Mask@@18) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24826_3805 Mask@@18 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_35396) (i@@13 Int) (lo@@6 Int) (hi@@9 Int) (ar@@9 T@Seq_42584) ) (! (dummyFunction_4112 (|sum_array#triggerStateless| i@@13 lo@@6 hi@@9 ar@@9))
 :qid |stdinbpl.766:15|
 :skolemid |63|
 :pattern ( (|sum_array'| Heap@@12 i@@13 lo@@6 hi@@9 ar@@9))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_35396) (i@@14 Int) (hi@@10 Int) (ar@@10 T@Seq_3683) (v_2@@5 Int) ) (! (dummyFunction_4112 (|count_list#triggerStateless| i@@14 hi@@10 ar@@10 v_2@@5))
 :qid |stdinbpl.1407:15|
 :skolemid |117|
 :pattern ( (|count_list'| Heap@@13 i@@14 hi@@10 ar@@10 v_2@@5))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_35396) (i@@15 Int) (hi@@11 Int) (ar@@11 T@Seq_42584) (v_2@@6 Int) ) (! (dummyFunction_4112 (|count_array#triggerStateless| i@@15 hi@@11 ar@@11 v_2@@6))
 :qid |stdinbpl.1492:15|
 :skolemid |121|
 :pattern ( (|count_array'| Heap@@14 i@@15 hi@@11 ar@@11 v_2@@6))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_35396) (ExhaleHeap@@3 T@PolymorphicMapType_35396) (Mask@@19 T@PolymorphicMapType_35417) (pm_f_6@@1 T@Field_24826_99058) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@3 Mask@@19) (=> (and (HasDirectPerm_24826_99122 Mask@@19 null pm_f_6@@1) (IsPredicateField_24826_99149 pm_f_6@@1)) (and (and (and (and (forall ((o2_6 T@Ref) (f_19 T@Field_35456_53) ) (!  (=> (select (|PolymorphicMapType_35945_35456_53#PolymorphicMapType_35945| (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@15) null (PredicateMaskField_24826 pm_f_6@@1))) o2_6 f_19) (= (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@15) o2_6 f_19) (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| ExhaleHeap@@3) o2_6 f_19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| ExhaleHeap@@3) o2_6 f_19))
)) (forall ((o2_6@@0 T@Ref) (f_19@@0 T@Field_35469_35470) ) (!  (=> (select (|PolymorphicMapType_35945_35456_35470#PolymorphicMapType_35945| (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@15) null (PredicateMaskField_24826 pm_f_6@@1))) o2_6@@0 f_19@@0) (= (select (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@15) o2_6@@0 f_19@@0) (select (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| ExhaleHeap@@3) o2_6@@0 f_19@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| ExhaleHeap@@3) o2_6@@0 f_19@@0))
))) (forall ((o2_6@@1 T@Ref) (f_19@@1 T@Field_41542_3805) ) (!  (=> (select (|PolymorphicMapType_35945_35456_3805#PolymorphicMapType_35945| (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@15) null (PredicateMaskField_24826 pm_f_6@@1))) o2_6@@1 f_19@@1) (= (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@15) o2_6@@1 f_19@@1) (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| ExhaleHeap@@3) o2_6@@1 f_19@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| ExhaleHeap@@3) o2_6@@1 f_19@@1))
))) (forall ((o2_6@@2 T@Ref) (f_19@@2 T@Field_24826_99058) ) (!  (=> (select (|PolymorphicMapType_35945_35456_99058#PolymorphicMapType_35945| (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@15) null (PredicateMaskField_24826 pm_f_6@@1))) o2_6@@2 f_19@@2) (= (select (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| Heap@@15) o2_6@@2 f_19@@2) (select (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| ExhaleHeap@@3) o2_6@@2 f_19@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| ExhaleHeap@@3) o2_6@@2 f_19@@2))
))) (forall ((o2_6@@3 T@Ref) (f_19@@3 T@Field_24826_99191) ) (!  (=> (select (|PolymorphicMapType_35945_35456_100369#PolymorphicMapType_35945| (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@15) null (PredicateMaskField_24826 pm_f_6@@1))) o2_6@@3 f_19@@3) (= (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@15) o2_6@@3 f_19@@3) (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| ExhaleHeap@@3) o2_6@@3 f_19@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| ExhaleHeap@@3) o2_6@@3 f_19@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@3 Mask@@19) (IsPredicateField_24826_99149 pm_f_6@@1))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_35396) (ExhaleHeap@@4 T@PolymorphicMapType_35396) (Mask@@20 T@PolymorphicMapType_35417) (pm_f_6@@2 T@Field_24826_99058) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@4 Mask@@20) (=> (and (HasDirectPerm_24826_99122 Mask@@20 null pm_f_6@@2) (IsWandField_24826_100896 pm_f_6@@2)) (and (and (and (and (forall ((o2_6@@4 T@Ref) (f_19@@4 T@Field_35456_53) ) (!  (=> (select (|PolymorphicMapType_35945_35456_53#PolymorphicMapType_35945| (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@16) null (WandMaskField_24826 pm_f_6@@2))) o2_6@@4 f_19@@4) (= (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@16) o2_6@@4 f_19@@4) (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| ExhaleHeap@@4) o2_6@@4 f_19@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| ExhaleHeap@@4) o2_6@@4 f_19@@4))
)) (forall ((o2_6@@5 T@Ref) (f_19@@5 T@Field_35469_35470) ) (!  (=> (select (|PolymorphicMapType_35945_35456_35470#PolymorphicMapType_35945| (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@16) null (WandMaskField_24826 pm_f_6@@2))) o2_6@@5 f_19@@5) (= (select (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@16) o2_6@@5 f_19@@5) (select (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| ExhaleHeap@@4) o2_6@@5 f_19@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| ExhaleHeap@@4) o2_6@@5 f_19@@5))
))) (forall ((o2_6@@6 T@Ref) (f_19@@6 T@Field_41542_3805) ) (!  (=> (select (|PolymorphicMapType_35945_35456_3805#PolymorphicMapType_35945| (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@16) null (WandMaskField_24826 pm_f_6@@2))) o2_6@@6 f_19@@6) (= (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@16) o2_6@@6 f_19@@6) (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| ExhaleHeap@@4) o2_6@@6 f_19@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| ExhaleHeap@@4) o2_6@@6 f_19@@6))
))) (forall ((o2_6@@7 T@Ref) (f_19@@7 T@Field_24826_99058) ) (!  (=> (select (|PolymorphicMapType_35945_35456_99058#PolymorphicMapType_35945| (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@16) null (WandMaskField_24826 pm_f_6@@2))) o2_6@@7 f_19@@7) (= (select (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| Heap@@16) o2_6@@7 f_19@@7) (select (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| ExhaleHeap@@4) o2_6@@7 f_19@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| ExhaleHeap@@4) o2_6@@7 f_19@@7))
))) (forall ((o2_6@@8 T@Ref) (f_19@@8 T@Field_24826_99191) ) (!  (=> (select (|PolymorphicMapType_35945_35456_100369#PolymorphicMapType_35945| (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@16) null (WandMaskField_24826 pm_f_6@@2))) o2_6@@8 f_19@@8) (= (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@16) o2_6@@8 f_19@@8) (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| ExhaleHeap@@4) o2_6@@8 f_19@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| ExhaleHeap@@4) o2_6@@8 f_19@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@4 Mask@@20) (IsWandField_24826_100896 pm_f_6@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.281:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3683| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.654:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3683| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_35396) (ExhaleHeap@@5 T@PolymorphicMapType_35396) (Mask@@21 T@PolymorphicMapType_35417) (o_14@@0 T@Ref) (f_19@@9 T@Field_24826_99191) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@5 Mask@@21) (=> (HasDirectPerm_24826_104896 Mask@@21 o_14@@0 f_19@@9) (= (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@17) o_14@@0 f_19@@9) (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| ExhaleHeap@@5) o_14@@0 f_19@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@5 Mask@@21) (select (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| ExhaleHeap@@5) o_14@@0 f_19@@9))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_35396) (ExhaleHeap@@6 T@PolymorphicMapType_35396) (Mask@@22 T@PolymorphicMapType_35417) (o_14@@1 T@Ref) (f_19@@10 T@Field_24826_99058) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@6 Mask@@22) (=> (HasDirectPerm_24826_99122 Mask@@22 o_14@@1 f_19@@10) (= (select (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| Heap@@18) o_14@@1 f_19@@10) (select (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| ExhaleHeap@@6) o_14@@1 f_19@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@6 Mask@@22) (select (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| ExhaleHeap@@6) o_14@@1 f_19@@10))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_35396) (ExhaleHeap@@7 T@PolymorphicMapType_35396) (Mask@@23 T@PolymorphicMapType_35417) (o_14@@2 T@Ref) (f_19@@11 T@Field_35469_35470) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@7 Mask@@23) (=> (HasDirectPerm_24826_35470 Mask@@23 o_14@@2 f_19@@11) (= (select (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@19) o_14@@2 f_19@@11) (select (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| ExhaleHeap@@7) o_14@@2 f_19@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@7 Mask@@23) (select (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| ExhaleHeap@@7) o_14@@2 f_19@@11))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_35396) (ExhaleHeap@@8 T@PolymorphicMapType_35396) (Mask@@24 T@PolymorphicMapType_35417) (o_14@@3 T@Ref) (f_19@@12 T@Field_35456_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@8 Mask@@24) (=> (HasDirectPerm_24826_53 Mask@@24 o_14@@3 f_19@@12) (= (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@20) o_14@@3 f_19@@12) (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| ExhaleHeap@@8) o_14@@3 f_19@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@8 Mask@@24) (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| ExhaleHeap@@8) o_14@@3 f_19@@12))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_35396) (ExhaleHeap@@9 T@PolymorphicMapType_35396) (Mask@@25 T@PolymorphicMapType_35417) (o_14@@4 T@Ref) (f_19@@13 T@Field_41542_3805) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@9 Mask@@25) (=> (HasDirectPerm_24826_3805 Mask@@25 o_14@@4 f_19@@13) (= (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@21) o_14@@4 f_19@@13) (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| ExhaleHeap@@9) o_14@@4 f_19@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@9 Mask@@25) (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| ExhaleHeap@@9) o_14@@4 f_19@@13))
)))
(assert (forall ((s0@@1 T@Seq_42584) (s1@@1 T@Seq_42584) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_24888|)) (not (= s1@@1 |Seq#Empty_24888|))) (= (|Seq#Length_24888| (|Seq#Append_42584| s0@@1 s1@@1)) (+ (|Seq#Length_24888| s0@@1) (|Seq#Length_24888| s1@@1))))
 :qid |stdinbpl.331:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_24888| (|Seq#Append_42584| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3683) (s1@@2 T@Seq_3683) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3683|)) (not (= s1@@2 |Seq#Empty_3683|))) (= (|Seq#Length_3683| (|Seq#Append_3683| s0@@2 s1@@2)) (+ (|Seq#Length_3683| s0@@2) (|Seq#Length_3683| s1@@2))))
 :qid |stdinbpl.331:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3683| (|Seq#Append_3683| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_24826_99191) ) (! (= (select (|PolymorphicMapType_35417_24826_103313#PolymorphicMapType_35417| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_35417_24826_103313#PolymorphicMapType_35417| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_24826_99058) ) (! (= (select (|PolymorphicMapType_35417_24826_99058#PolymorphicMapType_35417| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_35417_24826_99058#PolymorphicMapType_35417| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_35469_35470) ) (! (= (select (|PolymorphicMapType_35417_24826_35470#PolymorphicMapType_35417| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_35417_24826_35470#PolymorphicMapType_35417| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_35456_53) ) (! (= (select (|PolymorphicMapType_35417_24826_53#PolymorphicMapType_35417| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_35417_24826_53#PolymorphicMapType_35417| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_41542_3805) ) (! (= (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_35396) (Mask@@26 T@PolymorphicMapType_35417) (i@@16 Int) (hi@@12 Int) (ar@@12 T@Seq_3683) (v_2@@7 Int) ) (!  (=> (and (state Heap@@22 Mask@@26) (< AssumeFunctionsAbove 5)) (=> (and (and (<= 0 i@@16) (<= i@@16 hi@@12)) (<= hi@@12 (|Seq#Length_3683| ar@@12))) (= (count_list Heap@@22 i@@16 hi@@12 ar@@12 v_2@@7) (ite (< i@@16 hi@@12) (+ (ite (= (|Seq#Index_3683| ar@@12 i@@16) v_2@@7) 1 0) (|count_list'| Heap@@22 (+ i@@16 1) hi@@12 ar@@12 v_2@@7)) 0))))
 :qid |stdinbpl.1413:15|
 :skolemid |118|
 :pattern ( (state Heap@@22 Mask@@26) (count_list Heap@@22 i@@16 hi@@12 ar@@12 v_2@@7))
)))
(assert (forall ((s@@15 T@Seq_42584) (t@@1 T@Seq_42584) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_24888| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_24888| s@@15)) (|Seq#Length_24888| s@@15)) n@@15) (= (|Seq#Drop_24888| (|Seq#Append_42584| s@@15 t@@1) n@@15) (|Seq#Drop_24888| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_24888| s@@15))))))
 :qid |stdinbpl.488:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_24888| (|Seq#Append_42584| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3683) (t@@2 T@Seq_3683) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3683| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3683| s@@16)) (|Seq#Length_3683| s@@16)) n@@16) (= (|Seq#Drop_3683| (|Seq#Append_3683| s@@16 t@@2) n@@16) (|Seq#Drop_3683| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3683| s@@16))))))
 :qid |stdinbpl.488:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3683| (|Seq#Append_3683| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_35396) (i@@17 Int) (lo@@7 Int) (hi@@13 Int) (ar@@13 T@Seq_42584) ) (!  (and (= (sum_array Heap@@23 i@@17 lo@@7 hi@@13 ar@@13) (|sum_array'| Heap@@23 i@@17 lo@@7 hi@@13 ar@@13)) (dummyFunction_4112 (|sum_array#triggerStateless| i@@17 lo@@7 hi@@13 ar@@13)))
 :qid |stdinbpl.762:15|
 :skolemid |62|
 :pattern ( (sum_array Heap@@23 i@@17 lo@@7 hi@@13 ar@@13))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_35396) (i@@18 Int) (hi@@14 Int) (ar@@14 T@Seq_3683) (v_2@@8 Int) ) (!  (and (= (count_list Heap@@24 i@@18 hi@@14 ar@@14 v_2@@8) (|count_list'| Heap@@24 i@@18 hi@@14 ar@@14 v_2@@8)) (dummyFunction_4112 (|count_list#triggerStateless| i@@18 hi@@14 ar@@14 v_2@@8)))
 :qid |stdinbpl.1403:15|
 :skolemid |116|
 :pattern ( (count_list Heap@@24 i@@18 hi@@14 ar@@14 v_2@@8))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_35396) (i@@19 Int) (hi@@15 Int) (ar@@15 T@Seq_42584) (v_2@@9 Int) ) (!  (and (= (count_array Heap@@25 i@@19 hi@@15 ar@@15 v_2@@9) (|count_array'| Heap@@25 i@@19 hi@@15 ar@@15 v_2@@9)) (dummyFunction_4112 (|count_array#triggerStateless| i@@19 hi@@15 ar@@15 v_2@@9)))
 :qid |stdinbpl.1488:15|
 :skolemid |120|
 :pattern ( (count_array Heap@@25 i@@19 hi@@15 ar@@15 v_2@@9))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_35417) (SummandMask1 T@PolymorphicMapType_35417) (SummandMask2 T@PolymorphicMapType_35417) (o_2@@19 T@Ref) (f_4@@19 T@Field_24826_99191) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_35417_24826_103313#PolymorphicMapType_35417| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_35417_24826_103313#PolymorphicMapType_35417| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_35417_24826_103313#PolymorphicMapType_35417| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_35417_24826_103313#PolymorphicMapType_35417| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_35417_24826_103313#PolymorphicMapType_35417| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_35417_24826_103313#PolymorphicMapType_35417| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_35417) (SummandMask1@@0 T@PolymorphicMapType_35417) (SummandMask2@@0 T@PolymorphicMapType_35417) (o_2@@20 T@Ref) (f_4@@20 T@Field_24826_99058) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_35417_24826_99058#PolymorphicMapType_35417| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_35417_24826_99058#PolymorphicMapType_35417| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_35417_24826_99058#PolymorphicMapType_35417| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_35417_24826_99058#PolymorphicMapType_35417| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_35417_24826_99058#PolymorphicMapType_35417| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_35417_24826_99058#PolymorphicMapType_35417| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_35417) (SummandMask1@@1 T@PolymorphicMapType_35417) (SummandMask2@@1 T@PolymorphicMapType_35417) (o_2@@21 T@Ref) (f_4@@21 T@Field_35469_35470) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_35417_24826_35470#PolymorphicMapType_35417| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_35417_24826_35470#PolymorphicMapType_35417| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_35417_24826_35470#PolymorphicMapType_35417| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_35417_24826_35470#PolymorphicMapType_35417| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_35417_24826_35470#PolymorphicMapType_35417| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_35417_24826_35470#PolymorphicMapType_35417| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_35417) (SummandMask1@@2 T@PolymorphicMapType_35417) (SummandMask2@@2 T@PolymorphicMapType_35417) (o_2@@22 T@Ref) (f_4@@22 T@Field_35456_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_35417_24826_53#PolymorphicMapType_35417| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_35417_24826_53#PolymorphicMapType_35417| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_35417_24826_53#PolymorphicMapType_35417| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_35417_24826_53#PolymorphicMapType_35417| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_35417_24826_53#PolymorphicMapType_35417| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_35417_24826_53#PolymorphicMapType_35417| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_35417) (SummandMask1@@3 T@PolymorphicMapType_35417) (SummandMask2@@3 T@PolymorphicMapType_35417) (o_2@@23 T@Ref) (f_4@@23 T@Field_41542_3805) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_35417_24826_3805#PolymorphicMapType_35417| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_35396) (i@@20 Int) (lo@@8 Int) (hi@@16 Int) (step@@6 Int) (vmin@@6 Int) (vmax@@6 Int) (ar@@16 T@Seq_42584) ) (!  (and (= (sum_square Heap@@26 i@@20 lo@@8 hi@@16 step@@6 vmin@@6 vmax@@6 ar@@16) (|sum_square'| Heap@@26 i@@20 lo@@8 hi@@16 step@@6 vmin@@6 vmax@@6 ar@@16)) (dummyFunction_4112 (|sum_square#triggerStateless| i@@20 lo@@8 hi@@16 step@@6 vmin@@6 vmax@@6 ar@@16)))
 :qid |stdinbpl.955:15|
 :skolemid |80|
 :pattern ( (sum_square Heap@@26 i@@20 lo@@8 hi@@16 step@@6 vmin@@6 vmax@@6 ar@@16))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_35396) (Mask@@27 T@PolymorphicMapType_35417) (i@@21 Int) (hi@@17 Int) (ar@@17 T@Seq_3683) (v_2@@10 Int) ) (!  (=> (state Heap@@27 Mask@@27) (= (|count_list'| Heap@@27 i@@21 hi@@17 ar@@17 v_2@@10) (|count_list#frame| EmptyFrame i@@21 hi@@17 ar@@17 v_2@@10)))
 :qid |stdinbpl.1420:15|
 :skolemid |119|
 :pattern ( (state Heap@@27 Mask@@27) (|count_list'| Heap@@27 i@@21 hi@@17 ar@@17 v_2@@10))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_35396) (Heap1Heap@@1 T@PolymorphicMapType_35396) (i@@22 Int) (hi@@18 Int) (ar@@18 T@Seq_42584) (v_2@@11 Int) ) (!  (=> (and (= (|Seq#Contains_3683| (|Seq#Range| 0 hi@@18) (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@22 hi@@18 ar@@18 v_2@@11) (|count_array#condqp4| Heap1Heap@@1 i@@22 hi@@18 ar@@18 v_2@@11))) (|Seq#Contains_3683| (|Seq#Range| 0 hi@@18) (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@22 hi@@18 ar@@18 v_2@@11) (|count_array#condqp4| Heap1Heap@@1 i@@22 hi@@18 ar@@18 v_2@@11)))) (=> (|Seq#Contains_3683| (|Seq#Range| 0 hi@@18) (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@22 hi@@18 ar@@18 v_2@@11) (|count_array#condqp4| Heap1Heap@@1 i@@22 hi@@18 ar@@18 v_2@@11))) (= (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap2Heap@@1) (|Seq#Index_24865| ar@@18 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@22 hi@@18 ar@@18 v_2@@11) (|count_array#condqp4| Heap1Heap@@1 i@@22 hi@@18 ar@@18 v_2@@11))) Ref__Integer_value) (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap1Heap@@1) (|Seq#Index_24865| ar@@18 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@22 hi@@18 ar@@18 v_2@@11) (|count_array#condqp4| Heap1Heap@@1 i@@22 hi@@18 ar@@18 v_2@@11))) Ref__Integer_value)))) (= (|count_array#condqp4| Heap2Heap@@1 i@@22 hi@@18 ar@@18 v_2@@11) (|count_array#condqp4| Heap1Heap@@1 i@@22 hi@@18 ar@@18 v_2@@11)))
 :qid |stdinbpl.1515:15|
 :skolemid |124|
 :pattern ( (|count_array#condqp4| Heap2Heap@@1 i@@22 hi@@18 ar@@18 v_2@@11) (|count_array#condqp4| Heap1Heap@@1 i@@22 hi@@18 ar@@18 v_2@@11) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.653:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_35396) (Heap1Heap@@2 T@PolymorphicMapType_35396) (i@@23 Int) (lo@@9 Int) (hi@@19 Int) (ar@@19 T@Seq_42584) ) (!  (=> (and (= (|Seq#Contains_3683| (|Seq#Range| lo@@9 hi@@19) (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@23 lo@@9 hi@@19 ar@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@23 lo@@9 hi@@19 ar@@19))) (|Seq#Contains_3683| (|Seq#Range| lo@@9 hi@@19) (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@23 lo@@9 hi@@19 ar@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@23 lo@@9 hi@@19 ar@@19)))) (=> (|Seq#Contains_3683| (|Seq#Range| lo@@9 hi@@19) (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@23 lo@@9 hi@@19 ar@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@23 lo@@9 hi@@19 ar@@19))) (= (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap2Heap@@2) (|Seq#Index_24865| ar@@19 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@23 lo@@9 hi@@19 ar@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@23 lo@@9 hi@@19 ar@@19))) Ref__Integer_value) (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap1Heap@@2) (|Seq#Index_24865| ar@@19 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@23 lo@@9 hi@@19 ar@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@23 lo@@9 hi@@19 ar@@19))) Ref__Integer_value)))) (= (|sum_array#condqp1| Heap2Heap@@2 i@@23 lo@@9 hi@@19 ar@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@23 lo@@9 hi@@19 ar@@19)))
 :qid |stdinbpl.789:15|
 :skolemid |66|
 :pattern ( (|sum_array#condqp1| Heap2Heap@@2 i@@23 lo@@9 hi@@19 ar@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@23 lo@@9 hi@@19 ar@@19) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((a T@Seq_42584) (b T@Seq_42584) ) (!  (=> (|Seq#Equal_42584| a b) (= a b))
 :qid |stdinbpl.626:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_42584| a b))
)))
(assert (forall ((a@@0 T@Seq_3683) (b@@0 T@Seq_3683) ) (!  (=> (|Seq#Equal_3683| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.626:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3683| a@@0 b@@0))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_35396) (i@@24 Int) (hi@@20 Int) (ar@@20 T@Seq_3683) ) (!  (and (= (sum_list Heap@@28 i@@24 hi@@20 ar@@20) (|sum_list'| Heap@@28 i@@24 hi@@20 ar@@20)) (dummyFunction_4112 (|sum_list#triggerStateless| i@@24 hi@@20 ar@@20)))
 :qid |stdinbpl.677:15|
 :skolemid |58|
 :pattern ( (sum_list Heap@@28 i@@24 hi@@20 ar@@20))
)))
(assert (forall ((s@@17 T@Seq_42584) (i@@25 Int) ) (!  (=> (and (<= 0 i@@25) (< i@@25 (|Seq#Length_24888| s@@17))) (|Seq#ContainsTrigger_24888| s@@17 (|Seq#Index_24865| s@@17 i@@25)))
 :qid |stdinbpl.519:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_24865| s@@17 i@@25))
)))
(assert (forall ((s@@18 T@Seq_3683) (i@@26 Int) ) (!  (=> (and (<= 0 i@@26) (< i@@26 (|Seq#Length_3683| s@@18))) (|Seq#ContainsTrigger_3683| s@@18 (|Seq#Index_3683| s@@18 i@@26)))
 :qid |stdinbpl.519:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3683| s@@18 i@@26))
)))
(assert (forall ((s0@@3 T@Seq_42584) (s1@@3 T@Seq_42584) ) (!  (and (=> (= s0@@3 |Seq#Empty_24888|) (= (|Seq#Append_42584| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_24888|) (= (|Seq#Append_42584| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.337:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_42584| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3683) (s1@@4 T@Seq_3683) ) (!  (and (=> (= s0@@4 |Seq#Empty_3683|) (= (|Seq#Append_3683| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3683|) (= (|Seq#Append_3683| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.337:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3683| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_24865| (|Seq#Singleton_24888| t@@3) 0) t@@3)
 :qid |stdinbpl.341:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_24888| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3683| (|Seq#Singleton_3683| t@@4) 0) t@@4)
 :qid |stdinbpl.341:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3683| t@@4))
)))
(assert (forall ((s@@19 T@Seq_42584) ) (! (<= 0 (|Seq#Length_24888| s@@19))
 :qid |stdinbpl.320:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_24888| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3683) ) (! (<= 0 (|Seq#Length_3683| s@@20))
 :qid |stdinbpl.320:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3683| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_42584) (s1@@5 T@Seq_42584) ) (!  (=> (|Seq#Equal_42584| s0@@5 s1@@5) (and (= (|Seq#Length_24888| s0@@5) (|Seq#Length_24888| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_24888| s0@@5))) (= (|Seq#Index_24865| s0@@5 j@@6) (|Seq#Index_24865| s1@@5 j@@6)))
 :qid |stdinbpl.616:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_24865| s0@@5 j@@6))
 :pattern ( (|Seq#Index_24865| s1@@5 j@@6))
))))
 :qid |stdinbpl.613:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_42584| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3683) (s1@@6 T@Seq_3683) ) (!  (=> (|Seq#Equal_3683| s0@@6 s1@@6) (and (= (|Seq#Length_3683| s0@@6) (|Seq#Length_3683| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3683| s0@@6))) (= (|Seq#Index_3683| s0@@6 j@@7) (|Seq#Index_3683| s1@@6 j@@7)))
 :qid |stdinbpl.616:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3683| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3683| s1@@6 j@@7))
))))
 :qid |stdinbpl.613:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3683| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_24888| (|Seq#Singleton_24888| t@@5)) 1)
 :qid |stdinbpl.328:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_24888| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3683| (|Seq#Singleton_3683| t@@6)) 1)
 :qid |stdinbpl.328:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3683| t@@6))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_35396) (Mask@@28 T@PolymorphicMapType_35417) (i@@27 Int) (hi@@21 Int) (ar@@21 T@Seq_3683) ) (!  (=> (and (state Heap@@29 Mask@@28) (< AssumeFunctionsAbove 4)) (=> (and (and (<= 0 i@@27) (<= i@@27 hi@@21)) (<= hi@@21 (|Seq#Length_3683| ar@@21))) (= (sum_list Heap@@29 i@@27 hi@@21 ar@@21) (ite (< i@@27 hi@@21) (+ (|Seq#Index_3683| ar@@21 i@@27) (|sum_list'| Heap@@29 (+ i@@27 1) hi@@21 ar@@21)) 0))))
 :qid |stdinbpl.687:15|
 :skolemid |60|
 :pattern ( (state Heap@@29 Mask@@28) (sum_list Heap@@29 i@@27 hi@@21 ar@@21))
)))
(assert (forall ((s@@21 T@Seq_42584) (t@@7 T@Seq_42584) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_24888| s@@21))) (= (|Seq#Take_24888| (|Seq#Append_42584| s@@21 t@@7) n@@17) (|Seq#Take_24888| s@@21 n@@17)))
 :qid |stdinbpl.470:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_24888| (|Seq#Append_42584| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3683) (t@@8 T@Seq_3683) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3683| s@@22))) (= (|Seq#Take_3683| (|Seq#Append_3683| s@@22 t@@8) n@@18) (|Seq#Take_3683| s@@22 n@@18)))
 :qid |stdinbpl.470:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3683| (|Seq#Append_3683| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_42584) (i@@28 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@28) (< i@@28 (|Seq#Length_24888| s@@23))) (= (|Seq#Length_24888| (|Seq#Update_24888| s@@23 i@@28 v@@2)) (|Seq#Length_24888| s@@23)))
 :qid |stdinbpl.369:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_24888| (|Seq#Update_24888| s@@23 i@@28 v@@2)))
 :pattern ( (|Seq#Length_24888| s@@23) (|Seq#Update_24888| s@@23 i@@28 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3683) (i@@29 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@29) (< i@@29 (|Seq#Length_3683| s@@24))) (= (|Seq#Length_3683| (|Seq#Update_3683| s@@24 i@@29 v@@3)) (|Seq#Length_3683| s@@24)))
 :qid |stdinbpl.369:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3683| (|Seq#Update_3683| s@@24 i@@29 v@@3)))
 :pattern ( (|Seq#Length_3683| s@@24) (|Seq#Update_3683| s@@24 i@@29 v@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_35396) (o_13 T@Ref) (f_13 T@Field_24826_99058) (v@@4 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_35396 (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@30) (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@30) (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@30) (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@30) (store (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| Heap@@30) o_13 f_13 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_35396 (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@30) (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@30) (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@30) (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@30) (store (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| Heap@@30) o_13 f_13 v@@4)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_35396) (o_13@@0 T@Ref) (f_13@@0 T@Field_24826_99191) (v@@5 T@PolymorphicMapType_35945) ) (! (succHeap Heap@@31 (PolymorphicMapType_35396 (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@31) (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@31) (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@31) (store (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@31) o_13@@0 f_13@@0 v@@5) (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_35396 (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@31) (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@31) (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@31) (store (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@31) o_13@@0 f_13@@0 v@@5) (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_35396) (o_13@@1 T@Ref) (f_13@@1 T@Field_41542_3805) (v@@6 Int) ) (! (succHeap Heap@@32 (PolymorphicMapType_35396 (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@32) (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@32) (store (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@32) o_13@@1 f_13@@1 v@@6) (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@32) (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_35396 (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@32) (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@32) (store (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@32) o_13@@1 f_13@@1 v@@6) (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@32) (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_35396) (o_13@@2 T@Ref) (f_13@@2 T@Field_35469_35470) (v@@7 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_35396 (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@33) (store (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@33) o_13@@2 f_13@@2 v@@7) (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@33) (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@33) (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_35396 (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@33) (store (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@33) o_13@@2 f_13@@2 v@@7) (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@33) (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@33) (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_35396) (o_13@@3 T@Ref) (f_13@@3 T@Field_35456_53) (v@@8 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_35396 (store (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@34) o_13@@3 f_13@@3 v@@8) (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@34) (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@34) (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@34) (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_35396 (store (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@34) o_13@@3 f_13@@3 v@@8) (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@34) (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@34) (|PolymorphicMapType_35396_24826_99235#PolymorphicMapType_35396| Heap@@34) (|PolymorphicMapType_35396_35456_99058#PolymorphicMapType_35396| Heap@@34)))
)))
(assert (forall ((s@@25 T@Seq_42584) (t@@9 T@Seq_42584) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_24888| s@@25))) (= (|Seq#Drop_24888| (|Seq#Append_42584| s@@25 t@@9) n@@19) (|Seq#Append_42584| (|Seq#Drop_24888| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.484:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_24888| (|Seq#Append_42584| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3683) (t@@10 T@Seq_3683) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3683| s@@26))) (= (|Seq#Drop_3683| (|Seq#Append_3683| s@@26 t@@10) n@@20) (|Seq#Append_3683| (|Seq#Drop_3683| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.484:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3683| (|Seq#Append_3683| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_42584) (n@@21 Int) (i@@30 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@30)) (< i@@30 (|Seq#Length_24888| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@30 n@@21) n@@21) i@@30) (= (|Seq#Index_24865| (|Seq#Drop_24888| s@@27 n@@21) (|Seq#Sub| i@@30 n@@21)) (|Seq#Index_24865| s@@27 i@@30))))
 :qid |stdinbpl.420:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_24888| s@@27 n@@21) (|Seq#Index_24865| s@@27 i@@30))
)))
(assert (forall ((s@@28 T@Seq_3683) (n@@22 Int) (i@@31 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@31)) (< i@@31 (|Seq#Length_3683| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@31 n@@22) n@@22) i@@31) (= (|Seq#Index_3683| (|Seq#Drop_3683| s@@28 n@@22) (|Seq#Sub| i@@31 n@@22)) (|Seq#Index_3683| s@@28 i@@31))))
 :qid |stdinbpl.420:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3683| s@@28 n@@22) (|Seq#Index_3683| s@@28 i@@31))
)))
(assert (forall ((s0@@7 T@Seq_42584) (s1@@7 T@Seq_42584) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_24888|)) (not (= s1@@7 |Seq#Empty_24888|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_24888| s0@@7))) (= (|Seq#Index_24865| (|Seq#Append_42584| s0@@7 s1@@7) n@@23) (|Seq#Index_24865| s0@@7 n@@23)))
 :qid |stdinbpl.360:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_24865| (|Seq#Append_42584| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_24865| s0@@7 n@@23) (|Seq#Append_42584| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3683) (s1@@8 T@Seq_3683) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3683|)) (not (= s1@@8 |Seq#Empty_3683|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3683| s0@@8))) (= (|Seq#Index_3683| (|Seq#Append_3683| s0@@8 s1@@8) n@@24) (|Seq#Index_3683| s0@@8 n@@24)))
 :qid |stdinbpl.360:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3683| (|Seq#Append_3683| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3683| s0@@8 n@@24) (|Seq#Append_3683| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_42584) (s1@@9 T@Seq_42584) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_24888|)) (not (= s1@@9 |Seq#Empty_24888|))) (<= 0 m)) (< m (|Seq#Length_24888| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_24888| s0@@9)) (|Seq#Length_24888| s0@@9)) m) (= (|Seq#Index_24865| (|Seq#Append_42584| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_24888| s0@@9))) (|Seq#Index_24865| s1@@9 m))))
 :qid |stdinbpl.365:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_24865| s1@@9 m) (|Seq#Append_42584| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3683) (s1@@10 T@Seq_3683) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3683|)) (not (= s1@@10 |Seq#Empty_3683|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3683| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3683| s0@@10)) (|Seq#Length_3683| s0@@10)) m@@0) (= (|Seq#Index_3683| (|Seq#Append_3683| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3683| s0@@10))) (|Seq#Index_3683| s1@@10 m@@0))))
 :qid |stdinbpl.365:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3683| s1@@10 m@@0) (|Seq#Append_3683| s0@@10 s1@@10))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_35396) (Mask@@29 T@PolymorphicMapType_35417) (i@@32 Int) (lo@@10 Int) (hi@@22 Int) (ar@@22 T@Seq_42584) ) (!  (=> (and (state Heap@@35 Mask@@29) (< AssumeFunctionsAbove 2)) (=> (and (<= 0 lo@@10) (and (<= lo@@10 i@@32) (<= i@@32 hi@@22))) (= (sum_array Heap@@35 i@@32 lo@@10 hi@@22 ar@@22) (ite (< i@@32 hi@@22) (+ (select (|PolymorphicMapType_35396_24826_3805#PolymorphicMapType_35396| Heap@@35) (|Seq#Index_24865| ar@@22 i@@32) Ref__Integer_value) (|sum_array'| Heap@@35 (+ i@@32 1) lo@@10 hi@@22 ar@@22)) 0))))
 :qid |stdinbpl.772:15|
 :skolemid |64|
 :pattern ( (state Heap@@35 Mask@@29) (sum_array Heap@@35 i@@32 lo@@10 hi@@22 ar@@22))
)))
(assert (forall ((o_13@@4 T@Ref) (f_18 T@Field_35469_35470) (Heap@@36 T@PolymorphicMapType_35396) ) (!  (=> (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@36) o_13@@4 $allocated) (select (|PolymorphicMapType_35396_24570_53#PolymorphicMapType_35396| Heap@@36) (select (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@36) o_13@@4 f_18) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_35396_24573_24574#PolymorphicMapType_35396| Heap@@36) o_13@@4 f_18))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_35396) (Mask@@30 T@PolymorphicMapType_35417) (i@@33 Int) (lo@@11 Int) (hi@@23 Int) (step@@7 Int) (vmin@@7 Int) (vmax@@7 Int) (ar@@23 T@Seq_42584) ) (!  (=> (state Heap@@37 Mask@@30) (= (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax@@7 ar@@23) (|sum_square#frame| (FrameFragment_4608 (|sum_square#condqp2| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax@@7 ar@@23)) i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax@@7 ar@@23)))
 :qid |stdinbpl.972:15|
 :skolemid |83|
 :pattern ( (state Heap@@37 Mask@@30) (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax@@7 ar@@23))
)))
(assert (forall ((s@@29 T@Seq_42584) (x@@3 T@Ref) (i@@34 Int) ) (!  (=> (and (and (<= 0 i@@34) (< i@@34 (|Seq#Length_24888| s@@29))) (= (|Seq#Index_24865| s@@29 i@@34) x@@3)) (|Seq#Contains_42584| s@@29 x@@3))
 :qid |stdinbpl.517:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_42584| s@@29 x@@3) (|Seq#Index_24865| s@@29 i@@34))
)))
(assert (forall ((s@@30 T@Seq_3683) (x@@4 Int) (i@@35 Int) ) (!  (=> (and (and (<= 0 i@@35) (< i@@35 (|Seq#Length_3683| s@@30))) (= (|Seq#Index_3683| s@@30 i@@35) x@@4)) (|Seq#Contains_3683| s@@30 x@@4))
 :qid |stdinbpl.517:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3683| s@@30 x@@4) (|Seq#Index_3683| s@@30 i@@35))
)))
(assert (forall ((s0@@11 T@Seq_42584) (s1@@11 T@Seq_42584) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_42584| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_42584| s0@@11 s1@@11))) (not (= (|Seq#Length_24888| s0@@11) (|Seq#Length_24888| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_42584| s0@@11 s1@@11))) (= (|Seq#Length_24888| s0@@11) (|Seq#Length_24888| s1@@11))) (= (|Seq#SkolemDiff_42584| s0@@11 s1@@11) (|Seq#SkolemDiff_42584| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_42584| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_42584| s0@@11 s1@@11) (|Seq#Length_24888| s0@@11))) (not (= (|Seq#Index_24865| s0@@11 (|Seq#SkolemDiff_42584| s0@@11 s1@@11)) (|Seq#Index_24865| s1@@11 (|Seq#SkolemDiff_42584| s0@@11 s1@@11))))))
 :qid |stdinbpl.621:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_42584| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3683) (s1@@12 T@Seq_3683) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3683| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3683| s0@@12 s1@@12))) (not (= (|Seq#Length_3683| s0@@12) (|Seq#Length_3683| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3683| s0@@12 s1@@12))) (= (|Seq#Length_3683| s0@@12) (|Seq#Length_3683| s1@@12))) (= (|Seq#SkolemDiff_3683| s0@@12 s1@@12) (|Seq#SkolemDiff_3683| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3683| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3683| s0@@12 s1@@12) (|Seq#Length_3683| s0@@12))) (not (= (|Seq#Index_3683| s0@@12 (|Seq#SkolemDiff_3683| s0@@12 s1@@12)) (|Seq#Index_3683| s1@@12 (|Seq#SkolemDiff_3683| s0@@12 s1@@12))))))
 :qid |stdinbpl.621:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3683| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_24826_99058) (v_1@@0 T@FrameType) (q T@Field_24826_99058) (w@@0 T@FrameType) (r T@Field_24826_99058) (u T@FrameType) ) (!  (=> (and (InsidePredicate_35456_35456 p@@1 v_1@@0 q w@@0) (InsidePredicate_35456_35456 q w@@0 r u)) (InsidePredicate_35456_35456 p@@1 v_1@@0 r u))
 :qid |stdinbpl.288:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35456_35456 p@@1 v_1@@0 q w@@0) (InsidePredicate_35456_35456 q w@@0 r u))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_35396) (i@@36 Int) (lo@@12 Int) (hi@@24 Int) (step@@8 Int) (vmin@@8 Int) (vmax@@8 Int) (ar@@24 T@Seq_42584) ) (! (dummyFunction_4112 (|sum_square#triggerStateless| i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax@@8 ar@@24))
 :qid |stdinbpl.959:15|
 :skolemid |81|
 :pattern ( (|sum_square'| Heap@@38 i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax@@8 ar@@24))
)))
(assert (forall ((s@@31 T@Seq_42584) ) (!  (=> (= (|Seq#Length_24888| s@@31) 0) (= s@@31 |Seq#Empty_24888|))
 :qid |stdinbpl.324:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_24888| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3683) ) (!  (=> (= (|Seq#Length_3683| s@@32) 0) (= s@@32 |Seq#Empty_3683|))
 :qid |stdinbpl.324:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3683| s@@32))
)))
(assert (forall ((s@@33 T@Seq_42584) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_24888| s@@33 n@@25) |Seq#Empty_24888|))
 :qid |stdinbpl.500:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_24888| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3683) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3683| s@@34 n@@26) |Seq#Empty_3683|))
 :qid |stdinbpl.500:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3683| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@39 T@PolymorphicMapType_35396) (Mask@@31 T@PolymorphicMapType_35417) (i@@37 Int) (lo@@13 Int) (hi@@25 Int) (ar@@25 T@Seq_42584) ) (!  (=> (state Heap@@39 Mask@@31) (= (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar@@25) (|sum_array#frame| (FrameFragment_4608 (|sum_array#condqp1| Heap@@39 i@@37 lo@@13 hi@@25 ar@@25)) i@@37 lo@@13 hi@@25 ar@@25)))
 :qid |stdinbpl.779:15|
 :skolemid |65|
 :pattern ( (state Heap@@39 Mask@@31) (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar@@25))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_35396) (Mask@@32 T@PolymorphicMapType_35417) (i@@38 Int) (hi@@26 Int) (ar@@26 T@Seq_42584) (v_2@@12 Int) ) (!  (=> (state Heap@@40 Mask@@32) (= (|count_array'| Heap@@40 i@@38 hi@@26 ar@@26 v_2@@12) (|count_array#frame| (FrameFragment_4608 (|count_array#condqp4| Heap@@40 i@@38 hi@@26 ar@@26 v_2@@12)) i@@38 hi@@26 ar@@26 v_2@@12)))
 :qid |stdinbpl.1505:15|
 :skolemid |123|
 :pattern ( (state Heap@@40 Mask@@32) (|count_array'| Heap@@40 i@@38 hi@@26 ar@@26 v_2@@12))
)))
; Invalid

