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
(declare-sort T@Field_11281_53 0)
(declare-sort T@Field_11294_11295 0)
(declare-sort T@Field_17404_17409 0)
(declare-sort T@Seq_17407 0)
(declare-sort T@Field_17357_3100 0)
(declare-sort T@Field_18037_18038 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_6986_7005 0)
(declare-sort T@Field_17469_17471 0)
(declare-sort T@Seq_2963 0)
(declare-sort T@Field_6986_18055 0)
(declare-sort T@Field_7004_20381 0)
(declare-sort T@Field_7004_6982 0)
(declare-sort T@Field_7004_53 0)
(declare-sort T@Field_7004_3100 0)
(declare-sort T@Field_7004_17471 0)
(declare-sort T@Field_18050_18055 0)
(declare-datatypes ((T@PolymorphicMapType_11242 0)) (((PolymorphicMapType_11242 (|PolymorphicMapType_11242_6986_20262#PolymorphicMapType_11242| (Array T@Ref T@Field_17404_17409 Real)) (|PolymorphicMapType_11242_6984_3100#PolymorphicMapType_11242| (Array T@Ref T@Field_17357_3100 Real)) (|PolymorphicMapType_11242_6981_6982#PolymorphicMapType_11242| (Array T@Ref T@Field_11294_11295 Real)) (|PolymorphicMapType_11242_7004_7005#PolymorphicMapType_11242| (Array T@Ref T@Field_18037_18038 Real)) (|PolymorphicMapType_11242_6986_7005#PolymorphicMapType_11242| (Array T@Ref T@Field_6986_7005 Real)) (|PolymorphicMapType_11242_6986_53#PolymorphicMapType_11242| (Array T@Ref T@Field_11281_53 Real)) (|PolymorphicMapType_11242_6986_17471#PolymorphicMapType_11242| (Array T@Ref T@Field_17469_17471 Real)) (|PolymorphicMapType_11242_6986_46737#PolymorphicMapType_11242| (Array T@Ref T@Field_6986_18055 Real)) (|PolymorphicMapType_11242_7004_20262#PolymorphicMapType_11242| (Array T@Ref T@Field_7004_20381 Real)) (|PolymorphicMapType_11242_7004_3100#PolymorphicMapType_11242| (Array T@Ref T@Field_7004_3100 Real)) (|PolymorphicMapType_11242_7004_6982#PolymorphicMapType_11242| (Array T@Ref T@Field_7004_6982 Real)) (|PolymorphicMapType_11242_7004_53#PolymorphicMapType_11242| (Array T@Ref T@Field_7004_53 Real)) (|PolymorphicMapType_11242_7004_17471#PolymorphicMapType_11242| (Array T@Ref T@Field_7004_17471 Real)) (|PolymorphicMapType_11242_7004_47314#PolymorphicMapType_11242| (Array T@Ref T@Field_18050_18055 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11770 0)) (((PolymorphicMapType_11770 (|PolymorphicMapType_11770_11281_53#PolymorphicMapType_11770| (Array T@Ref T@Field_11281_53 Bool)) (|PolymorphicMapType_11770_11281_11295#PolymorphicMapType_11770| (Array T@Ref T@Field_11294_11295 Bool)) (|PolymorphicMapType_11770_11281_3100#PolymorphicMapType_11770| (Array T@Ref T@Field_17357_3100 Bool)) (|PolymorphicMapType_11770_11281_17409#PolymorphicMapType_11770| (Array T@Ref T@Field_17404_17409 Bool)) (|PolymorphicMapType_11770_11281_17471#PolymorphicMapType_11770| (Array T@Ref T@Field_17469_17471 Bool)) (|PolymorphicMapType_11770_11281_18038#PolymorphicMapType_11770| (Array T@Ref T@Field_6986_7005 Bool)) (|PolymorphicMapType_11770_11281_38551#PolymorphicMapType_11770| (Array T@Ref T@Field_6986_18055 Bool)) (|PolymorphicMapType_11770_18037_53#PolymorphicMapType_11770| (Array T@Ref T@Field_7004_53 Bool)) (|PolymorphicMapType_11770_18037_11295#PolymorphicMapType_11770| (Array T@Ref T@Field_7004_6982 Bool)) (|PolymorphicMapType_11770_18037_3100#PolymorphicMapType_11770| (Array T@Ref T@Field_7004_3100 Bool)) (|PolymorphicMapType_11770_18037_17409#PolymorphicMapType_11770| (Array T@Ref T@Field_7004_20381 Bool)) (|PolymorphicMapType_11770_18037_17471#PolymorphicMapType_11770| (Array T@Ref T@Field_7004_17471 Bool)) (|PolymorphicMapType_11770_18037_18038#PolymorphicMapType_11770| (Array T@Ref T@Field_18037_18038 Bool)) (|PolymorphicMapType_11770_18037_40007#PolymorphicMapType_11770| (Array T@Ref T@Field_18050_18055 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11221 0)) (((PolymorphicMapType_11221 (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| (Array T@Ref T@Field_11281_53 Bool)) (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| (Array T@Ref T@Field_11294_11295 T@Ref)) (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| (Array T@Ref T@Field_17404_17409 T@Seq_17407)) (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| (Array T@Ref T@Field_17357_3100 Int)) (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| (Array T@Ref T@Field_18037_18038 T@FrameType)) (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| (Array T@Ref T@Field_6986_7005 T@FrameType)) (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| (Array T@Ref T@Field_17469_17471 T@Seq_2963)) (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| (Array T@Ref T@Field_6986_18055 T@PolymorphicMapType_11770)) (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| (Array T@Ref T@Field_7004_20381 T@Seq_17407)) (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| (Array T@Ref T@Field_7004_6982 T@Ref)) (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| (Array T@Ref T@Field_7004_53 Bool)) (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| (Array T@Ref T@Field_7004_3100 Int)) (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| (Array T@Ref T@Field_7004_17471 T@Seq_2963)) (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| (Array T@Ref T@Field_18050_18055 T@PolymorphicMapType_11770)) ) ) ))
(declare-fun $allocated () T@Field_11281_53)
(declare-fun next () T@Field_11294_11295)
(declare-fun val () T@Field_17357_3100)
(declare-fun nodes_1 () T@Field_17404_17409)
(declare-fun data () T@Field_17469_17471)
(declare-fun |Seq#Length_6987| (T@Seq_17407) Int)
(declare-fun |Seq#Drop_6987| (T@Seq_17407 Int) T@Seq_17407)
(declare-fun |Seq#Length_2963| (T@Seq_2963) Int)
(declare-fun |Seq#Drop_2963| (T@Seq_2963 Int) T@Seq_2963)
(declare-fun succHeap (T@PolymorphicMapType_11221 T@PolymorphicMapType_11221) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_11221 T@PolymorphicMapType_11221) Bool)
(declare-fun |List#condqp1| (T@PolymorphicMapType_11221 T@Ref) Int)
(declare-fun |sk_List#condqp1| (Int Int) Int)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun |Seq#Index_6987| (T@Seq_17407 Int) T@Ref)
(declare-fun |List#condqp2| (T@PolymorphicMapType_11221 T@Ref) Int)
(declare-fun |sk_List#condqp2| (Int Int) Int)
(declare-fun state (T@PolymorphicMapType_11221 T@PolymorphicMapType_11242) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_11242) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_11770)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2963| (T@Seq_2963 Int) Int)
(declare-fun |Seq#Empty_6987| () T@Seq_17407)
(declare-fun |Seq#Empty_2963| () T@Seq_2963)
(declare-fun List (T@Ref) T@Field_18037_18038)
(declare-fun IsPredicateField_7004_7005 (T@Field_18037_18038) Bool)
(declare-fun |trigger'| (T@PolymorphicMapType_11221 Int) Bool)
(declare-fun dummyFunction_3311 (Bool) Bool)
(declare-fun |trigger#triggerStateless| (Int) Bool)
(declare-fun |List#trigger_7004| (T@PolymorphicMapType_11221 T@Field_18037_18038) Bool)
(declare-fun |List#everUsed_7004| (T@Field_18037_18038) Bool)
(declare-fun |Seq#Update_6987| (T@Seq_17407 Int T@Ref) T@Seq_17407)
(declare-fun |Seq#Update_2963| (T@Seq_2963 Int Int) T@Seq_2963)
(declare-fun |Seq#Take_6987| (T@Seq_17407 Int) T@Seq_17407)
(declare-fun |Seq#Take_2963| (T@Seq_2963 Int) T@Seq_2963)
(declare-fun |Seq#Contains_2963| (T@Seq_2963 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2963)
(declare-fun |Seq#Contains_17407| (T@Seq_17407 T@Ref) Bool)
(declare-fun |Seq#Skolem_17407| (T@Seq_17407 T@Ref) Int)
(declare-fun |Seq#Skolem_2963| (T@Seq_2963 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_11221 T@PolymorphicMapType_11221 T@PolymorphicMapType_11242) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7004 (T@Field_18037_18038) T@Field_18050_18055)
(declare-fun HasDirectPerm_7004_7005 (T@PolymorphicMapType_11242 T@Ref T@Field_18037_18038) Bool)
(declare-fun IsPredicateField_6986_36659 (T@Field_6986_7005) Bool)
(declare-fun PredicateMaskField_6986 (T@Field_6986_7005) T@Field_6986_18055)
(declare-fun HasDirectPerm_6986_7005 (T@PolymorphicMapType_11242 T@Ref T@Field_6986_7005) Bool)
(declare-fun IsWandField_7004_41172 (T@Field_18037_18038) Bool)
(declare-fun WandMaskField_7004 (T@Field_18037_18038) T@Field_18050_18055)
(declare-fun IsWandField_6986_40815 (T@Field_6986_7005) Bool)
(declare-fun WandMaskField_6986 (T@Field_6986_7005) T@Field_6986_18055)
(declare-fun |Seq#Singleton_6987| (T@Ref) T@Seq_17407)
(declare-fun |Seq#Singleton_2963| (Int) T@Seq_2963)
(declare-fun trigger_1 (T@PolymorphicMapType_11221 Int) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |List#sm| (T@Ref) T@Field_18050_18055)
(declare-fun |Seq#Append_17407| (T@Seq_17407 T@Seq_17407) T@Seq_17407)
(declare-fun |Seq#Append_2963| (T@Seq_2963 T@Seq_2963) T@Seq_2963)
(declare-fun dummyHeap () T@PolymorphicMapType_11221)
(declare-fun ZeroMask () T@PolymorphicMapType_11242)
(declare-fun InsidePredicate_18037_18037 (T@Field_18037_18038 T@FrameType T@Field_18037_18038 T@FrameType) Bool)
(declare-fun InsidePredicate_11281_11281 (T@Field_6986_7005 T@FrameType T@Field_6986_7005 T@FrameType) Bool)
(declare-fun IsPredicateField_6981_6982 (T@Field_11294_11295) Bool)
(declare-fun IsWandField_6981_6982 (T@Field_11294_11295) Bool)
(declare-fun IsPredicateField_6984_3100 (T@Field_17357_3100) Bool)
(declare-fun IsWandField_6984_3100 (T@Field_17357_3100) Bool)
(declare-fun IsPredicateField_6986_17431 (T@Field_17404_17409) Bool)
(declare-fun IsWandField_6986_17457 (T@Field_17404_17409) Bool)
(declare-fun IsPredicateField_6990_17490 (T@Field_17469_17471) Bool)
(declare-fun IsWandField_6990_17513 (T@Field_17469_17471) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7004_50500 (T@Field_18050_18055) Bool)
(declare-fun IsWandField_7004_50516 (T@Field_18050_18055) Bool)
(declare-fun IsPredicateField_7004_17471 (T@Field_7004_17471) Bool)
(declare-fun IsWandField_7004_17471 (T@Field_7004_17471) Bool)
(declare-fun IsPredicateField_7004_53 (T@Field_7004_53) Bool)
(declare-fun IsWandField_7004_53 (T@Field_7004_53) Bool)
(declare-fun IsPredicateField_7004_6982 (T@Field_7004_6982) Bool)
(declare-fun IsWandField_7004_6982 (T@Field_7004_6982) Bool)
(declare-fun IsPredicateField_7004_3100 (T@Field_7004_3100) Bool)
(declare-fun IsWandField_7004_3100 (T@Field_7004_3100) Bool)
(declare-fun IsPredicateField_7004_20262 (T@Field_7004_20381) Bool)
(declare-fun IsWandField_7004_20262 (T@Field_7004_20381) Bool)
(declare-fun IsPredicateField_6986_49333 (T@Field_6986_18055) Bool)
(declare-fun IsWandField_6986_49349 (T@Field_6986_18055) Bool)
(declare-fun IsPredicateField_6986_53 (T@Field_11281_53) Bool)
(declare-fun IsWandField_6986_53 (T@Field_11281_53) Bool)
(declare-fun HasDirectPerm_7004_36371 (T@PolymorphicMapType_11242 T@Ref T@Field_18050_18055) Bool)
(declare-fun HasDirectPerm_7004_17471 (T@PolymorphicMapType_11242 T@Ref T@Field_7004_17471) Bool)
(declare-fun HasDirectPerm_7004_3100 (T@PolymorphicMapType_11242 T@Ref T@Field_7004_3100) Bool)
(declare-fun HasDirectPerm_7004_53 (T@PolymorphicMapType_11242 T@Ref T@Field_7004_53) Bool)
(declare-fun HasDirectPerm_7004_6982 (T@PolymorphicMapType_11242 T@Ref T@Field_7004_6982) Bool)
(declare-fun HasDirectPerm_7004_20381 (T@PolymorphicMapType_11242 T@Ref T@Field_7004_20381) Bool)
(declare-fun HasDirectPerm_6986_34772 (T@PolymorphicMapType_11242 T@Ref T@Field_6986_18055) Bool)
(declare-fun HasDirectPerm_6986_17471 (T@PolymorphicMapType_11242 T@Ref T@Field_17469_17471) Bool)
(declare-fun HasDirectPerm_6986_3100 (T@PolymorphicMapType_11242 T@Ref T@Field_17357_3100) Bool)
(declare-fun HasDirectPerm_6986_53 (T@PolymorphicMapType_11242 T@Ref T@Field_11281_53) Bool)
(declare-fun HasDirectPerm_6981_6982 (T@PolymorphicMapType_11242 T@Ref T@Field_11294_11295) Bool)
(declare-fun HasDirectPerm_6986_20381 (T@PolymorphicMapType_11242 T@Ref T@Field_17404_17409) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_11242 T@PolymorphicMapType_11242 T@PolymorphicMapType_11242) Bool)
(declare-fun |Seq#Equal_17407| (T@Seq_17407 T@Seq_17407) Bool)
(declare-fun |Seq#Equal_2963| (T@Seq_2963 T@Seq_2963) Bool)
(declare-fun |trigger#frame| (T@FrameType Int) Bool)
(declare-fun |Seq#ContainsTrigger_6987| (T@Seq_17407 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2963| (T@Seq_2963 Int) Bool)
(declare-fun getPredWandId_7004_7005 (T@Field_18037_18038) Int)
(declare-fun |Seq#SkolemDiff_17407| (T@Seq_17407 T@Seq_17407) Int)
(declare-fun |Seq#SkolemDiff_2963| (T@Seq_2963 T@Seq_2963) Int)
(declare-fun InsidePredicate_18037_11281 (T@Field_18037_18038 T@FrameType T@Field_6986_7005 T@FrameType) Bool)
(declare-fun InsidePredicate_11281_18037 (T@Field_6986_7005 T@FrameType T@Field_18037_18038 T@FrameType) Bool)
(assert (forall ((s T@Seq_17407) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_6987| s)) (= (|Seq#Length_6987| (|Seq#Drop_6987| s n)) (- (|Seq#Length_6987| s) n))) (=> (< (|Seq#Length_6987| s) n) (= (|Seq#Length_6987| (|Seq#Drop_6987| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_6987| (|Seq#Drop_6987| s n)) (|Seq#Length_6987| s))))
 :qid |stdinbpl.300:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_6987| (|Seq#Drop_6987| s n)))
 :pattern ( (|Seq#Length_6987| s) (|Seq#Drop_6987| s n))
)))
(assert (forall ((s@@0 T@Seq_2963) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2963| s@@0)) (= (|Seq#Length_2963| (|Seq#Drop_2963| s@@0 n@@0)) (- (|Seq#Length_2963| s@@0) n@@0))) (=> (< (|Seq#Length_2963| s@@0) n@@0) (= (|Seq#Length_2963| (|Seq#Drop_2963| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2963| (|Seq#Drop_2963| s@@0 n@@0)) (|Seq#Length_2963| s@@0))))
 :qid |stdinbpl.300:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2963| (|Seq#Drop_2963| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2963| s@@0) (|Seq#Drop_2963| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_11221) (Heap1 T@PolymorphicMapType_11221) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_11221) (Heap1Heap T@PolymorphicMapType_11221) (this T@Ref) ) (!  (=> (and (=  (and (and (<= 0 (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this))) (< (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this)) (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap2Heap) this nodes_1)))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this))) (< (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this)) (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap1Heap) this nodes_1)))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this))) (< (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this)) (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap2Heap) this nodes_1)))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap2Heap) (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap2Heap) this nodes_1) (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this))) val) (select (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap1Heap) (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap1Heap) this nodes_1) (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this))) val)))) (= (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this)))
 :qid |stdinbpl.675:15|
 :skolemid |68|
 :pattern ( (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_11221) (Heap1Heap@@0 T@PolymorphicMapType_11221) (this@@0 T@Ref) ) (!  (=> (and (=  (and (and (<= 0 (|sk_List#condqp2| (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0))) (< (|sk_List#condqp2| (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0)) (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap2Heap@@0) this@@0 nodes_1)))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_List#condqp2| (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0))) (< (|sk_List#condqp2| (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0)) (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap1Heap@@0) this@@0 nodes_1)))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_List#condqp2| (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0))) (< (|sk_List#condqp2| (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0)) (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap2Heap@@0) this@@0 nodes_1)))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap2Heap@@0) (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap2Heap@@0) this@@0 nodes_1) (|sk_List#condqp2| (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0))) next) (select (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap1Heap@@0) (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap1Heap@@0) this@@0 nodes_1) (|sk_List#condqp2| (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0))) next)))) (= (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0)))
 :qid |stdinbpl.686:15|
 :skolemid |69|
 :pattern ( (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_11221) (Mask T@PolymorphicMapType_11242) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_11221) (Heap1@@0 T@PolymorphicMapType_11221) (Heap2 T@PolymorphicMapType_11221) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_18050_18055) ) (!  (not (select (|PolymorphicMapType_11770_18037_40007#PolymorphicMapType_11770| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11770_18037_40007#PolymorphicMapType_11770| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_18037_18038) ) (!  (not (select (|PolymorphicMapType_11770_18037_18038#PolymorphicMapType_11770| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11770_18037_18038#PolymorphicMapType_11770| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_7004_17471) ) (!  (not (select (|PolymorphicMapType_11770_18037_17471#PolymorphicMapType_11770| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11770_18037_17471#PolymorphicMapType_11770| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7004_20381) ) (!  (not (select (|PolymorphicMapType_11770_18037_17409#PolymorphicMapType_11770| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11770_18037_17409#PolymorphicMapType_11770| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7004_3100) ) (!  (not (select (|PolymorphicMapType_11770_18037_3100#PolymorphicMapType_11770| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11770_18037_3100#PolymorphicMapType_11770| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_7004_6982) ) (!  (not (select (|PolymorphicMapType_11770_18037_11295#PolymorphicMapType_11770| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11770_18037_11295#PolymorphicMapType_11770| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_7004_53) ) (!  (not (select (|PolymorphicMapType_11770_18037_53#PolymorphicMapType_11770| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11770_18037_53#PolymorphicMapType_11770| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_6986_18055) ) (!  (not (select (|PolymorphicMapType_11770_11281_38551#PolymorphicMapType_11770| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11770_11281_38551#PolymorphicMapType_11770| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_6986_7005) ) (!  (not (select (|PolymorphicMapType_11770_11281_18038#PolymorphicMapType_11770| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11770_11281_18038#PolymorphicMapType_11770| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_17469_17471) ) (!  (not (select (|PolymorphicMapType_11770_11281_17471#PolymorphicMapType_11770| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11770_11281_17471#PolymorphicMapType_11770| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_17404_17409) ) (!  (not (select (|PolymorphicMapType_11770_11281_17409#PolymorphicMapType_11770| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11770_11281_17409#PolymorphicMapType_11770| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_17357_3100) ) (!  (not (select (|PolymorphicMapType_11770_11281_3100#PolymorphicMapType_11770| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11770_11281_3100#PolymorphicMapType_11770| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_11294_11295) ) (!  (not (select (|PolymorphicMapType_11770_11281_11295#PolymorphicMapType_11770| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11770_11281_11295#PolymorphicMapType_11770| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_11281_53) ) (!  (not (select (|PolymorphicMapType_11770_11281_53#PolymorphicMapType_11770| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11770_11281_53#PolymorphicMapType_11770| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((s@@1 T@Seq_17407) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_6987| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_6987| (|Seq#Drop_6987| s@@1 n@@1) j) (|Seq#Index_6987| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.321:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_6987| (|Seq#Drop_6987| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2963) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2963| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2963| (|Seq#Drop_2963| s@@2 n@@2) j@@0) (|Seq#Index_2963| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.321:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2963| (|Seq#Drop_2963| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_6987| |Seq#Empty_6987|) 0))
(assert (= (|Seq#Length_2963| |Seq#Empty_2963|) 0))
(assert (forall ((this@@1 T@Ref) ) (! (IsPredicateField_7004_7005 (List this@@1))
 :qid |stdinbpl.645:15|
 :skolemid |63|
 :pattern ( (List this@@1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_11221) (i Int) ) (! (dummyFunction_3311 (|trigger#triggerStateless| i))
 :qid |stdinbpl.595:15|
 :skolemid |59|
 :pattern ( (|trigger'| Heap@@0 i))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11221) (this@@2 T@Ref) ) (! (|List#everUsed_7004| (List this@@2))
 :qid |stdinbpl.664:15|
 :skolemid |67|
 :pattern ( (|List#trigger_7004| Heap@@1 (List this@@2)))
)))
(assert (forall ((s@@3 T@Seq_17407) (i@@0 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_6987| s@@3))) (and (=> (= i@@0 n@@3) (= (|Seq#Index_6987| (|Seq#Update_6987| s@@3 i@@0 v) n@@3) v)) (=> (not (= i@@0 n@@3)) (= (|Seq#Index_6987| (|Seq#Update_6987| s@@3 i@@0 v) n@@3) (|Seq#Index_6987| s@@3 n@@3)))))
 :qid |stdinbpl.276:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_6987| (|Seq#Update_6987| s@@3 i@@0 v) n@@3))
 :pattern ( (|Seq#Index_6987| s@@3 n@@3) (|Seq#Update_6987| s@@3 i@@0 v))
)))
(assert (forall ((s@@4 T@Seq_2963) (i@@1 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2963| s@@4))) (and (=> (= i@@1 n@@4) (= (|Seq#Index_2963| (|Seq#Update_2963| s@@4 i@@1 v@@0) n@@4) v@@0)) (=> (not (= i@@1 n@@4)) (= (|Seq#Index_2963| (|Seq#Update_2963| s@@4 i@@1 v@@0) n@@4) (|Seq#Index_2963| s@@4 n@@4)))))
 :qid |stdinbpl.276:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2963| (|Seq#Update_2963| s@@4 i@@1 v@@0) n@@4))
 :pattern ( (|Seq#Index_2963| s@@4 n@@4) (|Seq#Update_2963| s@@4 i@@1 v@@0))
)))
(assert (forall ((s@@5 T@Seq_17407) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_6987| s@@5)) (= (|Seq#Length_6987| (|Seq#Take_6987| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_6987| s@@5) n@@5) (= (|Seq#Length_6987| (|Seq#Take_6987| s@@5 n@@5)) (|Seq#Length_6987| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_6987| (|Seq#Take_6987| s@@5 n@@5)) 0)))
 :qid |stdinbpl.287:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_6987| (|Seq#Take_6987| s@@5 n@@5)))
 :pattern ( (|Seq#Take_6987| s@@5 n@@5) (|Seq#Length_6987| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2963) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2963| s@@6)) (= (|Seq#Length_2963| (|Seq#Take_2963| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2963| s@@6) n@@6) (= (|Seq#Length_2963| (|Seq#Take_2963| s@@6 n@@6)) (|Seq#Length_2963| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2963| (|Seq#Take_2963| s@@6 n@@6)) 0)))
 :qid |stdinbpl.287:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2963| (|Seq#Take_2963| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2963| s@@6 n@@6) (|Seq#Length_2963| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2963| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.561:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2963| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_17407) (x T@Ref) ) (!  (=> (|Seq#Contains_17407| s@@7 x) (and (and (<= 0 (|Seq#Skolem_17407| s@@7 x)) (< (|Seq#Skolem_17407| s@@7 x) (|Seq#Length_6987| s@@7))) (= (|Seq#Index_6987| s@@7 (|Seq#Skolem_17407| s@@7 x)) x)))
 :qid |stdinbpl.419:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_17407| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2963) (x@@0 Int) ) (!  (=> (|Seq#Contains_2963| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2963| s@@8 x@@0)) (< (|Seq#Skolem_2963| s@@8 x@@0) (|Seq#Length_2963| s@@8))) (= (|Seq#Index_2963| s@@8 (|Seq#Skolem_2963| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.419:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2963| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_17407) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_6987| s@@9 n@@7) s@@9))
 :qid |stdinbpl.403:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_6987| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2963) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2963| s@@10 n@@8) s@@10))
 :qid |stdinbpl.403:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2963| s@@10 n@@8))
)))
(assert (forall ((i@@2 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@2 j@@1) (- i@@2 j@@1))
 :qid |stdinbpl.256:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@2 j@@1))
)))
(assert (forall ((i@@3 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@3 j@@2) (+ i@@3 j@@2))
 :qid |stdinbpl.254:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@3 j@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11221) (ExhaleHeap T@PolymorphicMapType_11221) (Mask@@0 T@PolymorphicMapType_11242) (pm_f_6 T@Field_18037_18038) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7004_7005 Mask@@0 null pm_f_6) (IsPredicateField_7004_7005 pm_f_6)) (= (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@2) null (PredicateMaskField_7004 pm_f_6)) (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| ExhaleHeap) null (PredicateMaskField_7004 pm_f_6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_7004_7005 pm_f_6) (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| ExhaleHeap) null (PredicateMaskField_7004 pm_f_6)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11221) (ExhaleHeap@@0 T@PolymorphicMapType_11221) (Mask@@1 T@PolymorphicMapType_11242) (pm_f_6@@0 T@Field_6986_7005) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6986_7005 Mask@@1 null pm_f_6@@0) (IsPredicateField_6986_36659 pm_f_6@@0)) (= (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@3) null (PredicateMaskField_6986 pm_f_6@@0)) (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| ExhaleHeap@@0) null (PredicateMaskField_6986 pm_f_6@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_6986_36659 pm_f_6@@0) (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| ExhaleHeap@@0) null (PredicateMaskField_6986 pm_f_6@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_11221) (ExhaleHeap@@1 T@PolymorphicMapType_11221) (Mask@@2 T@PolymorphicMapType_11242) (pm_f_6@@1 T@Field_18037_18038) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_7004_7005 Mask@@2 null pm_f_6@@1) (IsWandField_7004_41172 pm_f_6@@1)) (= (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@4) null (WandMaskField_7004 pm_f_6@@1)) (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| ExhaleHeap@@1) null (WandMaskField_7004 pm_f_6@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsWandField_7004_41172 pm_f_6@@1) (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| ExhaleHeap@@1) null (WandMaskField_7004 pm_f_6@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11221) (ExhaleHeap@@2 T@PolymorphicMapType_11221) (Mask@@3 T@PolymorphicMapType_11242) (pm_f_6@@2 T@Field_6986_7005) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_6986_7005 Mask@@3 null pm_f_6@@2) (IsWandField_6986_40815 pm_f_6@@2)) (= (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@5) null (WandMaskField_6986 pm_f_6@@2)) (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| ExhaleHeap@@2) null (WandMaskField_6986 pm_f_6@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_6986_40815 pm_f_6@@2) (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| ExhaleHeap@@2) null (WandMaskField_6986 pm_f_6@@2)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_17407| (|Seq#Singleton_6987| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.544:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_17407| (|Seq#Singleton_6987| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2963| (|Seq#Singleton_2963| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.544:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2963| (|Seq#Singleton_2963| x@@2) y@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11221) (Mask@@4 T@PolymorphicMapType_11242) (i@@4 Int) ) (!  (=> (and (state Heap@@6 Mask@@4) (< AssumeFunctionsAbove 0)) (trigger_1 Heap@@6 i@@4))
 :qid |stdinbpl.601:15|
 :skolemid |60|
 :pattern ( (state Heap@@6 Mask@@4) (trigger_1 Heap@@6 i@@4))
)))
(assert (forall ((s@@11 T@Seq_17407) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_6987| s@@11))) (= (|Seq#Index_6987| (|Seq#Take_6987| s@@11 n@@9) j@@3) (|Seq#Index_6987| s@@11 j@@3)))
 :qid |stdinbpl.295:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_6987| (|Seq#Take_6987| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_6987| s@@11 j@@3) (|Seq#Take_6987| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2963) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2963| s@@12))) (= (|Seq#Index_2963| (|Seq#Take_2963| s@@12 n@@10) j@@4) (|Seq#Index_2963| s@@12 j@@4)))
 :qid |stdinbpl.295:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2963| (|Seq#Take_2963| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2963| s@@12 j@@4) (|Seq#Take_2963| s@@12 n@@10))
)))
(assert (forall ((this@@3 T@Ref) (this2 T@Ref) ) (!  (=> (= (List this@@3) (List this2)) (= this@@3 this2))
 :qid |stdinbpl.655:15|
 :skolemid |65|
 :pattern ( (List this@@3) (List this2))
)))
(assert (forall ((this@@4 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|List#sm| this@@4) (|List#sm| this2@@0)) (= this@@4 this2@@0))
 :qid |stdinbpl.659:15|
 :skolemid |66|
 :pattern ( (|List#sm| this@@4) (|List#sm| this2@@0))
)))
(assert (forall ((s@@13 T@Seq_17407) (t T@Seq_17407) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_6987| s@@13))) (< n@@11 (|Seq#Length_6987| (|Seq#Append_17407| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_6987| s@@13)) (|Seq#Length_6987| s@@13)) n@@11) (= (|Seq#Take_6987| (|Seq#Append_17407| s@@13 t) n@@11) (|Seq#Append_17407| s@@13 (|Seq#Take_6987| t (|Seq#Sub| n@@11 (|Seq#Length_6987| s@@13)))))))
 :qid |stdinbpl.380:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_6987| (|Seq#Append_17407| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2963) (t@@0 T@Seq_2963) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2963| s@@14))) (< n@@12 (|Seq#Length_2963| (|Seq#Append_2963| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2963| s@@14)) (|Seq#Length_2963| s@@14)) n@@12) (= (|Seq#Take_2963| (|Seq#Append_2963| s@@14 t@@0) n@@12) (|Seq#Append_2963| s@@14 (|Seq#Take_2963| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2963| s@@14)))))))
 :qid |stdinbpl.380:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2963| (|Seq#Append_2963| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11221) (ExhaleHeap@@3 T@PolymorphicMapType_11221) (Mask@@5 T@PolymorphicMapType_11242) (o_17 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (=> (select (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@7) o_17 $allocated) (select (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| ExhaleHeap@@3) o_17 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (select (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| ExhaleHeap@@3) o_17 $allocated))
)))
(assert (forall ((p T@Field_18037_18038) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_18037_18037 p v_1 p w))
 :qid |stdinbpl.198:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18037_18037 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_6986_7005) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_11281_11281 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.198:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11281_11281 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_17407) (s1 T@Seq_17407) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_6987|)) (not (= s1 |Seq#Empty_6987|))) (<= (|Seq#Length_6987| s0) n@@13)) (< n@@13 (|Seq#Length_6987| (|Seq#Append_17407| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_6987| s0)) (|Seq#Length_6987| s0)) n@@13) (= (|Seq#Index_6987| (|Seq#Append_17407| s0 s1) n@@13) (|Seq#Index_6987| s1 (|Seq#Sub| n@@13 (|Seq#Length_6987| s0))))))
 :qid |stdinbpl.267:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_6987| (|Seq#Append_17407| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2963) (s1@@0 T@Seq_2963) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2963|)) (not (= s1@@0 |Seq#Empty_2963|))) (<= (|Seq#Length_2963| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2963| (|Seq#Append_2963| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2963| s0@@0)) (|Seq#Length_2963| s0@@0)) n@@14) (= (|Seq#Index_2963| (|Seq#Append_2963| s0@@0 s1@@0) n@@14) (|Seq#Index_2963| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2963| s0@@0))))))
 :qid |stdinbpl.267:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2963| (|Seq#Append_2963| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_6981_6982 next)))
(assert  (not (IsWandField_6981_6982 next)))
(assert  (not (IsPredicateField_6984_3100 val)))
(assert  (not (IsWandField_6984_3100 val)))
(assert  (not (IsPredicateField_6986_17431 nodes_1)))
(assert  (not (IsWandField_6986_17457 nodes_1)))
(assert  (not (IsPredicateField_6990_17490 data)))
(assert  (not (IsWandField_6990_17513 data)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11221) (ExhaleHeap@@4 T@PolymorphicMapType_11221) (Mask@@6 T@PolymorphicMapType_11242) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6) (succHeap Heap@@8 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_11242) (o_2@@13 T@Ref) (f_4@@13 T@Field_18050_18055) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_11242_7004_47314#PolymorphicMapType_11242| Mask@@7) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_7004_50500 f_4@@13))) (not (IsWandField_7004_50516 f_4@@13))) (<= (select (|PolymorphicMapType_11242_7004_47314#PolymorphicMapType_11242| Mask@@7) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_11242_7004_47314#PolymorphicMapType_11242| Mask@@7) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_11242) (o_2@@14 T@Ref) (f_4@@14 T@Field_7004_17471) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_11242_7004_17471#PolymorphicMapType_11242| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_7004_17471 f_4@@14))) (not (IsWandField_7004_17471 f_4@@14))) (<= (select (|PolymorphicMapType_11242_7004_17471#PolymorphicMapType_11242| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_11242_7004_17471#PolymorphicMapType_11242| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_11242) (o_2@@15 T@Ref) (f_4@@15 T@Field_7004_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_11242_7004_53#PolymorphicMapType_11242| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_7004_53 f_4@@15))) (not (IsWandField_7004_53 f_4@@15))) (<= (select (|PolymorphicMapType_11242_7004_53#PolymorphicMapType_11242| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_11242_7004_53#PolymorphicMapType_11242| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_11242) (o_2@@16 T@Ref) (f_4@@16 T@Field_18037_18038) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_11242_7004_7005#PolymorphicMapType_11242| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_7004_7005 f_4@@16))) (not (IsWandField_7004_41172 f_4@@16))) (<= (select (|PolymorphicMapType_11242_7004_7005#PolymorphicMapType_11242| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_11242_7004_7005#PolymorphicMapType_11242| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_11242) (o_2@@17 T@Ref) (f_4@@17 T@Field_7004_6982) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_11242_7004_6982#PolymorphicMapType_11242| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_7004_6982 f_4@@17))) (not (IsWandField_7004_6982 f_4@@17))) (<= (select (|PolymorphicMapType_11242_7004_6982#PolymorphicMapType_11242| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_11242_7004_6982#PolymorphicMapType_11242| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_11242) (o_2@@18 T@Ref) (f_4@@18 T@Field_7004_3100) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_11242_7004_3100#PolymorphicMapType_11242| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_7004_3100 f_4@@18))) (not (IsWandField_7004_3100 f_4@@18))) (<= (select (|PolymorphicMapType_11242_7004_3100#PolymorphicMapType_11242| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_11242_7004_3100#PolymorphicMapType_11242| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_11242) (o_2@@19 T@Ref) (f_4@@19 T@Field_7004_20381) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_11242_7004_20262#PolymorphicMapType_11242| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_7004_20262 f_4@@19))) (not (IsWandField_7004_20262 f_4@@19))) (<= (select (|PolymorphicMapType_11242_7004_20262#PolymorphicMapType_11242| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_11242_7004_20262#PolymorphicMapType_11242| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_11242) (o_2@@20 T@Ref) (f_4@@20 T@Field_6986_18055) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_11242_6986_46737#PolymorphicMapType_11242| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6986_49333 f_4@@20))) (not (IsWandField_6986_49349 f_4@@20))) (<= (select (|PolymorphicMapType_11242_6986_46737#PolymorphicMapType_11242| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_11242_6986_46737#PolymorphicMapType_11242| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_11242) (o_2@@21 T@Ref) (f_4@@21 T@Field_17469_17471) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_11242_6986_17471#PolymorphicMapType_11242| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6990_17490 f_4@@21))) (not (IsWandField_6990_17513 f_4@@21))) (<= (select (|PolymorphicMapType_11242_6986_17471#PolymorphicMapType_11242| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_11242_6986_17471#PolymorphicMapType_11242| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_11242) (o_2@@22 T@Ref) (f_4@@22 T@Field_11281_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_11242_6986_53#PolymorphicMapType_11242| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_6986_53 f_4@@22))) (not (IsWandField_6986_53 f_4@@22))) (<= (select (|PolymorphicMapType_11242_6986_53#PolymorphicMapType_11242| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_11242_6986_53#PolymorphicMapType_11242| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_11242) (o_2@@23 T@Ref) (f_4@@23 T@Field_6986_7005) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_11242_6986_7005#PolymorphicMapType_11242| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_6986_36659 f_4@@23))) (not (IsWandField_6986_40815 f_4@@23))) (<= (select (|PolymorphicMapType_11242_6986_7005#PolymorphicMapType_11242| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_11242_6986_7005#PolymorphicMapType_11242| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_11242) (o_2@@24 T@Ref) (f_4@@24 T@Field_11294_11295) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_11242_6981_6982#PolymorphicMapType_11242| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_6981_6982 f_4@@24))) (not (IsWandField_6981_6982 f_4@@24))) (<= (select (|PolymorphicMapType_11242_6981_6982#PolymorphicMapType_11242| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_11242_6981_6982#PolymorphicMapType_11242| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_11242) (o_2@@25 T@Ref) (f_4@@25 T@Field_17357_3100) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_11242_6984_3100#PolymorphicMapType_11242| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_6984_3100 f_4@@25))) (not (IsWandField_6984_3100 f_4@@25))) (<= (select (|PolymorphicMapType_11242_6984_3100#PolymorphicMapType_11242| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_11242_6984_3100#PolymorphicMapType_11242| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_11242) (o_2@@26 T@Ref) (f_4@@26 T@Field_17404_17409) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_11242_6986_20262#PolymorphicMapType_11242| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_6986_17431 f_4@@26))) (not (IsWandField_6986_17457 f_4@@26))) (<= (select (|PolymorphicMapType_11242_6986_20262#PolymorphicMapType_11242| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_11242_6986_20262#PolymorphicMapType_11242| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_11242) (o_2@@27 T@Ref) (f_4@@27 T@Field_18050_18055) ) (! (= (HasDirectPerm_7004_36371 Mask@@21 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_11242_7004_47314#PolymorphicMapType_11242| Mask@@21) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7004_36371 Mask@@21 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_11242) (o_2@@28 T@Ref) (f_4@@28 T@Field_7004_17471) ) (! (= (HasDirectPerm_7004_17471 Mask@@22 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_11242_7004_17471#PolymorphicMapType_11242| Mask@@22) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7004_17471 Mask@@22 o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_11242) (o_2@@29 T@Ref) (f_4@@29 T@Field_7004_3100) ) (! (= (HasDirectPerm_7004_3100 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_11242_7004_3100#PolymorphicMapType_11242| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7004_3100 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_11242) (o_2@@30 T@Ref) (f_4@@30 T@Field_7004_53) ) (! (= (HasDirectPerm_7004_53 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_11242_7004_53#PolymorphicMapType_11242| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7004_53 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_11242) (o_2@@31 T@Ref) (f_4@@31 T@Field_18037_18038) ) (! (= (HasDirectPerm_7004_7005 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_11242_7004_7005#PolymorphicMapType_11242| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7004_7005 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_11242) (o_2@@32 T@Ref) (f_4@@32 T@Field_7004_6982) ) (! (= (HasDirectPerm_7004_6982 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_11242_7004_6982#PolymorphicMapType_11242| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7004_6982 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_11242) (o_2@@33 T@Ref) (f_4@@33 T@Field_7004_20381) ) (! (= (HasDirectPerm_7004_20381 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_11242_7004_20262#PolymorphicMapType_11242| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7004_20381 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_11242) (o_2@@34 T@Ref) (f_4@@34 T@Field_6986_18055) ) (! (= (HasDirectPerm_6986_34772 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_11242_6986_46737#PolymorphicMapType_11242| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6986_34772 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_11242) (o_2@@35 T@Ref) (f_4@@35 T@Field_17469_17471) ) (! (= (HasDirectPerm_6986_17471 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_11242_6986_17471#PolymorphicMapType_11242| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6986_17471 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_11242) (o_2@@36 T@Ref) (f_4@@36 T@Field_17357_3100) ) (! (= (HasDirectPerm_6986_3100 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_11242_6984_3100#PolymorphicMapType_11242| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6986_3100 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_11242) (o_2@@37 T@Ref) (f_4@@37 T@Field_11281_53) ) (! (= (HasDirectPerm_6986_53 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_11242_6986_53#PolymorphicMapType_11242| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6986_53 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_11242) (o_2@@38 T@Ref) (f_4@@38 T@Field_6986_7005) ) (! (= (HasDirectPerm_6986_7005 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_11242_6986_7005#PolymorphicMapType_11242| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6986_7005 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_11242) (o_2@@39 T@Ref) (f_4@@39 T@Field_11294_11295) ) (! (= (HasDirectPerm_6981_6982 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_11242_6981_6982#PolymorphicMapType_11242| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6981_6982 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_11242) (o_2@@40 T@Ref) (f_4@@40 T@Field_17404_17409) ) (! (= (HasDirectPerm_6986_20381 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_11242_6986_20262#PolymorphicMapType_11242| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6986_20381 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.186:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2963| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.559:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2963| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11221) (ExhaleHeap@@5 T@PolymorphicMapType_11221) (Mask@@35 T@PolymorphicMapType_11242) (o_17@@0 T@Ref) (f_25 T@Field_18050_18055) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@35) (=> (HasDirectPerm_7004_36371 Mask@@35 o_17@@0 f_25) (= (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@9) o_17@@0 f_25) (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| ExhaleHeap@@5) o_17@@0 f_25))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@35) (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| ExhaleHeap@@5) o_17@@0 f_25))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11221) (ExhaleHeap@@6 T@PolymorphicMapType_11221) (Mask@@36 T@PolymorphicMapType_11242) (o_17@@1 T@Ref) (f_25@@0 T@Field_7004_17471) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@36) (=> (HasDirectPerm_7004_17471 Mask@@36 o_17@@1 f_25@@0) (= (select (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@10) o_17@@1 f_25@@0) (select (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| ExhaleHeap@@6) o_17@@1 f_25@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@36) (select (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| ExhaleHeap@@6) o_17@@1 f_25@@0))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11221) (ExhaleHeap@@7 T@PolymorphicMapType_11221) (Mask@@37 T@PolymorphicMapType_11242) (o_17@@2 T@Ref) (f_25@@1 T@Field_7004_3100) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@37) (=> (HasDirectPerm_7004_3100 Mask@@37 o_17@@2 f_25@@1) (= (select (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@11) o_17@@2 f_25@@1) (select (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| ExhaleHeap@@7) o_17@@2 f_25@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@37) (select (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| ExhaleHeap@@7) o_17@@2 f_25@@1))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11221) (ExhaleHeap@@8 T@PolymorphicMapType_11221) (Mask@@38 T@PolymorphicMapType_11242) (o_17@@3 T@Ref) (f_25@@2 T@Field_7004_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@38) (=> (HasDirectPerm_7004_53 Mask@@38 o_17@@3 f_25@@2) (= (select (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@12) o_17@@3 f_25@@2) (select (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| ExhaleHeap@@8) o_17@@3 f_25@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@38) (select (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| ExhaleHeap@@8) o_17@@3 f_25@@2))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11221) (ExhaleHeap@@9 T@PolymorphicMapType_11221) (Mask@@39 T@PolymorphicMapType_11242) (o_17@@4 T@Ref) (f_25@@3 T@Field_18037_18038) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@39) (=> (HasDirectPerm_7004_7005 Mask@@39 o_17@@4 f_25@@3) (= (select (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@13) o_17@@4 f_25@@3) (select (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| ExhaleHeap@@9) o_17@@4 f_25@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@39) (select (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| ExhaleHeap@@9) o_17@@4 f_25@@3))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_11221) (ExhaleHeap@@10 T@PolymorphicMapType_11221) (Mask@@40 T@PolymorphicMapType_11242) (o_17@@5 T@Ref) (f_25@@4 T@Field_7004_6982) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@40) (=> (HasDirectPerm_7004_6982 Mask@@40 o_17@@5 f_25@@4) (= (select (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@14) o_17@@5 f_25@@4) (select (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| ExhaleHeap@@10) o_17@@5 f_25@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@40) (select (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| ExhaleHeap@@10) o_17@@5 f_25@@4))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_11221) (ExhaleHeap@@11 T@PolymorphicMapType_11221) (Mask@@41 T@PolymorphicMapType_11242) (o_17@@6 T@Ref) (f_25@@5 T@Field_7004_20381) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@41) (=> (HasDirectPerm_7004_20381 Mask@@41 o_17@@6 f_25@@5) (= (select (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@15) o_17@@6 f_25@@5) (select (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| ExhaleHeap@@11) o_17@@6 f_25@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@41) (select (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| ExhaleHeap@@11) o_17@@6 f_25@@5))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_11221) (ExhaleHeap@@12 T@PolymorphicMapType_11221) (Mask@@42 T@PolymorphicMapType_11242) (o_17@@7 T@Ref) (f_25@@6 T@Field_6986_18055) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@42) (=> (HasDirectPerm_6986_34772 Mask@@42 o_17@@7 f_25@@6) (= (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@16) o_17@@7 f_25@@6) (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| ExhaleHeap@@12) o_17@@7 f_25@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@42) (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| ExhaleHeap@@12) o_17@@7 f_25@@6))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_11221) (ExhaleHeap@@13 T@PolymorphicMapType_11221) (Mask@@43 T@PolymorphicMapType_11242) (o_17@@8 T@Ref) (f_25@@7 T@Field_17469_17471) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@43) (=> (HasDirectPerm_6986_17471 Mask@@43 o_17@@8 f_25@@7) (= (select (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@17) o_17@@8 f_25@@7) (select (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| ExhaleHeap@@13) o_17@@8 f_25@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@43) (select (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| ExhaleHeap@@13) o_17@@8 f_25@@7))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_11221) (ExhaleHeap@@14 T@PolymorphicMapType_11221) (Mask@@44 T@PolymorphicMapType_11242) (o_17@@9 T@Ref) (f_25@@8 T@Field_17357_3100) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@44) (=> (HasDirectPerm_6986_3100 Mask@@44 o_17@@9 f_25@@8) (= (select (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@18) o_17@@9 f_25@@8) (select (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| ExhaleHeap@@14) o_17@@9 f_25@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@44) (select (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| ExhaleHeap@@14) o_17@@9 f_25@@8))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_11221) (ExhaleHeap@@15 T@PolymorphicMapType_11221) (Mask@@45 T@PolymorphicMapType_11242) (o_17@@10 T@Ref) (f_25@@9 T@Field_11281_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@45) (=> (HasDirectPerm_6986_53 Mask@@45 o_17@@10 f_25@@9) (= (select (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@19) o_17@@10 f_25@@9) (select (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| ExhaleHeap@@15) o_17@@10 f_25@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@45) (select (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| ExhaleHeap@@15) o_17@@10 f_25@@9))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_11221) (ExhaleHeap@@16 T@PolymorphicMapType_11221) (Mask@@46 T@PolymorphicMapType_11242) (o_17@@11 T@Ref) (f_25@@10 T@Field_6986_7005) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@46) (=> (HasDirectPerm_6986_7005 Mask@@46 o_17@@11 f_25@@10) (= (select (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@20) o_17@@11 f_25@@10) (select (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| ExhaleHeap@@16) o_17@@11 f_25@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@46) (select (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| ExhaleHeap@@16) o_17@@11 f_25@@10))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_11221) (ExhaleHeap@@17 T@PolymorphicMapType_11221) (Mask@@47 T@PolymorphicMapType_11242) (o_17@@12 T@Ref) (f_25@@11 T@Field_11294_11295) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@47) (=> (HasDirectPerm_6981_6982 Mask@@47 o_17@@12 f_25@@11) (= (select (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@21) o_17@@12 f_25@@11) (select (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| ExhaleHeap@@17) o_17@@12 f_25@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@47) (select (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| ExhaleHeap@@17) o_17@@12 f_25@@11))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_11221) (ExhaleHeap@@18 T@PolymorphicMapType_11221) (Mask@@48 T@PolymorphicMapType_11242) (o_17@@13 T@Ref) (f_25@@12 T@Field_17404_17409) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@48) (=> (HasDirectPerm_6986_20381 Mask@@48 o_17@@13 f_25@@12) (= (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@22) o_17@@13 f_25@@12) (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| ExhaleHeap@@18) o_17@@13 f_25@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@48) (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| ExhaleHeap@@18) o_17@@13 f_25@@12))
)))
(assert (forall ((s0@@1 T@Seq_17407) (s1@@1 T@Seq_17407) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_6987|)) (not (= s1@@1 |Seq#Empty_6987|))) (= (|Seq#Length_6987| (|Seq#Append_17407| s0@@1 s1@@1)) (+ (|Seq#Length_6987| s0@@1) (|Seq#Length_6987| s1@@1))))
 :qid |stdinbpl.236:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_6987| (|Seq#Append_17407| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2963) (s1@@2 T@Seq_2963) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2963|)) (not (= s1@@2 |Seq#Empty_2963|))) (= (|Seq#Length_2963| (|Seq#Append_2963| s0@@2 s1@@2)) (+ (|Seq#Length_2963| s0@@2) (|Seq#Length_2963| s1@@2))))
 :qid |stdinbpl.236:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2963| (|Seq#Append_2963| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@41 T@Ref) (f_4@@41 T@Field_18050_18055) ) (! (= (select (|PolymorphicMapType_11242_7004_47314#PolymorphicMapType_11242| ZeroMask) o_2@@41 f_4@@41) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11242_7004_47314#PolymorphicMapType_11242| ZeroMask) o_2@@41 f_4@@41))
)))
(assert (forall ((o_2@@42 T@Ref) (f_4@@42 T@Field_7004_17471) ) (! (= (select (|PolymorphicMapType_11242_7004_17471#PolymorphicMapType_11242| ZeroMask) o_2@@42 f_4@@42) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11242_7004_17471#PolymorphicMapType_11242| ZeroMask) o_2@@42 f_4@@42))
)))
(assert (forall ((o_2@@43 T@Ref) (f_4@@43 T@Field_7004_53) ) (! (= (select (|PolymorphicMapType_11242_7004_53#PolymorphicMapType_11242| ZeroMask) o_2@@43 f_4@@43) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11242_7004_53#PolymorphicMapType_11242| ZeroMask) o_2@@43 f_4@@43))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_18037_18038) ) (! (= (select (|PolymorphicMapType_11242_7004_7005#PolymorphicMapType_11242| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11242_7004_7005#PolymorphicMapType_11242| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_7004_6982) ) (! (= (select (|PolymorphicMapType_11242_7004_6982#PolymorphicMapType_11242| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11242_7004_6982#PolymorphicMapType_11242| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_7004_3100) ) (! (= (select (|PolymorphicMapType_11242_7004_3100#PolymorphicMapType_11242| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11242_7004_3100#PolymorphicMapType_11242| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_7004_20381) ) (! (= (select (|PolymorphicMapType_11242_7004_20262#PolymorphicMapType_11242| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11242_7004_20262#PolymorphicMapType_11242| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_6986_18055) ) (! (= (select (|PolymorphicMapType_11242_6986_46737#PolymorphicMapType_11242| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11242_6986_46737#PolymorphicMapType_11242| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_17469_17471) ) (! (= (select (|PolymorphicMapType_11242_6986_17471#PolymorphicMapType_11242| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11242_6986_17471#PolymorphicMapType_11242| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_11281_53) ) (! (= (select (|PolymorphicMapType_11242_6986_53#PolymorphicMapType_11242| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11242_6986_53#PolymorphicMapType_11242| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_6986_7005) ) (! (= (select (|PolymorphicMapType_11242_6986_7005#PolymorphicMapType_11242| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11242_6986_7005#PolymorphicMapType_11242| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_11294_11295) ) (! (= (select (|PolymorphicMapType_11242_6981_6982#PolymorphicMapType_11242| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11242_6981_6982#PolymorphicMapType_11242| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_17357_3100) ) (! (= (select (|PolymorphicMapType_11242_6984_3100#PolymorphicMapType_11242| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11242_6984_3100#PolymorphicMapType_11242| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_17404_17409) ) (! (= (select (|PolymorphicMapType_11242_6986_20262#PolymorphicMapType_11242| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11242_6986_20262#PolymorphicMapType_11242| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((s@@15 T@Seq_17407) (t@@1 T@Seq_17407) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_6987| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_6987| s@@15)) (|Seq#Length_6987| s@@15)) n@@15) (= (|Seq#Drop_6987| (|Seq#Append_17407| s@@15 t@@1) n@@15) (|Seq#Drop_6987| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_6987| s@@15))))))
 :qid |stdinbpl.393:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_6987| (|Seq#Append_17407| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2963) (t@@2 T@Seq_2963) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2963| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2963| s@@16)) (|Seq#Length_2963| s@@16)) n@@16) (= (|Seq#Drop_2963| (|Seq#Append_2963| s@@16 t@@2) n@@16) (|Seq#Drop_2963| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2963| s@@16))))))
 :qid |stdinbpl.393:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2963| (|Seq#Append_2963| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_11242) (SummandMask1 T@PolymorphicMapType_11242) (SummandMask2 T@PolymorphicMapType_11242) (o_2@@55 T@Ref) (f_4@@55 T@Field_18050_18055) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_11242_7004_47314#PolymorphicMapType_11242| ResultMask) o_2@@55 f_4@@55) (+ (select (|PolymorphicMapType_11242_7004_47314#PolymorphicMapType_11242| SummandMask1) o_2@@55 f_4@@55) (select (|PolymorphicMapType_11242_7004_47314#PolymorphicMapType_11242| SummandMask2) o_2@@55 f_4@@55))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11242_7004_47314#PolymorphicMapType_11242| ResultMask) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11242_7004_47314#PolymorphicMapType_11242| SummandMask1) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11242_7004_47314#PolymorphicMapType_11242| SummandMask2) o_2@@55 f_4@@55))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_11242) (SummandMask1@@0 T@PolymorphicMapType_11242) (SummandMask2@@0 T@PolymorphicMapType_11242) (o_2@@56 T@Ref) (f_4@@56 T@Field_7004_17471) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_11242_7004_17471#PolymorphicMapType_11242| ResultMask@@0) o_2@@56 f_4@@56) (+ (select (|PolymorphicMapType_11242_7004_17471#PolymorphicMapType_11242| SummandMask1@@0) o_2@@56 f_4@@56) (select (|PolymorphicMapType_11242_7004_17471#PolymorphicMapType_11242| SummandMask2@@0) o_2@@56 f_4@@56))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11242_7004_17471#PolymorphicMapType_11242| ResultMask@@0) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11242_7004_17471#PolymorphicMapType_11242| SummandMask1@@0) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11242_7004_17471#PolymorphicMapType_11242| SummandMask2@@0) o_2@@56 f_4@@56))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_11242) (SummandMask1@@1 T@PolymorphicMapType_11242) (SummandMask2@@1 T@PolymorphicMapType_11242) (o_2@@57 T@Ref) (f_4@@57 T@Field_7004_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_11242_7004_53#PolymorphicMapType_11242| ResultMask@@1) o_2@@57 f_4@@57) (+ (select (|PolymorphicMapType_11242_7004_53#PolymorphicMapType_11242| SummandMask1@@1) o_2@@57 f_4@@57) (select (|PolymorphicMapType_11242_7004_53#PolymorphicMapType_11242| SummandMask2@@1) o_2@@57 f_4@@57))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11242_7004_53#PolymorphicMapType_11242| ResultMask@@1) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11242_7004_53#PolymorphicMapType_11242| SummandMask1@@1) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11242_7004_53#PolymorphicMapType_11242| SummandMask2@@1) o_2@@57 f_4@@57))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_11242) (SummandMask1@@2 T@PolymorphicMapType_11242) (SummandMask2@@2 T@PolymorphicMapType_11242) (o_2@@58 T@Ref) (f_4@@58 T@Field_18037_18038) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_11242_7004_7005#PolymorphicMapType_11242| ResultMask@@2) o_2@@58 f_4@@58) (+ (select (|PolymorphicMapType_11242_7004_7005#PolymorphicMapType_11242| SummandMask1@@2) o_2@@58 f_4@@58) (select (|PolymorphicMapType_11242_7004_7005#PolymorphicMapType_11242| SummandMask2@@2) o_2@@58 f_4@@58))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11242_7004_7005#PolymorphicMapType_11242| ResultMask@@2) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11242_7004_7005#PolymorphicMapType_11242| SummandMask1@@2) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11242_7004_7005#PolymorphicMapType_11242| SummandMask2@@2) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_11242) (SummandMask1@@3 T@PolymorphicMapType_11242) (SummandMask2@@3 T@PolymorphicMapType_11242) (o_2@@59 T@Ref) (f_4@@59 T@Field_7004_6982) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_11242_7004_6982#PolymorphicMapType_11242| ResultMask@@3) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_11242_7004_6982#PolymorphicMapType_11242| SummandMask1@@3) o_2@@59 f_4@@59) (select (|PolymorphicMapType_11242_7004_6982#PolymorphicMapType_11242| SummandMask2@@3) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11242_7004_6982#PolymorphicMapType_11242| ResultMask@@3) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11242_7004_6982#PolymorphicMapType_11242| SummandMask1@@3) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11242_7004_6982#PolymorphicMapType_11242| SummandMask2@@3) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_11242) (SummandMask1@@4 T@PolymorphicMapType_11242) (SummandMask2@@4 T@PolymorphicMapType_11242) (o_2@@60 T@Ref) (f_4@@60 T@Field_7004_3100) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_11242_7004_3100#PolymorphicMapType_11242| ResultMask@@4) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_11242_7004_3100#PolymorphicMapType_11242| SummandMask1@@4) o_2@@60 f_4@@60) (select (|PolymorphicMapType_11242_7004_3100#PolymorphicMapType_11242| SummandMask2@@4) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11242_7004_3100#PolymorphicMapType_11242| ResultMask@@4) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11242_7004_3100#PolymorphicMapType_11242| SummandMask1@@4) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11242_7004_3100#PolymorphicMapType_11242| SummandMask2@@4) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_11242) (SummandMask1@@5 T@PolymorphicMapType_11242) (SummandMask2@@5 T@PolymorphicMapType_11242) (o_2@@61 T@Ref) (f_4@@61 T@Field_7004_20381) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_11242_7004_20262#PolymorphicMapType_11242| ResultMask@@5) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_11242_7004_20262#PolymorphicMapType_11242| SummandMask1@@5) o_2@@61 f_4@@61) (select (|PolymorphicMapType_11242_7004_20262#PolymorphicMapType_11242| SummandMask2@@5) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11242_7004_20262#PolymorphicMapType_11242| ResultMask@@5) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11242_7004_20262#PolymorphicMapType_11242| SummandMask1@@5) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11242_7004_20262#PolymorphicMapType_11242| SummandMask2@@5) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_11242) (SummandMask1@@6 T@PolymorphicMapType_11242) (SummandMask2@@6 T@PolymorphicMapType_11242) (o_2@@62 T@Ref) (f_4@@62 T@Field_6986_18055) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_11242_6986_46737#PolymorphicMapType_11242| ResultMask@@6) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_11242_6986_46737#PolymorphicMapType_11242| SummandMask1@@6) o_2@@62 f_4@@62) (select (|PolymorphicMapType_11242_6986_46737#PolymorphicMapType_11242| SummandMask2@@6) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11242_6986_46737#PolymorphicMapType_11242| ResultMask@@6) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11242_6986_46737#PolymorphicMapType_11242| SummandMask1@@6) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11242_6986_46737#PolymorphicMapType_11242| SummandMask2@@6) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_11242) (SummandMask1@@7 T@PolymorphicMapType_11242) (SummandMask2@@7 T@PolymorphicMapType_11242) (o_2@@63 T@Ref) (f_4@@63 T@Field_17469_17471) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_11242_6986_17471#PolymorphicMapType_11242| ResultMask@@7) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_11242_6986_17471#PolymorphicMapType_11242| SummandMask1@@7) o_2@@63 f_4@@63) (select (|PolymorphicMapType_11242_6986_17471#PolymorphicMapType_11242| SummandMask2@@7) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_11242_6986_17471#PolymorphicMapType_11242| ResultMask@@7) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_11242_6986_17471#PolymorphicMapType_11242| SummandMask1@@7) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_11242_6986_17471#PolymorphicMapType_11242| SummandMask2@@7) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_11242) (SummandMask1@@8 T@PolymorphicMapType_11242) (SummandMask2@@8 T@PolymorphicMapType_11242) (o_2@@64 T@Ref) (f_4@@64 T@Field_11281_53) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_11242_6986_53#PolymorphicMapType_11242| ResultMask@@8) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_11242_6986_53#PolymorphicMapType_11242| SummandMask1@@8) o_2@@64 f_4@@64) (select (|PolymorphicMapType_11242_6986_53#PolymorphicMapType_11242| SummandMask2@@8) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_11242_6986_53#PolymorphicMapType_11242| ResultMask@@8) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_11242_6986_53#PolymorphicMapType_11242| SummandMask1@@8) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_11242_6986_53#PolymorphicMapType_11242| SummandMask2@@8) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_11242) (SummandMask1@@9 T@PolymorphicMapType_11242) (SummandMask2@@9 T@PolymorphicMapType_11242) (o_2@@65 T@Ref) (f_4@@65 T@Field_6986_7005) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_11242_6986_7005#PolymorphicMapType_11242| ResultMask@@9) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_11242_6986_7005#PolymorphicMapType_11242| SummandMask1@@9) o_2@@65 f_4@@65) (select (|PolymorphicMapType_11242_6986_7005#PolymorphicMapType_11242| SummandMask2@@9) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_11242_6986_7005#PolymorphicMapType_11242| ResultMask@@9) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_11242_6986_7005#PolymorphicMapType_11242| SummandMask1@@9) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_11242_6986_7005#PolymorphicMapType_11242| SummandMask2@@9) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_11242) (SummandMask1@@10 T@PolymorphicMapType_11242) (SummandMask2@@10 T@PolymorphicMapType_11242) (o_2@@66 T@Ref) (f_4@@66 T@Field_11294_11295) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_11242_6981_6982#PolymorphicMapType_11242| ResultMask@@10) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_11242_6981_6982#PolymorphicMapType_11242| SummandMask1@@10) o_2@@66 f_4@@66) (select (|PolymorphicMapType_11242_6981_6982#PolymorphicMapType_11242| SummandMask2@@10) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_11242_6981_6982#PolymorphicMapType_11242| ResultMask@@10) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_11242_6981_6982#PolymorphicMapType_11242| SummandMask1@@10) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_11242_6981_6982#PolymorphicMapType_11242| SummandMask2@@10) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_11242) (SummandMask1@@11 T@PolymorphicMapType_11242) (SummandMask2@@11 T@PolymorphicMapType_11242) (o_2@@67 T@Ref) (f_4@@67 T@Field_17357_3100) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_11242_6984_3100#PolymorphicMapType_11242| ResultMask@@11) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_11242_6984_3100#PolymorphicMapType_11242| SummandMask1@@11) o_2@@67 f_4@@67) (select (|PolymorphicMapType_11242_6984_3100#PolymorphicMapType_11242| SummandMask2@@11) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_11242_6984_3100#PolymorphicMapType_11242| ResultMask@@11) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_11242_6984_3100#PolymorphicMapType_11242| SummandMask1@@11) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_11242_6984_3100#PolymorphicMapType_11242| SummandMask2@@11) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_11242) (SummandMask1@@12 T@PolymorphicMapType_11242) (SummandMask2@@12 T@PolymorphicMapType_11242) (o_2@@68 T@Ref) (f_4@@68 T@Field_17404_17409) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_11242_6986_20262#PolymorphicMapType_11242| ResultMask@@12) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_11242_6986_20262#PolymorphicMapType_11242| SummandMask1@@12) o_2@@68 f_4@@68) (select (|PolymorphicMapType_11242_6986_20262#PolymorphicMapType_11242| SummandMask2@@12) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_11242_6986_20262#PolymorphicMapType_11242| ResultMask@@12) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_11242_6986_20262#PolymorphicMapType_11242| SummandMask1@@12) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_11242_6986_20262#PolymorphicMapType_11242| SummandMask2@@12) o_2@@68 f_4@@68))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2963| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2963| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.558:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2963| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_17407) (b T@Seq_17407) ) (!  (=> (|Seq#Equal_17407| a b) (= a b))
 :qid |stdinbpl.531:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_17407| a b))
)))
(assert (forall ((a@@0 T@Seq_2963) (b@@0 T@Seq_2963) ) (!  (=> (|Seq#Equal_2963| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.531:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2963| a@@0 b@@0))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_11221) (Mask@@49 T@PolymorphicMapType_11242) (i@@5 Int) ) (!  (=> (state Heap@@23 Mask@@49) (= (|trigger'| Heap@@23 i@@5) (|trigger#frame| EmptyFrame i@@5)))
 :qid |stdinbpl.608:15|
 :skolemid |61|
 :pattern ( (state Heap@@23 Mask@@49) (|trigger'| Heap@@23 i@@5))
)))
(assert (forall ((s@@17 T@Seq_17407) (i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_6987| s@@17))) (|Seq#ContainsTrigger_6987| s@@17 (|Seq#Index_6987| s@@17 i@@6)))
 :qid |stdinbpl.424:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_6987| s@@17 i@@6))
)))
(assert (forall ((s@@18 T@Seq_2963) (i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_2963| s@@18))) (|Seq#ContainsTrigger_2963| s@@18 (|Seq#Index_2963| s@@18 i@@7)))
 :qid |stdinbpl.424:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2963| s@@18 i@@7))
)))
(assert (forall ((s0@@3 T@Seq_17407) (s1@@3 T@Seq_17407) ) (!  (and (=> (= s0@@3 |Seq#Empty_6987|) (= (|Seq#Append_17407| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_6987|) (= (|Seq#Append_17407| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.242:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_17407| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2963) (s1@@4 T@Seq_2963) ) (!  (and (=> (= s0@@4 |Seq#Empty_2963|) (= (|Seq#Append_2963| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2963|) (= (|Seq#Append_2963| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.242:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2963| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_6987| (|Seq#Singleton_6987| t@@3) 0) t@@3)
 :qid |stdinbpl.246:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_6987| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2963| (|Seq#Singleton_2963| t@@4) 0) t@@4)
 :qid |stdinbpl.246:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2963| t@@4))
)))
(assert (forall ((s@@19 T@Seq_17407) ) (! (<= 0 (|Seq#Length_6987| s@@19))
 :qid |stdinbpl.225:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_6987| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2963) ) (! (<= 0 (|Seq#Length_2963| s@@20))
 :qid |stdinbpl.225:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2963| s@@20))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_11221) (i@@8 Int) ) (!  (and (= (trigger_1 Heap@@24 i@@8) (|trigger'| Heap@@24 i@@8)) (dummyFunction_3311 (|trigger#triggerStateless| i@@8)))
 :qid |stdinbpl.591:15|
 :skolemid |58|
 :pattern ( (trigger_1 Heap@@24 i@@8))
)))
(assert (forall ((s0@@5 T@Seq_17407) (s1@@5 T@Seq_17407) ) (!  (=> (|Seq#Equal_17407| s0@@5 s1@@5) (and (= (|Seq#Length_6987| s0@@5) (|Seq#Length_6987| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_6987| s0@@5))) (= (|Seq#Index_6987| s0@@5 j@@6) (|Seq#Index_6987| s1@@5 j@@6)))
 :qid |stdinbpl.521:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_6987| s0@@5 j@@6))
 :pattern ( (|Seq#Index_6987| s1@@5 j@@6))
))))
 :qid |stdinbpl.518:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_17407| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2963) (s1@@6 T@Seq_2963) ) (!  (=> (|Seq#Equal_2963| s0@@6 s1@@6) (and (= (|Seq#Length_2963| s0@@6) (|Seq#Length_2963| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2963| s0@@6))) (= (|Seq#Index_2963| s0@@6 j@@7) (|Seq#Index_2963| s1@@6 j@@7)))
 :qid |stdinbpl.521:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2963| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2963| s1@@6 j@@7))
))))
 :qid |stdinbpl.518:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2963| s0@@6 s1@@6))
)))
(assert (forall ((this@@5 T@Ref) ) (! (= (getPredWandId_7004_7005 (List this@@5)) 0)
 :qid |stdinbpl.649:15|
 :skolemid |64|
 :pattern ( (List this@@5))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_6987| (|Seq#Singleton_6987| t@@5)) 1)
 :qid |stdinbpl.233:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_6987| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2963| (|Seq#Singleton_2963| t@@6)) 1)
 :qid |stdinbpl.233:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2963| t@@6))
)))
(assert (forall ((s@@21 T@Seq_17407) (t@@7 T@Seq_17407) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_6987| s@@21))) (= (|Seq#Take_6987| (|Seq#Append_17407| s@@21 t@@7) n@@17) (|Seq#Take_6987| s@@21 n@@17)))
 :qid |stdinbpl.375:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_6987| (|Seq#Append_17407| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2963) (t@@8 T@Seq_2963) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2963| s@@22))) (= (|Seq#Take_2963| (|Seq#Append_2963| s@@22 t@@8) n@@18) (|Seq#Take_2963| s@@22 n@@18)))
 :qid |stdinbpl.375:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2963| (|Seq#Append_2963| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_17407) (i@@9 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@9) (< i@@9 (|Seq#Length_6987| s@@23))) (= (|Seq#Length_6987| (|Seq#Update_6987| s@@23 i@@9 v@@2)) (|Seq#Length_6987| s@@23)))
 :qid |stdinbpl.274:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_6987| (|Seq#Update_6987| s@@23 i@@9 v@@2)))
 :pattern ( (|Seq#Length_6987| s@@23) (|Seq#Update_6987| s@@23 i@@9 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2963) (i@@10 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2963| s@@24))) (= (|Seq#Length_2963| (|Seq#Update_2963| s@@24 i@@10 v@@3)) (|Seq#Length_2963| s@@24)))
 :qid |stdinbpl.274:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2963| (|Seq#Update_2963| s@@24 i@@10 v@@3)))
 :pattern ( (|Seq#Length_2963| s@@24) (|Seq#Update_2963| s@@24 i@@10 v@@3))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_11221) (o_16 T@Ref) (f_2 T@Field_18050_18055) (v@@4 T@PolymorphicMapType_11770) ) (! (succHeap Heap@@25 (PolymorphicMapType_11221 (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@25) (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@25) (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@25) (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@25) (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@25) (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@25) (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@25) (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@25) (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@25) (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@25) (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@25) (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@25) (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@25) (store (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@25) o_16 f_2 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11221 (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@25) (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@25) (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@25) (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@25) (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@25) (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@25) (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@25) (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@25) (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@25) (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@25) (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@25) (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@25) (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@25) (store (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@25) o_16 f_2 v@@4)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_11221) (o_16@@0 T@Ref) (f_2@@0 T@Field_7004_17471) (v@@5 T@Seq_2963) ) (! (succHeap Heap@@26 (PolymorphicMapType_11221 (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@26) (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@26) (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@26) (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@26) (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@26) (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@26) (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@26) (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@26) (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@26) (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@26) (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@26) (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@26) (store (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@26) o_16@@0 f_2@@0 v@@5) (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11221 (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@26) (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@26) (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@26) (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@26) (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@26) (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@26) (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@26) (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@26) (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@26) (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@26) (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@26) (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@26) (store (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@26) o_16@@0 f_2@@0 v@@5) (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_11221) (o_16@@1 T@Ref) (f_2@@1 T@Field_18037_18038) (v@@6 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_11221 (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@27) (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@27) (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@27) (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@27) (store (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@27) o_16@@1 f_2@@1 v@@6) (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@27) (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@27) (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@27) (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@27) (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@27) (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@27) (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@27) (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@27) (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11221 (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@27) (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@27) (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@27) (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@27) (store (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@27) o_16@@1 f_2@@1 v@@6) (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@27) (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@27) (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@27) (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@27) (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@27) (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@27) (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@27) (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@27) (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_11221) (o_16@@2 T@Ref) (f_2@@2 T@Field_7004_3100) (v@@7 Int) ) (! (succHeap Heap@@28 (PolymorphicMapType_11221 (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@28) (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@28) (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@28) (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@28) (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@28) (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@28) (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@28) (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@28) (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@28) (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@28) (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@28) (store (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@28) o_16@@2 f_2@@2 v@@7) (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@28) (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11221 (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@28) (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@28) (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@28) (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@28) (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@28) (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@28) (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@28) (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@28) (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@28) (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@28) (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@28) (store (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@28) o_16@@2 f_2@@2 v@@7) (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@28) (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_11221) (o_16@@3 T@Ref) (f_2@@3 T@Field_7004_20381) (v@@8 T@Seq_17407) ) (! (succHeap Heap@@29 (PolymorphicMapType_11221 (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@29) (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@29) (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@29) (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@29) (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@29) (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@29) (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@29) (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@29) (store (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@29) o_16@@3 f_2@@3 v@@8) (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@29) (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@29) (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@29) (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@29) (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11221 (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@29) (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@29) (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@29) (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@29) (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@29) (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@29) (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@29) (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@29) (store (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@29) o_16@@3 f_2@@3 v@@8) (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@29) (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@29) (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@29) (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@29) (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_11221) (o_16@@4 T@Ref) (f_2@@4 T@Field_7004_6982) (v@@9 T@Ref) ) (! (succHeap Heap@@30 (PolymorphicMapType_11221 (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@30) (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@30) (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@30) (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@30) (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@30) (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@30) (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@30) (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@30) (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@30) (store (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@30) o_16@@4 f_2@@4 v@@9) (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@30) (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@30) (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@30) (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11221 (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@30) (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@30) (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@30) (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@30) (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@30) (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@30) (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@30) (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@30) (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@30) (store (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@30) o_16@@4 f_2@@4 v@@9) (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@30) (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@30) (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@30) (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_11221) (o_16@@5 T@Ref) (f_2@@5 T@Field_7004_53) (v@@10 Bool) ) (! (succHeap Heap@@31 (PolymorphicMapType_11221 (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@31) (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@31) (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@31) (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@31) (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@31) (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@31) (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@31) (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@31) (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@31) (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@31) (store (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@31) o_16@@5 f_2@@5 v@@10) (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@31) (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@31) (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11221 (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@31) (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@31) (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@31) (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@31) (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@31) (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@31) (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@31) (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@31) (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@31) (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@31) (store (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@31) o_16@@5 f_2@@5 v@@10) (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@31) (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@31) (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_11221) (o_16@@6 T@Ref) (f_2@@6 T@Field_6986_18055) (v@@11 T@PolymorphicMapType_11770) ) (! (succHeap Heap@@32 (PolymorphicMapType_11221 (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@32) (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@32) (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@32) (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@32) (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@32) (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@32) (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@32) (store (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@32) o_16@@6 f_2@@6 v@@11) (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@32) (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@32) (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@32) (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@32) (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@32) (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11221 (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@32) (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@32) (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@32) (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@32) (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@32) (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@32) (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@32) (store (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@32) o_16@@6 f_2@@6 v@@11) (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@32) (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@32) (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@32) (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@32) (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@32) (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_11221) (o_16@@7 T@Ref) (f_2@@7 T@Field_17469_17471) (v@@12 T@Seq_2963) ) (! (succHeap Heap@@33 (PolymorphicMapType_11221 (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@33) (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@33) (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@33) (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@33) (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@33) (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@33) (store (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@33) o_16@@7 f_2@@7 v@@12) (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@33) (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@33) (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@33) (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@33) (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@33) (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@33) (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11221 (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@33) (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@33) (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@33) (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@33) (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@33) (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@33) (store (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@33) o_16@@7 f_2@@7 v@@12) (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@33) (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@33) (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@33) (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@33) (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@33) (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@33) (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_11221) (o_16@@8 T@Ref) (f_2@@8 T@Field_6986_7005) (v@@13 T@FrameType) ) (! (succHeap Heap@@34 (PolymorphicMapType_11221 (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@34) (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@34) (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@34) (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@34) (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@34) (store (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@34) o_16@@8 f_2@@8 v@@13) (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@34) (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@34) (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@34) (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@34) (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@34) (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@34) (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@34) (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11221 (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@34) (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@34) (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@34) (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@34) (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@34) (store (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@34) o_16@@8 f_2@@8 v@@13) (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@34) (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@34) (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@34) (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@34) (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@34) (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@34) (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@34) (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_11221) (o_16@@9 T@Ref) (f_2@@9 T@Field_17357_3100) (v@@14 Int) ) (! (succHeap Heap@@35 (PolymorphicMapType_11221 (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@35) (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@35) (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@35) (store (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@35) o_16@@9 f_2@@9 v@@14) (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@35) (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@35) (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@35) (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@35) (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@35) (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@35) (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@35) (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@35) (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@35) (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11221 (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@35) (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@35) (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@35) (store (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@35) o_16@@9 f_2@@9 v@@14) (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@35) (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@35) (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@35) (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@35) (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@35) (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@35) (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@35) (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@35) (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@35) (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_11221) (o_16@@10 T@Ref) (f_2@@10 T@Field_17404_17409) (v@@15 T@Seq_17407) ) (! (succHeap Heap@@36 (PolymorphicMapType_11221 (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@36) (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@36) (store (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@36) o_16@@10 f_2@@10 v@@15) (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@36) (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@36) (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@36) (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@36) (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@36) (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@36) (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@36) (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@36) (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@36) (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@36) (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11221 (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@36) (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@36) (store (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@36) o_16@@10 f_2@@10 v@@15) (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@36) (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@36) (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@36) (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@36) (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@36) (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@36) (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@36) (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@36) (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@36) (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@36) (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_11221) (o_16@@11 T@Ref) (f_2@@11 T@Field_11294_11295) (v@@16 T@Ref) ) (! (succHeap Heap@@37 (PolymorphicMapType_11221 (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@37) (store (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@37) o_16@@11 f_2@@11 v@@16) (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@37) (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@37) (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@37) (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@37) (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@37) (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@37) (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@37) (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@37) (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@37) (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@37) (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@37) (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11221 (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@37) (store (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@37) o_16@@11 f_2@@11 v@@16) (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@37) (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@37) (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@37) (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@37) (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@37) (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@37) (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@37) (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@37) (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@37) (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@37) (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@37) (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_11221) (o_16@@12 T@Ref) (f_2@@12 T@Field_11281_53) (v@@17 Bool) ) (! (succHeap Heap@@38 (PolymorphicMapType_11221 (store (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@38) o_16@@12 f_2@@12 v@@17) (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@38) (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@38) (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@38) (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@38) (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@38) (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@38) (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@38) (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@38) (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@38) (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@38) (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@38) (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@38) (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11221 (store (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@38) o_16@@12 f_2@@12 v@@17) (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@38) (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@38) (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@38) (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@38) (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@38) (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@38) (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@38) (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@38) (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@38) (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@38) (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@38) (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@38) (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@38)))
)))
(assert (forall ((this@@6 T@Ref) ) (! (= (PredicateMaskField_7004 (List this@@6)) (|List#sm| this@@6))
 :qid |stdinbpl.641:15|
 :skolemid |62|
 :pattern ( (PredicateMaskField_7004 (List this@@6)))
)))
(assert (forall ((s@@25 T@Seq_17407) (t@@9 T@Seq_17407) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_6987| s@@25))) (= (|Seq#Drop_6987| (|Seq#Append_17407| s@@25 t@@9) n@@19) (|Seq#Append_17407| (|Seq#Drop_6987| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.389:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_6987| (|Seq#Append_17407| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2963) (t@@10 T@Seq_2963) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2963| s@@26))) (= (|Seq#Drop_2963| (|Seq#Append_2963| s@@26 t@@10) n@@20) (|Seq#Append_2963| (|Seq#Drop_2963| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.389:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2963| (|Seq#Append_2963| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_17407) (n@@21 Int) (i@@11 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@11)) (< i@@11 (|Seq#Length_6987| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@11 n@@21) n@@21) i@@11) (= (|Seq#Index_6987| (|Seq#Drop_6987| s@@27 n@@21) (|Seq#Sub| i@@11 n@@21)) (|Seq#Index_6987| s@@27 i@@11))))
 :qid |stdinbpl.325:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_6987| s@@27 n@@21) (|Seq#Index_6987| s@@27 i@@11))
)))
(assert (forall ((s@@28 T@Seq_2963) (n@@22 Int) (i@@12 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@12)) (< i@@12 (|Seq#Length_2963| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@12 n@@22) n@@22) i@@12) (= (|Seq#Index_2963| (|Seq#Drop_2963| s@@28 n@@22) (|Seq#Sub| i@@12 n@@22)) (|Seq#Index_2963| s@@28 i@@12))))
 :qid |stdinbpl.325:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2963| s@@28 n@@22) (|Seq#Index_2963| s@@28 i@@12))
)))
(assert (forall ((s0@@7 T@Seq_17407) (s1@@7 T@Seq_17407) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_6987|)) (not (= s1@@7 |Seq#Empty_6987|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_6987| s0@@7))) (= (|Seq#Index_6987| (|Seq#Append_17407| s0@@7 s1@@7) n@@23) (|Seq#Index_6987| s0@@7 n@@23)))
 :qid |stdinbpl.265:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_6987| (|Seq#Append_17407| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_6987| s0@@7 n@@23) (|Seq#Append_17407| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2963) (s1@@8 T@Seq_2963) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2963|)) (not (= s1@@8 |Seq#Empty_2963|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2963| s0@@8))) (= (|Seq#Index_2963| (|Seq#Append_2963| s0@@8 s1@@8) n@@24) (|Seq#Index_2963| s0@@8 n@@24)))
 :qid |stdinbpl.265:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2963| (|Seq#Append_2963| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2963| s0@@8 n@@24) (|Seq#Append_2963| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_17407) (s1@@9 T@Seq_17407) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_6987|)) (not (= s1@@9 |Seq#Empty_6987|))) (<= 0 m)) (< m (|Seq#Length_6987| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_6987| s0@@9)) (|Seq#Length_6987| s0@@9)) m) (= (|Seq#Index_6987| (|Seq#Append_17407| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_6987| s0@@9))) (|Seq#Index_6987| s1@@9 m))))
 :qid |stdinbpl.270:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_6987| s1@@9 m) (|Seq#Append_17407| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2963) (s1@@10 T@Seq_2963) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2963|)) (not (= s1@@10 |Seq#Empty_2963|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2963| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2963| s0@@10)) (|Seq#Length_2963| s0@@10)) m@@0) (= (|Seq#Index_2963| (|Seq#Append_2963| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2963| s0@@10))) (|Seq#Index_2963| s1@@10 m@@0))))
 :qid |stdinbpl.270:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2963| s1@@10 m@@0) (|Seq#Append_2963| s0@@10 s1@@10))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_11221) (ExhaleHeap@@19 T@PolymorphicMapType_11221) (Mask@@50 T@PolymorphicMapType_11242) (pm_f_6@@3 T@Field_18037_18038) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@19 Mask@@50) (=> (and (HasDirectPerm_7004_7005 Mask@@50 null pm_f_6@@3) (IsPredicateField_7004_7005 pm_f_6@@3)) (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6 T@Ref) (f_25@@13 T@Field_11281_53) ) (!  (=> (select (|PolymorphicMapType_11770_11281_53#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@39) null (PredicateMaskField_7004 pm_f_6@@3))) o2_6 f_25@@13) (= (select (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@39) o2_6 f_25@@13) (select (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| ExhaleHeap@@19) o2_6 f_25@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| ExhaleHeap@@19) o2_6 f_25@@13))
)) (forall ((o2_6@@0 T@Ref) (f_25@@14 T@Field_11294_11295) ) (!  (=> (select (|PolymorphicMapType_11770_11281_11295#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@39) null (PredicateMaskField_7004 pm_f_6@@3))) o2_6@@0 f_25@@14) (= (select (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@39) o2_6@@0 f_25@@14) (select (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| ExhaleHeap@@19) o2_6@@0 f_25@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| ExhaleHeap@@19) o2_6@@0 f_25@@14))
))) (forall ((o2_6@@1 T@Ref) (f_25@@15 T@Field_17357_3100) ) (!  (=> (select (|PolymorphicMapType_11770_11281_3100#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@39) null (PredicateMaskField_7004 pm_f_6@@3))) o2_6@@1 f_25@@15) (= (select (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@39) o2_6@@1 f_25@@15) (select (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| ExhaleHeap@@19) o2_6@@1 f_25@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| ExhaleHeap@@19) o2_6@@1 f_25@@15))
))) (forall ((o2_6@@2 T@Ref) (f_25@@16 T@Field_17404_17409) ) (!  (=> (select (|PolymorphicMapType_11770_11281_17409#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@39) null (PredicateMaskField_7004 pm_f_6@@3))) o2_6@@2 f_25@@16) (= (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@39) o2_6@@2 f_25@@16) (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| ExhaleHeap@@19) o2_6@@2 f_25@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| ExhaleHeap@@19) o2_6@@2 f_25@@16))
))) (forall ((o2_6@@3 T@Ref) (f_25@@17 T@Field_17469_17471) ) (!  (=> (select (|PolymorphicMapType_11770_11281_17471#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@39) null (PredicateMaskField_7004 pm_f_6@@3))) o2_6@@3 f_25@@17) (= (select (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@39) o2_6@@3 f_25@@17) (select (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| ExhaleHeap@@19) o2_6@@3 f_25@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| ExhaleHeap@@19) o2_6@@3 f_25@@17))
))) (forall ((o2_6@@4 T@Ref) (f_25@@18 T@Field_6986_7005) ) (!  (=> (select (|PolymorphicMapType_11770_11281_18038#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@39) null (PredicateMaskField_7004 pm_f_6@@3))) o2_6@@4 f_25@@18) (= (select (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@39) o2_6@@4 f_25@@18) (select (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| ExhaleHeap@@19) o2_6@@4 f_25@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| ExhaleHeap@@19) o2_6@@4 f_25@@18))
))) (forall ((o2_6@@5 T@Ref) (f_25@@19 T@Field_6986_18055) ) (!  (=> (select (|PolymorphicMapType_11770_11281_38551#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@39) null (PredicateMaskField_7004 pm_f_6@@3))) o2_6@@5 f_25@@19) (= (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@39) o2_6@@5 f_25@@19) (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| ExhaleHeap@@19) o2_6@@5 f_25@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| ExhaleHeap@@19) o2_6@@5 f_25@@19))
))) (forall ((o2_6@@6 T@Ref) (f_25@@20 T@Field_7004_53) ) (!  (=> (select (|PolymorphicMapType_11770_18037_53#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@39) null (PredicateMaskField_7004 pm_f_6@@3))) o2_6@@6 f_25@@20) (= (select (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@39) o2_6@@6 f_25@@20) (select (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| ExhaleHeap@@19) o2_6@@6 f_25@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| ExhaleHeap@@19) o2_6@@6 f_25@@20))
))) (forall ((o2_6@@7 T@Ref) (f_25@@21 T@Field_7004_6982) ) (!  (=> (select (|PolymorphicMapType_11770_18037_11295#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@39) null (PredicateMaskField_7004 pm_f_6@@3))) o2_6@@7 f_25@@21) (= (select (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@39) o2_6@@7 f_25@@21) (select (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| ExhaleHeap@@19) o2_6@@7 f_25@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| ExhaleHeap@@19) o2_6@@7 f_25@@21))
))) (forall ((o2_6@@8 T@Ref) (f_25@@22 T@Field_7004_3100) ) (!  (=> (select (|PolymorphicMapType_11770_18037_3100#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@39) null (PredicateMaskField_7004 pm_f_6@@3))) o2_6@@8 f_25@@22) (= (select (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@39) o2_6@@8 f_25@@22) (select (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| ExhaleHeap@@19) o2_6@@8 f_25@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| ExhaleHeap@@19) o2_6@@8 f_25@@22))
))) (forall ((o2_6@@9 T@Ref) (f_25@@23 T@Field_7004_20381) ) (!  (=> (select (|PolymorphicMapType_11770_18037_17409#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@39) null (PredicateMaskField_7004 pm_f_6@@3))) o2_6@@9 f_25@@23) (= (select (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@39) o2_6@@9 f_25@@23) (select (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| ExhaleHeap@@19) o2_6@@9 f_25@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| ExhaleHeap@@19) o2_6@@9 f_25@@23))
))) (forall ((o2_6@@10 T@Ref) (f_25@@24 T@Field_7004_17471) ) (!  (=> (select (|PolymorphicMapType_11770_18037_17471#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@39) null (PredicateMaskField_7004 pm_f_6@@3))) o2_6@@10 f_25@@24) (= (select (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@39) o2_6@@10 f_25@@24) (select (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| ExhaleHeap@@19) o2_6@@10 f_25@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| ExhaleHeap@@19) o2_6@@10 f_25@@24))
))) (forall ((o2_6@@11 T@Ref) (f_25@@25 T@Field_18037_18038) ) (!  (=> (select (|PolymorphicMapType_11770_18037_18038#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@39) null (PredicateMaskField_7004 pm_f_6@@3))) o2_6@@11 f_25@@25) (= (select (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@39) o2_6@@11 f_25@@25) (select (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| ExhaleHeap@@19) o2_6@@11 f_25@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| ExhaleHeap@@19) o2_6@@11 f_25@@25))
))) (forall ((o2_6@@12 T@Ref) (f_25@@26 T@Field_18050_18055) ) (!  (=> (select (|PolymorphicMapType_11770_18037_40007#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@39) null (PredicateMaskField_7004 pm_f_6@@3))) o2_6@@12 f_25@@26) (= (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@39) o2_6@@12 f_25@@26) (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| ExhaleHeap@@19) o2_6@@12 f_25@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| ExhaleHeap@@19) o2_6@@12 f_25@@26))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@19 Mask@@50) (IsPredicateField_7004_7005 pm_f_6@@3))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_11221) (ExhaleHeap@@20 T@PolymorphicMapType_11221) (Mask@@51 T@PolymorphicMapType_11242) (pm_f_6@@4 T@Field_6986_7005) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@20 Mask@@51) (=> (and (HasDirectPerm_6986_7005 Mask@@51 null pm_f_6@@4) (IsPredicateField_6986_36659 pm_f_6@@4)) (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6@@13 T@Ref) (f_25@@27 T@Field_11281_53) ) (!  (=> (select (|PolymorphicMapType_11770_11281_53#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@40) null (PredicateMaskField_6986 pm_f_6@@4))) o2_6@@13 f_25@@27) (= (select (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@40) o2_6@@13 f_25@@27) (select (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| ExhaleHeap@@20) o2_6@@13 f_25@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| ExhaleHeap@@20) o2_6@@13 f_25@@27))
)) (forall ((o2_6@@14 T@Ref) (f_25@@28 T@Field_11294_11295) ) (!  (=> (select (|PolymorphicMapType_11770_11281_11295#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@40) null (PredicateMaskField_6986 pm_f_6@@4))) o2_6@@14 f_25@@28) (= (select (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@40) o2_6@@14 f_25@@28) (select (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| ExhaleHeap@@20) o2_6@@14 f_25@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| ExhaleHeap@@20) o2_6@@14 f_25@@28))
))) (forall ((o2_6@@15 T@Ref) (f_25@@29 T@Field_17357_3100) ) (!  (=> (select (|PolymorphicMapType_11770_11281_3100#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@40) null (PredicateMaskField_6986 pm_f_6@@4))) o2_6@@15 f_25@@29) (= (select (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@40) o2_6@@15 f_25@@29) (select (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| ExhaleHeap@@20) o2_6@@15 f_25@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| ExhaleHeap@@20) o2_6@@15 f_25@@29))
))) (forall ((o2_6@@16 T@Ref) (f_25@@30 T@Field_17404_17409) ) (!  (=> (select (|PolymorphicMapType_11770_11281_17409#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@40) null (PredicateMaskField_6986 pm_f_6@@4))) o2_6@@16 f_25@@30) (= (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@40) o2_6@@16 f_25@@30) (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| ExhaleHeap@@20) o2_6@@16 f_25@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| ExhaleHeap@@20) o2_6@@16 f_25@@30))
))) (forall ((o2_6@@17 T@Ref) (f_25@@31 T@Field_17469_17471) ) (!  (=> (select (|PolymorphicMapType_11770_11281_17471#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@40) null (PredicateMaskField_6986 pm_f_6@@4))) o2_6@@17 f_25@@31) (= (select (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@40) o2_6@@17 f_25@@31) (select (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| ExhaleHeap@@20) o2_6@@17 f_25@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| ExhaleHeap@@20) o2_6@@17 f_25@@31))
))) (forall ((o2_6@@18 T@Ref) (f_25@@32 T@Field_6986_7005) ) (!  (=> (select (|PolymorphicMapType_11770_11281_18038#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@40) null (PredicateMaskField_6986 pm_f_6@@4))) o2_6@@18 f_25@@32) (= (select (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@40) o2_6@@18 f_25@@32) (select (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| ExhaleHeap@@20) o2_6@@18 f_25@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| ExhaleHeap@@20) o2_6@@18 f_25@@32))
))) (forall ((o2_6@@19 T@Ref) (f_25@@33 T@Field_6986_18055) ) (!  (=> (select (|PolymorphicMapType_11770_11281_38551#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@40) null (PredicateMaskField_6986 pm_f_6@@4))) o2_6@@19 f_25@@33) (= (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@40) o2_6@@19 f_25@@33) (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| ExhaleHeap@@20) o2_6@@19 f_25@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| ExhaleHeap@@20) o2_6@@19 f_25@@33))
))) (forall ((o2_6@@20 T@Ref) (f_25@@34 T@Field_7004_53) ) (!  (=> (select (|PolymorphicMapType_11770_18037_53#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@40) null (PredicateMaskField_6986 pm_f_6@@4))) o2_6@@20 f_25@@34) (= (select (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@40) o2_6@@20 f_25@@34) (select (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| ExhaleHeap@@20) o2_6@@20 f_25@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| ExhaleHeap@@20) o2_6@@20 f_25@@34))
))) (forall ((o2_6@@21 T@Ref) (f_25@@35 T@Field_7004_6982) ) (!  (=> (select (|PolymorphicMapType_11770_18037_11295#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@40) null (PredicateMaskField_6986 pm_f_6@@4))) o2_6@@21 f_25@@35) (= (select (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@40) o2_6@@21 f_25@@35) (select (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| ExhaleHeap@@20) o2_6@@21 f_25@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| ExhaleHeap@@20) o2_6@@21 f_25@@35))
))) (forall ((o2_6@@22 T@Ref) (f_25@@36 T@Field_7004_3100) ) (!  (=> (select (|PolymorphicMapType_11770_18037_3100#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@40) null (PredicateMaskField_6986 pm_f_6@@4))) o2_6@@22 f_25@@36) (= (select (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@40) o2_6@@22 f_25@@36) (select (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| ExhaleHeap@@20) o2_6@@22 f_25@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| ExhaleHeap@@20) o2_6@@22 f_25@@36))
))) (forall ((o2_6@@23 T@Ref) (f_25@@37 T@Field_7004_20381) ) (!  (=> (select (|PolymorphicMapType_11770_18037_17409#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@40) null (PredicateMaskField_6986 pm_f_6@@4))) o2_6@@23 f_25@@37) (= (select (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@40) o2_6@@23 f_25@@37) (select (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| ExhaleHeap@@20) o2_6@@23 f_25@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| ExhaleHeap@@20) o2_6@@23 f_25@@37))
))) (forall ((o2_6@@24 T@Ref) (f_25@@38 T@Field_7004_17471) ) (!  (=> (select (|PolymorphicMapType_11770_18037_17471#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@40) null (PredicateMaskField_6986 pm_f_6@@4))) o2_6@@24 f_25@@38) (= (select (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@40) o2_6@@24 f_25@@38) (select (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| ExhaleHeap@@20) o2_6@@24 f_25@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| ExhaleHeap@@20) o2_6@@24 f_25@@38))
))) (forall ((o2_6@@25 T@Ref) (f_25@@39 T@Field_18037_18038) ) (!  (=> (select (|PolymorphicMapType_11770_18037_18038#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@40) null (PredicateMaskField_6986 pm_f_6@@4))) o2_6@@25 f_25@@39) (= (select (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@40) o2_6@@25 f_25@@39) (select (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| ExhaleHeap@@20) o2_6@@25 f_25@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| ExhaleHeap@@20) o2_6@@25 f_25@@39))
))) (forall ((o2_6@@26 T@Ref) (f_25@@40 T@Field_18050_18055) ) (!  (=> (select (|PolymorphicMapType_11770_18037_40007#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@40) null (PredicateMaskField_6986 pm_f_6@@4))) o2_6@@26 f_25@@40) (= (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@40) o2_6@@26 f_25@@40) (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| ExhaleHeap@@20) o2_6@@26 f_25@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| ExhaleHeap@@20) o2_6@@26 f_25@@40))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@20 Mask@@51) (IsPredicateField_6986_36659 pm_f_6@@4))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_11221) (ExhaleHeap@@21 T@PolymorphicMapType_11221) (Mask@@52 T@PolymorphicMapType_11242) (pm_f_6@@5 T@Field_18037_18038) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@21 Mask@@52) (=> (and (HasDirectPerm_7004_7005 Mask@@52 null pm_f_6@@5) (IsWandField_7004_41172 pm_f_6@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6@@27 T@Ref) (f_25@@41 T@Field_11281_53) ) (!  (=> (select (|PolymorphicMapType_11770_11281_53#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@41) null (WandMaskField_7004 pm_f_6@@5))) o2_6@@27 f_25@@41) (= (select (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@41) o2_6@@27 f_25@@41) (select (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| ExhaleHeap@@21) o2_6@@27 f_25@@41)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| ExhaleHeap@@21) o2_6@@27 f_25@@41))
)) (forall ((o2_6@@28 T@Ref) (f_25@@42 T@Field_11294_11295) ) (!  (=> (select (|PolymorphicMapType_11770_11281_11295#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@41) null (WandMaskField_7004 pm_f_6@@5))) o2_6@@28 f_25@@42) (= (select (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@41) o2_6@@28 f_25@@42) (select (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| ExhaleHeap@@21) o2_6@@28 f_25@@42)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| ExhaleHeap@@21) o2_6@@28 f_25@@42))
))) (forall ((o2_6@@29 T@Ref) (f_25@@43 T@Field_17357_3100) ) (!  (=> (select (|PolymorphicMapType_11770_11281_3100#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@41) null (WandMaskField_7004 pm_f_6@@5))) o2_6@@29 f_25@@43) (= (select (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@41) o2_6@@29 f_25@@43) (select (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| ExhaleHeap@@21) o2_6@@29 f_25@@43)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| ExhaleHeap@@21) o2_6@@29 f_25@@43))
))) (forall ((o2_6@@30 T@Ref) (f_25@@44 T@Field_17404_17409) ) (!  (=> (select (|PolymorphicMapType_11770_11281_17409#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@41) null (WandMaskField_7004 pm_f_6@@5))) o2_6@@30 f_25@@44) (= (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@41) o2_6@@30 f_25@@44) (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| ExhaleHeap@@21) o2_6@@30 f_25@@44)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| ExhaleHeap@@21) o2_6@@30 f_25@@44))
))) (forall ((o2_6@@31 T@Ref) (f_25@@45 T@Field_17469_17471) ) (!  (=> (select (|PolymorphicMapType_11770_11281_17471#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@41) null (WandMaskField_7004 pm_f_6@@5))) o2_6@@31 f_25@@45) (= (select (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@41) o2_6@@31 f_25@@45) (select (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| ExhaleHeap@@21) o2_6@@31 f_25@@45)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| ExhaleHeap@@21) o2_6@@31 f_25@@45))
))) (forall ((o2_6@@32 T@Ref) (f_25@@46 T@Field_6986_7005) ) (!  (=> (select (|PolymorphicMapType_11770_11281_18038#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@41) null (WandMaskField_7004 pm_f_6@@5))) o2_6@@32 f_25@@46) (= (select (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@41) o2_6@@32 f_25@@46) (select (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| ExhaleHeap@@21) o2_6@@32 f_25@@46)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| ExhaleHeap@@21) o2_6@@32 f_25@@46))
))) (forall ((o2_6@@33 T@Ref) (f_25@@47 T@Field_6986_18055) ) (!  (=> (select (|PolymorphicMapType_11770_11281_38551#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@41) null (WandMaskField_7004 pm_f_6@@5))) o2_6@@33 f_25@@47) (= (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@41) o2_6@@33 f_25@@47) (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| ExhaleHeap@@21) o2_6@@33 f_25@@47)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| ExhaleHeap@@21) o2_6@@33 f_25@@47))
))) (forall ((o2_6@@34 T@Ref) (f_25@@48 T@Field_7004_53) ) (!  (=> (select (|PolymorphicMapType_11770_18037_53#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@41) null (WandMaskField_7004 pm_f_6@@5))) o2_6@@34 f_25@@48) (= (select (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@41) o2_6@@34 f_25@@48) (select (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| ExhaleHeap@@21) o2_6@@34 f_25@@48)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| ExhaleHeap@@21) o2_6@@34 f_25@@48))
))) (forall ((o2_6@@35 T@Ref) (f_25@@49 T@Field_7004_6982) ) (!  (=> (select (|PolymorphicMapType_11770_18037_11295#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@41) null (WandMaskField_7004 pm_f_6@@5))) o2_6@@35 f_25@@49) (= (select (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@41) o2_6@@35 f_25@@49) (select (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| ExhaleHeap@@21) o2_6@@35 f_25@@49)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| ExhaleHeap@@21) o2_6@@35 f_25@@49))
))) (forall ((o2_6@@36 T@Ref) (f_25@@50 T@Field_7004_3100) ) (!  (=> (select (|PolymorphicMapType_11770_18037_3100#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@41) null (WandMaskField_7004 pm_f_6@@5))) o2_6@@36 f_25@@50) (= (select (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@41) o2_6@@36 f_25@@50) (select (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| ExhaleHeap@@21) o2_6@@36 f_25@@50)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| ExhaleHeap@@21) o2_6@@36 f_25@@50))
))) (forall ((o2_6@@37 T@Ref) (f_25@@51 T@Field_7004_20381) ) (!  (=> (select (|PolymorphicMapType_11770_18037_17409#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@41) null (WandMaskField_7004 pm_f_6@@5))) o2_6@@37 f_25@@51) (= (select (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@41) o2_6@@37 f_25@@51) (select (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| ExhaleHeap@@21) o2_6@@37 f_25@@51)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| ExhaleHeap@@21) o2_6@@37 f_25@@51))
))) (forall ((o2_6@@38 T@Ref) (f_25@@52 T@Field_7004_17471) ) (!  (=> (select (|PolymorphicMapType_11770_18037_17471#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@41) null (WandMaskField_7004 pm_f_6@@5))) o2_6@@38 f_25@@52) (= (select (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@41) o2_6@@38 f_25@@52) (select (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| ExhaleHeap@@21) o2_6@@38 f_25@@52)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| ExhaleHeap@@21) o2_6@@38 f_25@@52))
))) (forall ((o2_6@@39 T@Ref) (f_25@@53 T@Field_18037_18038) ) (!  (=> (select (|PolymorphicMapType_11770_18037_18038#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@41) null (WandMaskField_7004 pm_f_6@@5))) o2_6@@39 f_25@@53) (= (select (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@41) o2_6@@39 f_25@@53) (select (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| ExhaleHeap@@21) o2_6@@39 f_25@@53)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| ExhaleHeap@@21) o2_6@@39 f_25@@53))
))) (forall ((o2_6@@40 T@Ref) (f_25@@54 T@Field_18050_18055) ) (!  (=> (select (|PolymorphicMapType_11770_18037_40007#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@41) null (WandMaskField_7004 pm_f_6@@5))) o2_6@@40 f_25@@54) (= (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@41) o2_6@@40 f_25@@54) (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| ExhaleHeap@@21) o2_6@@40 f_25@@54)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| ExhaleHeap@@21) o2_6@@40 f_25@@54))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@21 Mask@@52) (IsWandField_7004_41172 pm_f_6@@5))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_11221) (ExhaleHeap@@22 T@PolymorphicMapType_11221) (Mask@@53 T@PolymorphicMapType_11242) (pm_f_6@@6 T@Field_6986_7005) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_6986_7005 Mask@@53 null pm_f_6@@6) (IsWandField_6986_40815 pm_f_6@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6@@41 T@Ref) (f_25@@55 T@Field_11281_53) ) (!  (=> (select (|PolymorphicMapType_11770_11281_53#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@42) null (WandMaskField_6986 pm_f_6@@6))) o2_6@@41 f_25@@55) (= (select (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@42) o2_6@@41 f_25@@55) (select (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| ExhaleHeap@@22) o2_6@@41 f_25@@55)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| ExhaleHeap@@22) o2_6@@41 f_25@@55))
)) (forall ((o2_6@@42 T@Ref) (f_25@@56 T@Field_11294_11295) ) (!  (=> (select (|PolymorphicMapType_11770_11281_11295#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@42) null (WandMaskField_6986 pm_f_6@@6))) o2_6@@42 f_25@@56) (= (select (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@42) o2_6@@42 f_25@@56) (select (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| ExhaleHeap@@22) o2_6@@42 f_25@@56)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| ExhaleHeap@@22) o2_6@@42 f_25@@56))
))) (forall ((o2_6@@43 T@Ref) (f_25@@57 T@Field_17357_3100) ) (!  (=> (select (|PolymorphicMapType_11770_11281_3100#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@42) null (WandMaskField_6986 pm_f_6@@6))) o2_6@@43 f_25@@57) (= (select (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@42) o2_6@@43 f_25@@57) (select (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| ExhaleHeap@@22) o2_6@@43 f_25@@57)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| ExhaleHeap@@22) o2_6@@43 f_25@@57))
))) (forall ((o2_6@@44 T@Ref) (f_25@@58 T@Field_17404_17409) ) (!  (=> (select (|PolymorphicMapType_11770_11281_17409#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@42) null (WandMaskField_6986 pm_f_6@@6))) o2_6@@44 f_25@@58) (= (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@42) o2_6@@44 f_25@@58) (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| ExhaleHeap@@22) o2_6@@44 f_25@@58)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| ExhaleHeap@@22) o2_6@@44 f_25@@58))
))) (forall ((o2_6@@45 T@Ref) (f_25@@59 T@Field_17469_17471) ) (!  (=> (select (|PolymorphicMapType_11770_11281_17471#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@42) null (WandMaskField_6986 pm_f_6@@6))) o2_6@@45 f_25@@59) (= (select (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@42) o2_6@@45 f_25@@59) (select (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| ExhaleHeap@@22) o2_6@@45 f_25@@59)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| ExhaleHeap@@22) o2_6@@45 f_25@@59))
))) (forall ((o2_6@@46 T@Ref) (f_25@@60 T@Field_6986_7005) ) (!  (=> (select (|PolymorphicMapType_11770_11281_18038#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@42) null (WandMaskField_6986 pm_f_6@@6))) o2_6@@46 f_25@@60) (= (select (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@42) o2_6@@46 f_25@@60) (select (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| ExhaleHeap@@22) o2_6@@46 f_25@@60)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| ExhaleHeap@@22) o2_6@@46 f_25@@60))
))) (forall ((o2_6@@47 T@Ref) (f_25@@61 T@Field_6986_18055) ) (!  (=> (select (|PolymorphicMapType_11770_11281_38551#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@42) null (WandMaskField_6986 pm_f_6@@6))) o2_6@@47 f_25@@61) (= (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@42) o2_6@@47 f_25@@61) (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| ExhaleHeap@@22) o2_6@@47 f_25@@61)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| ExhaleHeap@@22) o2_6@@47 f_25@@61))
))) (forall ((o2_6@@48 T@Ref) (f_25@@62 T@Field_7004_53) ) (!  (=> (select (|PolymorphicMapType_11770_18037_53#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@42) null (WandMaskField_6986 pm_f_6@@6))) o2_6@@48 f_25@@62) (= (select (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@42) o2_6@@48 f_25@@62) (select (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| ExhaleHeap@@22) o2_6@@48 f_25@@62)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| ExhaleHeap@@22) o2_6@@48 f_25@@62))
))) (forall ((o2_6@@49 T@Ref) (f_25@@63 T@Field_7004_6982) ) (!  (=> (select (|PolymorphicMapType_11770_18037_11295#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@42) null (WandMaskField_6986 pm_f_6@@6))) o2_6@@49 f_25@@63) (= (select (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@42) o2_6@@49 f_25@@63) (select (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| ExhaleHeap@@22) o2_6@@49 f_25@@63)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| ExhaleHeap@@22) o2_6@@49 f_25@@63))
))) (forall ((o2_6@@50 T@Ref) (f_25@@64 T@Field_7004_3100) ) (!  (=> (select (|PolymorphicMapType_11770_18037_3100#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@42) null (WandMaskField_6986 pm_f_6@@6))) o2_6@@50 f_25@@64) (= (select (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@42) o2_6@@50 f_25@@64) (select (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| ExhaleHeap@@22) o2_6@@50 f_25@@64)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| ExhaleHeap@@22) o2_6@@50 f_25@@64))
))) (forall ((o2_6@@51 T@Ref) (f_25@@65 T@Field_7004_20381) ) (!  (=> (select (|PolymorphicMapType_11770_18037_17409#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@42) null (WandMaskField_6986 pm_f_6@@6))) o2_6@@51 f_25@@65) (= (select (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@42) o2_6@@51 f_25@@65) (select (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| ExhaleHeap@@22) o2_6@@51 f_25@@65)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| ExhaleHeap@@22) o2_6@@51 f_25@@65))
))) (forall ((o2_6@@52 T@Ref) (f_25@@66 T@Field_7004_17471) ) (!  (=> (select (|PolymorphicMapType_11770_18037_17471#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@42) null (WandMaskField_6986 pm_f_6@@6))) o2_6@@52 f_25@@66) (= (select (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@42) o2_6@@52 f_25@@66) (select (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| ExhaleHeap@@22) o2_6@@52 f_25@@66)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| ExhaleHeap@@22) o2_6@@52 f_25@@66))
))) (forall ((o2_6@@53 T@Ref) (f_25@@67 T@Field_18037_18038) ) (!  (=> (select (|PolymorphicMapType_11770_18037_18038#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@42) null (WandMaskField_6986 pm_f_6@@6))) o2_6@@53 f_25@@67) (= (select (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@42) o2_6@@53 f_25@@67) (select (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| ExhaleHeap@@22) o2_6@@53 f_25@@67)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| ExhaleHeap@@22) o2_6@@53 f_25@@67))
))) (forall ((o2_6@@54 T@Ref) (f_25@@68 T@Field_18050_18055) ) (!  (=> (select (|PolymorphicMapType_11770_18037_40007#PolymorphicMapType_11770| (select (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@42) null (WandMaskField_6986 pm_f_6@@6))) o2_6@@54 f_25@@68) (= (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@42) o2_6@@54 f_25@@68) (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| ExhaleHeap@@22) o2_6@@54 f_25@@68)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| ExhaleHeap@@22) o2_6@@54 f_25@@68))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@22 Mask@@53) (IsWandField_6986_40815 pm_f_6@@6))
)))
(assert (forall ((o_16@@13 T@Ref) (f_10 T@Field_11294_11295) (Heap@@43 T@PolymorphicMapType_11221) ) (!  (=> (select (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@43) o_16@@13 $allocated) (select (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@43) (select (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@43) o_16@@13 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@43) o_16@@13 f_10))
)))
(assert (forall ((s@@29 T@Seq_17407) (x@@3 T@Ref) (i@@13 Int) ) (!  (=> (and (and (<= 0 i@@13) (< i@@13 (|Seq#Length_6987| s@@29))) (= (|Seq#Index_6987| s@@29 i@@13) x@@3)) (|Seq#Contains_17407| s@@29 x@@3))
 :qid |stdinbpl.422:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_17407| s@@29 x@@3) (|Seq#Index_6987| s@@29 i@@13))
)))
(assert (forall ((s@@30 T@Seq_2963) (x@@4 Int) (i@@14 Int) ) (!  (=> (and (and (<= 0 i@@14) (< i@@14 (|Seq#Length_2963| s@@30))) (= (|Seq#Index_2963| s@@30 i@@14) x@@4)) (|Seq#Contains_2963| s@@30 x@@4))
 :qid |stdinbpl.422:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2963| s@@30 x@@4) (|Seq#Index_2963| s@@30 i@@14))
)))
(assert (forall ((s0@@11 T@Seq_17407) (s1@@11 T@Seq_17407) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_17407| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_17407| s0@@11 s1@@11))) (not (= (|Seq#Length_6987| s0@@11) (|Seq#Length_6987| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_17407| s0@@11 s1@@11))) (= (|Seq#Length_6987| s0@@11) (|Seq#Length_6987| s1@@11))) (= (|Seq#SkolemDiff_17407| s0@@11 s1@@11) (|Seq#SkolemDiff_17407| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_17407| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_17407| s0@@11 s1@@11) (|Seq#Length_6987| s0@@11))) (not (= (|Seq#Index_6987| s0@@11 (|Seq#SkolemDiff_17407| s0@@11 s1@@11)) (|Seq#Index_6987| s1@@11 (|Seq#SkolemDiff_17407| s0@@11 s1@@11))))))
 :qid |stdinbpl.526:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_17407| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2963) (s1@@12 T@Seq_2963) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2963| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2963| s0@@12 s1@@12))) (not (= (|Seq#Length_2963| s0@@12) (|Seq#Length_2963| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2963| s0@@12 s1@@12))) (= (|Seq#Length_2963| s0@@12) (|Seq#Length_2963| s1@@12))) (= (|Seq#SkolemDiff_2963| s0@@12 s1@@12) (|Seq#SkolemDiff_2963| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2963| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2963| s0@@12 s1@@12) (|Seq#Length_2963| s0@@12))) (not (= (|Seq#Index_2963| s0@@12 (|Seq#SkolemDiff_2963| s0@@12 s1@@12)) (|Seq#Index_2963| s1@@12 (|Seq#SkolemDiff_2963| s0@@12 s1@@12))))))
 :qid |stdinbpl.526:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2963| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_18037_18038) (v_1@@1 T@FrameType) (q T@Field_18037_18038) (w@@1 T@FrameType) (r T@Field_18037_18038) (u T@FrameType) ) (!  (=> (and (InsidePredicate_18037_18037 p@@2 v_1@@1 q w@@1) (InsidePredicate_18037_18037 q w@@1 r u)) (InsidePredicate_18037_18037 p@@2 v_1@@1 r u))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18037_18037 p@@2 v_1@@1 q w@@1) (InsidePredicate_18037_18037 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_18037_18038) (v_1@@2 T@FrameType) (q@@0 T@Field_18037_18038) (w@@2 T@FrameType) (r@@0 T@Field_6986_7005) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_18037_18037 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_18037_11281 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_18037_11281 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18037_18037 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_18037_11281 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_18037_18038) (v_1@@3 T@FrameType) (q@@1 T@Field_6986_7005) (w@@3 T@FrameType) (r@@1 T@Field_18037_18038) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_18037_11281 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_11281_18037 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_18037_18037 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18037_11281 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_11281_18037 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_18037_18038) (v_1@@4 T@FrameType) (q@@2 T@Field_6986_7005) (w@@4 T@FrameType) (r@@2 T@Field_6986_7005) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_18037_11281 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_11281_11281 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_18037_11281 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18037_11281 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_11281_11281 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_6986_7005) (v_1@@5 T@FrameType) (q@@3 T@Field_18037_18038) (w@@5 T@FrameType) (r@@3 T@Field_18037_18038) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_11281_18037 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_18037_18037 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_11281_18037 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11281_18037 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_18037_18037 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_6986_7005) (v_1@@6 T@FrameType) (q@@4 T@Field_18037_18038) (w@@6 T@FrameType) (r@@4 T@Field_6986_7005) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_11281_18037 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_18037_11281 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_11281_11281 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11281_18037 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_18037_11281 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_6986_7005) (v_1@@7 T@FrameType) (q@@5 T@Field_6986_7005) (w@@7 T@FrameType) (r@@5 T@Field_18037_18038) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_11281_11281 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_11281_18037 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_11281_18037 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11281_11281 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_11281_18037 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_6986_7005) (v_1@@8 T@FrameType) (q@@6 T@Field_6986_7005) (w@@8 T@FrameType) (r@@6 T@Field_6986_7005) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_11281_11281 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_11281_11281 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_11281_11281 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11281_11281 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_11281_11281 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((s@@31 T@Seq_17407) ) (!  (=> (= (|Seq#Length_6987| s@@31) 0) (= s@@31 |Seq#Empty_6987|))
 :qid |stdinbpl.229:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_6987| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2963) ) (!  (=> (= (|Seq#Length_2963| s@@32) 0) (= s@@32 |Seq#Empty_2963|))
 :qid |stdinbpl.229:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2963| s@@32))
)))
(assert (forall ((s@@33 T@Seq_17407) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_6987| s@@33 n@@25) |Seq#Empty_6987|))
 :qid |stdinbpl.405:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_6987| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2963) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2963| s@@34 n@@26) |Seq#Empty_2963|))
 :qid |stdinbpl.405:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2963| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@1 () T@PolymorphicMapType_11221)
(declare-fun this@@7 () T@Ref)
(declare-fun i_5_1 () Int)
(declare-fun i_5 () Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_11242)
(declare-fun Mask@2 () T@PolymorphicMapType_11242)
(declare-fun Mask@1 () T@PolymorphicMapType_11242)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_11242)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun Heap@@44 () T@PolymorphicMapType_11221)
(declare-fun Heap@0 () T@PolymorphicMapType_11221)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@0 () T@PolymorphicMapType_11242)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_26960 (T@Seq_17407) T@FrameType)
(declare-fun FrameFragment_3528 (Int) T@FrameType)
(set-info :boogie-vc-id append)
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
 (=> (= (ControlFlow 0 0) 39) (let ((anon17_correct true))
(let ((anon27_Else_correct  (=> (<= (- (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1)) 1) i_5_1) (and (=> (= (ControlFlow 0 26) (- 0 27)) (= (select (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@1) (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_5_1) next) null)) (=> (= (select (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@1) (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_5_1) next) null) (=> (= (ControlFlow 0 26) 22) anon17_correct))))))
(let ((anon27_Then_correct  (=> (< i_5_1 (- (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1)) 1)) (and (=> (= (ControlFlow 0 24) (- 0 25)) (= (select (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@1) (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_5_1) next) (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) (+ i_5_1 1)))) (=> (= (select (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@1) (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_5_1) next) (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) (+ i_5_1 1))) (=> (= (ControlFlow 0 24) 22) anon17_correct))))))
(let ((anon26_Then_correct  (=> (and (<= 0 i_5_1) (< i_5_1 (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1)))) (and (=> (= (ControlFlow 0 28) 24) anon27_Then_correct) (=> (= (ControlFlow 0 28) 26) anon27_Else_correct)))))
(let ((anon26_Else_correct  (=> (and (not (and (<= 0 i_5_1) (< i_5_1 (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1))))) (= (ControlFlow 0 23) 22)) anon17_correct)))
(let ((anon11_correct true))
(let ((anon24_Else_correct  (=> (<= (- (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1)) 1) i_5) (and (=> (= (ControlFlow 0 12) (- 0 16)) (HasDirectPerm_6986_20381 QPMask@1 this@@7 nodes_1)) (=> (HasDirectPerm_6986_20381 QPMask@1 this@@7 nodes_1) (and (=> (= (ControlFlow 0 12) (- 0 15)) (>= i_5 0)) (=> (>= i_5 0) (and (=> (= (ControlFlow 0 12) (- 0 14)) (< i_5 (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1)))) (=> (< i_5 (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (HasDirectPerm_6981_6982 QPMask@1 (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_5) next)) (=> (HasDirectPerm_6981_6982 QPMask@1 (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_5) next) (=> (= (ControlFlow 0 12) 2) anon11_correct))))))))))))
(let ((anon24_Then_correct  (=> (< i_5 (- (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1)) 1)) (and (=> (= (ControlFlow 0 4) (- 0 11)) (HasDirectPerm_6986_20381 QPMask@1 this@@7 nodes_1)) (=> (HasDirectPerm_6986_20381 QPMask@1 this@@7 nodes_1) (and (=> (= (ControlFlow 0 4) (- 0 10)) (>= i_5 0)) (=> (>= i_5 0) (and (=> (= (ControlFlow 0 4) (- 0 9)) (< i_5 (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1)))) (=> (< i_5 (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1))) (and (=> (= (ControlFlow 0 4) (- 0 8)) (HasDirectPerm_6981_6982 QPMask@1 (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_5) next)) (=> (HasDirectPerm_6981_6982 QPMask@1 (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_5) next) (and (=> (= (ControlFlow 0 4) (- 0 7)) (HasDirectPerm_6986_20381 QPMask@1 this@@7 nodes_1)) (=> (HasDirectPerm_6986_20381 QPMask@1 this@@7 nodes_1) (and (=> (= (ControlFlow 0 4) (- 0 6)) (>= (+ i_5 1) 0)) (=> (>= (+ i_5 1) 0) (and (=> (= (ControlFlow 0 4) (- 0 5)) (< (+ i_5 1) (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1)))) (=> (< (+ i_5 1) (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1))) (=> (= (ControlFlow 0 4) 2) anon11_correct))))))))))))))))))
(let ((anon23_Then_correct  (=> (and (<= 0 i_5) (< i_5 (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1)))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (HasDirectPerm_6986_20381 QPMask@1 this@@7 nodes_1)) (=> (HasDirectPerm_6986_20381 QPMask@1 this@@7 nodes_1) (and (=> (= (ControlFlow 0 17) 4) anon24_Then_correct) (=> (= (ControlFlow 0 17) 12) anon24_Else_correct)))))))
(let ((anon23_Else_correct  (=> (and (not (and (<= 0 i_5) (< i_5 (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1))))) (= (ControlFlow 0 3) 2)) anon11_correct)))
(let ((anon22_Else_correct  (=> (< i_5 0) (and (=> (= (ControlFlow 0 21) 17) anon23_Then_correct) (=> (= (ControlFlow 0 21) 3) anon23_Else_correct)))))
(let ((anon22_Then_correct  (=> (<= 0 i_5) (and (=> (= (ControlFlow 0 19) (- 0 20)) (HasDirectPerm_6986_20381 QPMask@1 this@@7 nodes_1)) (=> (HasDirectPerm_6986_20381 QPMask@1 this@@7 nodes_1) (and (=> (= (ControlFlow 0 19) 17) anon23_Then_correct) (=> (= (ControlFlow 0 19) 3) anon23_Else_correct)))))))
(let ((anon25_Else_correct true))
(let ((anon4_correct  (=> (and (and (not (= this@@7 null)) (= Mask@2 (PolymorphicMapType_11242 (store (|PolymorphicMapType_11242_6986_20262#PolymorphicMapType_11242| Mask@1) this@@7 nodes_1 (+ (select (|PolymorphicMapType_11242_6986_20262#PolymorphicMapType_11242| Mask@1) this@@7 nodes_1) FullPerm)) (|PolymorphicMapType_11242_6984_3100#PolymorphicMapType_11242| Mask@1) (|PolymorphicMapType_11242_6981_6982#PolymorphicMapType_11242| Mask@1) (|PolymorphicMapType_11242_7004_7005#PolymorphicMapType_11242| Mask@1) (|PolymorphicMapType_11242_6986_7005#PolymorphicMapType_11242| Mask@1) (|PolymorphicMapType_11242_6986_53#PolymorphicMapType_11242| Mask@1) (|PolymorphicMapType_11242_6986_17471#PolymorphicMapType_11242| Mask@1) (|PolymorphicMapType_11242_6986_46737#PolymorphicMapType_11242| Mask@1) (|PolymorphicMapType_11242_7004_20262#PolymorphicMapType_11242| Mask@1) (|PolymorphicMapType_11242_7004_3100#PolymorphicMapType_11242| Mask@1) (|PolymorphicMapType_11242_7004_6982#PolymorphicMapType_11242| Mask@1) (|PolymorphicMapType_11242_7004_53#PolymorphicMapType_11242| Mask@1) (|PolymorphicMapType_11242_7004_17471#PolymorphicMapType_11242| Mask@1) (|PolymorphicMapType_11242_7004_47314#PolymorphicMapType_11242| Mask@1)))) (and (state Heap@1 Mask@2) (forall ((i@@15 Int) (j@@8 Int) ) (!  (=> (and (>= i@@15 0) (and (< i@@15 (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1))) (and (>= j@@8 0) (and (< j@@8 (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1))) (not (= i@@15 j@@8)))))) (not (= (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i@@15) (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) j@@8))))
 :qid |stdinbpl.953:20|
 :skolemid |84|
 :pattern ( (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i@@15) (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) j@@8))
)))) (and (=> (= (ControlFlow 0 29) (- 0 31)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (and (<= 0 i_1) (< i_1 (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1))))) (and (<= 0 i_1_1) (< i_1_1 (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_1) (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_1_1))))
 :qid |stdinbpl.959:15|
 :skolemid |85|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (and (<= 0 i_1@@0) (< i_1@@0 (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1))))) (and (<= 0 i_1_1@@0) (< i_1_1@@0 (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_1@@0) (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_1_1@@0))))
 :qid |stdinbpl.959:15|
 :skolemid |85|
)) (=> (and (and (forall ((i_1@@1 Int) ) (!  (=> (and (and (<= 0 i_1@@1) (< i_1@@1 (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1)))) (< NoPerm FullPerm)) (and (qpRange3 (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_1@@1)) (= (invRecv3 (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_1@@1)) i_1@@1)))
 :qid |stdinbpl.965:22|
 :skolemid |86|
 :pattern ( (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_1@@1))
 :pattern ( (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv3 o_9)) (< (invRecv3 o_9) (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1)))) (< NoPerm FullPerm)) (qpRange3 o_9)) (= (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) (invRecv3 o_9)) o_9))
 :qid |stdinbpl.969:22|
 :skolemid |87|
 :pattern ( (invRecv3 o_9))
))) (and (forall ((i_1@@2 Int) ) (!  (=> (and (<= 0 i_1@@2) (< i_1@@2 (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1)))) (not (= (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_1@@2) null)))
 :qid |stdinbpl.975:22|
 :skolemid |88|
 :pattern ( (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_1@@2))
 :pattern ( (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_1@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv3 o_9@@0)) (< (invRecv3 o_9@@0) (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1)))) (< NoPerm FullPerm)) (qpRange3 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) (invRecv3 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_11242_6984_3100#PolymorphicMapType_11242| QPMask@0) o_9@@0 val) (+ (select (|PolymorphicMapType_11242_6984_3100#PolymorphicMapType_11242| Mask@2) o_9@@0 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv3 o_9@@0)) (< (invRecv3 o_9@@0) (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1)))) (< NoPerm FullPerm)) (qpRange3 o_9@@0))) (= (select (|PolymorphicMapType_11242_6984_3100#PolymorphicMapType_11242| QPMask@0) o_9@@0 val) (select (|PolymorphicMapType_11242_6984_3100#PolymorphicMapType_11242| Mask@2) o_9@@0 val))))
 :qid |stdinbpl.981:22|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_11242_6984_3100#PolymorphicMapType_11242| QPMask@0) o_9@@0 val))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_11281_53) ) (!  (=> true (= (select (|PolymorphicMapType_11242_6986_53#PolymorphicMapType_11242| Mask@2) o_9@@1 f_5) (select (|PolymorphicMapType_11242_6986_53#PolymorphicMapType_11242| QPMask@0) o_9@@1 f_5)))
 :qid |stdinbpl.985:29|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_11242_6986_53#PolymorphicMapType_11242| Mask@2) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_11242_6986_53#PolymorphicMapType_11242| QPMask@0) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_11294_11295) ) (!  (=> true (= (select (|PolymorphicMapType_11242_6981_6982#PolymorphicMapType_11242| Mask@2) o_9@@2 f_5@@0) (select (|PolymorphicMapType_11242_6981_6982#PolymorphicMapType_11242| QPMask@0) o_9@@2 f_5@@0)))
 :qid |stdinbpl.985:29|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_11242_6981_6982#PolymorphicMapType_11242| Mask@2) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_11242_6981_6982#PolymorphicMapType_11242| QPMask@0) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_17357_3100) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_11242_6984_3100#PolymorphicMapType_11242| Mask@2) o_9@@3 f_5@@1) (select (|PolymorphicMapType_11242_6984_3100#PolymorphicMapType_11242| QPMask@0) o_9@@3 f_5@@1)))
 :qid |stdinbpl.985:29|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_11242_6984_3100#PolymorphicMapType_11242| Mask@2) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_11242_6984_3100#PolymorphicMapType_11242| QPMask@0) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_17404_17409) ) (!  (=> true (= (select (|PolymorphicMapType_11242_6986_20262#PolymorphicMapType_11242| Mask@2) o_9@@4 f_5@@2) (select (|PolymorphicMapType_11242_6986_20262#PolymorphicMapType_11242| QPMask@0) o_9@@4 f_5@@2)))
 :qid |stdinbpl.985:29|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_11242_6986_20262#PolymorphicMapType_11242| Mask@2) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_11242_6986_20262#PolymorphicMapType_11242| QPMask@0) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_17469_17471) ) (!  (=> true (= (select (|PolymorphicMapType_11242_6986_17471#PolymorphicMapType_11242| Mask@2) o_9@@5 f_5@@3) (select (|PolymorphicMapType_11242_6986_17471#PolymorphicMapType_11242| QPMask@0) o_9@@5 f_5@@3)))
 :qid |stdinbpl.985:29|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_11242_6986_17471#PolymorphicMapType_11242| Mask@2) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_11242_6986_17471#PolymorphicMapType_11242| QPMask@0) o_9@@5 f_5@@3))
))) (forall ((o_9@@6 T@Ref) (f_5@@4 T@Field_6986_7005) ) (!  (=> true (= (select (|PolymorphicMapType_11242_6986_7005#PolymorphicMapType_11242| Mask@2) o_9@@6 f_5@@4) (select (|PolymorphicMapType_11242_6986_7005#PolymorphicMapType_11242| QPMask@0) o_9@@6 f_5@@4)))
 :qid |stdinbpl.985:29|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_11242_6986_7005#PolymorphicMapType_11242| Mask@2) o_9@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_11242_6986_7005#PolymorphicMapType_11242| QPMask@0) o_9@@6 f_5@@4))
))) (forall ((o_9@@7 T@Ref) (f_5@@5 T@Field_6986_18055) ) (!  (=> true (= (select (|PolymorphicMapType_11242_6986_46737#PolymorphicMapType_11242| Mask@2) o_9@@7 f_5@@5) (select (|PolymorphicMapType_11242_6986_46737#PolymorphicMapType_11242| QPMask@0) o_9@@7 f_5@@5)))
 :qid |stdinbpl.985:29|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_11242_6986_46737#PolymorphicMapType_11242| Mask@2) o_9@@7 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_11242_6986_46737#PolymorphicMapType_11242| QPMask@0) o_9@@7 f_5@@5))
))) (forall ((o_9@@8 T@Ref) (f_5@@6 T@Field_7004_53) ) (!  (=> true (= (select (|PolymorphicMapType_11242_7004_53#PolymorphicMapType_11242| Mask@2) o_9@@8 f_5@@6) (select (|PolymorphicMapType_11242_7004_53#PolymorphicMapType_11242| QPMask@0) o_9@@8 f_5@@6)))
 :qid |stdinbpl.985:29|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_11242_7004_53#PolymorphicMapType_11242| Mask@2) o_9@@8 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_11242_7004_53#PolymorphicMapType_11242| QPMask@0) o_9@@8 f_5@@6))
))) (forall ((o_9@@9 T@Ref) (f_5@@7 T@Field_7004_6982) ) (!  (=> true (= (select (|PolymorphicMapType_11242_7004_6982#PolymorphicMapType_11242| Mask@2) o_9@@9 f_5@@7) (select (|PolymorphicMapType_11242_7004_6982#PolymorphicMapType_11242| QPMask@0) o_9@@9 f_5@@7)))
 :qid |stdinbpl.985:29|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_11242_7004_6982#PolymorphicMapType_11242| Mask@2) o_9@@9 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_11242_7004_6982#PolymorphicMapType_11242| QPMask@0) o_9@@9 f_5@@7))
))) (forall ((o_9@@10 T@Ref) (f_5@@8 T@Field_7004_3100) ) (!  (=> true (= (select (|PolymorphicMapType_11242_7004_3100#PolymorphicMapType_11242| Mask@2) o_9@@10 f_5@@8) (select (|PolymorphicMapType_11242_7004_3100#PolymorphicMapType_11242| QPMask@0) o_9@@10 f_5@@8)))
 :qid |stdinbpl.985:29|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_11242_7004_3100#PolymorphicMapType_11242| Mask@2) o_9@@10 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_11242_7004_3100#PolymorphicMapType_11242| QPMask@0) o_9@@10 f_5@@8))
))) (forall ((o_9@@11 T@Ref) (f_5@@9 T@Field_7004_20381) ) (!  (=> true (= (select (|PolymorphicMapType_11242_7004_20262#PolymorphicMapType_11242| Mask@2) o_9@@11 f_5@@9) (select (|PolymorphicMapType_11242_7004_20262#PolymorphicMapType_11242| QPMask@0) o_9@@11 f_5@@9)))
 :qid |stdinbpl.985:29|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_11242_7004_20262#PolymorphicMapType_11242| Mask@2) o_9@@11 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_11242_7004_20262#PolymorphicMapType_11242| QPMask@0) o_9@@11 f_5@@9))
))) (forall ((o_9@@12 T@Ref) (f_5@@10 T@Field_7004_17471) ) (!  (=> true (= (select (|PolymorphicMapType_11242_7004_17471#PolymorphicMapType_11242| Mask@2) o_9@@12 f_5@@10) (select (|PolymorphicMapType_11242_7004_17471#PolymorphicMapType_11242| QPMask@0) o_9@@12 f_5@@10)))
 :qid |stdinbpl.985:29|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_11242_7004_17471#PolymorphicMapType_11242| Mask@2) o_9@@12 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_11242_7004_17471#PolymorphicMapType_11242| QPMask@0) o_9@@12 f_5@@10))
))) (forall ((o_9@@13 T@Ref) (f_5@@11 T@Field_18037_18038) ) (!  (=> true (= (select (|PolymorphicMapType_11242_7004_7005#PolymorphicMapType_11242| Mask@2) o_9@@13 f_5@@11) (select (|PolymorphicMapType_11242_7004_7005#PolymorphicMapType_11242| QPMask@0) o_9@@13 f_5@@11)))
 :qid |stdinbpl.985:29|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_11242_7004_7005#PolymorphicMapType_11242| Mask@2) o_9@@13 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_11242_7004_7005#PolymorphicMapType_11242| QPMask@0) o_9@@13 f_5@@11))
))) (forall ((o_9@@14 T@Ref) (f_5@@12 T@Field_18050_18055) ) (!  (=> true (= (select (|PolymorphicMapType_11242_7004_47314#PolymorphicMapType_11242| Mask@2) o_9@@14 f_5@@12) (select (|PolymorphicMapType_11242_7004_47314#PolymorphicMapType_11242| QPMask@0) o_9@@14 f_5@@12)))
 :qid |stdinbpl.985:29|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_11242_7004_47314#PolymorphicMapType_11242| Mask@2) o_9@@14 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_11242_7004_47314#PolymorphicMapType_11242| QPMask@0) o_9@@14 f_5@@12))
))) (state Heap@1 QPMask@0)) (and (=> (= (ControlFlow 0 29) (- 0 30)) (forall ((i_2 Int) (i_2_2 Int) ) (!  (=> (and (and (and (and (not (= i_2 i_2_2)) (and (<= 0 i_2) (< i_2 (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1))))) (and (<= 0 i_2_2) (< i_2_2 (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_2) (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_2_2))))
 :qid |stdinbpl.993:15|
 :skolemid |91|
))) (=> (forall ((i_2@@0 Int) (i_2_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_2@@0 i_2_2@@0)) (and (<= 0 i_2@@0) (< i_2@@0 (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1))))) (and (<= 0 i_2_2@@0) (< i_2_2@@0 (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_2@@0) (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_2_2@@0))))
 :qid |stdinbpl.993:15|
 :skolemid |91|
)) (=> (and (and (forall ((i_2@@1 Int) ) (!  (=> (and (and (<= 0 i_2@@1) (< i_2@@1 (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1)))) (< NoPerm FullPerm)) (and (qpRange4 (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_2@@1)) (= (invRecv4 (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_2@@1)) i_2@@1)))
 :qid |stdinbpl.999:22|
 :skolemid |92|
 :pattern ( (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_2@@1))
 :pattern ( (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_2@@1))
)) (forall ((o_9@@15 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv4 o_9@@15)) (< (invRecv4 o_9@@15) (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1)))) (< NoPerm FullPerm)) (qpRange4 o_9@@15)) (= (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) (invRecv4 o_9@@15)) o_9@@15))
 :qid |stdinbpl.1003:22|
 :skolemid |93|
 :pattern ( (invRecv4 o_9@@15))
))) (and (forall ((i_2@@2 Int) ) (!  (=> (and (<= 0 i_2@@2) (< i_2@@2 (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1)))) (not (= (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_2@@2) null)))
 :qid |stdinbpl.1009:22|
 :skolemid |94|
 :pattern ( (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_2@@2))
 :pattern ( (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_2@@2))
)) (forall ((o_9@@16 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv4 o_9@@16)) (< (invRecv4 o_9@@16) (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1)))) (< NoPerm FullPerm)) (qpRange4 o_9@@16)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) (invRecv4 o_9@@16)) o_9@@16)) (= (select (|PolymorphicMapType_11242_6981_6982#PolymorphicMapType_11242| QPMask@1) o_9@@16 next) (+ (select (|PolymorphicMapType_11242_6981_6982#PolymorphicMapType_11242| QPMask@0) o_9@@16 next) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv4 o_9@@16)) (< (invRecv4 o_9@@16) (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1)))) (< NoPerm FullPerm)) (qpRange4 o_9@@16))) (= (select (|PolymorphicMapType_11242_6981_6982#PolymorphicMapType_11242| QPMask@1) o_9@@16 next) (select (|PolymorphicMapType_11242_6981_6982#PolymorphicMapType_11242| QPMask@0) o_9@@16 next))))
 :qid |stdinbpl.1015:22|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_11242_6981_6982#PolymorphicMapType_11242| QPMask@1) o_9@@16 next))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@17 T@Ref) (f_5@@13 T@Field_11281_53) ) (!  (=> true (= (select (|PolymorphicMapType_11242_6986_53#PolymorphicMapType_11242| QPMask@0) o_9@@17 f_5@@13) (select (|PolymorphicMapType_11242_6986_53#PolymorphicMapType_11242| QPMask@1) o_9@@17 f_5@@13)))
 :qid |stdinbpl.1019:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_11242_6986_53#PolymorphicMapType_11242| QPMask@0) o_9@@17 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_11242_6986_53#PolymorphicMapType_11242| QPMask@1) o_9@@17 f_5@@13))
)) (forall ((o_9@@18 T@Ref) (f_5@@14 T@Field_11294_11295) ) (!  (=> (not (= f_5@@14 next)) (= (select (|PolymorphicMapType_11242_6981_6982#PolymorphicMapType_11242| QPMask@0) o_9@@18 f_5@@14) (select (|PolymorphicMapType_11242_6981_6982#PolymorphicMapType_11242| QPMask@1) o_9@@18 f_5@@14)))
 :qid |stdinbpl.1019:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_11242_6981_6982#PolymorphicMapType_11242| QPMask@0) o_9@@18 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_11242_6981_6982#PolymorphicMapType_11242| QPMask@1) o_9@@18 f_5@@14))
))) (forall ((o_9@@19 T@Ref) (f_5@@15 T@Field_17357_3100) ) (!  (=> true (= (select (|PolymorphicMapType_11242_6984_3100#PolymorphicMapType_11242| QPMask@0) o_9@@19 f_5@@15) (select (|PolymorphicMapType_11242_6984_3100#PolymorphicMapType_11242| QPMask@1) o_9@@19 f_5@@15)))
 :qid |stdinbpl.1019:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_11242_6984_3100#PolymorphicMapType_11242| QPMask@0) o_9@@19 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_11242_6984_3100#PolymorphicMapType_11242| QPMask@1) o_9@@19 f_5@@15))
))) (forall ((o_9@@20 T@Ref) (f_5@@16 T@Field_17404_17409) ) (!  (=> true (= (select (|PolymorphicMapType_11242_6986_20262#PolymorphicMapType_11242| QPMask@0) o_9@@20 f_5@@16) (select (|PolymorphicMapType_11242_6986_20262#PolymorphicMapType_11242| QPMask@1) o_9@@20 f_5@@16)))
 :qid |stdinbpl.1019:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_11242_6986_20262#PolymorphicMapType_11242| QPMask@0) o_9@@20 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_11242_6986_20262#PolymorphicMapType_11242| QPMask@1) o_9@@20 f_5@@16))
))) (forall ((o_9@@21 T@Ref) (f_5@@17 T@Field_17469_17471) ) (!  (=> true (= (select (|PolymorphicMapType_11242_6986_17471#PolymorphicMapType_11242| QPMask@0) o_9@@21 f_5@@17) (select (|PolymorphicMapType_11242_6986_17471#PolymorphicMapType_11242| QPMask@1) o_9@@21 f_5@@17)))
 :qid |stdinbpl.1019:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_11242_6986_17471#PolymorphicMapType_11242| QPMask@0) o_9@@21 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_11242_6986_17471#PolymorphicMapType_11242| QPMask@1) o_9@@21 f_5@@17))
))) (forall ((o_9@@22 T@Ref) (f_5@@18 T@Field_6986_7005) ) (!  (=> true (= (select (|PolymorphicMapType_11242_6986_7005#PolymorphicMapType_11242| QPMask@0) o_9@@22 f_5@@18) (select (|PolymorphicMapType_11242_6986_7005#PolymorphicMapType_11242| QPMask@1) o_9@@22 f_5@@18)))
 :qid |stdinbpl.1019:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_11242_6986_7005#PolymorphicMapType_11242| QPMask@0) o_9@@22 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_11242_6986_7005#PolymorphicMapType_11242| QPMask@1) o_9@@22 f_5@@18))
))) (forall ((o_9@@23 T@Ref) (f_5@@19 T@Field_6986_18055) ) (!  (=> true (= (select (|PolymorphicMapType_11242_6986_46737#PolymorphicMapType_11242| QPMask@0) o_9@@23 f_5@@19) (select (|PolymorphicMapType_11242_6986_46737#PolymorphicMapType_11242| QPMask@1) o_9@@23 f_5@@19)))
 :qid |stdinbpl.1019:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_11242_6986_46737#PolymorphicMapType_11242| QPMask@0) o_9@@23 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_11242_6986_46737#PolymorphicMapType_11242| QPMask@1) o_9@@23 f_5@@19))
))) (forall ((o_9@@24 T@Ref) (f_5@@20 T@Field_7004_53) ) (!  (=> true (= (select (|PolymorphicMapType_11242_7004_53#PolymorphicMapType_11242| QPMask@0) o_9@@24 f_5@@20) (select (|PolymorphicMapType_11242_7004_53#PolymorphicMapType_11242| QPMask@1) o_9@@24 f_5@@20)))
 :qid |stdinbpl.1019:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_11242_7004_53#PolymorphicMapType_11242| QPMask@0) o_9@@24 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_11242_7004_53#PolymorphicMapType_11242| QPMask@1) o_9@@24 f_5@@20))
))) (forall ((o_9@@25 T@Ref) (f_5@@21 T@Field_7004_6982) ) (!  (=> true (= (select (|PolymorphicMapType_11242_7004_6982#PolymorphicMapType_11242| QPMask@0) o_9@@25 f_5@@21) (select (|PolymorphicMapType_11242_7004_6982#PolymorphicMapType_11242| QPMask@1) o_9@@25 f_5@@21)))
 :qid |stdinbpl.1019:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_11242_7004_6982#PolymorphicMapType_11242| QPMask@0) o_9@@25 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_11242_7004_6982#PolymorphicMapType_11242| QPMask@1) o_9@@25 f_5@@21))
))) (forall ((o_9@@26 T@Ref) (f_5@@22 T@Field_7004_3100) ) (!  (=> true (= (select (|PolymorphicMapType_11242_7004_3100#PolymorphicMapType_11242| QPMask@0) o_9@@26 f_5@@22) (select (|PolymorphicMapType_11242_7004_3100#PolymorphicMapType_11242| QPMask@1) o_9@@26 f_5@@22)))
 :qid |stdinbpl.1019:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_11242_7004_3100#PolymorphicMapType_11242| QPMask@0) o_9@@26 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_11242_7004_3100#PolymorphicMapType_11242| QPMask@1) o_9@@26 f_5@@22))
))) (forall ((o_9@@27 T@Ref) (f_5@@23 T@Field_7004_20381) ) (!  (=> true (= (select (|PolymorphicMapType_11242_7004_20262#PolymorphicMapType_11242| QPMask@0) o_9@@27 f_5@@23) (select (|PolymorphicMapType_11242_7004_20262#PolymorphicMapType_11242| QPMask@1) o_9@@27 f_5@@23)))
 :qid |stdinbpl.1019:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_11242_7004_20262#PolymorphicMapType_11242| QPMask@0) o_9@@27 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_11242_7004_20262#PolymorphicMapType_11242| QPMask@1) o_9@@27 f_5@@23))
))) (forall ((o_9@@28 T@Ref) (f_5@@24 T@Field_7004_17471) ) (!  (=> true (= (select (|PolymorphicMapType_11242_7004_17471#PolymorphicMapType_11242| QPMask@0) o_9@@28 f_5@@24) (select (|PolymorphicMapType_11242_7004_17471#PolymorphicMapType_11242| QPMask@1) o_9@@28 f_5@@24)))
 :qid |stdinbpl.1019:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_11242_7004_17471#PolymorphicMapType_11242| QPMask@0) o_9@@28 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_11242_7004_17471#PolymorphicMapType_11242| QPMask@1) o_9@@28 f_5@@24))
))) (forall ((o_9@@29 T@Ref) (f_5@@25 T@Field_18037_18038) ) (!  (=> true (= (select (|PolymorphicMapType_11242_7004_7005#PolymorphicMapType_11242| QPMask@0) o_9@@29 f_5@@25) (select (|PolymorphicMapType_11242_7004_7005#PolymorphicMapType_11242| QPMask@1) o_9@@29 f_5@@25)))
 :qid |stdinbpl.1019:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_11242_7004_7005#PolymorphicMapType_11242| QPMask@0) o_9@@29 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_11242_7004_7005#PolymorphicMapType_11242| QPMask@1) o_9@@29 f_5@@25))
))) (forall ((o_9@@30 T@Ref) (f_5@@26 T@Field_18050_18055) ) (!  (=> true (= (select (|PolymorphicMapType_11242_7004_47314#PolymorphicMapType_11242| QPMask@0) o_9@@30 f_5@@26) (select (|PolymorphicMapType_11242_7004_47314#PolymorphicMapType_11242| QPMask@1) o_9@@30 f_5@@26)))
 :qid |stdinbpl.1019:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_11242_7004_47314#PolymorphicMapType_11242| QPMask@0) o_9@@30 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_11242_7004_47314#PolymorphicMapType_11242| QPMask@1) o_9@@30 f_5@@26))
))) (and (and (state Heap@1 QPMask@1) (forall ((i_3_2 Int) ) (!  (=> (and (<= 0 i_3_2) (< i_3_2 (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1)))) (ite (< i_3_2 (- (|Seq#Length_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1)) 1)) (= (select (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@1) (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_3_2) next) (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) (+ i_3_2 1))) (= (select (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@1) (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_3_2) next) null)))
 :qid |stdinbpl.1025:20|
 :skolemid |97|
 :pattern ( (|Seq#Index_6987| (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@1) this@@7 nodes_1) i_3_2))
))) (and (state Heap@1 QPMask@1) (state Heap@1 QPMask@1)))) (and (and (and (and (=> (= (ControlFlow 0 29) 1) anon25_Else_correct) (=> (= (ControlFlow 0 29) 28) anon26_Then_correct)) (=> (= (ControlFlow 0 29) 23) anon26_Else_correct)) (=> (= (ControlFlow 0 29) 19) anon22_Then_correct)) (=> (= (ControlFlow 0 29) 21) anon22_Else_correct)))))))))))))
(let ((anon20_Else_correct  (=> (HasDirectPerm_7004_7005 Mask@1 null (List this@@7)) (=> (and (= Heap@1 Heap@@44) (= (ControlFlow 0 33) 29)) anon4_correct))))
(let ((anon20_Then_correct  (=> (and (and (not (HasDirectPerm_7004_7005 Mask@1 null (List this@@7))) (= Heap@0 (PolymorphicMapType_11221 (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@44) (|PolymorphicMapType_11221_6788_6789#PolymorphicMapType_11221| Heap@@44) (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@44) (|PolymorphicMapType_11221_6984_3100#PolymorphicMapType_11221| Heap@@44) (store (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@44) null (List this@@7) newVersion@0) (|PolymorphicMapType_11221_6986_7005#PolymorphicMapType_11221| Heap@@44) (|PolymorphicMapType_11221_6986_17471#PolymorphicMapType_11221| Heap@@44) (|PolymorphicMapType_11221_6986_34814#PolymorphicMapType_11221| Heap@@44) (|PolymorphicMapType_11221_7004_20381#PolymorphicMapType_11221| Heap@@44) (|PolymorphicMapType_11221_7004_6982#PolymorphicMapType_11221| Heap@@44) (|PolymorphicMapType_11221_7004_53#PolymorphicMapType_11221| Heap@@44) (|PolymorphicMapType_11221_7004_3100#PolymorphicMapType_11221| Heap@@44) (|PolymorphicMapType_11221_7004_17471#PolymorphicMapType_11221| Heap@@44) (|PolymorphicMapType_11221_7004_36413#PolymorphicMapType_11221| Heap@@44)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 32) 29))) anon4_correct)))
(let ((anon2_correct  (=> (= Mask@1 (PolymorphicMapType_11242 (|PolymorphicMapType_11242_6986_20262#PolymorphicMapType_11242| Mask@0) (|PolymorphicMapType_11242_6984_3100#PolymorphicMapType_11242| Mask@0) (|PolymorphicMapType_11242_6981_6982#PolymorphicMapType_11242| Mask@0) (store (|PolymorphicMapType_11242_7004_7005#PolymorphicMapType_11242| Mask@0) null (List this@@7) (- (select (|PolymorphicMapType_11242_7004_7005#PolymorphicMapType_11242| Mask@0) null (List this@@7)) FullPerm)) (|PolymorphicMapType_11242_6986_7005#PolymorphicMapType_11242| Mask@0) (|PolymorphicMapType_11242_6986_53#PolymorphicMapType_11242| Mask@0) (|PolymorphicMapType_11242_6986_17471#PolymorphicMapType_11242| Mask@0) (|PolymorphicMapType_11242_6986_46737#PolymorphicMapType_11242| Mask@0) (|PolymorphicMapType_11242_7004_20262#PolymorphicMapType_11242| Mask@0) (|PolymorphicMapType_11242_7004_3100#PolymorphicMapType_11242| Mask@0) (|PolymorphicMapType_11242_7004_6982#PolymorphicMapType_11242| Mask@0) (|PolymorphicMapType_11242_7004_53#PolymorphicMapType_11242| Mask@0) (|PolymorphicMapType_11242_7004_17471#PolymorphicMapType_11242| Mask@0) (|PolymorphicMapType_11242_7004_47314#PolymorphicMapType_11242| Mask@0))) (and (=> (= (ControlFlow 0 34) 32) anon20_Then_correct) (=> (= (ControlFlow 0 34) 33) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 37) 34)) anon2_correct)))
(let ((anon19_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 35) (- 0 36)) (<= FullPerm (select (|PolymorphicMapType_11242_7004_7005#PolymorphicMapType_11242| Mask@0) null (List this@@7)))) (=> (<= FullPerm (select (|PolymorphicMapType_11242_7004_7005#PolymorphicMapType_11242| Mask@0) null (List this@@7))) (=> (= (ControlFlow 0 35) 34) anon2_correct))))))
(let ((anon0_correct  (=> (state Heap@@44 ZeroMask) (=> (and (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (select (|PolymorphicMapType_11221_6785_53#PolymorphicMapType_11221| Heap@@44) this@@7 $allocated) (= Mask@0 (PolymorphicMapType_11242 (|PolymorphicMapType_11242_6986_20262#PolymorphicMapType_11242| ZeroMask) (|PolymorphicMapType_11242_6984_3100#PolymorphicMapType_11242| ZeroMask) (|PolymorphicMapType_11242_6981_6982#PolymorphicMapType_11242| ZeroMask) (store (|PolymorphicMapType_11242_7004_7005#PolymorphicMapType_11242| ZeroMask) null (List this@@7) (+ (select (|PolymorphicMapType_11242_7004_7005#PolymorphicMapType_11242| ZeroMask) null (List this@@7)) FullPerm)) (|PolymorphicMapType_11242_6986_7005#PolymorphicMapType_11242| ZeroMask) (|PolymorphicMapType_11242_6986_53#PolymorphicMapType_11242| ZeroMask) (|PolymorphicMapType_11242_6986_17471#PolymorphicMapType_11242| ZeroMask) (|PolymorphicMapType_11242_6986_46737#PolymorphicMapType_11242| ZeroMask) (|PolymorphicMapType_11242_7004_20262#PolymorphicMapType_11242| ZeroMask) (|PolymorphicMapType_11242_7004_3100#PolymorphicMapType_11242| ZeroMask) (|PolymorphicMapType_11242_7004_6982#PolymorphicMapType_11242| ZeroMask) (|PolymorphicMapType_11242_7004_53#PolymorphicMapType_11242| ZeroMask) (|PolymorphicMapType_11242_7004_17471#PolymorphicMapType_11242| ZeroMask) (|PolymorphicMapType_11242_7004_47314#PolymorphicMapType_11242| ZeroMask))))) (and (and (state Heap@@44 Mask@0) (state Heap@@44 Mask@0)) (and (|List#trigger_7004| Heap@@44 (List this@@7)) (= (select (|PolymorphicMapType_11221_7004_7005#PolymorphicMapType_11221| Heap@@44) null (List this@@7)) (CombineFrames (FrameFragment_26960 (select (|PolymorphicMapType_11221_6986_18712#PolymorphicMapType_11221| Heap@@44) this@@7 nodes_1)) (CombineFrames (FrameFragment_3528 (|List#condqp1| Heap@@44 this@@7)) (FrameFragment_3528 (|List#condqp2| Heap@@44 this@@7)))))))) (and (=> (= (ControlFlow 0 38) 35) anon19_Then_correct) (=> (= (ControlFlow 0 38) 37) anon19_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 39) 38) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
