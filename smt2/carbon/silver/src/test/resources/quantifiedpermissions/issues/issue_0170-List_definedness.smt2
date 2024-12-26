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
(declare-sort T@Field_12646_53 0)
(declare-sort T@Field_12659_12660 0)
(declare-sort T@Field_18772_18777 0)
(declare-sort T@Seq_18775 0)
(declare-sort T@Field_18725_3145 0)
(declare-sort T@Field_18838_18839 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_18851_18856 0)
(declare-sort T@Field_7833_7839 0)
(declare-sort T@Field_7833_18856 0)
(declare-sort T@Field_7838_21174 0)
(declare-sort T@Field_7838_7829 0)
(declare-sort T@Field_7838_53 0)
(declare-sort T@Field_7838_3145 0)
(declare-datatypes ((T@PolymorphicMapType_12607 0)) (((PolymorphicMapType_12607 (|PolymorphicMapType_12607_7833_21055#PolymorphicMapType_12607| (Array T@Ref T@Field_18772_18777 Real)) (|PolymorphicMapType_12607_7831_3145#PolymorphicMapType_12607| (Array T@Ref T@Field_18725_3145 Real)) (|PolymorphicMapType_12607_7828_7829#PolymorphicMapType_12607| (Array T@Ref T@Field_12659_12660 Real)) (|PolymorphicMapType_12607_7838_7839#PolymorphicMapType_12607| (Array T@Ref T@Field_18838_18839 Real)) (|PolymorphicMapType_12607_7833_7839#PolymorphicMapType_12607| (Array T@Ref T@Field_7833_7839 Real)) (|PolymorphicMapType_12607_7833_53#PolymorphicMapType_12607| (Array T@Ref T@Field_12646_53 Real)) (|PolymorphicMapType_12607_7833_51182#PolymorphicMapType_12607| (Array T@Ref T@Field_7833_18856 Real)) (|PolymorphicMapType_12607_7838_21055#PolymorphicMapType_12607| (Array T@Ref T@Field_7838_21174 Real)) (|PolymorphicMapType_12607_7838_3145#PolymorphicMapType_12607| (Array T@Ref T@Field_7838_3145 Real)) (|PolymorphicMapType_12607_7838_7829#PolymorphicMapType_12607| (Array T@Ref T@Field_7838_7829 Real)) (|PolymorphicMapType_12607_7838_53#PolymorphicMapType_12607| (Array T@Ref T@Field_7838_53 Real)) (|PolymorphicMapType_12607_7838_51676#PolymorphicMapType_12607| (Array T@Ref T@Field_18851_18856 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13135 0)) (((PolymorphicMapType_13135 (|PolymorphicMapType_13135_7833_38498#PolymorphicMapType_13135| (Array T@Ref T@Field_18772_18777 Bool)) (|PolymorphicMapType_13135_7831_3145#PolymorphicMapType_13135| (Array T@Ref T@Field_18725_3145 Bool)) (|PolymorphicMapType_13135_7828_7829#PolymorphicMapType_13135| (Array T@Ref T@Field_12659_12660 Bool)) (|PolymorphicMapType_13135_7833_53#PolymorphicMapType_13135| (Array T@Ref T@Field_12646_53 Bool)) (|PolymorphicMapType_13135_7833_18839#PolymorphicMapType_13135| (Array T@Ref T@Field_7833_7839 Bool)) (|PolymorphicMapType_13135_7833_43883#PolymorphicMapType_13135| (Array T@Ref T@Field_7833_18856 Bool)) (|PolymorphicMapType_13135_18838_38498#PolymorphicMapType_13135| (Array T@Ref T@Field_7838_21174 Bool)) (|PolymorphicMapType_13135_18838_3145#PolymorphicMapType_13135| (Array T@Ref T@Field_7838_3145 Bool)) (|PolymorphicMapType_13135_18838_7829#PolymorphicMapType_13135| (Array T@Ref T@Field_7838_7829 Bool)) (|PolymorphicMapType_13135_18838_53#PolymorphicMapType_13135| (Array T@Ref T@Field_7838_53 Bool)) (|PolymorphicMapType_13135_18838_18839#PolymorphicMapType_13135| (Array T@Ref T@Field_18838_18839 Bool)) (|PolymorphicMapType_13135_18838_45135#PolymorphicMapType_13135| (Array T@Ref T@Field_18851_18856 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12586 0)) (((PolymorphicMapType_12586 (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| (Array T@Ref T@Field_12646_53 Bool)) (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| (Array T@Ref T@Field_12659_12660 T@Ref)) (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| (Array T@Ref T@Field_18772_18777 T@Seq_18775)) (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| (Array T@Ref T@Field_18725_3145 Int)) (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| (Array T@Ref T@Field_18838_18839 T@FrameType)) (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| (Array T@Ref T@Field_18851_18856 T@PolymorphicMapType_13135)) (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| (Array T@Ref T@Field_7833_7839 T@FrameType)) (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| (Array T@Ref T@Field_7833_18856 T@PolymorphicMapType_13135)) (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| (Array T@Ref T@Field_7838_21174 T@Seq_18775)) (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| (Array T@Ref T@Field_7838_7829 T@Ref)) (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| (Array T@Ref T@Field_7838_53 Bool)) (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| (Array T@Ref T@Field_7838_3145 Int)) ) ) ))
(declare-fun $allocated () T@Field_12646_53)
(declare-fun next () T@Field_12659_12660)
(declare-fun val () T@Field_18725_3145)
(declare-fun nodes () T@Field_18772_18777)
(declare-fun |Seq#Length_7834| (T@Seq_18775) Int)
(declare-fun |Seq#Drop_7834| (T@Seq_18775 Int) T@Seq_18775)
(declare-sort T@Seq_3008 0)
(declare-fun |Seq#Length_3008| (T@Seq_3008) Int)
(declare-fun |Seq#Drop_3008| (T@Seq_3008 Int) T@Seq_3008)
(declare-fun succHeap (T@PolymorphicMapType_12586 T@PolymorphicMapType_12586) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_12586 T@PolymorphicMapType_12586) Bool)
(declare-fun |List#condqp1| (T@PolymorphicMapType_12586 T@Ref) Int)
(declare-fun |sk_List#condqp1| (Int Int) Int)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun |Seq#Index_7834| (T@Seq_18775 Int) T@Ref)
(declare-fun |List#condqp2| (T@PolymorphicMapType_12586 T@Ref) Int)
(declare-fun |sk_List#condqp2| (Int Int) Int)
(declare-fun state (T@PolymorphicMapType_12586 T@PolymorphicMapType_12607) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_12607) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_13135)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3008| (T@Seq_3008 Int) Int)
(declare-fun |Seq#Empty_7834| () T@Seq_18775)
(declare-fun |Seq#Empty_3008| () T@Seq_3008)
(declare-fun List (T@Ref) T@Field_18838_18839)
(declare-fun IsPredicateField_7838_7839 (T@Field_18838_18839) Bool)
(declare-fun |List#trigger_7838| (T@PolymorphicMapType_12586 T@Field_18838_18839) Bool)
(declare-fun |List#everUsed_7838| (T@Field_18838_18839) Bool)
(declare-fun |Seq#Update_7834| (T@Seq_18775 Int T@Ref) T@Seq_18775)
(declare-fun |Seq#Update_3008| (T@Seq_3008 Int Int) T@Seq_3008)
(declare-fun |Seq#Take_7834| (T@Seq_18775 Int) T@Seq_18775)
(declare-fun |Seq#Take_3008| (T@Seq_3008 Int) T@Seq_3008)
(declare-fun |Seq#Contains_3008| (T@Seq_3008 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3008)
(declare-fun |Seq#Contains_18775| (T@Seq_18775 T@Ref) Bool)
(declare-fun |Seq#Skolem_18775| (T@Seq_18775 T@Ref) Int)
(declare-fun |Seq#Skolem_3008| (T@Seq_3008 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_12586 T@PolymorphicMapType_12586 T@PolymorphicMapType_12607) Bool)
(declare-fun HasDirectPerm_7838_7839 (T@PolymorphicMapType_12607 T@Ref T@Field_18838_18839) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7838 (T@Field_18838_18839) T@Field_18851_18856)
(declare-fun IsPredicateField_7833_42237 (T@Field_7833_7839) Bool)
(declare-fun HasDirectPerm_7833_7839 (T@PolymorphicMapType_12607 T@Ref T@Field_7833_7839) Bool)
(declare-fun PredicateMaskField_7833 (T@Field_7833_7839) T@Field_7833_18856)
(declare-fun IsWandField_7838_46300 (T@Field_18838_18839) Bool)
(declare-fun WandMaskField_7838 (T@Field_18838_18839) T@Field_18851_18856)
(declare-fun IsWandField_7833_45943 (T@Field_7833_7839) Bool)
(declare-fun WandMaskField_7833 (T@Field_7833_7839) T@Field_7833_18856)
(declare-fun |Seq#Singleton_7834| (T@Ref) T@Seq_18775)
(declare-fun |Seq#Singleton_3008| (Int) T@Seq_3008)
(declare-fun |List#sm| (T@Ref) T@Field_18851_18856)
(declare-fun |Seq#Append_18775| (T@Seq_18775 T@Seq_18775) T@Seq_18775)
(declare-fun |Seq#Append_3008| (T@Seq_3008 T@Seq_3008) T@Seq_3008)
(declare-fun dummyHeap () T@PolymorphicMapType_12586)
(declare-fun ZeroMask () T@PolymorphicMapType_12607)
(declare-fun InsidePredicate_18838_18838 (T@Field_18838_18839 T@FrameType T@Field_18838_18839 T@FrameType) Bool)
(declare-fun InsidePredicate_12646_12646 (T@Field_7833_7839 T@FrameType T@Field_7833_7839 T@FrameType) Bool)
(declare-fun IsPredicateField_7828_7829 (T@Field_12659_12660) Bool)
(declare-fun IsWandField_7828_7829 (T@Field_12659_12660) Bool)
(declare-fun IsPredicateField_7831_3145 (T@Field_18725_3145) Bool)
(declare-fun IsWandField_7831_3145 (T@Field_18725_3145) Bool)
(declare-fun IsPredicateField_7833_18799 (T@Field_18772_18777) Bool)
(declare-fun IsWandField_7833_18825 (T@Field_18772_18777) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7838_54408 (T@Field_18851_18856) Bool)
(declare-fun IsWandField_7838_54424 (T@Field_18851_18856) Bool)
(declare-fun IsPredicateField_7838_53 (T@Field_7838_53) Bool)
(declare-fun IsWandField_7838_53 (T@Field_7838_53) Bool)
(declare-fun IsPredicateField_7838_7829 (T@Field_7838_7829) Bool)
(declare-fun IsWandField_7838_7829 (T@Field_7838_7829) Bool)
(declare-fun IsPredicateField_7838_3145 (T@Field_7838_3145) Bool)
(declare-fun IsWandField_7838_3145 (T@Field_7838_3145) Bool)
(declare-fun IsPredicateField_7838_21055 (T@Field_7838_21174) Bool)
(declare-fun IsWandField_7838_21055 (T@Field_7838_21174) Bool)
(declare-fun IsPredicateField_7833_53409 (T@Field_7833_18856) Bool)
(declare-fun IsWandField_7833_53425 (T@Field_7833_18856) Bool)
(declare-fun IsPredicateField_7833_53 (T@Field_12646_53) Bool)
(declare-fun IsWandField_7833_53 (T@Field_12646_53) Bool)
(declare-fun HasDirectPerm_7838_41992 (T@PolymorphicMapType_12607 T@Ref T@Field_18851_18856) Bool)
(declare-fun HasDirectPerm_7838_3145 (T@PolymorphicMapType_12607 T@Ref T@Field_7838_3145) Bool)
(declare-fun HasDirectPerm_7838_53 (T@PolymorphicMapType_12607 T@Ref T@Field_7838_53) Bool)
(declare-fun HasDirectPerm_7838_7829 (T@PolymorphicMapType_12607 T@Ref T@Field_7838_7829) Bool)
(declare-fun HasDirectPerm_7838_21174 (T@PolymorphicMapType_12607 T@Ref T@Field_7838_21174) Bool)
(declare-fun HasDirectPerm_7833_40622 (T@PolymorphicMapType_12607 T@Ref T@Field_7833_18856) Bool)
(declare-fun HasDirectPerm_7833_3145 (T@PolymorphicMapType_12607 T@Ref T@Field_18725_3145) Bool)
(declare-fun HasDirectPerm_7833_53 (T@PolymorphicMapType_12607 T@Ref T@Field_12646_53) Bool)
(declare-fun HasDirectPerm_7828_7829 (T@PolymorphicMapType_12607 T@Ref T@Field_12659_12660) Bool)
(declare-fun HasDirectPerm_7833_21174 (T@PolymorphicMapType_12607 T@Ref T@Field_18772_18777) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_12607 T@PolymorphicMapType_12607 T@PolymorphicMapType_12607) Bool)
(declare-fun |Seq#Equal_18775| (T@Seq_18775 T@Seq_18775) Bool)
(declare-fun |Seq#Equal_3008| (T@Seq_3008 T@Seq_3008) Bool)
(declare-fun |Seq#ContainsTrigger_7834| (T@Seq_18775 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3008| (T@Seq_3008 Int) Bool)
(declare-fun getPredWandId_7838_7839 (T@Field_18838_18839) Int)
(declare-fun |Seq#SkolemDiff_18775| (T@Seq_18775 T@Seq_18775) Int)
(declare-fun |Seq#SkolemDiff_3008| (T@Seq_3008 T@Seq_3008) Int)
(declare-fun InsidePredicate_18838_12646 (T@Field_18838_18839 T@FrameType T@Field_7833_7839 T@FrameType) Bool)
(declare-fun InsidePredicate_12646_18838 (T@Field_7833_7839 T@FrameType T@Field_18838_18839 T@FrameType) Bool)
(assert (forall ((s T@Seq_18775) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_7834| s)) (= (|Seq#Length_7834| (|Seq#Drop_7834| s n)) (- (|Seq#Length_7834| s) n))) (=> (< (|Seq#Length_7834| s) n) (= (|Seq#Length_7834| (|Seq#Drop_7834| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_7834| (|Seq#Drop_7834| s n)) (|Seq#Length_7834| s))))
 :qid |stdinbpl.303:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_7834| (|Seq#Drop_7834| s n)))
 :pattern ( (|Seq#Length_7834| s) (|Seq#Drop_7834| s n))
)))
(assert (forall ((s@@0 T@Seq_3008) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3008| s@@0)) (= (|Seq#Length_3008| (|Seq#Drop_3008| s@@0 n@@0)) (- (|Seq#Length_3008| s@@0) n@@0))) (=> (< (|Seq#Length_3008| s@@0) n@@0) (= (|Seq#Length_3008| (|Seq#Drop_3008| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3008| (|Seq#Drop_3008| s@@0 n@@0)) (|Seq#Length_3008| s@@0))))
 :qid |stdinbpl.303:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3008| (|Seq#Drop_3008| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3008| s@@0) (|Seq#Drop_3008| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_12586) (Heap1 T@PolymorphicMapType_12586) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_12586) (Heap1Heap T@PolymorphicMapType_12586) (this T@Ref) ) (!  (=> (and (=  (and (and (<= 0 (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this))) (< (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this)) (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap2Heap) this nodes)))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this))) (< (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this)) (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap1Heap) this nodes)))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this))) (< (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this)) (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap2Heap) this nodes)))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap2Heap) (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap2Heap) this nodes) (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this))) val) (select (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap1Heap) (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap1Heap) this nodes) (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this))) val)))) (= (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this)))
 :qid |stdinbpl.625:15|
 :skolemid |64|
 :pattern ( (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_12586) (Heap1Heap@@0 T@PolymorphicMapType_12586) (this@@0 T@Ref) ) (!  (=> (and (=  (and (and (<= 0 (|sk_List#condqp2| (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0))) (< (|sk_List#condqp2| (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0)) (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap2Heap@@0) this@@0 nodes)))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_List#condqp2| (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0))) (< (|sk_List#condqp2| (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0)) (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap1Heap@@0) this@@0 nodes)))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_List#condqp2| (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0))) (< (|sk_List#condqp2| (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0)) (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap2Heap@@0) this@@0 nodes)))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap2Heap@@0) (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap2Heap@@0) this@@0 nodes) (|sk_List#condqp2| (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0))) next) (select (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap1Heap@@0) (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap1Heap@@0) this@@0 nodes) (|sk_List#condqp2| (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0))) next)))) (= (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0)))
 :qid |stdinbpl.636:15|
 :skolemid |65|
 :pattern ( (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_12586) (Mask T@PolymorphicMapType_12607) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_12586) (Heap1@@0 T@PolymorphicMapType_12586) (Heap2 T@PolymorphicMapType_12586) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_18851_18856) ) (!  (not (select (|PolymorphicMapType_13135_18838_45135#PolymorphicMapType_13135| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13135_18838_45135#PolymorphicMapType_13135| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_18838_18839) ) (!  (not (select (|PolymorphicMapType_13135_18838_18839#PolymorphicMapType_13135| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13135_18838_18839#PolymorphicMapType_13135| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_7838_53) ) (!  (not (select (|PolymorphicMapType_13135_18838_53#PolymorphicMapType_13135| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13135_18838_53#PolymorphicMapType_13135| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7838_7829) ) (!  (not (select (|PolymorphicMapType_13135_18838_7829#PolymorphicMapType_13135| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13135_18838_7829#PolymorphicMapType_13135| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7838_3145) ) (!  (not (select (|PolymorphicMapType_13135_18838_3145#PolymorphicMapType_13135| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13135_18838_3145#PolymorphicMapType_13135| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_7838_21174) ) (!  (not (select (|PolymorphicMapType_13135_18838_38498#PolymorphicMapType_13135| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13135_18838_38498#PolymorphicMapType_13135| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_7833_18856) ) (!  (not (select (|PolymorphicMapType_13135_7833_43883#PolymorphicMapType_13135| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13135_7833_43883#PolymorphicMapType_13135| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_7833_7839) ) (!  (not (select (|PolymorphicMapType_13135_7833_18839#PolymorphicMapType_13135| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13135_7833_18839#PolymorphicMapType_13135| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_12646_53) ) (!  (not (select (|PolymorphicMapType_13135_7833_53#PolymorphicMapType_13135| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13135_7833_53#PolymorphicMapType_13135| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_12659_12660) ) (!  (not (select (|PolymorphicMapType_13135_7828_7829#PolymorphicMapType_13135| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13135_7828_7829#PolymorphicMapType_13135| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_18725_3145) ) (!  (not (select (|PolymorphicMapType_13135_7831_3145#PolymorphicMapType_13135| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13135_7831_3145#PolymorphicMapType_13135| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_18772_18777) ) (!  (not (select (|PolymorphicMapType_13135_7833_38498#PolymorphicMapType_13135| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13135_7833_38498#PolymorphicMapType_13135| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((s@@1 T@Seq_18775) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_7834| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_7834| (|Seq#Drop_7834| s@@1 n@@1) j) (|Seq#Index_7834| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.324:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_7834| (|Seq#Drop_7834| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3008) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3008| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3008| (|Seq#Drop_3008| s@@2 n@@2) j@@0) (|Seq#Index_3008| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.324:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3008| (|Seq#Drop_3008| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_7834| |Seq#Empty_7834|) 0))
(assert (= (|Seq#Length_3008| |Seq#Empty_3008|) 0))
(assert (forall ((this@@1 T@Ref) ) (! (IsPredicateField_7838_7839 (List this@@1))
 :qid |stdinbpl.595:15|
 :skolemid |59|
 :pattern ( (List this@@1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_12586) (this@@2 T@Ref) ) (! (|List#everUsed_7838| (List this@@2))
 :qid |stdinbpl.614:15|
 :skolemid |63|
 :pattern ( (|List#trigger_7838| Heap@@0 (List this@@2)))
)))
(assert (forall ((s@@3 T@Seq_18775) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_7834| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_7834| (|Seq#Update_7834| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_7834| (|Seq#Update_7834| s@@3 i v) n@@3) (|Seq#Index_7834| s@@3 n@@3)))))
 :qid |stdinbpl.279:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_7834| (|Seq#Update_7834| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_7834| s@@3 n@@3) (|Seq#Update_7834| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3008) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3008| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3008| (|Seq#Update_3008| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3008| (|Seq#Update_3008| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3008| s@@4 n@@4)))))
 :qid |stdinbpl.279:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3008| (|Seq#Update_3008| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3008| s@@4 n@@4) (|Seq#Update_3008| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_18775) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_7834| s@@5)) (= (|Seq#Length_7834| (|Seq#Take_7834| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_7834| s@@5) n@@5) (= (|Seq#Length_7834| (|Seq#Take_7834| s@@5 n@@5)) (|Seq#Length_7834| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_7834| (|Seq#Take_7834| s@@5 n@@5)) 0)))
 :qid |stdinbpl.290:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_7834| (|Seq#Take_7834| s@@5 n@@5)))
 :pattern ( (|Seq#Take_7834| s@@5 n@@5) (|Seq#Length_7834| s@@5))
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
(assert (forall ((s@@7 T@Seq_18775) (x T@Ref) ) (!  (=> (|Seq#Contains_18775| s@@7 x) (and (and (<= 0 (|Seq#Skolem_18775| s@@7 x)) (< (|Seq#Skolem_18775| s@@7 x) (|Seq#Length_7834| s@@7))) (= (|Seq#Index_7834| s@@7 (|Seq#Skolem_18775| s@@7 x)) x)))
 :qid |stdinbpl.422:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_18775| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3008) (x@@0 Int) ) (!  (=> (|Seq#Contains_3008| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3008| s@@8 x@@0)) (< (|Seq#Skolem_3008| s@@8 x@@0) (|Seq#Length_3008| s@@8))) (= (|Seq#Index_3008| s@@8 (|Seq#Skolem_3008| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.422:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3008| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_18775) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_7834| s@@9 n@@7) s@@9))
 :qid |stdinbpl.406:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_7834| s@@9 n@@7))
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
(assert (forall ((Heap@@1 T@PolymorphicMapType_12586) (ExhaleHeap T@PolymorphicMapType_12586) (Mask@@0 T@PolymorphicMapType_12607) (pm_f_22 T@Field_18838_18839) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7838_7839 Mask@@0 null pm_f_22) (IsPredicateField_7838_7839 pm_f_22)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22 T@Ref) (f_37 T@Field_18772_18777) ) (!  (=> (select (|PolymorphicMapType_13135_7833_38498#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@1) null (PredicateMaskField_7838 pm_f_22))) o2_22 f_37) (= (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@1) o2_22 f_37) (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| ExhaleHeap) o2_22 f_37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| ExhaleHeap) o2_22 f_37))
)) (forall ((o2_22@@0 T@Ref) (f_37@@0 T@Field_18725_3145) ) (!  (=> (select (|PolymorphicMapType_13135_7831_3145#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@1) null (PredicateMaskField_7838 pm_f_22))) o2_22@@0 f_37@@0) (= (select (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap@@1) o2_22@@0 f_37@@0) (select (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| ExhaleHeap) o2_22@@0 f_37@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| ExhaleHeap) o2_22@@0 f_37@@0))
))) (forall ((o2_22@@1 T@Ref) (f_37@@1 T@Field_12659_12660) ) (!  (=> (select (|PolymorphicMapType_13135_7828_7829#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@1) null (PredicateMaskField_7838 pm_f_22))) o2_22@@1 f_37@@1) (= (select (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@1) o2_22@@1 f_37@@1) (select (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| ExhaleHeap) o2_22@@1 f_37@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| ExhaleHeap) o2_22@@1 f_37@@1))
))) (forall ((o2_22@@2 T@Ref) (f_37@@2 T@Field_12646_53) ) (!  (=> (select (|PolymorphicMapType_13135_7833_53#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@1) null (PredicateMaskField_7838 pm_f_22))) o2_22@@2 f_37@@2) (= (select (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@1) o2_22@@2 f_37@@2) (select (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| ExhaleHeap) o2_22@@2 f_37@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| ExhaleHeap) o2_22@@2 f_37@@2))
))) (forall ((o2_22@@3 T@Ref) (f_37@@3 T@Field_7833_7839) ) (!  (=> (select (|PolymorphicMapType_13135_7833_18839#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@1) null (PredicateMaskField_7838 pm_f_22))) o2_22@@3 f_37@@3) (= (select (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| Heap@@1) o2_22@@3 f_37@@3) (select (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| ExhaleHeap) o2_22@@3 f_37@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| ExhaleHeap) o2_22@@3 f_37@@3))
))) (forall ((o2_22@@4 T@Ref) (f_37@@4 T@Field_7833_18856) ) (!  (=> (select (|PolymorphicMapType_13135_7833_43883#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@1) null (PredicateMaskField_7838 pm_f_22))) o2_22@@4 f_37@@4) (= (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@1) o2_22@@4 f_37@@4) (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| ExhaleHeap) o2_22@@4 f_37@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| ExhaleHeap) o2_22@@4 f_37@@4))
))) (forall ((o2_22@@5 T@Ref) (f_37@@5 T@Field_7838_21174) ) (!  (=> (select (|PolymorphicMapType_13135_18838_38498#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@1) null (PredicateMaskField_7838 pm_f_22))) o2_22@@5 f_37@@5) (= (select (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| Heap@@1) o2_22@@5 f_37@@5) (select (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| ExhaleHeap) o2_22@@5 f_37@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| ExhaleHeap) o2_22@@5 f_37@@5))
))) (forall ((o2_22@@6 T@Ref) (f_37@@6 T@Field_7838_3145) ) (!  (=> (select (|PolymorphicMapType_13135_18838_3145#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@1) null (PredicateMaskField_7838 pm_f_22))) o2_22@@6 f_37@@6) (= (select (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| Heap@@1) o2_22@@6 f_37@@6) (select (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| ExhaleHeap) o2_22@@6 f_37@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| ExhaleHeap) o2_22@@6 f_37@@6))
))) (forall ((o2_22@@7 T@Ref) (f_37@@7 T@Field_7838_7829) ) (!  (=> (select (|PolymorphicMapType_13135_18838_7829#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@1) null (PredicateMaskField_7838 pm_f_22))) o2_22@@7 f_37@@7) (= (select (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| Heap@@1) o2_22@@7 f_37@@7) (select (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| ExhaleHeap) o2_22@@7 f_37@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| ExhaleHeap) o2_22@@7 f_37@@7))
))) (forall ((o2_22@@8 T@Ref) (f_37@@8 T@Field_7838_53) ) (!  (=> (select (|PolymorphicMapType_13135_18838_53#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@1) null (PredicateMaskField_7838 pm_f_22))) o2_22@@8 f_37@@8) (= (select (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| Heap@@1) o2_22@@8 f_37@@8) (select (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| ExhaleHeap) o2_22@@8 f_37@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| ExhaleHeap) o2_22@@8 f_37@@8))
))) (forall ((o2_22@@9 T@Ref) (f_37@@9 T@Field_18838_18839) ) (!  (=> (select (|PolymorphicMapType_13135_18838_18839#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@1) null (PredicateMaskField_7838 pm_f_22))) o2_22@@9 f_37@@9) (= (select (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| Heap@@1) o2_22@@9 f_37@@9) (select (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| ExhaleHeap) o2_22@@9 f_37@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| ExhaleHeap) o2_22@@9 f_37@@9))
))) (forall ((o2_22@@10 T@Ref) (f_37@@10 T@Field_18851_18856) ) (!  (=> (select (|PolymorphicMapType_13135_18838_45135#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@1) null (PredicateMaskField_7838 pm_f_22))) o2_22@@10 f_37@@10) (= (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@1) o2_22@@10 f_37@@10) (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| ExhaleHeap) o2_22@@10 f_37@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| ExhaleHeap) o2_22@@10 f_37@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_7838_7839 pm_f_22))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12586) (ExhaleHeap@@0 T@PolymorphicMapType_12586) (Mask@@1 T@PolymorphicMapType_12607) (pm_f_22@@0 T@Field_7833_7839) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_7833_7839 Mask@@1 null pm_f_22@@0) (IsPredicateField_7833_42237 pm_f_22@@0)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22@@11 T@Ref) (f_37@@11 T@Field_18772_18777) ) (!  (=> (select (|PolymorphicMapType_13135_7833_38498#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@2) null (PredicateMaskField_7833 pm_f_22@@0))) o2_22@@11 f_37@@11) (= (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@2) o2_22@@11 f_37@@11) (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| ExhaleHeap@@0) o2_22@@11 f_37@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| ExhaleHeap@@0) o2_22@@11 f_37@@11))
)) (forall ((o2_22@@12 T@Ref) (f_37@@12 T@Field_18725_3145) ) (!  (=> (select (|PolymorphicMapType_13135_7831_3145#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@2) null (PredicateMaskField_7833 pm_f_22@@0))) o2_22@@12 f_37@@12) (= (select (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap@@2) o2_22@@12 f_37@@12) (select (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| ExhaleHeap@@0) o2_22@@12 f_37@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| ExhaleHeap@@0) o2_22@@12 f_37@@12))
))) (forall ((o2_22@@13 T@Ref) (f_37@@13 T@Field_12659_12660) ) (!  (=> (select (|PolymorphicMapType_13135_7828_7829#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@2) null (PredicateMaskField_7833 pm_f_22@@0))) o2_22@@13 f_37@@13) (= (select (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@2) o2_22@@13 f_37@@13) (select (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| ExhaleHeap@@0) o2_22@@13 f_37@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| ExhaleHeap@@0) o2_22@@13 f_37@@13))
))) (forall ((o2_22@@14 T@Ref) (f_37@@14 T@Field_12646_53) ) (!  (=> (select (|PolymorphicMapType_13135_7833_53#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@2) null (PredicateMaskField_7833 pm_f_22@@0))) o2_22@@14 f_37@@14) (= (select (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@2) o2_22@@14 f_37@@14) (select (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| ExhaleHeap@@0) o2_22@@14 f_37@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| ExhaleHeap@@0) o2_22@@14 f_37@@14))
))) (forall ((o2_22@@15 T@Ref) (f_37@@15 T@Field_7833_7839) ) (!  (=> (select (|PolymorphicMapType_13135_7833_18839#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@2) null (PredicateMaskField_7833 pm_f_22@@0))) o2_22@@15 f_37@@15) (= (select (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| Heap@@2) o2_22@@15 f_37@@15) (select (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| ExhaleHeap@@0) o2_22@@15 f_37@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| ExhaleHeap@@0) o2_22@@15 f_37@@15))
))) (forall ((o2_22@@16 T@Ref) (f_37@@16 T@Field_7833_18856) ) (!  (=> (select (|PolymorphicMapType_13135_7833_43883#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@2) null (PredicateMaskField_7833 pm_f_22@@0))) o2_22@@16 f_37@@16) (= (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@2) o2_22@@16 f_37@@16) (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| ExhaleHeap@@0) o2_22@@16 f_37@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| ExhaleHeap@@0) o2_22@@16 f_37@@16))
))) (forall ((o2_22@@17 T@Ref) (f_37@@17 T@Field_7838_21174) ) (!  (=> (select (|PolymorphicMapType_13135_18838_38498#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@2) null (PredicateMaskField_7833 pm_f_22@@0))) o2_22@@17 f_37@@17) (= (select (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| Heap@@2) o2_22@@17 f_37@@17) (select (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| ExhaleHeap@@0) o2_22@@17 f_37@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| ExhaleHeap@@0) o2_22@@17 f_37@@17))
))) (forall ((o2_22@@18 T@Ref) (f_37@@18 T@Field_7838_3145) ) (!  (=> (select (|PolymorphicMapType_13135_18838_3145#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@2) null (PredicateMaskField_7833 pm_f_22@@0))) o2_22@@18 f_37@@18) (= (select (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| Heap@@2) o2_22@@18 f_37@@18) (select (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| ExhaleHeap@@0) o2_22@@18 f_37@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| ExhaleHeap@@0) o2_22@@18 f_37@@18))
))) (forall ((o2_22@@19 T@Ref) (f_37@@19 T@Field_7838_7829) ) (!  (=> (select (|PolymorphicMapType_13135_18838_7829#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@2) null (PredicateMaskField_7833 pm_f_22@@0))) o2_22@@19 f_37@@19) (= (select (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| Heap@@2) o2_22@@19 f_37@@19) (select (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| ExhaleHeap@@0) o2_22@@19 f_37@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| ExhaleHeap@@0) o2_22@@19 f_37@@19))
))) (forall ((o2_22@@20 T@Ref) (f_37@@20 T@Field_7838_53) ) (!  (=> (select (|PolymorphicMapType_13135_18838_53#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@2) null (PredicateMaskField_7833 pm_f_22@@0))) o2_22@@20 f_37@@20) (= (select (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| Heap@@2) o2_22@@20 f_37@@20) (select (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| ExhaleHeap@@0) o2_22@@20 f_37@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| ExhaleHeap@@0) o2_22@@20 f_37@@20))
))) (forall ((o2_22@@21 T@Ref) (f_37@@21 T@Field_18838_18839) ) (!  (=> (select (|PolymorphicMapType_13135_18838_18839#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@2) null (PredicateMaskField_7833 pm_f_22@@0))) o2_22@@21 f_37@@21) (= (select (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| Heap@@2) o2_22@@21 f_37@@21) (select (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| ExhaleHeap@@0) o2_22@@21 f_37@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| ExhaleHeap@@0) o2_22@@21 f_37@@21))
))) (forall ((o2_22@@22 T@Ref) (f_37@@22 T@Field_18851_18856) ) (!  (=> (select (|PolymorphicMapType_13135_18838_45135#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@2) null (PredicateMaskField_7833 pm_f_22@@0))) o2_22@@22 f_37@@22) (= (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@2) o2_22@@22 f_37@@22) (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| ExhaleHeap@@0) o2_22@@22 f_37@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| ExhaleHeap@@0) o2_22@@22 f_37@@22))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_7833_42237 pm_f_22@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12586) (ExhaleHeap@@1 T@PolymorphicMapType_12586) (Mask@@2 T@PolymorphicMapType_12607) (pm_f_22@@1 T@Field_18838_18839) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_7838_7839 Mask@@2 null pm_f_22@@1) (IsWandField_7838_46300 pm_f_22@@1)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22@@23 T@Ref) (f_37@@23 T@Field_18772_18777) ) (!  (=> (select (|PolymorphicMapType_13135_7833_38498#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@3) null (WandMaskField_7838 pm_f_22@@1))) o2_22@@23 f_37@@23) (= (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@3) o2_22@@23 f_37@@23) (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| ExhaleHeap@@1) o2_22@@23 f_37@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| ExhaleHeap@@1) o2_22@@23 f_37@@23))
)) (forall ((o2_22@@24 T@Ref) (f_37@@24 T@Field_18725_3145) ) (!  (=> (select (|PolymorphicMapType_13135_7831_3145#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@3) null (WandMaskField_7838 pm_f_22@@1))) o2_22@@24 f_37@@24) (= (select (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap@@3) o2_22@@24 f_37@@24) (select (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| ExhaleHeap@@1) o2_22@@24 f_37@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| ExhaleHeap@@1) o2_22@@24 f_37@@24))
))) (forall ((o2_22@@25 T@Ref) (f_37@@25 T@Field_12659_12660) ) (!  (=> (select (|PolymorphicMapType_13135_7828_7829#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@3) null (WandMaskField_7838 pm_f_22@@1))) o2_22@@25 f_37@@25) (= (select (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@3) o2_22@@25 f_37@@25) (select (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| ExhaleHeap@@1) o2_22@@25 f_37@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| ExhaleHeap@@1) o2_22@@25 f_37@@25))
))) (forall ((o2_22@@26 T@Ref) (f_37@@26 T@Field_12646_53) ) (!  (=> (select (|PolymorphicMapType_13135_7833_53#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@3) null (WandMaskField_7838 pm_f_22@@1))) o2_22@@26 f_37@@26) (= (select (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@3) o2_22@@26 f_37@@26) (select (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| ExhaleHeap@@1) o2_22@@26 f_37@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| ExhaleHeap@@1) o2_22@@26 f_37@@26))
))) (forall ((o2_22@@27 T@Ref) (f_37@@27 T@Field_7833_7839) ) (!  (=> (select (|PolymorphicMapType_13135_7833_18839#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@3) null (WandMaskField_7838 pm_f_22@@1))) o2_22@@27 f_37@@27) (= (select (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| Heap@@3) o2_22@@27 f_37@@27) (select (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| ExhaleHeap@@1) o2_22@@27 f_37@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| ExhaleHeap@@1) o2_22@@27 f_37@@27))
))) (forall ((o2_22@@28 T@Ref) (f_37@@28 T@Field_7833_18856) ) (!  (=> (select (|PolymorphicMapType_13135_7833_43883#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@3) null (WandMaskField_7838 pm_f_22@@1))) o2_22@@28 f_37@@28) (= (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@3) o2_22@@28 f_37@@28) (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| ExhaleHeap@@1) o2_22@@28 f_37@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| ExhaleHeap@@1) o2_22@@28 f_37@@28))
))) (forall ((o2_22@@29 T@Ref) (f_37@@29 T@Field_7838_21174) ) (!  (=> (select (|PolymorphicMapType_13135_18838_38498#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@3) null (WandMaskField_7838 pm_f_22@@1))) o2_22@@29 f_37@@29) (= (select (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| Heap@@3) o2_22@@29 f_37@@29) (select (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| ExhaleHeap@@1) o2_22@@29 f_37@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| ExhaleHeap@@1) o2_22@@29 f_37@@29))
))) (forall ((o2_22@@30 T@Ref) (f_37@@30 T@Field_7838_3145) ) (!  (=> (select (|PolymorphicMapType_13135_18838_3145#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@3) null (WandMaskField_7838 pm_f_22@@1))) o2_22@@30 f_37@@30) (= (select (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| Heap@@3) o2_22@@30 f_37@@30) (select (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| ExhaleHeap@@1) o2_22@@30 f_37@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| ExhaleHeap@@1) o2_22@@30 f_37@@30))
))) (forall ((o2_22@@31 T@Ref) (f_37@@31 T@Field_7838_7829) ) (!  (=> (select (|PolymorphicMapType_13135_18838_7829#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@3) null (WandMaskField_7838 pm_f_22@@1))) o2_22@@31 f_37@@31) (= (select (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| Heap@@3) o2_22@@31 f_37@@31) (select (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| ExhaleHeap@@1) o2_22@@31 f_37@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| ExhaleHeap@@1) o2_22@@31 f_37@@31))
))) (forall ((o2_22@@32 T@Ref) (f_37@@32 T@Field_7838_53) ) (!  (=> (select (|PolymorphicMapType_13135_18838_53#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@3) null (WandMaskField_7838 pm_f_22@@1))) o2_22@@32 f_37@@32) (= (select (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| Heap@@3) o2_22@@32 f_37@@32) (select (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| ExhaleHeap@@1) o2_22@@32 f_37@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| ExhaleHeap@@1) o2_22@@32 f_37@@32))
))) (forall ((o2_22@@33 T@Ref) (f_37@@33 T@Field_18838_18839) ) (!  (=> (select (|PolymorphicMapType_13135_18838_18839#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@3) null (WandMaskField_7838 pm_f_22@@1))) o2_22@@33 f_37@@33) (= (select (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| Heap@@3) o2_22@@33 f_37@@33) (select (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| ExhaleHeap@@1) o2_22@@33 f_37@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| ExhaleHeap@@1) o2_22@@33 f_37@@33))
))) (forall ((o2_22@@34 T@Ref) (f_37@@34 T@Field_18851_18856) ) (!  (=> (select (|PolymorphicMapType_13135_18838_45135#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@3) null (WandMaskField_7838 pm_f_22@@1))) o2_22@@34 f_37@@34) (= (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@3) o2_22@@34 f_37@@34) (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| ExhaleHeap@@1) o2_22@@34 f_37@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| ExhaleHeap@@1) o2_22@@34 f_37@@34))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_7838_46300 pm_f_22@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12586) (ExhaleHeap@@2 T@PolymorphicMapType_12586) (Mask@@3 T@PolymorphicMapType_12607) (pm_f_22@@2 T@Field_7833_7839) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_7833_7839 Mask@@3 null pm_f_22@@2) (IsWandField_7833_45943 pm_f_22@@2)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22@@35 T@Ref) (f_37@@35 T@Field_18772_18777) ) (!  (=> (select (|PolymorphicMapType_13135_7833_38498#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@4) null (WandMaskField_7833 pm_f_22@@2))) o2_22@@35 f_37@@35) (= (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@4) o2_22@@35 f_37@@35) (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| ExhaleHeap@@2) o2_22@@35 f_37@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| ExhaleHeap@@2) o2_22@@35 f_37@@35))
)) (forall ((o2_22@@36 T@Ref) (f_37@@36 T@Field_18725_3145) ) (!  (=> (select (|PolymorphicMapType_13135_7831_3145#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@4) null (WandMaskField_7833 pm_f_22@@2))) o2_22@@36 f_37@@36) (= (select (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap@@4) o2_22@@36 f_37@@36) (select (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| ExhaleHeap@@2) o2_22@@36 f_37@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| ExhaleHeap@@2) o2_22@@36 f_37@@36))
))) (forall ((o2_22@@37 T@Ref) (f_37@@37 T@Field_12659_12660) ) (!  (=> (select (|PolymorphicMapType_13135_7828_7829#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@4) null (WandMaskField_7833 pm_f_22@@2))) o2_22@@37 f_37@@37) (= (select (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@4) o2_22@@37 f_37@@37) (select (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| ExhaleHeap@@2) o2_22@@37 f_37@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| ExhaleHeap@@2) o2_22@@37 f_37@@37))
))) (forall ((o2_22@@38 T@Ref) (f_37@@38 T@Field_12646_53) ) (!  (=> (select (|PolymorphicMapType_13135_7833_53#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@4) null (WandMaskField_7833 pm_f_22@@2))) o2_22@@38 f_37@@38) (= (select (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@4) o2_22@@38 f_37@@38) (select (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| ExhaleHeap@@2) o2_22@@38 f_37@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| ExhaleHeap@@2) o2_22@@38 f_37@@38))
))) (forall ((o2_22@@39 T@Ref) (f_37@@39 T@Field_7833_7839) ) (!  (=> (select (|PolymorphicMapType_13135_7833_18839#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@4) null (WandMaskField_7833 pm_f_22@@2))) o2_22@@39 f_37@@39) (= (select (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| Heap@@4) o2_22@@39 f_37@@39) (select (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| ExhaleHeap@@2) o2_22@@39 f_37@@39)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| ExhaleHeap@@2) o2_22@@39 f_37@@39))
))) (forall ((o2_22@@40 T@Ref) (f_37@@40 T@Field_7833_18856) ) (!  (=> (select (|PolymorphicMapType_13135_7833_43883#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@4) null (WandMaskField_7833 pm_f_22@@2))) o2_22@@40 f_37@@40) (= (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@4) o2_22@@40 f_37@@40) (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| ExhaleHeap@@2) o2_22@@40 f_37@@40)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| ExhaleHeap@@2) o2_22@@40 f_37@@40))
))) (forall ((o2_22@@41 T@Ref) (f_37@@41 T@Field_7838_21174) ) (!  (=> (select (|PolymorphicMapType_13135_18838_38498#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@4) null (WandMaskField_7833 pm_f_22@@2))) o2_22@@41 f_37@@41) (= (select (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| Heap@@4) o2_22@@41 f_37@@41) (select (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| ExhaleHeap@@2) o2_22@@41 f_37@@41)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| ExhaleHeap@@2) o2_22@@41 f_37@@41))
))) (forall ((o2_22@@42 T@Ref) (f_37@@42 T@Field_7838_3145) ) (!  (=> (select (|PolymorphicMapType_13135_18838_3145#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@4) null (WandMaskField_7833 pm_f_22@@2))) o2_22@@42 f_37@@42) (= (select (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| Heap@@4) o2_22@@42 f_37@@42) (select (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| ExhaleHeap@@2) o2_22@@42 f_37@@42)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| ExhaleHeap@@2) o2_22@@42 f_37@@42))
))) (forall ((o2_22@@43 T@Ref) (f_37@@43 T@Field_7838_7829) ) (!  (=> (select (|PolymorphicMapType_13135_18838_7829#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@4) null (WandMaskField_7833 pm_f_22@@2))) o2_22@@43 f_37@@43) (= (select (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| Heap@@4) o2_22@@43 f_37@@43) (select (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| ExhaleHeap@@2) o2_22@@43 f_37@@43)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| ExhaleHeap@@2) o2_22@@43 f_37@@43))
))) (forall ((o2_22@@44 T@Ref) (f_37@@44 T@Field_7838_53) ) (!  (=> (select (|PolymorphicMapType_13135_18838_53#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@4) null (WandMaskField_7833 pm_f_22@@2))) o2_22@@44 f_37@@44) (= (select (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| Heap@@4) o2_22@@44 f_37@@44) (select (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| ExhaleHeap@@2) o2_22@@44 f_37@@44)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| ExhaleHeap@@2) o2_22@@44 f_37@@44))
))) (forall ((o2_22@@45 T@Ref) (f_37@@45 T@Field_18838_18839) ) (!  (=> (select (|PolymorphicMapType_13135_18838_18839#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@4) null (WandMaskField_7833 pm_f_22@@2))) o2_22@@45 f_37@@45) (= (select (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| Heap@@4) o2_22@@45 f_37@@45) (select (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| ExhaleHeap@@2) o2_22@@45 f_37@@45)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| ExhaleHeap@@2) o2_22@@45 f_37@@45))
))) (forall ((o2_22@@46 T@Ref) (f_37@@46 T@Field_18851_18856) ) (!  (=> (select (|PolymorphicMapType_13135_18838_45135#PolymorphicMapType_13135| (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@4) null (WandMaskField_7833 pm_f_22@@2))) o2_22@@46 f_37@@46) (= (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@4) o2_22@@46 f_37@@46) (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| ExhaleHeap@@2) o2_22@@46 f_37@@46)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| ExhaleHeap@@2) o2_22@@46 f_37@@46))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_7833_45943 pm_f_22@@2))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12586) (ExhaleHeap@@3 T@PolymorphicMapType_12586) (Mask@@4 T@PolymorphicMapType_12607) (pm_f_22@@3 T@Field_18838_18839) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_7838_7839 Mask@@4 null pm_f_22@@3) (IsPredicateField_7838_7839 pm_f_22@@3)) (= (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@5) null (PredicateMaskField_7838 pm_f_22@@3)) (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| ExhaleHeap@@3) null (PredicateMaskField_7838 pm_f_22@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_7838_7839 pm_f_22@@3) (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| ExhaleHeap@@3) null (PredicateMaskField_7838 pm_f_22@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_12586) (ExhaleHeap@@4 T@PolymorphicMapType_12586) (Mask@@5 T@PolymorphicMapType_12607) (pm_f_22@@4 T@Field_7833_7839) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_7833_7839 Mask@@5 null pm_f_22@@4) (IsPredicateField_7833_42237 pm_f_22@@4)) (= (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@6) null (PredicateMaskField_7833 pm_f_22@@4)) (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| ExhaleHeap@@4) null (PredicateMaskField_7833 pm_f_22@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_7833_42237 pm_f_22@@4) (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| ExhaleHeap@@4) null (PredicateMaskField_7833 pm_f_22@@4)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12586) (ExhaleHeap@@5 T@PolymorphicMapType_12586) (Mask@@6 T@PolymorphicMapType_12607) (pm_f_22@@5 T@Field_18838_18839) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_7838_7839 Mask@@6 null pm_f_22@@5) (IsWandField_7838_46300 pm_f_22@@5)) (= (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@7) null (WandMaskField_7838 pm_f_22@@5)) (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| ExhaleHeap@@5) null (WandMaskField_7838 pm_f_22@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_7838_46300 pm_f_22@@5) (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| ExhaleHeap@@5) null (WandMaskField_7838 pm_f_22@@5)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12586) (ExhaleHeap@@6 T@PolymorphicMapType_12586) (Mask@@7 T@PolymorphicMapType_12607) (pm_f_22@@6 T@Field_7833_7839) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_7833_7839 Mask@@7 null pm_f_22@@6) (IsWandField_7833_45943 pm_f_22@@6)) (= (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@8) null (WandMaskField_7833 pm_f_22@@6)) (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| ExhaleHeap@@6) null (WandMaskField_7833 pm_f_22@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_7833_45943 pm_f_22@@6) (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| ExhaleHeap@@6) null (WandMaskField_7833 pm_f_22@@6)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_18775| (|Seq#Singleton_7834| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.547:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_18775| (|Seq#Singleton_7834| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3008| (|Seq#Singleton_3008| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.547:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3008| (|Seq#Singleton_3008| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_18775) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_7834| s@@11))) (= (|Seq#Index_7834| (|Seq#Take_7834| s@@11 n@@9) j@@3) (|Seq#Index_7834| s@@11 j@@3)))
 :qid |stdinbpl.298:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_7834| (|Seq#Take_7834| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_7834| s@@11 j@@3) (|Seq#Take_7834| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3008) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3008| s@@12))) (= (|Seq#Index_3008| (|Seq#Take_3008| s@@12 n@@10) j@@4) (|Seq#Index_3008| s@@12 j@@4)))
 :qid |stdinbpl.298:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3008| (|Seq#Take_3008| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3008| s@@12 j@@4) (|Seq#Take_3008| s@@12 n@@10))
)))
(assert (forall ((this@@3 T@Ref) (this2 T@Ref) ) (!  (=> (= (List this@@3) (List this2)) (= this@@3 this2))
 :qid |stdinbpl.605:15|
 :skolemid |61|
 :pattern ( (List this@@3) (List this2))
)))
(assert (forall ((this@@4 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|List#sm| this@@4) (|List#sm| this2@@0)) (= this@@4 this2@@0))
 :qid |stdinbpl.609:15|
 :skolemid |62|
 :pattern ( (|List#sm| this@@4) (|List#sm| this2@@0))
)))
(assert (forall ((s@@13 T@Seq_18775) (t T@Seq_18775) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_7834| s@@13))) (< n@@11 (|Seq#Length_7834| (|Seq#Append_18775| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_7834| s@@13)) (|Seq#Length_7834| s@@13)) n@@11) (= (|Seq#Take_7834| (|Seq#Append_18775| s@@13 t) n@@11) (|Seq#Append_18775| s@@13 (|Seq#Take_7834| t (|Seq#Sub| n@@11 (|Seq#Length_7834| s@@13)))))))
 :qid |stdinbpl.383:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_7834| (|Seq#Append_18775| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3008) (t@@0 T@Seq_3008) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3008| s@@14))) (< n@@12 (|Seq#Length_3008| (|Seq#Append_3008| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3008| s@@14)) (|Seq#Length_3008| s@@14)) n@@12) (= (|Seq#Take_3008| (|Seq#Append_3008| s@@14 t@@0) n@@12) (|Seq#Append_3008| s@@14 (|Seq#Take_3008| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3008| s@@14)))))))
 :qid |stdinbpl.383:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3008| (|Seq#Append_3008| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12586) (ExhaleHeap@@7 T@PolymorphicMapType_12586) (Mask@@8 T@PolymorphicMapType_12607) (o_46 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@9) o_46 $allocated) (select (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| ExhaleHeap@@7) o_46 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| ExhaleHeap@@7) o_46 $allocated))
)))
(assert (forall ((p T@Field_18838_18839) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_18838_18838 p v_1 p w))
 :qid |stdinbpl.201:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18838_18838 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_7833_7839) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_12646_12646 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.201:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12646_12646 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_18775) (s1 T@Seq_18775) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_7834|)) (not (= s1 |Seq#Empty_7834|))) (<= (|Seq#Length_7834| s0) n@@13)) (< n@@13 (|Seq#Length_7834| (|Seq#Append_18775| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_7834| s0)) (|Seq#Length_7834| s0)) n@@13) (= (|Seq#Index_7834| (|Seq#Append_18775| s0 s1) n@@13) (|Seq#Index_7834| s1 (|Seq#Sub| n@@13 (|Seq#Length_7834| s0))))))
 :qid |stdinbpl.270:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_7834| (|Seq#Append_18775| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3008) (s1@@0 T@Seq_3008) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3008|)) (not (= s1@@0 |Seq#Empty_3008|))) (<= (|Seq#Length_3008| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3008| (|Seq#Append_3008| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3008| s0@@0)) (|Seq#Length_3008| s0@@0)) n@@14) (= (|Seq#Index_3008| (|Seq#Append_3008| s0@@0 s1@@0) n@@14) (|Seq#Index_3008| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3008| s0@@0))))))
 :qid |stdinbpl.270:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3008| (|Seq#Append_3008| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_7828_7829 next)))
(assert  (not (IsWandField_7828_7829 next)))
(assert  (not (IsPredicateField_7831_3145 val)))
(assert  (not (IsWandField_7831_3145 val)))
(assert  (not (IsPredicateField_7833_18799 nodes)))
(assert  (not (IsWandField_7833_18825 nodes)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12586) (ExhaleHeap@@8 T@PolymorphicMapType_12586) (Mask@@9 T@PolymorphicMapType_12607) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_12607) (o_2@@11 T@Ref) (f_4@@11 T@Field_18851_18856) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_12607_7838_51676#PolymorphicMapType_12607| Mask@@10) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_7838_54408 f_4@@11))) (not (IsWandField_7838_54424 f_4@@11))) (<= (select (|PolymorphicMapType_12607_7838_51676#PolymorphicMapType_12607| Mask@@10) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_12607_7838_51676#PolymorphicMapType_12607| Mask@@10) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_12607) (o_2@@12 T@Ref) (f_4@@12 T@Field_7838_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_12607_7838_53#PolymorphicMapType_12607| Mask@@11) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_7838_53 f_4@@12))) (not (IsWandField_7838_53 f_4@@12))) (<= (select (|PolymorphicMapType_12607_7838_53#PolymorphicMapType_12607| Mask@@11) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_12607_7838_53#PolymorphicMapType_12607| Mask@@11) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_12607) (o_2@@13 T@Ref) (f_4@@13 T@Field_18838_18839) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_12607_7838_7839#PolymorphicMapType_12607| Mask@@12) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_7838_7839 f_4@@13))) (not (IsWandField_7838_46300 f_4@@13))) (<= (select (|PolymorphicMapType_12607_7838_7839#PolymorphicMapType_12607| Mask@@12) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_12607_7838_7839#PolymorphicMapType_12607| Mask@@12) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_12607) (o_2@@14 T@Ref) (f_4@@14 T@Field_7838_7829) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_12607_7838_7829#PolymorphicMapType_12607| Mask@@13) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_7838_7829 f_4@@14))) (not (IsWandField_7838_7829 f_4@@14))) (<= (select (|PolymorphicMapType_12607_7838_7829#PolymorphicMapType_12607| Mask@@13) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_12607_7838_7829#PolymorphicMapType_12607| Mask@@13) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_12607) (o_2@@15 T@Ref) (f_4@@15 T@Field_7838_3145) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_12607_7838_3145#PolymorphicMapType_12607| Mask@@14) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_7838_3145 f_4@@15))) (not (IsWandField_7838_3145 f_4@@15))) (<= (select (|PolymorphicMapType_12607_7838_3145#PolymorphicMapType_12607| Mask@@14) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_12607_7838_3145#PolymorphicMapType_12607| Mask@@14) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_12607) (o_2@@16 T@Ref) (f_4@@16 T@Field_7838_21174) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_12607_7838_21055#PolymorphicMapType_12607| Mask@@15) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_7838_21055 f_4@@16))) (not (IsWandField_7838_21055 f_4@@16))) (<= (select (|PolymorphicMapType_12607_7838_21055#PolymorphicMapType_12607| Mask@@15) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_12607_7838_21055#PolymorphicMapType_12607| Mask@@15) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_12607) (o_2@@17 T@Ref) (f_4@@17 T@Field_7833_18856) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_12607_7833_51182#PolymorphicMapType_12607| Mask@@16) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_7833_53409 f_4@@17))) (not (IsWandField_7833_53425 f_4@@17))) (<= (select (|PolymorphicMapType_12607_7833_51182#PolymorphicMapType_12607| Mask@@16) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_12607_7833_51182#PolymorphicMapType_12607| Mask@@16) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_12607) (o_2@@18 T@Ref) (f_4@@18 T@Field_12646_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_12607_7833_53#PolymorphicMapType_12607| Mask@@17) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_7833_53 f_4@@18))) (not (IsWandField_7833_53 f_4@@18))) (<= (select (|PolymorphicMapType_12607_7833_53#PolymorphicMapType_12607| Mask@@17) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_12607_7833_53#PolymorphicMapType_12607| Mask@@17) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_12607) (o_2@@19 T@Ref) (f_4@@19 T@Field_7833_7839) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_12607_7833_7839#PolymorphicMapType_12607| Mask@@18) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_7833_42237 f_4@@19))) (not (IsWandField_7833_45943 f_4@@19))) (<= (select (|PolymorphicMapType_12607_7833_7839#PolymorphicMapType_12607| Mask@@18) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_12607_7833_7839#PolymorphicMapType_12607| Mask@@18) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_12607) (o_2@@20 T@Ref) (f_4@@20 T@Field_12659_12660) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_12607_7828_7829#PolymorphicMapType_12607| Mask@@19) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_7828_7829 f_4@@20))) (not (IsWandField_7828_7829 f_4@@20))) (<= (select (|PolymorphicMapType_12607_7828_7829#PolymorphicMapType_12607| Mask@@19) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_12607_7828_7829#PolymorphicMapType_12607| Mask@@19) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_12607) (o_2@@21 T@Ref) (f_4@@21 T@Field_18725_3145) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_12607_7831_3145#PolymorphicMapType_12607| Mask@@20) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_7831_3145 f_4@@21))) (not (IsWandField_7831_3145 f_4@@21))) (<= (select (|PolymorphicMapType_12607_7831_3145#PolymorphicMapType_12607| Mask@@20) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_12607_7831_3145#PolymorphicMapType_12607| Mask@@20) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_12607) (o_2@@22 T@Ref) (f_4@@22 T@Field_18772_18777) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_12607_7833_21055#PolymorphicMapType_12607| Mask@@21) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_7833_18799 f_4@@22))) (not (IsWandField_7833_18825 f_4@@22))) (<= (select (|PolymorphicMapType_12607_7833_21055#PolymorphicMapType_12607| Mask@@21) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_12607_7833_21055#PolymorphicMapType_12607| Mask@@21) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_12607) (o_2@@23 T@Ref) (f_4@@23 T@Field_18851_18856) ) (! (= (HasDirectPerm_7838_41992 Mask@@22 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_12607_7838_51676#PolymorphicMapType_12607| Mask@@22) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7838_41992 Mask@@22 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_12607) (o_2@@24 T@Ref) (f_4@@24 T@Field_7838_3145) ) (! (= (HasDirectPerm_7838_3145 Mask@@23 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_12607_7838_3145#PolymorphicMapType_12607| Mask@@23) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7838_3145 Mask@@23 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_12607) (o_2@@25 T@Ref) (f_4@@25 T@Field_7838_53) ) (! (= (HasDirectPerm_7838_53 Mask@@24 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_12607_7838_53#PolymorphicMapType_12607| Mask@@24) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7838_53 Mask@@24 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_12607) (o_2@@26 T@Ref) (f_4@@26 T@Field_18838_18839) ) (! (= (HasDirectPerm_7838_7839 Mask@@25 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_12607_7838_7839#PolymorphicMapType_12607| Mask@@25) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7838_7839 Mask@@25 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_12607) (o_2@@27 T@Ref) (f_4@@27 T@Field_7838_7829) ) (! (= (HasDirectPerm_7838_7829 Mask@@26 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_12607_7838_7829#PolymorphicMapType_12607| Mask@@26) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7838_7829 Mask@@26 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_12607) (o_2@@28 T@Ref) (f_4@@28 T@Field_7838_21174) ) (! (= (HasDirectPerm_7838_21174 Mask@@27 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_12607_7838_21055#PolymorphicMapType_12607| Mask@@27) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7838_21174 Mask@@27 o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_12607) (o_2@@29 T@Ref) (f_4@@29 T@Field_7833_18856) ) (! (= (HasDirectPerm_7833_40622 Mask@@28 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_12607_7833_51182#PolymorphicMapType_12607| Mask@@28) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7833_40622 Mask@@28 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_12607) (o_2@@30 T@Ref) (f_4@@30 T@Field_18725_3145) ) (! (= (HasDirectPerm_7833_3145 Mask@@29 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_12607_7831_3145#PolymorphicMapType_12607| Mask@@29) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7833_3145 Mask@@29 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_12607) (o_2@@31 T@Ref) (f_4@@31 T@Field_12646_53) ) (! (= (HasDirectPerm_7833_53 Mask@@30 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_12607_7833_53#PolymorphicMapType_12607| Mask@@30) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7833_53 Mask@@30 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_12607) (o_2@@32 T@Ref) (f_4@@32 T@Field_7833_7839) ) (! (= (HasDirectPerm_7833_7839 Mask@@31 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_12607_7833_7839#PolymorphicMapType_12607| Mask@@31) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7833_7839 Mask@@31 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_12607) (o_2@@33 T@Ref) (f_4@@33 T@Field_12659_12660) ) (! (= (HasDirectPerm_7828_7829 Mask@@32 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_12607_7828_7829#PolymorphicMapType_12607| Mask@@32) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7828_7829 Mask@@32 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_12607) (o_2@@34 T@Ref) (f_4@@34 T@Field_18772_18777) ) (! (= (HasDirectPerm_7833_21174 Mask@@33 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_12607_7833_21055#PolymorphicMapType_12607| Mask@@33) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7833_21174 Mask@@33 o_2@@34 f_4@@34))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.189:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3008| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.562:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3008| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12586) (ExhaleHeap@@9 T@PolymorphicMapType_12586) (Mask@@34 T@PolymorphicMapType_12607) (o_46@@0 T@Ref) (f_37@@47 T@Field_18851_18856) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@34) (=> (HasDirectPerm_7838_41992 Mask@@34 o_46@@0 f_37@@47) (= (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@11) o_46@@0 f_37@@47) (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| ExhaleHeap@@9) o_46@@0 f_37@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@34) (select (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| ExhaleHeap@@9) o_46@@0 f_37@@47))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_12586) (ExhaleHeap@@10 T@PolymorphicMapType_12586) (Mask@@35 T@PolymorphicMapType_12607) (o_46@@1 T@Ref) (f_37@@48 T@Field_7838_3145) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@35) (=> (HasDirectPerm_7838_3145 Mask@@35 o_46@@1 f_37@@48) (= (select (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| Heap@@12) o_46@@1 f_37@@48) (select (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| ExhaleHeap@@10) o_46@@1 f_37@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@35) (select (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| ExhaleHeap@@10) o_46@@1 f_37@@48))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_12586) (ExhaleHeap@@11 T@PolymorphicMapType_12586) (Mask@@36 T@PolymorphicMapType_12607) (o_46@@2 T@Ref) (f_37@@49 T@Field_7838_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@36) (=> (HasDirectPerm_7838_53 Mask@@36 o_46@@2 f_37@@49) (= (select (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| Heap@@13) o_46@@2 f_37@@49) (select (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| ExhaleHeap@@11) o_46@@2 f_37@@49))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@36) (select (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| ExhaleHeap@@11) o_46@@2 f_37@@49))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_12586) (ExhaleHeap@@12 T@PolymorphicMapType_12586) (Mask@@37 T@PolymorphicMapType_12607) (o_46@@3 T@Ref) (f_37@@50 T@Field_18838_18839) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@37) (=> (HasDirectPerm_7838_7839 Mask@@37 o_46@@3 f_37@@50) (= (select (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| Heap@@14) o_46@@3 f_37@@50) (select (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| ExhaleHeap@@12) o_46@@3 f_37@@50))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@37) (select (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| ExhaleHeap@@12) o_46@@3 f_37@@50))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_12586) (ExhaleHeap@@13 T@PolymorphicMapType_12586) (Mask@@38 T@PolymorphicMapType_12607) (o_46@@4 T@Ref) (f_37@@51 T@Field_7838_7829) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@38) (=> (HasDirectPerm_7838_7829 Mask@@38 o_46@@4 f_37@@51) (= (select (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| Heap@@15) o_46@@4 f_37@@51) (select (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| ExhaleHeap@@13) o_46@@4 f_37@@51))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@38) (select (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| ExhaleHeap@@13) o_46@@4 f_37@@51))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_12586) (ExhaleHeap@@14 T@PolymorphicMapType_12586) (Mask@@39 T@PolymorphicMapType_12607) (o_46@@5 T@Ref) (f_37@@52 T@Field_7838_21174) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@39) (=> (HasDirectPerm_7838_21174 Mask@@39 o_46@@5 f_37@@52) (= (select (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| Heap@@16) o_46@@5 f_37@@52) (select (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| ExhaleHeap@@14) o_46@@5 f_37@@52))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@39) (select (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| ExhaleHeap@@14) o_46@@5 f_37@@52))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_12586) (ExhaleHeap@@15 T@PolymorphicMapType_12586) (Mask@@40 T@PolymorphicMapType_12607) (o_46@@6 T@Ref) (f_37@@53 T@Field_7833_18856) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@40) (=> (HasDirectPerm_7833_40622 Mask@@40 o_46@@6 f_37@@53) (= (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@17) o_46@@6 f_37@@53) (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| ExhaleHeap@@15) o_46@@6 f_37@@53))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@40) (select (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| ExhaleHeap@@15) o_46@@6 f_37@@53))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_12586) (ExhaleHeap@@16 T@PolymorphicMapType_12586) (Mask@@41 T@PolymorphicMapType_12607) (o_46@@7 T@Ref) (f_37@@54 T@Field_18725_3145) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@41) (=> (HasDirectPerm_7833_3145 Mask@@41 o_46@@7 f_37@@54) (= (select (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap@@18) o_46@@7 f_37@@54) (select (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| ExhaleHeap@@16) o_46@@7 f_37@@54))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@41) (select (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| ExhaleHeap@@16) o_46@@7 f_37@@54))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_12586) (ExhaleHeap@@17 T@PolymorphicMapType_12586) (Mask@@42 T@PolymorphicMapType_12607) (o_46@@8 T@Ref) (f_37@@55 T@Field_12646_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@42) (=> (HasDirectPerm_7833_53 Mask@@42 o_46@@8 f_37@@55) (= (select (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@19) o_46@@8 f_37@@55) (select (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| ExhaleHeap@@17) o_46@@8 f_37@@55))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@42) (select (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| ExhaleHeap@@17) o_46@@8 f_37@@55))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_12586) (ExhaleHeap@@18 T@PolymorphicMapType_12586) (Mask@@43 T@PolymorphicMapType_12607) (o_46@@9 T@Ref) (f_37@@56 T@Field_7833_7839) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@43) (=> (HasDirectPerm_7833_7839 Mask@@43 o_46@@9 f_37@@56) (= (select (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| Heap@@20) o_46@@9 f_37@@56) (select (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| ExhaleHeap@@18) o_46@@9 f_37@@56))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@43) (select (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| ExhaleHeap@@18) o_46@@9 f_37@@56))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_12586) (ExhaleHeap@@19 T@PolymorphicMapType_12586) (Mask@@44 T@PolymorphicMapType_12607) (o_46@@10 T@Ref) (f_37@@57 T@Field_12659_12660) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@44) (=> (HasDirectPerm_7828_7829 Mask@@44 o_46@@10 f_37@@57) (= (select (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@21) o_46@@10 f_37@@57) (select (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| ExhaleHeap@@19) o_46@@10 f_37@@57))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@44) (select (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| ExhaleHeap@@19) o_46@@10 f_37@@57))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_12586) (ExhaleHeap@@20 T@PolymorphicMapType_12586) (Mask@@45 T@PolymorphicMapType_12607) (o_46@@11 T@Ref) (f_37@@58 T@Field_18772_18777) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@45) (=> (HasDirectPerm_7833_21174 Mask@@45 o_46@@11 f_37@@58) (= (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@22) o_46@@11 f_37@@58) (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| ExhaleHeap@@20) o_46@@11 f_37@@58))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@45) (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| ExhaleHeap@@20) o_46@@11 f_37@@58))
)))
(assert (forall ((s0@@1 T@Seq_18775) (s1@@1 T@Seq_18775) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_7834|)) (not (= s1@@1 |Seq#Empty_7834|))) (= (|Seq#Length_7834| (|Seq#Append_18775| s0@@1 s1@@1)) (+ (|Seq#Length_7834| s0@@1) (|Seq#Length_7834| s1@@1))))
 :qid |stdinbpl.239:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_7834| (|Seq#Append_18775| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3008) (s1@@2 T@Seq_3008) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3008|)) (not (= s1@@2 |Seq#Empty_3008|))) (= (|Seq#Length_3008| (|Seq#Append_3008| s0@@2 s1@@2)) (+ (|Seq#Length_3008| s0@@2) (|Seq#Length_3008| s1@@2))))
 :qid |stdinbpl.239:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3008| (|Seq#Append_3008| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_18851_18856) ) (! (= (select (|PolymorphicMapType_12607_7838_51676#PolymorphicMapType_12607| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12607_7838_51676#PolymorphicMapType_12607| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_7838_53) ) (! (= (select (|PolymorphicMapType_12607_7838_53#PolymorphicMapType_12607| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12607_7838_53#PolymorphicMapType_12607| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_18838_18839) ) (! (= (select (|PolymorphicMapType_12607_7838_7839#PolymorphicMapType_12607| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12607_7838_7839#PolymorphicMapType_12607| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_7838_7829) ) (! (= (select (|PolymorphicMapType_12607_7838_7829#PolymorphicMapType_12607| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12607_7838_7829#PolymorphicMapType_12607| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((o_2@@39 T@Ref) (f_4@@39 T@Field_7838_3145) ) (! (= (select (|PolymorphicMapType_12607_7838_3145#PolymorphicMapType_12607| ZeroMask) o_2@@39 f_4@@39) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12607_7838_3145#PolymorphicMapType_12607| ZeroMask) o_2@@39 f_4@@39))
)))
(assert (forall ((o_2@@40 T@Ref) (f_4@@40 T@Field_7838_21174) ) (! (= (select (|PolymorphicMapType_12607_7838_21055#PolymorphicMapType_12607| ZeroMask) o_2@@40 f_4@@40) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12607_7838_21055#PolymorphicMapType_12607| ZeroMask) o_2@@40 f_4@@40))
)))
(assert (forall ((o_2@@41 T@Ref) (f_4@@41 T@Field_7833_18856) ) (! (= (select (|PolymorphicMapType_12607_7833_51182#PolymorphicMapType_12607| ZeroMask) o_2@@41 f_4@@41) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12607_7833_51182#PolymorphicMapType_12607| ZeroMask) o_2@@41 f_4@@41))
)))
(assert (forall ((o_2@@42 T@Ref) (f_4@@42 T@Field_12646_53) ) (! (= (select (|PolymorphicMapType_12607_7833_53#PolymorphicMapType_12607| ZeroMask) o_2@@42 f_4@@42) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12607_7833_53#PolymorphicMapType_12607| ZeroMask) o_2@@42 f_4@@42))
)))
(assert (forall ((o_2@@43 T@Ref) (f_4@@43 T@Field_7833_7839) ) (! (= (select (|PolymorphicMapType_12607_7833_7839#PolymorphicMapType_12607| ZeroMask) o_2@@43 f_4@@43) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12607_7833_7839#PolymorphicMapType_12607| ZeroMask) o_2@@43 f_4@@43))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_12659_12660) ) (! (= (select (|PolymorphicMapType_12607_7828_7829#PolymorphicMapType_12607| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12607_7828_7829#PolymorphicMapType_12607| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_18725_3145) ) (! (= (select (|PolymorphicMapType_12607_7831_3145#PolymorphicMapType_12607| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12607_7831_3145#PolymorphicMapType_12607| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_18772_18777) ) (! (= (select (|PolymorphicMapType_12607_7833_21055#PolymorphicMapType_12607| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12607_7833_21055#PolymorphicMapType_12607| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((s@@15 T@Seq_18775) (t@@1 T@Seq_18775) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_7834| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_7834| s@@15)) (|Seq#Length_7834| s@@15)) n@@15) (= (|Seq#Drop_7834| (|Seq#Append_18775| s@@15 t@@1) n@@15) (|Seq#Drop_7834| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_7834| s@@15))))))
 :qid |stdinbpl.396:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_7834| (|Seq#Append_18775| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3008) (t@@2 T@Seq_3008) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3008| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3008| s@@16)) (|Seq#Length_3008| s@@16)) n@@16) (= (|Seq#Drop_3008| (|Seq#Append_3008| s@@16 t@@2) n@@16) (|Seq#Drop_3008| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3008| s@@16))))))
 :qid |stdinbpl.396:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3008| (|Seq#Append_3008| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12607) (SummandMask1 T@PolymorphicMapType_12607) (SummandMask2 T@PolymorphicMapType_12607) (o_2@@47 T@Ref) (f_4@@47 T@Field_18851_18856) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12607_7838_51676#PolymorphicMapType_12607| ResultMask) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_12607_7838_51676#PolymorphicMapType_12607| SummandMask1) o_2@@47 f_4@@47) (select (|PolymorphicMapType_12607_7838_51676#PolymorphicMapType_12607| SummandMask2) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12607_7838_51676#PolymorphicMapType_12607| ResultMask) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12607_7838_51676#PolymorphicMapType_12607| SummandMask1) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12607_7838_51676#PolymorphicMapType_12607| SummandMask2) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12607) (SummandMask1@@0 T@PolymorphicMapType_12607) (SummandMask2@@0 T@PolymorphicMapType_12607) (o_2@@48 T@Ref) (f_4@@48 T@Field_7838_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12607_7838_53#PolymorphicMapType_12607| ResultMask@@0) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_12607_7838_53#PolymorphicMapType_12607| SummandMask1@@0) o_2@@48 f_4@@48) (select (|PolymorphicMapType_12607_7838_53#PolymorphicMapType_12607| SummandMask2@@0) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12607_7838_53#PolymorphicMapType_12607| ResultMask@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12607_7838_53#PolymorphicMapType_12607| SummandMask1@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12607_7838_53#PolymorphicMapType_12607| SummandMask2@@0) o_2@@48 f_4@@48))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12607) (SummandMask1@@1 T@PolymorphicMapType_12607) (SummandMask2@@1 T@PolymorphicMapType_12607) (o_2@@49 T@Ref) (f_4@@49 T@Field_18838_18839) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12607_7838_7839#PolymorphicMapType_12607| ResultMask@@1) o_2@@49 f_4@@49) (+ (select (|PolymorphicMapType_12607_7838_7839#PolymorphicMapType_12607| SummandMask1@@1) o_2@@49 f_4@@49) (select (|PolymorphicMapType_12607_7838_7839#PolymorphicMapType_12607| SummandMask2@@1) o_2@@49 f_4@@49))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12607_7838_7839#PolymorphicMapType_12607| ResultMask@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12607_7838_7839#PolymorphicMapType_12607| SummandMask1@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12607_7838_7839#PolymorphicMapType_12607| SummandMask2@@1) o_2@@49 f_4@@49))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12607) (SummandMask1@@2 T@PolymorphicMapType_12607) (SummandMask2@@2 T@PolymorphicMapType_12607) (o_2@@50 T@Ref) (f_4@@50 T@Field_7838_7829) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12607_7838_7829#PolymorphicMapType_12607| ResultMask@@2) o_2@@50 f_4@@50) (+ (select (|PolymorphicMapType_12607_7838_7829#PolymorphicMapType_12607| SummandMask1@@2) o_2@@50 f_4@@50) (select (|PolymorphicMapType_12607_7838_7829#PolymorphicMapType_12607| SummandMask2@@2) o_2@@50 f_4@@50))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12607_7838_7829#PolymorphicMapType_12607| ResultMask@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12607_7838_7829#PolymorphicMapType_12607| SummandMask1@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12607_7838_7829#PolymorphicMapType_12607| SummandMask2@@2) o_2@@50 f_4@@50))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_12607) (SummandMask1@@3 T@PolymorphicMapType_12607) (SummandMask2@@3 T@PolymorphicMapType_12607) (o_2@@51 T@Ref) (f_4@@51 T@Field_7838_3145) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_12607_7838_3145#PolymorphicMapType_12607| ResultMask@@3) o_2@@51 f_4@@51) (+ (select (|PolymorphicMapType_12607_7838_3145#PolymorphicMapType_12607| SummandMask1@@3) o_2@@51 f_4@@51) (select (|PolymorphicMapType_12607_7838_3145#PolymorphicMapType_12607| SummandMask2@@3) o_2@@51 f_4@@51))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12607_7838_3145#PolymorphicMapType_12607| ResultMask@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12607_7838_3145#PolymorphicMapType_12607| SummandMask1@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12607_7838_3145#PolymorphicMapType_12607| SummandMask2@@3) o_2@@51 f_4@@51))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_12607) (SummandMask1@@4 T@PolymorphicMapType_12607) (SummandMask2@@4 T@PolymorphicMapType_12607) (o_2@@52 T@Ref) (f_4@@52 T@Field_7838_21174) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_12607_7838_21055#PolymorphicMapType_12607| ResultMask@@4) o_2@@52 f_4@@52) (+ (select (|PolymorphicMapType_12607_7838_21055#PolymorphicMapType_12607| SummandMask1@@4) o_2@@52 f_4@@52) (select (|PolymorphicMapType_12607_7838_21055#PolymorphicMapType_12607| SummandMask2@@4) o_2@@52 f_4@@52))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12607_7838_21055#PolymorphicMapType_12607| ResultMask@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12607_7838_21055#PolymorphicMapType_12607| SummandMask1@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12607_7838_21055#PolymorphicMapType_12607| SummandMask2@@4) o_2@@52 f_4@@52))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_12607) (SummandMask1@@5 T@PolymorphicMapType_12607) (SummandMask2@@5 T@PolymorphicMapType_12607) (o_2@@53 T@Ref) (f_4@@53 T@Field_7833_18856) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_12607_7833_51182#PolymorphicMapType_12607| ResultMask@@5) o_2@@53 f_4@@53) (+ (select (|PolymorphicMapType_12607_7833_51182#PolymorphicMapType_12607| SummandMask1@@5) o_2@@53 f_4@@53) (select (|PolymorphicMapType_12607_7833_51182#PolymorphicMapType_12607| SummandMask2@@5) o_2@@53 f_4@@53))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12607_7833_51182#PolymorphicMapType_12607| ResultMask@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12607_7833_51182#PolymorphicMapType_12607| SummandMask1@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12607_7833_51182#PolymorphicMapType_12607| SummandMask2@@5) o_2@@53 f_4@@53))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_12607) (SummandMask1@@6 T@PolymorphicMapType_12607) (SummandMask2@@6 T@PolymorphicMapType_12607) (o_2@@54 T@Ref) (f_4@@54 T@Field_12646_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_12607_7833_53#PolymorphicMapType_12607| ResultMask@@6) o_2@@54 f_4@@54) (+ (select (|PolymorphicMapType_12607_7833_53#PolymorphicMapType_12607| SummandMask1@@6) o_2@@54 f_4@@54) (select (|PolymorphicMapType_12607_7833_53#PolymorphicMapType_12607| SummandMask2@@6) o_2@@54 f_4@@54))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12607_7833_53#PolymorphicMapType_12607| ResultMask@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12607_7833_53#PolymorphicMapType_12607| SummandMask1@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12607_7833_53#PolymorphicMapType_12607| SummandMask2@@6) o_2@@54 f_4@@54))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_12607) (SummandMask1@@7 T@PolymorphicMapType_12607) (SummandMask2@@7 T@PolymorphicMapType_12607) (o_2@@55 T@Ref) (f_4@@55 T@Field_7833_7839) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_12607_7833_7839#PolymorphicMapType_12607| ResultMask@@7) o_2@@55 f_4@@55) (+ (select (|PolymorphicMapType_12607_7833_7839#PolymorphicMapType_12607| SummandMask1@@7) o_2@@55 f_4@@55) (select (|PolymorphicMapType_12607_7833_7839#PolymorphicMapType_12607| SummandMask2@@7) o_2@@55 f_4@@55))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12607_7833_7839#PolymorphicMapType_12607| ResultMask@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12607_7833_7839#PolymorphicMapType_12607| SummandMask1@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12607_7833_7839#PolymorphicMapType_12607| SummandMask2@@7) o_2@@55 f_4@@55))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_12607) (SummandMask1@@8 T@PolymorphicMapType_12607) (SummandMask2@@8 T@PolymorphicMapType_12607) (o_2@@56 T@Ref) (f_4@@56 T@Field_12659_12660) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_12607_7828_7829#PolymorphicMapType_12607| ResultMask@@8) o_2@@56 f_4@@56) (+ (select (|PolymorphicMapType_12607_7828_7829#PolymorphicMapType_12607| SummandMask1@@8) o_2@@56 f_4@@56) (select (|PolymorphicMapType_12607_7828_7829#PolymorphicMapType_12607| SummandMask2@@8) o_2@@56 f_4@@56))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12607_7828_7829#PolymorphicMapType_12607| ResultMask@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12607_7828_7829#PolymorphicMapType_12607| SummandMask1@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12607_7828_7829#PolymorphicMapType_12607| SummandMask2@@8) o_2@@56 f_4@@56))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_12607) (SummandMask1@@9 T@PolymorphicMapType_12607) (SummandMask2@@9 T@PolymorphicMapType_12607) (o_2@@57 T@Ref) (f_4@@57 T@Field_18725_3145) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_12607_7831_3145#PolymorphicMapType_12607| ResultMask@@9) o_2@@57 f_4@@57) (+ (select (|PolymorphicMapType_12607_7831_3145#PolymorphicMapType_12607| SummandMask1@@9) o_2@@57 f_4@@57) (select (|PolymorphicMapType_12607_7831_3145#PolymorphicMapType_12607| SummandMask2@@9) o_2@@57 f_4@@57))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_12607_7831_3145#PolymorphicMapType_12607| ResultMask@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_12607_7831_3145#PolymorphicMapType_12607| SummandMask1@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_12607_7831_3145#PolymorphicMapType_12607| SummandMask2@@9) o_2@@57 f_4@@57))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_12607) (SummandMask1@@10 T@PolymorphicMapType_12607) (SummandMask2@@10 T@PolymorphicMapType_12607) (o_2@@58 T@Ref) (f_4@@58 T@Field_18772_18777) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_12607_7833_21055#PolymorphicMapType_12607| ResultMask@@10) o_2@@58 f_4@@58) (+ (select (|PolymorphicMapType_12607_7833_21055#PolymorphicMapType_12607| SummandMask1@@10) o_2@@58 f_4@@58) (select (|PolymorphicMapType_12607_7833_21055#PolymorphicMapType_12607| SummandMask2@@10) o_2@@58 f_4@@58))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_12607_7833_21055#PolymorphicMapType_12607| ResultMask@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_12607_7833_21055#PolymorphicMapType_12607| SummandMask1@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_12607_7833_21055#PolymorphicMapType_12607| SummandMask2@@10) o_2@@58 f_4@@58))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3008| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3008| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.561:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3008| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_18775) (b T@Seq_18775) ) (!  (=> (|Seq#Equal_18775| a b) (= a b))
 :qid |stdinbpl.534:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_18775| a b))
)))
(assert (forall ((a@@0 T@Seq_3008) (b@@0 T@Seq_3008) ) (!  (=> (|Seq#Equal_3008| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.534:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3008| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_18775) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_7834| s@@17))) (|Seq#ContainsTrigger_7834| s@@17 (|Seq#Index_7834| s@@17 i@@3)))
 :qid |stdinbpl.427:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_7834| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3008) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3008| s@@18))) (|Seq#ContainsTrigger_3008| s@@18 (|Seq#Index_3008| s@@18 i@@4)))
 :qid |stdinbpl.427:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3008| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_18775) (s1@@3 T@Seq_18775) ) (!  (and (=> (= s0@@3 |Seq#Empty_7834|) (= (|Seq#Append_18775| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_7834|) (= (|Seq#Append_18775| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.245:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_18775| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3008) (s1@@4 T@Seq_3008) ) (!  (and (=> (= s0@@4 |Seq#Empty_3008|) (= (|Seq#Append_3008| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3008|) (= (|Seq#Append_3008| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.245:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3008| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_7834| (|Seq#Singleton_7834| t@@3) 0) t@@3)
 :qid |stdinbpl.249:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_7834| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3008| (|Seq#Singleton_3008| t@@4) 0) t@@4)
 :qid |stdinbpl.249:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3008| t@@4))
)))
(assert (forall ((s@@19 T@Seq_18775) ) (! (<= 0 (|Seq#Length_7834| s@@19))
 :qid |stdinbpl.228:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_7834| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3008) ) (! (<= 0 (|Seq#Length_3008| s@@20))
 :qid |stdinbpl.228:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3008| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_18775) (s1@@5 T@Seq_18775) ) (!  (=> (|Seq#Equal_18775| s0@@5 s1@@5) (and (= (|Seq#Length_7834| s0@@5) (|Seq#Length_7834| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_7834| s0@@5))) (= (|Seq#Index_7834| s0@@5 j@@6) (|Seq#Index_7834| s1@@5 j@@6)))
 :qid |stdinbpl.524:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_7834| s0@@5 j@@6))
 :pattern ( (|Seq#Index_7834| s1@@5 j@@6))
))))
 :qid |stdinbpl.521:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_18775| s0@@5 s1@@5))
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
(assert (forall ((this@@5 T@Ref) ) (! (= (getPredWandId_7838_7839 (List this@@5)) 0)
 :qid |stdinbpl.599:15|
 :skolemid |60|
 :pattern ( (List this@@5))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_7834| (|Seq#Singleton_7834| t@@5)) 1)
 :qid |stdinbpl.236:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_7834| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3008| (|Seq#Singleton_3008| t@@6)) 1)
 :qid |stdinbpl.236:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3008| t@@6))
)))
(assert (forall ((s@@21 T@Seq_18775) (t@@7 T@Seq_18775) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_7834| s@@21))) (= (|Seq#Take_7834| (|Seq#Append_18775| s@@21 t@@7) n@@17) (|Seq#Take_7834| s@@21 n@@17)))
 :qid |stdinbpl.378:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_7834| (|Seq#Append_18775| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3008) (t@@8 T@Seq_3008) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3008| s@@22))) (= (|Seq#Take_3008| (|Seq#Append_3008| s@@22 t@@8) n@@18) (|Seq#Take_3008| s@@22 n@@18)))
 :qid |stdinbpl.378:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3008| (|Seq#Append_3008| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_18775) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_7834| s@@23))) (= (|Seq#Length_7834| (|Seq#Update_7834| s@@23 i@@5 v@@2)) (|Seq#Length_7834| s@@23)))
 :qid |stdinbpl.277:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_7834| (|Seq#Update_7834| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_7834| s@@23) (|Seq#Update_7834| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3008) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3008| s@@24))) (= (|Seq#Length_3008| (|Seq#Update_3008| s@@24 i@@6 v@@3)) (|Seq#Length_3008| s@@24)))
 :qid |stdinbpl.277:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3008| (|Seq#Update_3008| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3008| s@@24) (|Seq#Update_3008| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_12586) (o_12 T@Ref) (f_24 T@Field_18851_18856) (v@@4 T@PolymorphicMapType_13135) ) (! (succHeap Heap@@23 (PolymorphicMapType_12586 (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@23) (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@23) (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@23) (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap@@23) (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| Heap@@23) (store (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@23) o_12 f_24 v@@4) (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| Heap@@23) (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@23) (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| Heap@@23) (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| Heap@@23) (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| Heap@@23) (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12586 (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@23) (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@23) (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@23) (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap@@23) (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| Heap@@23) (store (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@23) o_12 f_24 v@@4) (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| Heap@@23) (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@23) (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| Heap@@23) (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| Heap@@23) (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| Heap@@23) (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_12586) (o_12@@0 T@Ref) (f_24@@0 T@Field_18838_18839) (v@@5 T@FrameType) ) (! (succHeap Heap@@24 (PolymorphicMapType_12586 (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@24) (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@24) (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@24) (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap@@24) (store (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| Heap@@24) o_12@@0 f_24@@0 v@@5) (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@24) (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| Heap@@24) (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@24) (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| Heap@@24) (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| Heap@@24) (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| Heap@@24) (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12586 (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@24) (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@24) (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@24) (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap@@24) (store (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| Heap@@24) o_12@@0 f_24@@0 v@@5) (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@24) (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| Heap@@24) (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@24) (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| Heap@@24) (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| Heap@@24) (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| Heap@@24) (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_12586) (o_12@@1 T@Ref) (f_24@@1 T@Field_7838_3145) (v@@6 Int) ) (! (succHeap Heap@@25 (PolymorphicMapType_12586 (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@25) (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@25) (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@25) (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap@@25) (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| Heap@@25) (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@25) (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| Heap@@25) (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@25) (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| Heap@@25) (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| Heap@@25) (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| Heap@@25) (store (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| Heap@@25) o_12@@1 f_24@@1 v@@6)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12586 (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@25) (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@25) (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@25) (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap@@25) (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| Heap@@25) (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@25) (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| Heap@@25) (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@25) (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| Heap@@25) (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| Heap@@25) (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| Heap@@25) (store (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| Heap@@25) o_12@@1 f_24@@1 v@@6)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_12586) (o_12@@2 T@Ref) (f_24@@2 T@Field_7838_21174) (v@@7 T@Seq_18775) ) (! (succHeap Heap@@26 (PolymorphicMapType_12586 (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@26) (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@26) (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@26) (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap@@26) (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| Heap@@26) (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@26) (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| Heap@@26) (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@26) (store (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| Heap@@26) o_12@@2 f_24@@2 v@@7) (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| Heap@@26) (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| Heap@@26) (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12586 (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@26) (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@26) (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@26) (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap@@26) (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| Heap@@26) (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@26) (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| Heap@@26) (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@26) (store (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| Heap@@26) o_12@@2 f_24@@2 v@@7) (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| Heap@@26) (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| Heap@@26) (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_12586) (o_12@@3 T@Ref) (f_24@@3 T@Field_7838_7829) (v@@8 T@Ref) ) (! (succHeap Heap@@27 (PolymorphicMapType_12586 (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@27) (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@27) (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@27) (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap@@27) (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| Heap@@27) (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@27) (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| Heap@@27) (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@27) (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| Heap@@27) (store (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| Heap@@27) o_12@@3 f_24@@3 v@@8) (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| Heap@@27) (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12586 (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@27) (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@27) (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@27) (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap@@27) (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| Heap@@27) (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@27) (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| Heap@@27) (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@27) (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| Heap@@27) (store (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| Heap@@27) o_12@@3 f_24@@3 v@@8) (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| Heap@@27) (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_12586) (o_12@@4 T@Ref) (f_24@@4 T@Field_7838_53) (v@@9 Bool) ) (! (succHeap Heap@@28 (PolymorphicMapType_12586 (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@28) (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@28) (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@28) (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap@@28) (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| Heap@@28) (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@28) (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| Heap@@28) (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@28) (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| Heap@@28) (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| Heap@@28) (store (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| Heap@@28) o_12@@4 f_24@@4 v@@9) (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12586 (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@28) (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@28) (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@28) (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap@@28) (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| Heap@@28) (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@28) (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| Heap@@28) (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@28) (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| Heap@@28) (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| Heap@@28) (store (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| Heap@@28) o_12@@4 f_24@@4 v@@9) (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_12586) (o_12@@5 T@Ref) (f_24@@5 T@Field_7833_18856) (v@@10 T@PolymorphicMapType_13135) ) (! (succHeap Heap@@29 (PolymorphicMapType_12586 (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@29) (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@29) (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@29) (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap@@29) (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| Heap@@29) (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@29) (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| Heap@@29) (store (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@29) o_12@@5 f_24@@5 v@@10) (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| Heap@@29) (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| Heap@@29) (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| Heap@@29) (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12586 (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@29) (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@29) (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@29) (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap@@29) (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| Heap@@29) (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@29) (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| Heap@@29) (store (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@29) o_12@@5 f_24@@5 v@@10) (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| Heap@@29) (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| Heap@@29) (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| Heap@@29) (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_12586) (o_12@@6 T@Ref) (f_24@@6 T@Field_7833_7839) (v@@11 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_12586 (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@30) (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@30) (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@30) (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap@@30) (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| Heap@@30) (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@30) (store (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| Heap@@30) o_12@@6 f_24@@6 v@@11) (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@30) (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| Heap@@30) (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| Heap@@30) (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| Heap@@30) (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12586 (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@30) (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@30) (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@30) (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap@@30) (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| Heap@@30) (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@30) (store (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| Heap@@30) o_12@@6 f_24@@6 v@@11) (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@30) (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| Heap@@30) (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| Heap@@30) (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| Heap@@30) (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_12586) (o_12@@7 T@Ref) (f_24@@7 T@Field_18725_3145) (v@@12 Int) ) (! (succHeap Heap@@31 (PolymorphicMapType_12586 (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@31) (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@31) (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@31) (store (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap@@31) o_12@@7 f_24@@7 v@@12) (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| Heap@@31) (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@31) (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| Heap@@31) (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@31) (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| Heap@@31) (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| Heap@@31) (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| Heap@@31) (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12586 (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@31) (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@31) (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@31) (store (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap@@31) o_12@@7 f_24@@7 v@@12) (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| Heap@@31) (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@31) (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| Heap@@31) (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@31) (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| Heap@@31) (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| Heap@@31) (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| Heap@@31) (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_12586) (o_12@@8 T@Ref) (f_24@@8 T@Field_18772_18777) (v@@13 T@Seq_18775) ) (! (succHeap Heap@@32 (PolymorphicMapType_12586 (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@32) (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@32) (store (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@32) o_12@@8 f_24@@8 v@@13) (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap@@32) (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| Heap@@32) (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@32) (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| Heap@@32) (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@32) (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| Heap@@32) (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| Heap@@32) (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| Heap@@32) (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12586 (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@32) (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@32) (store (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@32) o_12@@8 f_24@@8 v@@13) (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap@@32) (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| Heap@@32) (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@32) (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| Heap@@32) (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@32) (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| Heap@@32) (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| Heap@@32) (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| Heap@@32) (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_12586) (o_12@@9 T@Ref) (f_24@@9 T@Field_12659_12660) (v@@14 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_12586 (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@33) (store (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@33) o_12@@9 f_24@@9 v@@14) (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@33) (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap@@33) (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| Heap@@33) (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@33) (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| Heap@@33) (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@33) (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| Heap@@33) (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| Heap@@33) (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| Heap@@33) (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12586 (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@33) (store (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@33) o_12@@9 f_24@@9 v@@14) (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@33) (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap@@33) (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| Heap@@33) (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@33) (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| Heap@@33) (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@33) (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| Heap@@33) (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| Heap@@33) (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| Heap@@33) (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_12586) (o_12@@10 T@Ref) (f_24@@10 T@Field_12646_53) (v@@15 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_12586 (store (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@34) o_12@@10 f_24@@10 v@@15) (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@34) (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@34) (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap@@34) (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| Heap@@34) (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@34) (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| Heap@@34) (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@34) (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| Heap@@34) (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| Heap@@34) (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| Heap@@34) (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12586 (store (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@34) o_12@@10 f_24@@10 v@@15) (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@34) (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@34) (|PolymorphicMapType_12586_7831_3145#PolymorphicMapType_12586| Heap@@34) (|PolymorphicMapType_12586_7838_7839#PolymorphicMapType_12586| Heap@@34) (|PolymorphicMapType_12586_7842_38160#PolymorphicMapType_12586| Heap@@34) (|PolymorphicMapType_12586_7833_7839#PolymorphicMapType_12586| Heap@@34) (|PolymorphicMapType_12586_7833_40664#PolymorphicMapType_12586| Heap@@34) (|PolymorphicMapType_12586_7838_21174#PolymorphicMapType_12586| Heap@@34) (|PolymorphicMapType_12586_7838_7829#PolymorphicMapType_12586| Heap@@34) (|PolymorphicMapType_12586_7838_53#PolymorphicMapType_12586| Heap@@34) (|PolymorphicMapType_12586_7838_3145#PolymorphicMapType_12586| Heap@@34)))
)))
(assert (forall ((this@@6 T@Ref) ) (! (= (PredicateMaskField_7838 (List this@@6)) (|List#sm| this@@6))
 :qid |stdinbpl.591:15|
 :skolemid |58|
 :pattern ( (PredicateMaskField_7838 (List this@@6)))
)))
(assert (forall ((s@@25 T@Seq_18775) (t@@9 T@Seq_18775) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_7834| s@@25))) (= (|Seq#Drop_7834| (|Seq#Append_18775| s@@25 t@@9) n@@19) (|Seq#Append_18775| (|Seq#Drop_7834| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.392:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_7834| (|Seq#Append_18775| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3008) (t@@10 T@Seq_3008) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3008| s@@26))) (= (|Seq#Drop_3008| (|Seq#Append_3008| s@@26 t@@10) n@@20) (|Seq#Append_3008| (|Seq#Drop_3008| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.392:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3008| (|Seq#Append_3008| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_18775) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_7834| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_7834| (|Seq#Drop_7834| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_7834| s@@27 i@@7))))
 :qid |stdinbpl.328:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_7834| s@@27 n@@21) (|Seq#Index_7834| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3008) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3008| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3008| (|Seq#Drop_3008| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3008| s@@28 i@@8))))
 :qid |stdinbpl.328:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3008| s@@28 n@@22) (|Seq#Index_3008| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_18775) (s1@@7 T@Seq_18775) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_7834|)) (not (= s1@@7 |Seq#Empty_7834|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_7834| s0@@7))) (= (|Seq#Index_7834| (|Seq#Append_18775| s0@@7 s1@@7) n@@23) (|Seq#Index_7834| s0@@7 n@@23)))
 :qid |stdinbpl.268:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_7834| (|Seq#Append_18775| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_7834| s0@@7 n@@23) (|Seq#Append_18775| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3008) (s1@@8 T@Seq_3008) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3008|)) (not (= s1@@8 |Seq#Empty_3008|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3008| s0@@8))) (= (|Seq#Index_3008| (|Seq#Append_3008| s0@@8 s1@@8) n@@24) (|Seq#Index_3008| s0@@8 n@@24)))
 :qid |stdinbpl.268:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3008| (|Seq#Append_3008| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3008| s0@@8 n@@24) (|Seq#Append_3008| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_18775) (s1@@9 T@Seq_18775) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_7834|)) (not (= s1@@9 |Seq#Empty_7834|))) (<= 0 m)) (< m (|Seq#Length_7834| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_7834| s0@@9)) (|Seq#Length_7834| s0@@9)) m) (= (|Seq#Index_7834| (|Seq#Append_18775| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_7834| s0@@9))) (|Seq#Index_7834| s1@@9 m))))
 :qid |stdinbpl.273:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_7834| s1@@9 m) (|Seq#Append_18775| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3008) (s1@@10 T@Seq_3008) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3008|)) (not (= s1@@10 |Seq#Empty_3008|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3008| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3008| s0@@10)) (|Seq#Length_3008| s0@@10)) m@@0) (= (|Seq#Index_3008| (|Seq#Append_3008| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3008| s0@@10))) (|Seq#Index_3008| s1@@10 m@@0))))
 :qid |stdinbpl.273:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3008| s1@@10 m@@0) (|Seq#Append_3008| s0@@10 s1@@10))
)))
(assert (forall ((o_12@@11 T@Ref) (f_16 T@Field_12659_12660) (Heap@@35 T@PolymorphicMapType_12586) ) (!  (=> (select (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@35) o_12@@11 $allocated) (select (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@35) (select (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@35) o_12@@11 f_16) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12586_7631_7632#PolymorphicMapType_12586| Heap@@35) o_12@@11 f_16))
)))
(assert (forall ((s@@29 T@Seq_18775) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_7834| s@@29))) (= (|Seq#Index_7834| s@@29 i@@9) x@@3)) (|Seq#Contains_18775| s@@29 x@@3))
 :qid |stdinbpl.425:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_18775| s@@29 x@@3) (|Seq#Index_7834| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3008) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3008| s@@30))) (= (|Seq#Index_3008| s@@30 i@@10) x@@4)) (|Seq#Contains_3008| s@@30 x@@4))
 :qid |stdinbpl.425:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3008| s@@30 x@@4) (|Seq#Index_3008| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_18775) (s1@@11 T@Seq_18775) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_18775| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_18775| s0@@11 s1@@11))) (not (= (|Seq#Length_7834| s0@@11) (|Seq#Length_7834| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_18775| s0@@11 s1@@11))) (= (|Seq#Length_7834| s0@@11) (|Seq#Length_7834| s1@@11))) (= (|Seq#SkolemDiff_18775| s0@@11 s1@@11) (|Seq#SkolemDiff_18775| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_18775| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_18775| s0@@11 s1@@11) (|Seq#Length_7834| s0@@11))) (not (= (|Seq#Index_7834| s0@@11 (|Seq#SkolemDiff_18775| s0@@11 s1@@11)) (|Seq#Index_7834| s1@@11 (|Seq#SkolemDiff_18775| s0@@11 s1@@11))))))
 :qid |stdinbpl.529:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_18775| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3008) (s1@@12 T@Seq_3008) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3008| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3008| s0@@12 s1@@12))) (not (= (|Seq#Length_3008| s0@@12) (|Seq#Length_3008| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3008| s0@@12 s1@@12))) (= (|Seq#Length_3008| s0@@12) (|Seq#Length_3008| s1@@12))) (= (|Seq#SkolemDiff_3008| s0@@12 s1@@12) (|Seq#SkolemDiff_3008| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3008| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3008| s0@@12 s1@@12) (|Seq#Length_3008| s0@@12))) (not (= (|Seq#Index_3008| s0@@12 (|Seq#SkolemDiff_3008| s0@@12 s1@@12)) (|Seq#Index_3008| s1@@12 (|Seq#SkolemDiff_3008| s0@@12 s1@@12))))))
 :qid |stdinbpl.529:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3008| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_18838_18839) (v_1@@1 T@FrameType) (q T@Field_18838_18839) (w@@1 T@FrameType) (r T@Field_18838_18839) (u T@FrameType) ) (!  (=> (and (InsidePredicate_18838_18838 p@@2 v_1@@1 q w@@1) (InsidePredicate_18838_18838 q w@@1 r u)) (InsidePredicate_18838_18838 p@@2 v_1@@1 r u))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18838_18838 p@@2 v_1@@1 q w@@1) (InsidePredicate_18838_18838 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_18838_18839) (v_1@@2 T@FrameType) (q@@0 T@Field_18838_18839) (w@@2 T@FrameType) (r@@0 T@Field_7833_7839) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_18838_18838 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_18838_12646 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_18838_12646 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18838_18838 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_18838_12646 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_18838_18839) (v_1@@3 T@FrameType) (q@@1 T@Field_7833_7839) (w@@3 T@FrameType) (r@@1 T@Field_18838_18839) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_18838_12646 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_12646_18838 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_18838_18838 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18838_12646 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_12646_18838 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_18838_18839) (v_1@@4 T@FrameType) (q@@2 T@Field_7833_7839) (w@@4 T@FrameType) (r@@2 T@Field_7833_7839) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_18838_12646 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_12646_12646 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_18838_12646 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18838_12646 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_12646_12646 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_7833_7839) (v_1@@5 T@FrameType) (q@@3 T@Field_18838_18839) (w@@5 T@FrameType) (r@@3 T@Field_18838_18839) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_12646_18838 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_18838_18838 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_12646_18838 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12646_18838 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_18838_18838 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_7833_7839) (v_1@@6 T@FrameType) (q@@4 T@Field_18838_18839) (w@@6 T@FrameType) (r@@4 T@Field_7833_7839) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_12646_18838 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_18838_12646 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_12646_12646 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12646_18838 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_18838_12646 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_7833_7839) (v_1@@7 T@FrameType) (q@@5 T@Field_7833_7839) (w@@7 T@FrameType) (r@@5 T@Field_18838_18839) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_12646_12646 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_12646_18838 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_12646_18838 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12646_12646 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_12646_18838 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_7833_7839) (v_1@@8 T@FrameType) (q@@6 T@Field_7833_7839) (w@@8 T@FrameType) (r@@6 T@Field_7833_7839) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_12646_12646 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_12646_12646 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_12646_12646 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12646_12646 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_12646_12646 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((s@@31 T@Seq_18775) ) (!  (=> (= (|Seq#Length_7834| s@@31) 0) (= s@@31 |Seq#Empty_7834|))
 :qid |stdinbpl.232:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_7834| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3008) ) (!  (=> (= (|Seq#Length_3008| s@@32) 0) (= s@@32 |Seq#Empty_3008|))
 :qid |stdinbpl.232:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3008| s@@32))
)))
(assert (forall ((s@@33 T@Seq_18775) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_7834| s@@33 n@@25) |Seq#Empty_7834|))
 :qid |stdinbpl.408:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_7834| s@@33 n@@25))
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
(declare-fun Heap@@36 () T@PolymorphicMapType_12586)
(declare-fun this@@7 () T@Ref)
(declare-fun i_6 () Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_12607)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_12607)
(declare-fun i_4 () Int)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun Mask@0 () T@PolymorphicMapType_12607)
(declare-fun i_2 () Int)
(declare-fun i_14 () Int)
(declare-fun j_5 () Int)
(set-info :boogie-vc-id |List#definedness|)
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
 (=> (= (ControlFlow 0 0) 63) (let ((anon27_correct true))
(let ((anon43_Else_correct  (=> (<= (- (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes)) 1) i_6) (and (=> (= (ControlFlow 0 47) (- 0 51)) (HasDirectPerm_7833_21174 QPMask@1 this@@7 nodes)) (=> (HasDirectPerm_7833_21174 QPMask@1 this@@7 nodes) (and (=> (= (ControlFlow 0 47) (- 0 50)) (>= i_6 0)) (=> (>= i_6 0) (and (=> (= (ControlFlow 0 47) (- 0 49)) (< i_6 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes)))) (=> (< i_6 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes))) (and (=> (= (ControlFlow 0 47) (- 0 48)) (HasDirectPerm_7828_7829 QPMask@1 (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) i_6) next)) (=> (HasDirectPerm_7828_7829 QPMask@1 (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) i_6) next) (=> (= (ControlFlow 0 47) 37) anon27_correct))))))))))))
(let ((anon43_Then_correct  (=> (< i_6 (- (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes)) 1)) (and (=> (= (ControlFlow 0 39) (- 0 46)) (HasDirectPerm_7833_21174 QPMask@1 this@@7 nodes)) (=> (HasDirectPerm_7833_21174 QPMask@1 this@@7 nodes) (and (=> (= (ControlFlow 0 39) (- 0 45)) (>= i_6 0)) (=> (>= i_6 0) (and (=> (= (ControlFlow 0 39) (- 0 44)) (< i_6 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes)))) (=> (< i_6 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes))) (and (=> (= (ControlFlow 0 39) (- 0 43)) (HasDirectPerm_7828_7829 QPMask@1 (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) i_6) next)) (=> (HasDirectPerm_7828_7829 QPMask@1 (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) i_6) next) (and (=> (= (ControlFlow 0 39) (- 0 42)) (HasDirectPerm_7833_21174 QPMask@1 this@@7 nodes)) (=> (HasDirectPerm_7833_21174 QPMask@1 this@@7 nodes) (and (=> (= (ControlFlow 0 39) (- 0 41)) (>= (+ i_6 1) 0)) (=> (>= (+ i_6 1) 0) (and (=> (= (ControlFlow 0 39) (- 0 40)) (< (+ i_6 1) (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes)))) (=> (< (+ i_6 1) (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes))) (=> (= (ControlFlow 0 39) 37) anon27_correct))))))))))))))))))
(let ((anon42_Then_correct  (=> (and (<= 0 i_6) (< i_6 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes)))) (and (=> (= (ControlFlow 0 52) (- 0 53)) (HasDirectPerm_7833_21174 QPMask@1 this@@7 nodes)) (=> (HasDirectPerm_7833_21174 QPMask@1 this@@7 nodes) (and (=> (= (ControlFlow 0 52) 39) anon43_Then_correct) (=> (= (ControlFlow 0 52) 47) anon43_Else_correct)))))))
(let ((anon42_Else_correct  (=> (and (not (and (<= 0 i_6) (< i_6 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes))))) (= (ControlFlow 0 38) 37)) anon27_correct)))
(let ((anon41_Else_correct  (=> (< i_6 0) (and (=> (= (ControlFlow 0 56) 52) anon42_Then_correct) (=> (= (ControlFlow 0 56) 38) anon42_Else_correct)))))
(let ((anon41_Then_correct  (=> (<= 0 i_6) (and (=> (= (ControlFlow 0 54) (- 0 55)) (HasDirectPerm_7833_21174 QPMask@1 this@@7 nodes)) (=> (HasDirectPerm_7833_21174 QPMask@1 this@@7 nodes) (and (=> (= (ControlFlow 0 54) 52) anon42_Then_correct) (=> (= (ControlFlow 0 54) 38) anon42_Else_correct)))))))
(let ((anon40_Else_correct true))
(let ((anon37_Else_correct  (and (=> (= (ControlFlow 0 57) (- 0 58)) (forall ((i_7_1 Int) (i_7_2 Int) ) (!  (=> (and (and (and (and (not (= i_7_1 i_7_2)) (and (<= 0 i_7_1) (< i_7_1 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes))))) (and (<= 0 i_7_2) (< i_7_2 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) i_7_1) (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) i_7_2))))
 :qid |stdinbpl.766:15|
 :skolemid |73|
))) (=> (forall ((i_7_1@@0 Int) (i_7_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_7_1@@0 i_7_2@@0)) (and (<= 0 i_7_1@@0) (< i_7_1@@0 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes))))) (and (<= 0 i_7_2@@0) (< i_7_2@@0 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) i_7_1@@0) (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) i_7_2@@0))))
 :qid |stdinbpl.766:15|
 :skolemid |73|
)) (=> (and (and (forall ((i_7_1@@1 Int) ) (!  (=> (and (and (<= 0 i_7_1@@1) (< i_7_1@@1 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes)))) (< NoPerm FullPerm)) (and (qpRange2 (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) i_7_1@@1)) (= (invRecv2 (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) i_7_1@@1)) i_7_1@@1)))
 :qid |stdinbpl.772:22|
 :skolemid |74|
 :pattern ( (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) i_7_1@@1))
 :pattern ( (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) i_7_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv2 o_4)) (< (invRecv2 o_4) (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes)))) (< NoPerm FullPerm)) (qpRange2 o_4)) (= (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) (invRecv2 o_4)) o_4))
 :qid |stdinbpl.776:22|
 :skolemid |75|
 :pattern ( (invRecv2 o_4))
))) (and (forall ((i_7_1@@2 Int) ) (!  (=> (and (<= 0 i_7_1@@2) (< i_7_1@@2 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes)))) (not (= (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) i_7_1@@2) null)))
 :qid |stdinbpl.782:22|
 :skolemid |76|
 :pattern ( (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) i_7_1@@2))
 :pattern ( (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) i_7_1@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv2 o_4@@0)) (< (invRecv2 o_4@@0) (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes)))) (< NoPerm FullPerm)) (qpRange2 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) (invRecv2 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_12607_7828_7829#PolymorphicMapType_12607| QPMask@1) o_4@@0 next) (+ (select (|PolymorphicMapType_12607_7828_7829#PolymorphicMapType_12607| QPMask@0) o_4@@0 next) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv2 o_4@@0)) (< (invRecv2 o_4@@0) (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes)))) (< NoPerm FullPerm)) (qpRange2 o_4@@0))) (= (select (|PolymorphicMapType_12607_7828_7829#PolymorphicMapType_12607| QPMask@1) o_4@@0 next) (select (|PolymorphicMapType_12607_7828_7829#PolymorphicMapType_12607| QPMask@0) o_4@@0 next))))
 :qid |stdinbpl.788:22|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_12607_7828_7829#PolymorphicMapType_12607| QPMask@1) o_4@@0 next))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_12646_53) ) (!  (=> true (= (select (|PolymorphicMapType_12607_7833_53#PolymorphicMapType_12607| QPMask@0) o_4@@1 f_5) (select (|PolymorphicMapType_12607_7833_53#PolymorphicMapType_12607| QPMask@1) o_4@@1 f_5)))
 :qid |stdinbpl.792:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_12607_7833_53#PolymorphicMapType_12607| QPMask@0) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_12607_7833_53#PolymorphicMapType_12607| QPMask@1) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_12659_12660) ) (!  (=> (not (= f_5@@0 next)) (= (select (|PolymorphicMapType_12607_7828_7829#PolymorphicMapType_12607| QPMask@0) o_4@@2 f_5@@0) (select (|PolymorphicMapType_12607_7828_7829#PolymorphicMapType_12607| QPMask@1) o_4@@2 f_5@@0)))
 :qid |stdinbpl.792:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_12607_7828_7829#PolymorphicMapType_12607| QPMask@0) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_12607_7828_7829#PolymorphicMapType_12607| QPMask@1) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_18725_3145) ) (!  (=> true (= (select (|PolymorphicMapType_12607_7831_3145#PolymorphicMapType_12607| QPMask@0) o_4@@3 f_5@@1) (select (|PolymorphicMapType_12607_7831_3145#PolymorphicMapType_12607| QPMask@1) o_4@@3 f_5@@1)))
 :qid |stdinbpl.792:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_12607_7831_3145#PolymorphicMapType_12607| QPMask@0) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_12607_7831_3145#PolymorphicMapType_12607| QPMask@1) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_18772_18777) ) (!  (=> true (= (select (|PolymorphicMapType_12607_7833_21055#PolymorphicMapType_12607| QPMask@0) o_4@@4 f_5@@2) (select (|PolymorphicMapType_12607_7833_21055#PolymorphicMapType_12607| QPMask@1) o_4@@4 f_5@@2)))
 :qid |stdinbpl.792:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_12607_7833_21055#PolymorphicMapType_12607| QPMask@0) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_12607_7833_21055#PolymorphicMapType_12607| QPMask@1) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_7833_7839) ) (!  (=> true (= (select (|PolymorphicMapType_12607_7833_7839#PolymorphicMapType_12607| QPMask@0) o_4@@5 f_5@@3) (select (|PolymorphicMapType_12607_7833_7839#PolymorphicMapType_12607| QPMask@1) o_4@@5 f_5@@3)))
 :qid |stdinbpl.792:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_12607_7833_7839#PolymorphicMapType_12607| QPMask@0) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_12607_7833_7839#PolymorphicMapType_12607| QPMask@1) o_4@@5 f_5@@3))
))) (forall ((o_4@@6 T@Ref) (f_5@@4 T@Field_7833_18856) ) (!  (=> true (= (select (|PolymorphicMapType_12607_7833_51182#PolymorphicMapType_12607| QPMask@0) o_4@@6 f_5@@4) (select (|PolymorphicMapType_12607_7833_51182#PolymorphicMapType_12607| QPMask@1) o_4@@6 f_5@@4)))
 :qid |stdinbpl.792:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_12607_7833_51182#PolymorphicMapType_12607| QPMask@0) o_4@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_12607_7833_51182#PolymorphicMapType_12607| QPMask@1) o_4@@6 f_5@@4))
))) (forall ((o_4@@7 T@Ref) (f_5@@5 T@Field_7838_53) ) (!  (=> true (= (select (|PolymorphicMapType_12607_7838_53#PolymorphicMapType_12607| QPMask@0) o_4@@7 f_5@@5) (select (|PolymorphicMapType_12607_7838_53#PolymorphicMapType_12607| QPMask@1) o_4@@7 f_5@@5)))
 :qid |stdinbpl.792:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_12607_7838_53#PolymorphicMapType_12607| QPMask@0) o_4@@7 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_12607_7838_53#PolymorphicMapType_12607| QPMask@1) o_4@@7 f_5@@5))
))) (forall ((o_4@@8 T@Ref) (f_5@@6 T@Field_7838_7829) ) (!  (=> true (= (select (|PolymorphicMapType_12607_7838_7829#PolymorphicMapType_12607| QPMask@0) o_4@@8 f_5@@6) (select (|PolymorphicMapType_12607_7838_7829#PolymorphicMapType_12607| QPMask@1) o_4@@8 f_5@@6)))
 :qid |stdinbpl.792:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_12607_7838_7829#PolymorphicMapType_12607| QPMask@0) o_4@@8 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_12607_7838_7829#PolymorphicMapType_12607| QPMask@1) o_4@@8 f_5@@6))
))) (forall ((o_4@@9 T@Ref) (f_5@@7 T@Field_7838_3145) ) (!  (=> true (= (select (|PolymorphicMapType_12607_7838_3145#PolymorphicMapType_12607| QPMask@0) o_4@@9 f_5@@7) (select (|PolymorphicMapType_12607_7838_3145#PolymorphicMapType_12607| QPMask@1) o_4@@9 f_5@@7)))
 :qid |stdinbpl.792:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_12607_7838_3145#PolymorphicMapType_12607| QPMask@0) o_4@@9 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_12607_7838_3145#PolymorphicMapType_12607| QPMask@1) o_4@@9 f_5@@7))
))) (forall ((o_4@@10 T@Ref) (f_5@@8 T@Field_7838_21174) ) (!  (=> true (= (select (|PolymorphicMapType_12607_7838_21055#PolymorphicMapType_12607| QPMask@0) o_4@@10 f_5@@8) (select (|PolymorphicMapType_12607_7838_21055#PolymorphicMapType_12607| QPMask@1) o_4@@10 f_5@@8)))
 :qid |stdinbpl.792:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_12607_7838_21055#PolymorphicMapType_12607| QPMask@0) o_4@@10 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_12607_7838_21055#PolymorphicMapType_12607| QPMask@1) o_4@@10 f_5@@8))
))) (forall ((o_4@@11 T@Ref) (f_5@@9 T@Field_18838_18839) ) (!  (=> true (= (select (|PolymorphicMapType_12607_7838_7839#PolymorphicMapType_12607| QPMask@0) o_4@@11 f_5@@9) (select (|PolymorphicMapType_12607_7838_7839#PolymorphicMapType_12607| QPMask@1) o_4@@11 f_5@@9)))
 :qid |stdinbpl.792:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_12607_7838_7839#PolymorphicMapType_12607| QPMask@0) o_4@@11 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_12607_7838_7839#PolymorphicMapType_12607| QPMask@1) o_4@@11 f_5@@9))
))) (forall ((o_4@@12 T@Ref) (f_5@@10 T@Field_18851_18856) ) (!  (=> true (= (select (|PolymorphicMapType_12607_7838_51676#PolymorphicMapType_12607| QPMask@0) o_4@@12 f_5@@10) (select (|PolymorphicMapType_12607_7838_51676#PolymorphicMapType_12607| QPMask@1) o_4@@12 f_5@@10)))
 :qid |stdinbpl.792:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_12607_7838_51676#PolymorphicMapType_12607| QPMask@0) o_4@@12 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_12607_7838_51676#PolymorphicMapType_12607| QPMask@1) o_4@@12 f_5@@10))
))) (state Heap@@36 QPMask@1)) (and (and (=> (= (ControlFlow 0 57) 36) anon40_Else_correct) (=> (= (ControlFlow 0 57) 54) anon41_Then_correct)) (=> (= (ControlFlow 0 57) 56) anon41_Else_correct))))))))
(let ((anon19_correct true))
(let ((anon39_Else_correct  (=> (and (not (and (<= 0 i_4) (< i_4 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes))))) (= (ControlFlow 0 32) 27)) anon19_correct)))
(let ((anon39_Then_correct  (=> (and (<= 0 i_4) (< i_4 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes)))) (and (=> (= (ControlFlow 0 28) (- 0 31)) (HasDirectPerm_7833_21174 QPMask@0 this@@7 nodes)) (=> (HasDirectPerm_7833_21174 QPMask@0 this@@7 nodes) (and (=> (= (ControlFlow 0 28) (- 0 30)) (>= i_4 0)) (=> (>= i_4 0) (and (=> (= (ControlFlow 0 28) (- 0 29)) (< i_4 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes)))) (=> (< i_4 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes))) (=> (= (ControlFlow 0 28) 27) anon19_correct))))))))))
(let ((anon38_Else_correct  (=> (< i_4 0) (and (=> (= (ControlFlow 0 35) 28) anon39_Then_correct) (=> (= (ControlFlow 0 35) 32) anon39_Else_correct)))))
(let ((anon38_Then_correct  (=> (<= 0 i_4) (and (=> (= (ControlFlow 0 33) (- 0 34)) (HasDirectPerm_7833_21174 QPMask@0 this@@7 nodes)) (=> (HasDirectPerm_7833_21174 QPMask@0 this@@7 nodes) (and (=> (= (ControlFlow 0 33) 28) anon39_Then_correct) (=> (= (ControlFlow 0 33) 32) anon39_Else_correct)))))))
(let ((anon34_Else_correct  (and (=> (= (ControlFlow 0 59) (- 0 60)) (forall ((i_5 Int) (i_5_1 Int) ) (!  (=> (and (and (and (and (not (= i_5 i_5_1)) (and (<= 0 i_5) (< i_5 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes))))) (and (<= 0 i_5_1) (< i_5_1 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) i_5) (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) i_5_1))))
 :qid |stdinbpl.715:15|
 :skolemid |67|
))) (=> (forall ((i_5@@0 Int) (i_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_5@@0 i_5_1@@0)) (and (<= 0 i_5@@0) (< i_5@@0 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes))))) (and (<= 0 i_5_1@@0) (< i_5_1@@0 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) i_5@@0) (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) i_5_1@@0))))
 :qid |stdinbpl.715:15|
 :skolemid |67|
)) (=> (and (and (forall ((i_5@@1 Int) ) (!  (=> (and (and (<= 0 i_5@@1) (< i_5@@1 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes)))) (< NoPerm FullPerm)) (and (qpRange1 (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) i_5@@1)) (= (invRecv1 (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) i_5@@1)) i_5@@1)))
 :qid |stdinbpl.721:22|
 :skolemid |68|
 :pattern ( (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) i_5@@1))
 :pattern ( (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) i_5@@1))
)) (forall ((o_4@@13 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv1 o_4@@13)) (< (invRecv1 o_4@@13) (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes)))) (< NoPerm FullPerm)) (qpRange1 o_4@@13)) (= (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) (invRecv1 o_4@@13)) o_4@@13))
 :qid |stdinbpl.725:22|
 :skolemid |69|
 :pattern ( (invRecv1 o_4@@13))
))) (and (forall ((i_5@@2 Int) ) (!  (=> (and (<= 0 i_5@@2) (< i_5@@2 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes)))) (not (= (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) i_5@@2) null)))
 :qid |stdinbpl.731:22|
 :skolemid |70|
 :pattern ( (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) i_5@@2))
 :pattern ( (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) i_5@@2))
)) (forall ((o_4@@14 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv1 o_4@@14)) (< (invRecv1 o_4@@14) (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes)))) (< NoPerm FullPerm)) (qpRange1 o_4@@14)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) (invRecv1 o_4@@14)) o_4@@14)) (= (select (|PolymorphicMapType_12607_7831_3145#PolymorphicMapType_12607| QPMask@0) o_4@@14 val) (+ (select (|PolymorphicMapType_12607_7831_3145#PolymorphicMapType_12607| Mask@0) o_4@@14 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv1 o_4@@14)) (< (invRecv1 o_4@@14) (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes)))) (< NoPerm FullPerm)) (qpRange1 o_4@@14))) (= (select (|PolymorphicMapType_12607_7831_3145#PolymorphicMapType_12607| QPMask@0) o_4@@14 val) (select (|PolymorphicMapType_12607_7831_3145#PolymorphicMapType_12607| Mask@0) o_4@@14 val))))
 :qid |stdinbpl.737:22|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_12607_7831_3145#PolymorphicMapType_12607| QPMask@0) o_4@@14 val))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@15 T@Ref) (f_5@@11 T@Field_12646_53) ) (!  (=> true (= (select (|PolymorphicMapType_12607_7833_53#PolymorphicMapType_12607| Mask@0) o_4@@15 f_5@@11) (select (|PolymorphicMapType_12607_7833_53#PolymorphicMapType_12607| QPMask@0) o_4@@15 f_5@@11)))
 :qid |stdinbpl.741:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_12607_7833_53#PolymorphicMapType_12607| Mask@0) o_4@@15 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_12607_7833_53#PolymorphicMapType_12607| QPMask@0) o_4@@15 f_5@@11))
)) (forall ((o_4@@16 T@Ref) (f_5@@12 T@Field_12659_12660) ) (!  (=> true (= (select (|PolymorphicMapType_12607_7828_7829#PolymorphicMapType_12607| Mask@0) o_4@@16 f_5@@12) (select (|PolymorphicMapType_12607_7828_7829#PolymorphicMapType_12607| QPMask@0) o_4@@16 f_5@@12)))
 :qid |stdinbpl.741:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_12607_7828_7829#PolymorphicMapType_12607| Mask@0) o_4@@16 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_12607_7828_7829#PolymorphicMapType_12607| QPMask@0) o_4@@16 f_5@@12))
))) (forall ((o_4@@17 T@Ref) (f_5@@13 T@Field_18725_3145) ) (!  (=> (not (= f_5@@13 val)) (= (select (|PolymorphicMapType_12607_7831_3145#PolymorphicMapType_12607| Mask@0) o_4@@17 f_5@@13) (select (|PolymorphicMapType_12607_7831_3145#PolymorphicMapType_12607| QPMask@0) o_4@@17 f_5@@13)))
 :qid |stdinbpl.741:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_12607_7831_3145#PolymorphicMapType_12607| Mask@0) o_4@@17 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_12607_7831_3145#PolymorphicMapType_12607| QPMask@0) o_4@@17 f_5@@13))
))) (forall ((o_4@@18 T@Ref) (f_5@@14 T@Field_18772_18777) ) (!  (=> true (= (select (|PolymorphicMapType_12607_7833_21055#PolymorphicMapType_12607| Mask@0) o_4@@18 f_5@@14) (select (|PolymorphicMapType_12607_7833_21055#PolymorphicMapType_12607| QPMask@0) o_4@@18 f_5@@14)))
 :qid |stdinbpl.741:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_12607_7833_21055#PolymorphicMapType_12607| Mask@0) o_4@@18 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_12607_7833_21055#PolymorphicMapType_12607| QPMask@0) o_4@@18 f_5@@14))
))) (forall ((o_4@@19 T@Ref) (f_5@@15 T@Field_7833_7839) ) (!  (=> true (= (select (|PolymorphicMapType_12607_7833_7839#PolymorphicMapType_12607| Mask@0) o_4@@19 f_5@@15) (select (|PolymorphicMapType_12607_7833_7839#PolymorphicMapType_12607| QPMask@0) o_4@@19 f_5@@15)))
 :qid |stdinbpl.741:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_12607_7833_7839#PolymorphicMapType_12607| Mask@0) o_4@@19 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_12607_7833_7839#PolymorphicMapType_12607| QPMask@0) o_4@@19 f_5@@15))
))) (forall ((o_4@@20 T@Ref) (f_5@@16 T@Field_7833_18856) ) (!  (=> true (= (select (|PolymorphicMapType_12607_7833_51182#PolymorphicMapType_12607| Mask@0) o_4@@20 f_5@@16) (select (|PolymorphicMapType_12607_7833_51182#PolymorphicMapType_12607| QPMask@0) o_4@@20 f_5@@16)))
 :qid |stdinbpl.741:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_12607_7833_51182#PolymorphicMapType_12607| Mask@0) o_4@@20 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_12607_7833_51182#PolymorphicMapType_12607| QPMask@0) o_4@@20 f_5@@16))
))) (forall ((o_4@@21 T@Ref) (f_5@@17 T@Field_7838_53) ) (!  (=> true (= (select (|PolymorphicMapType_12607_7838_53#PolymorphicMapType_12607| Mask@0) o_4@@21 f_5@@17) (select (|PolymorphicMapType_12607_7838_53#PolymorphicMapType_12607| QPMask@0) o_4@@21 f_5@@17)))
 :qid |stdinbpl.741:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_12607_7838_53#PolymorphicMapType_12607| Mask@0) o_4@@21 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_12607_7838_53#PolymorphicMapType_12607| QPMask@0) o_4@@21 f_5@@17))
))) (forall ((o_4@@22 T@Ref) (f_5@@18 T@Field_7838_7829) ) (!  (=> true (= (select (|PolymorphicMapType_12607_7838_7829#PolymorphicMapType_12607| Mask@0) o_4@@22 f_5@@18) (select (|PolymorphicMapType_12607_7838_7829#PolymorphicMapType_12607| QPMask@0) o_4@@22 f_5@@18)))
 :qid |stdinbpl.741:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_12607_7838_7829#PolymorphicMapType_12607| Mask@0) o_4@@22 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_12607_7838_7829#PolymorphicMapType_12607| QPMask@0) o_4@@22 f_5@@18))
))) (forall ((o_4@@23 T@Ref) (f_5@@19 T@Field_7838_3145) ) (!  (=> true (= (select (|PolymorphicMapType_12607_7838_3145#PolymorphicMapType_12607| Mask@0) o_4@@23 f_5@@19) (select (|PolymorphicMapType_12607_7838_3145#PolymorphicMapType_12607| QPMask@0) o_4@@23 f_5@@19)))
 :qid |stdinbpl.741:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_12607_7838_3145#PolymorphicMapType_12607| Mask@0) o_4@@23 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_12607_7838_3145#PolymorphicMapType_12607| QPMask@0) o_4@@23 f_5@@19))
))) (forall ((o_4@@24 T@Ref) (f_5@@20 T@Field_7838_21174) ) (!  (=> true (= (select (|PolymorphicMapType_12607_7838_21055#PolymorphicMapType_12607| Mask@0) o_4@@24 f_5@@20) (select (|PolymorphicMapType_12607_7838_21055#PolymorphicMapType_12607| QPMask@0) o_4@@24 f_5@@20)))
 :qid |stdinbpl.741:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_12607_7838_21055#PolymorphicMapType_12607| Mask@0) o_4@@24 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_12607_7838_21055#PolymorphicMapType_12607| QPMask@0) o_4@@24 f_5@@20))
))) (forall ((o_4@@25 T@Ref) (f_5@@21 T@Field_18838_18839) ) (!  (=> true (= (select (|PolymorphicMapType_12607_7838_7839#PolymorphicMapType_12607| Mask@0) o_4@@25 f_5@@21) (select (|PolymorphicMapType_12607_7838_7839#PolymorphicMapType_12607| QPMask@0) o_4@@25 f_5@@21)))
 :qid |stdinbpl.741:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_12607_7838_7839#PolymorphicMapType_12607| Mask@0) o_4@@25 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_12607_7838_7839#PolymorphicMapType_12607| QPMask@0) o_4@@25 f_5@@21))
))) (forall ((o_4@@26 T@Ref) (f_5@@22 T@Field_18851_18856) ) (!  (=> true (= (select (|PolymorphicMapType_12607_7838_51676#PolymorphicMapType_12607| Mask@0) o_4@@26 f_5@@22) (select (|PolymorphicMapType_12607_7838_51676#PolymorphicMapType_12607| QPMask@0) o_4@@26 f_5@@22)))
 :qid |stdinbpl.741:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_12607_7838_51676#PolymorphicMapType_12607| Mask@0) o_4@@26 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_12607_7838_51676#PolymorphicMapType_12607| QPMask@0) o_4@@26 f_5@@22))
))) (state Heap@@36 QPMask@0)) (and (and (=> (= (ControlFlow 0 59) 57) anon37_Else_correct) (=> (= (ControlFlow 0 59) 33) anon38_Then_correct)) (=> (= (ControlFlow 0 59) 35) anon38_Else_correct))))))))
(let ((anon13_correct true))
(let ((anon36_Else_correct  (=> (and (not (and (<= 0 i_2) (< i_2 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes))))) (= (ControlFlow 0 23) 18)) anon13_correct)))
(let ((anon36_Then_correct  (=> (and (<= 0 i_2) (< i_2 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes)))) (and (=> (= (ControlFlow 0 19) (- 0 22)) (HasDirectPerm_7833_21174 Mask@0 this@@7 nodes)) (=> (HasDirectPerm_7833_21174 Mask@0 this@@7 nodes) (and (=> (= (ControlFlow 0 19) (- 0 21)) (>= i_2 0)) (=> (>= i_2 0) (and (=> (= (ControlFlow 0 19) (- 0 20)) (< i_2 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes)))) (=> (< i_2 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes))) (=> (= (ControlFlow 0 19) 18) anon13_correct))))))))))
(let ((anon35_Else_correct  (=> (< i_2 0) (and (=> (= (ControlFlow 0 26) 19) anon36_Then_correct) (=> (= (ControlFlow 0 26) 23) anon36_Else_correct)))))
(let ((anon35_Then_correct  (=> (<= 0 i_2) (and (=> (= (ControlFlow 0 24) (- 0 25)) (HasDirectPerm_7833_21174 Mask@0 this@@7 nodes)) (=> (HasDirectPerm_7833_21174 Mask@0 this@@7 nodes) (and (=> (= (ControlFlow 0 24) 19) anon36_Then_correct) (=> (= (ControlFlow 0 24) 23) anon36_Else_correct)))))))
(let ((anon29_Else_correct  (=> (forall ((i_3 Int) (j_1 Int) ) (!  (=> (and (>= i_3 0) (and (< i_3 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes))) (and (>= j_1 0) (and (< j_1 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes))) (not (= i_3 j_1)))))) (not (= (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) i_3) (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) j_1))))
 :qid |stdinbpl.692:20|
 :skolemid |66|
 :pattern ( (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) i_3) (|Seq#Index_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes) j_1))
)) (and (and (=> (= (ControlFlow 0 61) 59) anon34_Else_correct) (=> (= (ControlFlow 0 61) 24) anon35_Then_correct)) (=> (= (ControlFlow 0 61) 26) anon35_Else_correct)))))
(let ((anon7_correct true))
(let ((anon33_Else_correct  (=> (and (not (and (>= i_14 0) (and (< i_14 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes))) (and (>= j_5 0) (and (< j_5 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes))) (not (= i_14 j_5))))))) (= (ControlFlow 0 9) 1)) anon7_correct)))
(let ((anon33_Then_correct  (=> (and (>= i_14 0) (and (< i_14 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes))) (and (>= j_5 0) (and (< j_5 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes))) (not (= i_14 j_5)))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (HasDirectPerm_7833_21174 Mask@0 this@@7 nodes)) (=> (HasDirectPerm_7833_21174 Mask@0 this@@7 nodes) (and (=> (= (ControlFlow 0 2) (- 0 7)) (>= i_14 0)) (=> (>= i_14 0) (and (=> (= (ControlFlow 0 2) (- 0 6)) (< i_14 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes)))) (=> (< i_14 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (HasDirectPerm_7833_21174 Mask@0 this@@7 nodes)) (=> (HasDirectPerm_7833_21174 Mask@0 this@@7 nodes) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_5 0)) (=> (>= j_5 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_5 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes)))) (=> (< j_5 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes))) (=> (= (ControlFlow 0 2) 1) anon7_correct))))))))))))))))
(let ((anon32_Else_correct  (=> (> 0 j_5) (and (=> (= (ControlFlow 0 14) 2) anon33_Then_correct) (=> (= (ControlFlow 0 14) 9) anon33_Else_correct)))))
(let ((anon32_Then_correct  (=> (>= j_5 0) (and (=> (= (ControlFlow 0 12) (- 0 13)) (HasDirectPerm_7833_21174 Mask@0 this@@7 nodes)) (=> (HasDirectPerm_7833_21174 Mask@0 this@@7 nodes) (and (=> (= (ControlFlow 0 12) 2) anon33_Then_correct) (=> (= (ControlFlow 0 12) 9) anon33_Else_correct)))))))
(let ((anon31_Then_correct  (=> (< i_14 (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes))) (and (=> (= (ControlFlow 0 15) 12) anon32_Then_correct) (=> (= (ControlFlow 0 15) 14) anon32_Else_correct)))))
(let ((anon31_Else_correct  (=> (<= (|Seq#Length_7834| (select (|PolymorphicMapType_12586_7833_19513#PolymorphicMapType_12586| Heap@@36) this@@7 nodes)) i_14) (and (=> (= (ControlFlow 0 11) 2) anon33_Then_correct) (=> (= (ControlFlow 0 11) 9) anon33_Else_correct)))))
(let ((anon30_Then_correct  (=> (>= i_14 0) (and (=> (= (ControlFlow 0 16) (- 0 17)) (HasDirectPerm_7833_21174 Mask@0 this@@7 nodes)) (=> (HasDirectPerm_7833_21174 Mask@0 this@@7 nodes) (and (=> (= (ControlFlow 0 16) 15) anon31_Then_correct) (=> (= (ControlFlow 0 16) 11) anon31_Else_correct)))))))
(let ((anon30_Else_correct  (=> (> 0 i_14) (and (=> (= (ControlFlow 0 10) 2) anon33_Then_correct) (=> (= (ControlFlow 0 10) 9) anon33_Else_correct)))))
(let ((anon0_correct  (=> (and (state Heap@@36 ZeroMask) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_12586_7628_53#PolymorphicMapType_12586| Heap@@36) this@@7 $allocated) (not (= this@@7 null))) (and (= Mask@0 (PolymorphicMapType_12607 (store (|PolymorphicMapType_12607_7833_21055#PolymorphicMapType_12607| ZeroMask) this@@7 nodes (+ (select (|PolymorphicMapType_12607_7833_21055#PolymorphicMapType_12607| ZeroMask) this@@7 nodes) FullPerm)) (|PolymorphicMapType_12607_7831_3145#PolymorphicMapType_12607| ZeroMask) (|PolymorphicMapType_12607_7828_7829#PolymorphicMapType_12607| ZeroMask) (|PolymorphicMapType_12607_7838_7839#PolymorphicMapType_12607| ZeroMask) (|PolymorphicMapType_12607_7833_7839#PolymorphicMapType_12607| ZeroMask) (|PolymorphicMapType_12607_7833_53#PolymorphicMapType_12607| ZeroMask) (|PolymorphicMapType_12607_7833_51182#PolymorphicMapType_12607| ZeroMask) (|PolymorphicMapType_12607_7838_21055#PolymorphicMapType_12607| ZeroMask) (|PolymorphicMapType_12607_7838_3145#PolymorphicMapType_12607| ZeroMask) (|PolymorphicMapType_12607_7838_7829#PolymorphicMapType_12607| ZeroMask) (|PolymorphicMapType_12607_7838_53#PolymorphicMapType_12607| ZeroMask) (|PolymorphicMapType_12607_7838_51676#PolymorphicMapType_12607| ZeroMask))) (state Heap@@36 Mask@0))) (and (and (=> (= (ControlFlow 0 62) 61) anon29_Else_correct) (=> (= (ControlFlow 0 62) 16) anon30_Then_correct)) (=> (= (ControlFlow 0 62) 10) anon30_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 63) 62) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
