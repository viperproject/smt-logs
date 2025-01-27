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
(declare-sort T@Field_7688_53 0)
(declare-sort T@Field_7701_7702 0)
(declare-sort T@Field_13709_3034 0)
(declare-sort T@Field_13786_13787 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_13799_13804 0)
(declare-sort T@Field_4857_4863 0)
(declare-sort T@Field_4857_13804 0)
(declare-sort T@Field_4862_3034 0)
(declare-sort T@Field_4862_53 0)
(declare-sort T@Field_4862_7702 0)
(declare-datatypes ((T@PolymorphicMapType_7649 0)) (((PolymorphicMapType_7649 (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| (Array T@Ref T@Field_13709_3034 Real)) (|PolymorphicMapType_7649_4862_4863#PolymorphicMapType_7649| (Array T@Ref T@Field_13786_13787 Real)) (|PolymorphicMapType_7649_4857_4863#PolymorphicMapType_7649| (Array T@Ref T@Field_4857_4863 Real)) (|PolymorphicMapType_7649_4857_53#PolymorphicMapType_7649| (Array T@Ref T@Field_7688_53 Real)) (|PolymorphicMapType_7649_4857_7702#PolymorphicMapType_7649| (Array T@Ref T@Field_7701_7702 Real)) (|PolymorphicMapType_7649_4857_30729#PolymorphicMapType_7649| (Array T@Ref T@Field_4857_13804 Real)) (|PolymorphicMapType_7649_4862_3034#PolymorphicMapType_7649| (Array T@Ref T@Field_4862_3034 Real)) (|PolymorphicMapType_7649_4862_53#PolymorphicMapType_7649| (Array T@Ref T@Field_4862_53 Real)) (|PolymorphicMapType_7649_4862_7702#PolymorphicMapType_7649| (Array T@Ref T@Field_4862_7702 Real)) (|PolymorphicMapType_7649_4862_31140#PolymorphicMapType_7649| (Array T@Ref T@Field_13799_13804 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8177 0)) (((PolymorphicMapType_8177 (|PolymorphicMapType_8177_4857_3034#PolymorphicMapType_8177| (Array T@Ref T@Field_13709_3034 Bool)) (|PolymorphicMapType_8177_4857_53#PolymorphicMapType_8177| (Array T@Ref T@Field_7688_53 Bool)) (|PolymorphicMapType_8177_4857_7702#PolymorphicMapType_8177| (Array T@Ref T@Field_7701_7702 Bool)) (|PolymorphicMapType_8177_4857_13787#PolymorphicMapType_8177| (Array T@Ref T@Field_4857_4863 Bool)) (|PolymorphicMapType_8177_4857_24287#PolymorphicMapType_8177| (Array T@Ref T@Field_4857_13804 Bool)) (|PolymorphicMapType_8177_13786_3034#PolymorphicMapType_8177| (Array T@Ref T@Field_4862_3034 Bool)) (|PolymorphicMapType_8177_13786_53#PolymorphicMapType_8177| (Array T@Ref T@Field_4862_53 Bool)) (|PolymorphicMapType_8177_13786_7702#PolymorphicMapType_8177| (Array T@Ref T@Field_4862_7702 Bool)) (|PolymorphicMapType_8177_13786_13787#PolymorphicMapType_8177| (Array T@Ref T@Field_13786_13787 Bool)) (|PolymorphicMapType_8177_13786_25335#PolymorphicMapType_8177| (Array T@Ref T@Field_13799_13804 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7628 0)) (((PolymorphicMapType_7628 (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| (Array T@Ref T@Field_7688_53 Bool)) (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| (Array T@Ref T@Field_7701_7702 T@Ref)) (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| (Array T@Ref T@Field_13709_3034 Int)) (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| (Array T@Ref T@Field_13786_13787 T@FrameType)) (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| (Array T@Ref T@Field_13799_13804 T@PolymorphicMapType_8177)) (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| (Array T@Ref T@Field_4857_4863 T@FrameType)) (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| (Array T@Ref T@Field_4857_13804 T@PolymorphicMapType_8177)) (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| (Array T@Ref T@Field_4862_3034 Int)) (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| (Array T@Ref T@Field_4862_53 Bool)) (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| (Array T@Ref T@Field_4862_7702 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_7688_53)
(declare-fun f_7 () T@Field_13709_3034)
(declare-fun g () T@Field_13709_3034)
(declare-sort T@Seq_14705 0)
(declare-fun |Seq#Length_4890| (T@Seq_14705) Int)
(declare-fun |Seq#Drop_4890| (T@Seq_14705 Int) T@Seq_14705)
(declare-sort T@Seq_2912 0)
(declare-fun |Seq#Length_2912| (T@Seq_2912) Int)
(declare-fun |Seq#Drop_2912| (T@Seq_2912 Int) T@Seq_2912)
(declare-fun succHeap (T@PolymorphicMapType_7628 T@PolymorphicMapType_7628) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7628 T@PolymorphicMapType_7628) Bool)
(declare-fun state (T@PolymorphicMapType_7628 T@PolymorphicMapType_7649) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7649) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8177)
(declare-fun |Seq#Index_4890| (T@Seq_14705 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2912| (T@Seq_2912 Int) Int)
(declare-fun |Seq#Empty_4890| () T@Seq_14705)
(declare-fun |Seq#Empty_2912| () T@Seq_2912)
(declare-fun P (T@Ref) T@Field_13786_13787)
(declare-fun IsPredicateField_4862_4863 (T@Field_13786_13787) Bool)
(declare-fun |P#trigger_4862| (T@PolymorphicMapType_7628 T@Field_13786_13787) Bool)
(declare-fun |P#everUsed_4862| (T@Field_13786_13787) Bool)
(declare-fun |Seq#Update_4890| (T@Seq_14705 Int T@Ref) T@Seq_14705)
(declare-fun |Seq#Update_2912| (T@Seq_2912 Int Int) T@Seq_2912)
(declare-fun |Seq#Take_4890| (T@Seq_14705 Int) T@Seq_14705)
(declare-fun |Seq#Take_2912| (T@Seq_2912 Int) T@Seq_2912)
(declare-fun |Seq#Contains_2912| (T@Seq_2912 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2912)
(declare-fun |Seq#Contains_14705| (T@Seq_14705 T@Ref) Bool)
(declare-fun |Seq#Skolem_14705| (T@Seq_14705 T@Ref) Int)
(declare-fun |Seq#Skolem_2912| (T@Seq_2912 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7628 T@PolymorphicMapType_7628 T@PolymorphicMapType_7649) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4862 (T@Field_13786_13787) T@Field_13799_13804)
(declare-fun HasDirectPerm_4862_4863 (T@PolymorphicMapType_7649 T@Ref T@Field_13786_13787) Bool)
(declare-fun IsPredicateField_4857_22815 (T@Field_4857_4863) Bool)
(declare-fun PredicateMaskField_4857 (T@Field_4857_4863) T@Field_4857_13804)
(declare-fun HasDirectPerm_4857_4863 (T@PolymorphicMapType_7649 T@Ref T@Field_4857_4863) Bool)
(declare-fun IsWandField_4862_26500 (T@Field_13786_13787) Bool)
(declare-fun WandMaskField_4862 (T@Field_13786_13787) T@Field_13799_13804)
(declare-fun IsWandField_4857_26143 (T@Field_4857_4863) Bool)
(declare-fun WandMaskField_4857 (T@Field_4857_4863) T@Field_4857_13804)
(declare-fun |Seq#Singleton_4890| (T@Ref) T@Seq_14705)
(declare-fun |Seq#Singleton_2912| (Int) T@Seq_2912)
(declare-fun |P#sm| (T@Ref) T@Field_13799_13804)
(declare-fun |Seq#Append_14705| (T@Seq_14705 T@Seq_14705) T@Seq_14705)
(declare-fun |Seq#Append_2912| (T@Seq_2912 T@Seq_2912) T@Seq_2912)
(declare-fun dummyHeap () T@PolymorphicMapType_7628)
(declare-fun ZeroMask () T@PolymorphicMapType_7649)
(declare-fun InsidePredicate_13786_13786 (T@Field_13786_13787 T@FrameType T@Field_13786_13787 T@FrameType) Bool)
(declare-fun InsidePredicate_7688_7688 (T@Field_4857_4863 T@FrameType T@Field_4857_4863 T@FrameType) Bool)
(declare-fun IsPredicateField_4857_3034 (T@Field_13709_3034) Bool)
(declare-fun IsWandField_4857_3034 (T@Field_13709_3034) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4862_33432 (T@Field_13799_13804) Bool)
(declare-fun IsWandField_4862_33448 (T@Field_13799_13804) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4862_7702 (T@Field_4862_7702) Bool)
(declare-fun IsWandField_4862_7702 (T@Field_4862_7702) Bool)
(declare-fun IsPredicateField_4862_53 (T@Field_4862_53) Bool)
(declare-fun IsWandField_4862_53 (T@Field_4862_53) Bool)
(declare-fun IsPredicateField_4862_3034 (T@Field_4862_3034) Bool)
(declare-fun IsWandField_4862_3034 (T@Field_4862_3034) Bool)
(declare-fun IsPredicateField_4857_32601 (T@Field_4857_13804) Bool)
(declare-fun IsWandField_4857_32617 (T@Field_4857_13804) Bool)
(declare-fun IsPredicateField_4857_7702 (T@Field_7701_7702) Bool)
(declare-fun IsWandField_4857_7702 (T@Field_7701_7702) Bool)
(declare-fun IsPredicateField_4857_53 (T@Field_7688_53) Bool)
(declare-fun IsWandField_4857_53 (T@Field_7688_53) Bool)
(declare-fun HasDirectPerm_4862_22570 (T@PolymorphicMapType_7649 T@Ref T@Field_13799_13804) Bool)
(declare-fun HasDirectPerm_4862_7702 (T@PolymorphicMapType_7649 T@Ref T@Field_4862_7702) Bool)
(declare-fun HasDirectPerm_4862_53 (T@PolymorphicMapType_7649 T@Ref T@Field_4862_53) Bool)
(declare-fun HasDirectPerm_4862_3034 (T@PolymorphicMapType_7649 T@Ref T@Field_4862_3034) Bool)
(declare-fun HasDirectPerm_4857_21429 (T@PolymorphicMapType_7649 T@Ref T@Field_4857_13804) Bool)
(declare-fun HasDirectPerm_4857_7702 (T@PolymorphicMapType_7649 T@Ref T@Field_7701_7702) Bool)
(declare-fun HasDirectPerm_4857_53 (T@PolymorphicMapType_7649 T@Ref T@Field_7688_53) Bool)
(declare-fun HasDirectPerm_4857_3034 (T@PolymorphicMapType_7649 T@Ref T@Field_13709_3034) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7649 T@PolymorphicMapType_7649 T@PolymorphicMapType_7649) Bool)
(declare-fun |Seq#Equal_14705| (T@Seq_14705 T@Seq_14705) Bool)
(declare-fun |Seq#Equal_2912| (T@Seq_2912 T@Seq_2912) Bool)
(declare-fun |Seq#ContainsTrigger_4890| (T@Seq_14705 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2912| (T@Seq_2912 Int) Bool)
(declare-fun getPredWandId_4862_4863 (T@Field_13786_13787) Int)
(declare-fun |Seq#SkolemDiff_14705| (T@Seq_14705 T@Seq_14705) Int)
(declare-fun |Seq#SkolemDiff_2912| (T@Seq_2912 T@Seq_2912) Int)
(declare-fun InsidePredicate_13786_7688 (T@Field_13786_13787 T@FrameType T@Field_4857_4863 T@FrameType) Bool)
(declare-fun InsidePredicate_7688_13786 (T@Field_4857_4863 T@FrameType T@Field_13786_13787 T@FrameType) Bool)
(assert (distinct f_7 g)
)
(assert (forall ((s T@Seq_14705) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_4890| s)) (= (|Seq#Length_4890| (|Seq#Drop_4890| s n)) (- (|Seq#Length_4890| s) n))) (=> (< (|Seq#Length_4890| s) n) (= (|Seq#Length_4890| (|Seq#Drop_4890| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_4890| (|Seq#Drop_4890| s n)) (|Seq#Length_4890| s))))
 :qid |stdinbpl.291:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_4890| (|Seq#Drop_4890| s n)))
 :pattern ( (|Seq#Length_4890| s) (|Seq#Drop_4890| s n))
)))
(assert (forall ((s@@0 T@Seq_2912) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2912| s@@0)) (= (|Seq#Length_2912| (|Seq#Drop_2912| s@@0 n@@0)) (- (|Seq#Length_2912| s@@0) n@@0))) (=> (< (|Seq#Length_2912| s@@0) n@@0) (= (|Seq#Length_2912| (|Seq#Drop_2912| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2912| (|Seq#Drop_2912| s@@0 n@@0)) (|Seq#Length_2912| s@@0))))
 :qid |stdinbpl.291:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2912| (|Seq#Drop_2912| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2912| s@@0) (|Seq#Drop_2912| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_7628) (Heap1 T@PolymorphicMapType_7628) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7628) (Mask T@PolymorphicMapType_7649) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7628) (Heap1@@0 T@PolymorphicMapType_7628) (Heap2 T@PolymorphicMapType_7628) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_13799_13804) ) (!  (not (select (|PolymorphicMapType_8177_13786_25335#PolymorphicMapType_8177| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8177_13786_25335#PolymorphicMapType_8177| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_13786_13787) ) (!  (not (select (|PolymorphicMapType_8177_13786_13787#PolymorphicMapType_8177| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8177_13786_13787#PolymorphicMapType_8177| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_4862_7702) ) (!  (not (select (|PolymorphicMapType_8177_13786_7702#PolymorphicMapType_8177| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8177_13786_7702#PolymorphicMapType_8177| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4862_53) ) (!  (not (select (|PolymorphicMapType_8177_13786_53#PolymorphicMapType_8177| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8177_13786_53#PolymorphicMapType_8177| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_4862_3034) ) (!  (not (select (|PolymorphicMapType_8177_13786_3034#PolymorphicMapType_8177| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8177_13786_3034#PolymorphicMapType_8177| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_4857_13804) ) (!  (not (select (|PolymorphicMapType_8177_4857_24287#PolymorphicMapType_8177| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8177_4857_24287#PolymorphicMapType_8177| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_4857_4863) ) (!  (not (select (|PolymorphicMapType_8177_4857_13787#PolymorphicMapType_8177| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8177_4857_13787#PolymorphicMapType_8177| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_7701_7702) ) (!  (not (select (|PolymorphicMapType_8177_4857_7702#PolymorphicMapType_8177| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8177_4857_7702#PolymorphicMapType_8177| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_7688_53) ) (!  (not (select (|PolymorphicMapType_8177_4857_53#PolymorphicMapType_8177| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8177_4857_53#PolymorphicMapType_8177| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_13709_3034) ) (!  (not (select (|PolymorphicMapType_8177_4857_3034#PolymorphicMapType_8177| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8177_4857_3034#PolymorphicMapType_8177| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((s@@1 T@Seq_14705) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_4890| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_4890| (|Seq#Drop_4890| s@@1 n@@1) j) (|Seq#Index_4890| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.312:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_4890| (|Seq#Drop_4890| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2912) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2912| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2912| (|Seq#Drop_2912| s@@2 n@@2) j@@0) (|Seq#Index_2912| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.312:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2912| (|Seq#Drop_2912| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_4890| |Seq#Empty_4890|) 0))
(assert (= (|Seq#Length_2912| |Seq#Empty_2912|) 0))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_4862_4863 (P x))
 :qid |stdinbpl.580:15|
 :skolemid |59|
 :pattern ( (P x))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7628) (x@@0 T@Ref) ) (! (|P#everUsed_4862| (P x@@0))
 :qid |stdinbpl.599:15|
 :skolemid |63|
 :pattern ( (|P#trigger_4862| Heap@@0 (P x@@0)))
)))
(assert (forall ((s@@3 T@Seq_14705) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_4890| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_4890| (|Seq#Update_4890| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_4890| (|Seq#Update_4890| s@@3 i v) n@@3) (|Seq#Index_4890| s@@3 n@@3)))))
 :qid |stdinbpl.267:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_4890| (|Seq#Update_4890| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_4890| s@@3 n@@3) (|Seq#Update_4890| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_2912) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2912| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_2912| (|Seq#Update_2912| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_2912| (|Seq#Update_2912| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_2912| s@@4 n@@4)))))
 :qid |stdinbpl.267:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2912| (|Seq#Update_2912| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_2912| s@@4 n@@4) (|Seq#Update_2912| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_14705) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_4890| s@@5)) (= (|Seq#Length_4890| (|Seq#Take_4890| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_4890| s@@5) n@@5) (= (|Seq#Length_4890| (|Seq#Take_4890| s@@5 n@@5)) (|Seq#Length_4890| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_4890| (|Seq#Take_4890| s@@5 n@@5)) 0)))
 :qid |stdinbpl.278:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_4890| (|Seq#Take_4890| s@@5 n@@5)))
 :pattern ( (|Seq#Take_4890| s@@5 n@@5) (|Seq#Length_4890| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2912) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2912| s@@6)) (= (|Seq#Length_2912| (|Seq#Take_2912| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2912| s@@6) n@@6) (= (|Seq#Length_2912| (|Seq#Take_2912| s@@6 n@@6)) (|Seq#Length_2912| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2912| (|Seq#Take_2912| s@@6 n@@6)) 0)))
 :qid |stdinbpl.278:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2912| (|Seq#Take_2912| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2912| s@@6 n@@6) (|Seq#Length_2912| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2912| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.552:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2912| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_14705) (x@@1 T@Ref) ) (!  (=> (|Seq#Contains_14705| s@@7 x@@1) (and (and (<= 0 (|Seq#Skolem_14705| s@@7 x@@1)) (< (|Seq#Skolem_14705| s@@7 x@@1) (|Seq#Length_4890| s@@7))) (= (|Seq#Index_4890| s@@7 (|Seq#Skolem_14705| s@@7 x@@1)) x@@1)))
 :qid |stdinbpl.410:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_14705| s@@7 x@@1))
)))
(assert (forall ((s@@8 T@Seq_2912) (x@@2 Int) ) (!  (=> (|Seq#Contains_2912| s@@8 x@@2) (and (and (<= 0 (|Seq#Skolem_2912| s@@8 x@@2)) (< (|Seq#Skolem_2912| s@@8 x@@2) (|Seq#Length_2912| s@@8))) (= (|Seq#Index_2912| s@@8 (|Seq#Skolem_2912| s@@8 x@@2)) x@@2)))
 :qid |stdinbpl.410:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2912| s@@8 x@@2))
)))
(assert (forall ((s@@9 T@Seq_14705) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_4890| s@@9 n@@7) s@@9))
 :qid |stdinbpl.394:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_4890| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2912) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2912| s@@10 n@@8) s@@10))
 :qid |stdinbpl.394:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2912| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.247:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.245:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7628) (ExhaleHeap T@PolymorphicMapType_7628) (Mask@@0 T@PolymorphicMapType_7649) (pm_f_32 T@Field_13786_13787) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4862_4863 Mask@@0 null pm_f_32) (IsPredicateField_4862_4863 pm_f_32)) (= (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@1) null (PredicateMaskField_4862 pm_f_32)) (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| ExhaleHeap) null (PredicateMaskField_4862 pm_f_32)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_4862_4863 pm_f_32) (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| ExhaleHeap) null (PredicateMaskField_4862 pm_f_32)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7628) (ExhaleHeap@@0 T@PolymorphicMapType_7628) (Mask@@1 T@PolymorphicMapType_7649) (pm_f_32@@0 T@Field_4857_4863) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4857_4863 Mask@@1 null pm_f_32@@0) (IsPredicateField_4857_22815 pm_f_32@@0)) (= (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@2) null (PredicateMaskField_4857 pm_f_32@@0)) (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| ExhaleHeap@@0) null (PredicateMaskField_4857 pm_f_32@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_4857_22815 pm_f_32@@0) (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| ExhaleHeap@@0) null (PredicateMaskField_4857 pm_f_32@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7628) (ExhaleHeap@@1 T@PolymorphicMapType_7628) (Mask@@2 T@PolymorphicMapType_7649) (pm_f_32@@1 T@Field_13786_13787) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_4862_4863 Mask@@2 null pm_f_32@@1) (IsWandField_4862_26500 pm_f_32@@1)) (= (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@3) null (WandMaskField_4862 pm_f_32@@1)) (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| ExhaleHeap@@1) null (WandMaskField_4862 pm_f_32@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_4862_26500 pm_f_32@@1) (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| ExhaleHeap@@1) null (WandMaskField_4862 pm_f_32@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7628) (ExhaleHeap@@2 T@PolymorphicMapType_7628) (Mask@@3 T@PolymorphicMapType_7649) (pm_f_32@@2 T@Field_4857_4863) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4857_4863 Mask@@3 null pm_f_32@@2) (IsWandField_4857_26143 pm_f_32@@2)) (= (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@4) null (WandMaskField_4857 pm_f_32@@2)) (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| ExhaleHeap@@2) null (WandMaskField_4857 pm_f_32@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_4857_26143 pm_f_32@@2) (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| ExhaleHeap@@2) null (WandMaskField_4857 pm_f_32@@2)))
)))
(assert (forall ((x@@3 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_14705| (|Seq#Singleton_4890| x@@3) y) (= x@@3 y))
 :qid |stdinbpl.535:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_14705| (|Seq#Singleton_4890| x@@3) y))
)))
(assert (forall ((x@@4 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2912| (|Seq#Singleton_2912| x@@4) y@@0) (= x@@4 y@@0))
 :qid |stdinbpl.535:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2912| (|Seq#Singleton_2912| x@@4) y@@0))
)))
(assert (forall ((s@@11 T@Seq_14705) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_4890| s@@11))) (= (|Seq#Index_4890| (|Seq#Take_4890| s@@11 n@@9) j@@3) (|Seq#Index_4890| s@@11 j@@3)))
 :qid |stdinbpl.286:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_4890| (|Seq#Take_4890| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_4890| s@@11 j@@3) (|Seq#Take_4890| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2912) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2912| s@@12))) (= (|Seq#Index_2912| (|Seq#Take_2912| s@@12 n@@10) j@@4) (|Seq#Index_2912| s@@12 j@@4)))
 :qid |stdinbpl.286:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2912| (|Seq#Take_2912| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2912| s@@12 j@@4) (|Seq#Take_2912| s@@12 n@@10))
)))
(assert (forall ((x@@5 T@Ref) (x2 T@Ref) ) (!  (=> (= (P x@@5) (P x2)) (= x@@5 x2))
 :qid |stdinbpl.590:15|
 :skolemid |61|
 :pattern ( (P x@@5) (P x2))
)))
(assert (forall ((x@@6 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|P#sm| x@@6) (|P#sm| x2@@0)) (= x@@6 x2@@0))
 :qid |stdinbpl.594:15|
 :skolemid |62|
 :pattern ( (|P#sm| x@@6) (|P#sm| x2@@0))
)))
(assert (forall ((s@@13 T@Seq_14705) (t T@Seq_14705) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_4890| s@@13))) (< n@@11 (|Seq#Length_4890| (|Seq#Append_14705| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_4890| s@@13)) (|Seq#Length_4890| s@@13)) n@@11) (= (|Seq#Take_4890| (|Seq#Append_14705| s@@13 t) n@@11) (|Seq#Append_14705| s@@13 (|Seq#Take_4890| t (|Seq#Sub| n@@11 (|Seq#Length_4890| s@@13)))))))
 :qid |stdinbpl.371:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_4890| (|Seq#Append_14705| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2912) (t@@0 T@Seq_2912) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2912| s@@14))) (< n@@12 (|Seq#Length_2912| (|Seq#Append_2912| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2912| s@@14)) (|Seq#Length_2912| s@@14)) n@@12) (= (|Seq#Take_2912| (|Seq#Append_2912| s@@14 t@@0) n@@12) (|Seq#Append_2912| s@@14 (|Seq#Take_2912| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2912| s@@14)))))))
 :qid |stdinbpl.371:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2912| (|Seq#Append_2912| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7628) (ExhaleHeap@@3 T@PolymorphicMapType_7628) (Mask@@4 T@PolymorphicMapType_7649) (pm_f_32@@3 T@Field_13786_13787) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_4862_4863 Mask@@4 null pm_f_32@@3) (IsPredicateField_4862_4863 pm_f_32@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_32 T@Ref) (f_54 T@Field_13709_3034) ) (!  (=> (select (|PolymorphicMapType_8177_4857_3034#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@5) null (PredicateMaskField_4862 pm_f_32@@3))) o2_32 f_54) (= (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@5) o2_32 f_54) (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| ExhaleHeap@@3) o2_32 f_54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| ExhaleHeap@@3) o2_32 f_54))
)) (forall ((o2_32@@0 T@Ref) (f_54@@0 T@Field_7688_53) ) (!  (=> (select (|PolymorphicMapType_8177_4857_53#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@5) null (PredicateMaskField_4862 pm_f_32@@3))) o2_32@@0 f_54@@0) (= (select (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@5) o2_32@@0 f_54@@0) (select (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| ExhaleHeap@@3) o2_32@@0 f_54@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| ExhaleHeap@@3) o2_32@@0 f_54@@0))
))) (forall ((o2_32@@1 T@Ref) (f_54@@1 T@Field_7701_7702) ) (!  (=> (select (|PolymorphicMapType_8177_4857_7702#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@5) null (PredicateMaskField_4862 pm_f_32@@3))) o2_32@@1 f_54@@1) (= (select (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@@5) o2_32@@1 f_54@@1) (select (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| ExhaleHeap@@3) o2_32@@1 f_54@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| ExhaleHeap@@3) o2_32@@1 f_54@@1))
))) (forall ((o2_32@@2 T@Ref) (f_54@@2 T@Field_4857_4863) ) (!  (=> (select (|PolymorphicMapType_8177_4857_13787#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@5) null (PredicateMaskField_4862 pm_f_32@@3))) o2_32@@2 f_54@@2) (= (select (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| Heap@@5) o2_32@@2 f_54@@2) (select (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| ExhaleHeap@@3) o2_32@@2 f_54@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| ExhaleHeap@@3) o2_32@@2 f_54@@2))
))) (forall ((o2_32@@3 T@Ref) (f_54@@3 T@Field_4857_13804) ) (!  (=> (select (|PolymorphicMapType_8177_4857_24287#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@5) null (PredicateMaskField_4862 pm_f_32@@3))) o2_32@@3 f_54@@3) (= (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@5) o2_32@@3 f_54@@3) (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| ExhaleHeap@@3) o2_32@@3 f_54@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| ExhaleHeap@@3) o2_32@@3 f_54@@3))
))) (forall ((o2_32@@4 T@Ref) (f_54@@4 T@Field_4862_3034) ) (!  (=> (select (|PolymorphicMapType_8177_13786_3034#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@5) null (PredicateMaskField_4862 pm_f_32@@3))) o2_32@@4 f_54@@4) (= (select (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| Heap@@5) o2_32@@4 f_54@@4) (select (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| ExhaleHeap@@3) o2_32@@4 f_54@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| ExhaleHeap@@3) o2_32@@4 f_54@@4))
))) (forall ((o2_32@@5 T@Ref) (f_54@@5 T@Field_4862_53) ) (!  (=> (select (|PolymorphicMapType_8177_13786_53#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@5) null (PredicateMaskField_4862 pm_f_32@@3))) o2_32@@5 f_54@@5) (= (select (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| Heap@@5) o2_32@@5 f_54@@5) (select (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| ExhaleHeap@@3) o2_32@@5 f_54@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| ExhaleHeap@@3) o2_32@@5 f_54@@5))
))) (forall ((o2_32@@6 T@Ref) (f_54@@6 T@Field_4862_7702) ) (!  (=> (select (|PolymorphicMapType_8177_13786_7702#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@5) null (PredicateMaskField_4862 pm_f_32@@3))) o2_32@@6 f_54@@6) (= (select (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| Heap@@5) o2_32@@6 f_54@@6) (select (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| ExhaleHeap@@3) o2_32@@6 f_54@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| ExhaleHeap@@3) o2_32@@6 f_54@@6))
))) (forall ((o2_32@@7 T@Ref) (f_54@@7 T@Field_13786_13787) ) (!  (=> (select (|PolymorphicMapType_8177_13786_13787#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@5) null (PredicateMaskField_4862 pm_f_32@@3))) o2_32@@7 f_54@@7) (= (select (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@@5) o2_32@@7 f_54@@7) (select (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| ExhaleHeap@@3) o2_32@@7 f_54@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| ExhaleHeap@@3) o2_32@@7 f_54@@7))
))) (forall ((o2_32@@8 T@Ref) (f_54@@8 T@Field_13799_13804) ) (!  (=> (select (|PolymorphicMapType_8177_13786_25335#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@5) null (PredicateMaskField_4862 pm_f_32@@3))) o2_32@@8 f_54@@8) (= (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@5) o2_32@@8 f_54@@8) (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| ExhaleHeap@@3) o2_32@@8 f_54@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| ExhaleHeap@@3) o2_32@@8 f_54@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_4862_4863 pm_f_32@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7628) (ExhaleHeap@@4 T@PolymorphicMapType_7628) (Mask@@5 T@PolymorphicMapType_7649) (pm_f_32@@4 T@Field_4857_4863) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_4857_4863 Mask@@5 null pm_f_32@@4) (IsPredicateField_4857_22815 pm_f_32@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_32@@9 T@Ref) (f_54@@9 T@Field_13709_3034) ) (!  (=> (select (|PolymorphicMapType_8177_4857_3034#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@6) null (PredicateMaskField_4857 pm_f_32@@4))) o2_32@@9 f_54@@9) (= (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@6) o2_32@@9 f_54@@9) (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| ExhaleHeap@@4) o2_32@@9 f_54@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| ExhaleHeap@@4) o2_32@@9 f_54@@9))
)) (forall ((o2_32@@10 T@Ref) (f_54@@10 T@Field_7688_53) ) (!  (=> (select (|PolymorphicMapType_8177_4857_53#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@6) null (PredicateMaskField_4857 pm_f_32@@4))) o2_32@@10 f_54@@10) (= (select (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@6) o2_32@@10 f_54@@10) (select (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| ExhaleHeap@@4) o2_32@@10 f_54@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| ExhaleHeap@@4) o2_32@@10 f_54@@10))
))) (forall ((o2_32@@11 T@Ref) (f_54@@11 T@Field_7701_7702) ) (!  (=> (select (|PolymorphicMapType_8177_4857_7702#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@6) null (PredicateMaskField_4857 pm_f_32@@4))) o2_32@@11 f_54@@11) (= (select (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@@6) o2_32@@11 f_54@@11) (select (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| ExhaleHeap@@4) o2_32@@11 f_54@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| ExhaleHeap@@4) o2_32@@11 f_54@@11))
))) (forall ((o2_32@@12 T@Ref) (f_54@@12 T@Field_4857_4863) ) (!  (=> (select (|PolymorphicMapType_8177_4857_13787#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@6) null (PredicateMaskField_4857 pm_f_32@@4))) o2_32@@12 f_54@@12) (= (select (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| Heap@@6) o2_32@@12 f_54@@12) (select (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| ExhaleHeap@@4) o2_32@@12 f_54@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| ExhaleHeap@@4) o2_32@@12 f_54@@12))
))) (forall ((o2_32@@13 T@Ref) (f_54@@13 T@Field_4857_13804) ) (!  (=> (select (|PolymorphicMapType_8177_4857_24287#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@6) null (PredicateMaskField_4857 pm_f_32@@4))) o2_32@@13 f_54@@13) (= (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@6) o2_32@@13 f_54@@13) (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| ExhaleHeap@@4) o2_32@@13 f_54@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| ExhaleHeap@@4) o2_32@@13 f_54@@13))
))) (forall ((o2_32@@14 T@Ref) (f_54@@14 T@Field_4862_3034) ) (!  (=> (select (|PolymorphicMapType_8177_13786_3034#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@6) null (PredicateMaskField_4857 pm_f_32@@4))) o2_32@@14 f_54@@14) (= (select (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| Heap@@6) o2_32@@14 f_54@@14) (select (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| ExhaleHeap@@4) o2_32@@14 f_54@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| ExhaleHeap@@4) o2_32@@14 f_54@@14))
))) (forall ((o2_32@@15 T@Ref) (f_54@@15 T@Field_4862_53) ) (!  (=> (select (|PolymorphicMapType_8177_13786_53#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@6) null (PredicateMaskField_4857 pm_f_32@@4))) o2_32@@15 f_54@@15) (= (select (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| Heap@@6) o2_32@@15 f_54@@15) (select (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| ExhaleHeap@@4) o2_32@@15 f_54@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| ExhaleHeap@@4) o2_32@@15 f_54@@15))
))) (forall ((o2_32@@16 T@Ref) (f_54@@16 T@Field_4862_7702) ) (!  (=> (select (|PolymorphicMapType_8177_13786_7702#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@6) null (PredicateMaskField_4857 pm_f_32@@4))) o2_32@@16 f_54@@16) (= (select (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| Heap@@6) o2_32@@16 f_54@@16) (select (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| ExhaleHeap@@4) o2_32@@16 f_54@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| ExhaleHeap@@4) o2_32@@16 f_54@@16))
))) (forall ((o2_32@@17 T@Ref) (f_54@@17 T@Field_13786_13787) ) (!  (=> (select (|PolymorphicMapType_8177_13786_13787#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@6) null (PredicateMaskField_4857 pm_f_32@@4))) o2_32@@17 f_54@@17) (= (select (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@@6) o2_32@@17 f_54@@17) (select (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| ExhaleHeap@@4) o2_32@@17 f_54@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| ExhaleHeap@@4) o2_32@@17 f_54@@17))
))) (forall ((o2_32@@18 T@Ref) (f_54@@18 T@Field_13799_13804) ) (!  (=> (select (|PolymorphicMapType_8177_13786_25335#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@6) null (PredicateMaskField_4857 pm_f_32@@4))) o2_32@@18 f_54@@18) (= (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@6) o2_32@@18 f_54@@18) (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| ExhaleHeap@@4) o2_32@@18 f_54@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| ExhaleHeap@@4) o2_32@@18 f_54@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_4857_22815 pm_f_32@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7628) (ExhaleHeap@@5 T@PolymorphicMapType_7628) (Mask@@6 T@PolymorphicMapType_7649) (pm_f_32@@5 T@Field_13786_13787) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_4862_4863 Mask@@6 null pm_f_32@@5) (IsWandField_4862_26500 pm_f_32@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_32@@19 T@Ref) (f_54@@19 T@Field_13709_3034) ) (!  (=> (select (|PolymorphicMapType_8177_4857_3034#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@7) null (WandMaskField_4862 pm_f_32@@5))) o2_32@@19 f_54@@19) (= (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@7) o2_32@@19 f_54@@19) (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| ExhaleHeap@@5) o2_32@@19 f_54@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| ExhaleHeap@@5) o2_32@@19 f_54@@19))
)) (forall ((o2_32@@20 T@Ref) (f_54@@20 T@Field_7688_53) ) (!  (=> (select (|PolymorphicMapType_8177_4857_53#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@7) null (WandMaskField_4862 pm_f_32@@5))) o2_32@@20 f_54@@20) (= (select (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@7) o2_32@@20 f_54@@20) (select (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| ExhaleHeap@@5) o2_32@@20 f_54@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| ExhaleHeap@@5) o2_32@@20 f_54@@20))
))) (forall ((o2_32@@21 T@Ref) (f_54@@21 T@Field_7701_7702) ) (!  (=> (select (|PolymorphicMapType_8177_4857_7702#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@7) null (WandMaskField_4862 pm_f_32@@5))) o2_32@@21 f_54@@21) (= (select (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@@7) o2_32@@21 f_54@@21) (select (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| ExhaleHeap@@5) o2_32@@21 f_54@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| ExhaleHeap@@5) o2_32@@21 f_54@@21))
))) (forall ((o2_32@@22 T@Ref) (f_54@@22 T@Field_4857_4863) ) (!  (=> (select (|PolymorphicMapType_8177_4857_13787#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@7) null (WandMaskField_4862 pm_f_32@@5))) o2_32@@22 f_54@@22) (= (select (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| Heap@@7) o2_32@@22 f_54@@22) (select (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| ExhaleHeap@@5) o2_32@@22 f_54@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| ExhaleHeap@@5) o2_32@@22 f_54@@22))
))) (forall ((o2_32@@23 T@Ref) (f_54@@23 T@Field_4857_13804) ) (!  (=> (select (|PolymorphicMapType_8177_4857_24287#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@7) null (WandMaskField_4862 pm_f_32@@5))) o2_32@@23 f_54@@23) (= (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@7) o2_32@@23 f_54@@23) (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| ExhaleHeap@@5) o2_32@@23 f_54@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| ExhaleHeap@@5) o2_32@@23 f_54@@23))
))) (forall ((o2_32@@24 T@Ref) (f_54@@24 T@Field_4862_3034) ) (!  (=> (select (|PolymorphicMapType_8177_13786_3034#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@7) null (WandMaskField_4862 pm_f_32@@5))) o2_32@@24 f_54@@24) (= (select (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| Heap@@7) o2_32@@24 f_54@@24) (select (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| ExhaleHeap@@5) o2_32@@24 f_54@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| ExhaleHeap@@5) o2_32@@24 f_54@@24))
))) (forall ((o2_32@@25 T@Ref) (f_54@@25 T@Field_4862_53) ) (!  (=> (select (|PolymorphicMapType_8177_13786_53#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@7) null (WandMaskField_4862 pm_f_32@@5))) o2_32@@25 f_54@@25) (= (select (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| Heap@@7) o2_32@@25 f_54@@25) (select (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| ExhaleHeap@@5) o2_32@@25 f_54@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| ExhaleHeap@@5) o2_32@@25 f_54@@25))
))) (forall ((o2_32@@26 T@Ref) (f_54@@26 T@Field_4862_7702) ) (!  (=> (select (|PolymorphicMapType_8177_13786_7702#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@7) null (WandMaskField_4862 pm_f_32@@5))) o2_32@@26 f_54@@26) (= (select (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| Heap@@7) o2_32@@26 f_54@@26) (select (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| ExhaleHeap@@5) o2_32@@26 f_54@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| ExhaleHeap@@5) o2_32@@26 f_54@@26))
))) (forall ((o2_32@@27 T@Ref) (f_54@@27 T@Field_13786_13787) ) (!  (=> (select (|PolymorphicMapType_8177_13786_13787#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@7) null (WandMaskField_4862 pm_f_32@@5))) o2_32@@27 f_54@@27) (= (select (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@@7) o2_32@@27 f_54@@27) (select (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| ExhaleHeap@@5) o2_32@@27 f_54@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| ExhaleHeap@@5) o2_32@@27 f_54@@27))
))) (forall ((o2_32@@28 T@Ref) (f_54@@28 T@Field_13799_13804) ) (!  (=> (select (|PolymorphicMapType_8177_13786_25335#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@7) null (WandMaskField_4862 pm_f_32@@5))) o2_32@@28 f_54@@28) (= (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@7) o2_32@@28 f_54@@28) (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| ExhaleHeap@@5) o2_32@@28 f_54@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| ExhaleHeap@@5) o2_32@@28 f_54@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_4862_26500 pm_f_32@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7628) (ExhaleHeap@@6 T@PolymorphicMapType_7628) (Mask@@7 T@PolymorphicMapType_7649) (pm_f_32@@6 T@Field_4857_4863) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_4857_4863 Mask@@7 null pm_f_32@@6) (IsWandField_4857_26143 pm_f_32@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_32@@29 T@Ref) (f_54@@29 T@Field_13709_3034) ) (!  (=> (select (|PolymorphicMapType_8177_4857_3034#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@8) null (WandMaskField_4857 pm_f_32@@6))) o2_32@@29 f_54@@29) (= (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@8) o2_32@@29 f_54@@29) (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| ExhaleHeap@@6) o2_32@@29 f_54@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| ExhaleHeap@@6) o2_32@@29 f_54@@29))
)) (forall ((o2_32@@30 T@Ref) (f_54@@30 T@Field_7688_53) ) (!  (=> (select (|PolymorphicMapType_8177_4857_53#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@8) null (WandMaskField_4857 pm_f_32@@6))) o2_32@@30 f_54@@30) (= (select (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@8) o2_32@@30 f_54@@30) (select (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| ExhaleHeap@@6) o2_32@@30 f_54@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| ExhaleHeap@@6) o2_32@@30 f_54@@30))
))) (forall ((o2_32@@31 T@Ref) (f_54@@31 T@Field_7701_7702) ) (!  (=> (select (|PolymorphicMapType_8177_4857_7702#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@8) null (WandMaskField_4857 pm_f_32@@6))) o2_32@@31 f_54@@31) (= (select (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@@8) o2_32@@31 f_54@@31) (select (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| ExhaleHeap@@6) o2_32@@31 f_54@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| ExhaleHeap@@6) o2_32@@31 f_54@@31))
))) (forall ((o2_32@@32 T@Ref) (f_54@@32 T@Field_4857_4863) ) (!  (=> (select (|PolymorphicMapType_8177_4857_13787#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@8) null (WandMaskField_4857 pm_f_32@@6))) o2_32@@32 f_54@@32) (= (select (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| Heap@@8) o2_32@@32 f_54@@32) (select (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| ExhaleHeap@@6) o2_32@@32 f_54@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| ExhaleHeap@@6) o2_32@@32 f_54@@32))
))) (forall ((o2_32@@33 T@Ref) (f_54@@33 T@Field_4857_13804) ) (!  (=> (select (|PolymorphicMapType_8177_4857_24287#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@8) null (WandMaskField_4857 pm_f_32@@6))) o2_32@@33 f_54@@33) (= (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@8) o2_32@@33 f_54@@33) (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| ExhaleHeap@@6) o2_32@@33 f_54@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| ExhaleHeap@@6) o2_32@@33 f_54@@33))
))) (forall ((o2_32@@34 T@Ref) (f_54@@34 T@Field_4862_3034) ) (!  (=> (select (|PolymorphicMapType_8177_13786_3034#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@8) null (WandMaskField_4857 pm_f_32@@6))) o2_32@@34 f_54@@34) (= (select (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| Heap@@8) o2_32@@34 f_54@@34) (select (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| ExhaleHeap@@6) o2_32@@34 f_54@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| ExhaleHeap@@6) o2_32@@34 f_54@@34))
))) (forall ((o2_32@@35 T@Ref) (f_54@@35 T@Field_4862_53) ) (!  (=> (select (|PolymorphicMapType_8177_13786_53#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@8) null (WandMaskField_4857 pm_f_32@@6))) o2_32@@35 f_54@@35) (= (select (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| Heap@@8) o2_32@@35 f_54@@35) (select (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| ExhaleHeap@@6) o2_32@@35 f_54@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| ExhaleHeap@@6) o2_32@@35 f_54@@35))
))) (forall ((o2_32@@36 T@Ref) (f_54@@36 T@Field_4862_7702) ) (!  (=> (select (|PolymorphicMapType_8177_13786_7702#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@8) null (WandMaskField_4857 pm_f_32@@6))) o2_32@@36 f_54@@36) (= (select (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| Heap@@8) o2_32@@36 f_54@@36) (select (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| ExhaleHeap@@6) o2_32@@36 f_54@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| ExhaleHeap@@6) o2_32@@36 f_54@@36))
))) (forall ((o2_32@@37 T@Ref) (f_54@@37 T@Field_13786_13787) ) (!  (=> (select (|PolymorphicMapType_8177_13786_13787#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@8) null (WandMaskField_4857 pm_f_32@@6))) o2_32@@37 f_54@@37) (= (select (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@@8) o2_32@@37 f_54@@37) (select (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| ExhaleHeap@@6) o2_32@@37 f_54@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| ExhaleHeap@@6) o2_32@@37 f_54@@37))
))) (forall ((o2_32@@38 T@Ref) (f_54@@38 T@Field_13799_13804) ) (!  (=> (select (|PolymorphicMapType_8177_13786_25335#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@8) null (WandMaskField_4857 pm_f_32@@6))) o2_32@@38 f_54@@38) (= (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@8) o2_32@@38 f_54@@38) (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| ExhaleHeap@@6) o2_32@@38 f_54@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| ExhaleHeap@@6) o2_32@@38 f_54@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_4857_26143 pm_f_32@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7628) (ExhaleHeap@@7 T@PolymorphicMapType_7628) (Mask@@8 T@PolymorphicMapType_7649) (o_55 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@9) o_55 $allocated) (select (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| ExhaleHeap@@7) o_55 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| ExhaleHeap@@7) o_55 $allocated))
)))
(assert (forall ((p T@Field_13786_13787) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_13786_13786 p v_1 p w))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13786_13786 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_4857_4863) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_7688_7688 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7688_7688 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_14705) (s1 T@Seq_14705) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_4890|)) (not (= s1 |Seq#Empty_4890|))) (<= (|Seq#Length_4890| s0) n@@13)) (< n@@13 (|Seq#Length_4890| (|Seq#Append_14705| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_4890| s0)) (|Seq#Length_4890| s0)) n@@13) (= (|Seq#Index_4890| (|Seq#Append_14705| s0 s1) n@@13) (|Seq#Index_4890| s1 (|Seq#Sub| n@@13 (|Seq#Length_4890| s0))))))
 :qid |stdinbpl.258:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_4890| (|Seq#Append_14705| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2912) (s1@@0 T@Seq_2912) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2912|)) (not (= s1@@0 |Seq#Empty_2912|))) (<= (|Seq#Length_2912| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2912| (|Seq#Append_2912| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2912| s0@@0)) (|Seq#Length_2912| s0@@0)) n@@14) (= (|Seq#Index_2912| (|Seq#Append_2912| s0@@0 s1@@0) n@@14) (|Seq#Index_2912| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2912| s0@@0))))))
 :qid |stdinbpl.258:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2912| (|Seq#Append_2912| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_4857_3034 f_7)))
(assert  (not (IsWandField_4857_3034 f_7)))
(assert  (not (IsPredicateField_4857_3034 g)))
(assert  (not (IsWandField_4857_3034 g)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7628) (ExhaleHeap@@8 T@PolymorphicMapType_7628) (Mask@@9 T@PolymorphicMapType_7649) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7649) (o_2@@9 T@Ref) (f_4@@9 T@Field_13799_13804) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_7649_4862_31140#PolymorphicMapType_7649| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_4862_33432 f_4@@9))) (not (IsWandField_4862_33448 f_4@@9))) (<= (select (|PolymorphicMapType_7649_4862_31140#PolymorphicMapType_7649| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_7649_4862_31140#PolymorphicMapType_7649| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7649) (o_2@@10 T@Ref) (f_4@@10 T@Field_4862_7702) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_7649_4862_7702#PolymorphicMapType_7649| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4862_7702 f_4@@10))) (not (IsWandField_4862_7702 f_4@@10))) (<= (select (|PolymorphicMapType_7649_4862_7702#PolymorphicMapType_7649| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_7649_4862_7702#PolymorphicMapType_7649| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7649) (o_2@@11 T@Ref) (f_4@@11 T@Field_4862_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_7649_4862_53#PolymorphicMapType_7649| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_4862_53 f_4@@11))) (not (IsWandField_4862_53 f_4@@11))) (<= (select (|PolymorphicMapType_7649_4862_53#PolymorphicMapType_7649| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_7649_4862_53#PolymorphicMapType_7649| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7649) (o_2@@12 T@Ref) (f_4@@12 T@Field_13786_13787) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_7649_4862_4863#PolymorphicMapType_7649| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4862_4863 f_4@@12))) (not (IsWandField_4862_26500 f_4@@12))) (<= (select (|PolymorphicMapType_7649_4862_4863#PolymorphicMapType_7649| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_7649_4862_4863#PolymorphicMapType_7649| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_7649) (o_2@@13 T@Ref) (f_4@@13 T@Field_4862_3034) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_7649_4862_3034#PolymorphicMapType_7649| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_4862_3034 f_4@@13))) (not (IsWandField_4862_3034 f_4@@13))) (<= (select (|PolymorphicMapType_7649_4862_3034#PolymorphicMapType_7649| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_7649_4862_3034#PolymorphicMapType_7649| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_7649) (o_2@@14 T@Ref) (f_4@@14 T@Field_4857_13804) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_7649_4857_30729#PolymorphicMapType_7649| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4857_32601 f_4@@14))) (not (IsWandField_4857_32617 f_4@@14))) (<= (select (|PolymorphicMapType_7649_4857_30729#PolymorphicMapType_7649| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_7649_4857_30729#PolymorphicMapType_7649| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_7649) (o_2@@15 T@Ref) (f_4@@15 T@Field_7701_7702) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_7649_4857_7702#PolymorphicMapType_7649| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_4857_7702 f_4@@15))) (not (IsWandField_4857_7702 f_4@@15))) (<= (select (|PolymorphicMapType_7649_4857_7702#PolymorphicMapType_7649| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_7649_4857_7702#PolymorphicMapType_7649| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_7649) (o_2@@16 T@Ref) (f_4@@16 T@Field_7688_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_7649_4857_53#PolymorphicMapType_7649| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_4857_53 f_4@@16))) (not (IsWandField_4857_53 f_4@@16))) (<= (select (|PolymorphicMapType_7649_4857_53#PolymorphicMapType_7649| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_7649_4857_53#PolymorphicMapType_7649| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_7649) (o_2@@17 T@Ref) (f_4@@17 T@Field_4857_4863) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_7649_4857_4863#PolymorphicMapType_7649| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_4857_22815 f_4@@17))) (not (IsWandField_4857_26143 f_4@@17))) (<= (select (|PolymorphicMapType_7649_4857_4863#PolymorphicMapType_7649| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_7649_4857_4863#PolymorphicMapType_7649| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_7649) (o_2@@18 T@Ref) (f_4@@18 T@Field_13709_3034) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_4857_3034 f_4@@18))) (not (IsWandField_4857_3034 f_4@@18))) (<= (select (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_7649) (o_2@@19 T@Ref) (f_4@@19 T@Field_13799_13804) ) (! (= (HasDirectPerm_4862_22570 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_7649_4862_31140#PolymorphicMapType_7649| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4862_22570 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_7649) (o_2@@20 T@Ref) (f_4@@20 T@Field_4862_7702) ) (! (= (HasDirectPerm_4862_7702 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_7649_4862_7702#PolymorphicMapType_7649| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4862_7702 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_7649) (o_2@@21 T@Ref) (f_4@@21 T@Field_4862_53) ) (! (= (HasDirectPerm_4862_53 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_7649_4862_53#PolymorphicMapType_7649| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4862_53 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_7649) (o_2@@22 T@Ref) (f_4@@22 T@Field_13786_13787) ) (! (= (HasDirectPerm_4862_4863 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_7649_4862_4863#PolymorphicMapType_7649| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4862_4863 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_7649) (o_2@@23 T@Ref) (f_4@@23 T@Field_4862_3034) ) (! (= (HasDirectPerm_4862_3034 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_7649_4862_3034#PolymorphicMapType_7649| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4862_3034 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_7649) (o_2@@24 T@Ref) (f_4@@24 T@Field_4857_13804) ) (! (= (HasDirectPerm_4857_21429 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_7649_4857_30729#PolymorphicMapType_7649| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4857_21429 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_7649) (o_2@@25 T@Ref) (f_4@@25 T@Field_7701_7702) ) (! (= (HasDirectPerm_4857_7702 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_7649_4857_7702#PolymorphicMapType_7649| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4857_7702 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_7649) (o_2@@26 T@Ref) (f_4@@26 T@Field_7688_53) ) (! (= (HasDirectPerm_4857_53 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_7649_4857_53#PolymorphicMapType_7649| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4857_53 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_7649) (o_2@@27 T@Ref) (f_4@@27 T@Field_4857_4863) ) (! (= (HasDirectPerm_4857_4863 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_7649_4857_4863#PolymorphicMapType_7649| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4857_4863 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_7649) (o_2@@28 T@Ref) (f_4@@28 T@Field_13709_3034) ) (! (= (HasDirectPerm_4857_3034 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4857_3034 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.177:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2912| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.550:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2912| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7628) (ExhaleHeap@@9 T@PolymorphicMapType_7628) (Mask@@30 T@PolymorphicMapType_7649) (o_55@@0 T@Ref) (f_54@@39 T@Field_13799_13804) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_4862_22570 Mask@@30 o_55@@0 f_54@@39) (= (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@11) o_55@@0 f_54@@39) (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| ExhaleHeap@@9) o_55@@0 f_54@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| ExhaleHeap@@9) o_55@@0 f_54@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7628) (ExhaleHeap@@10 T@PolymorphicMapType_7628) (Mask@@31 T@PolymorphicMapType_7649) (o_55@@1 T@Ref) (f_54@@40 T@Field_4862_7702) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_4862_7702 Mask@@31 o_55@@1 f_54@@40) (= (select (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| Heap@@12) o_55@@1 f_54@@40) (select (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| ExhaleHeap@@10) o_55@@1 f_54@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| ExhaleHeap@@10) o_55@@1 f_54@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7628) (ExhaleHeap@@11 T@PolymorphicMapType_7628) (Mask@@32 T@PolymorphicMapType_7649) (o_55@@2 T@Ref) (f_54@@41 T@Field_4862_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_4862_53 Mask@@32 o_55@@2 f_54@@41) (= (select (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| Heap@@13) o_55@@2 f_54@@41) (select (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| ExhaleHeap@@11) o_55@@2 f_54@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| ExhaleHeap@@11) o_55@@2 f_54@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7628) (ExhaleHeap@@12 T@PolymorphicMapType_7628) (Mask@@33 T@PolymorphicMapType_7649) (o_55@@3 T@Ref) (f_54@@42 T@Field_13786_13787) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_4862_4863 Mask@@33 o_55@@3 f_54@@42) (= (select (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@@14) o_55@@3 f_54@@42) (select (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| ExhaleHeap@@12) o_55@@3 f_54@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| ExhaleHeap@@12) o_55@@3 f_54@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7628) (ExhaleHeap@@13 T@PolymorphicMapType_7628) (Mask@@34 T@PolymorphicMapType_7649) (o_55@@4 T@Ref) (f_54@@43 T@Field_4862_3034) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_4862_3034 Mask@@34 o_55@@4 f_54@@43) (= (select (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| Heap@@15) o_55@@4 f_54@@43) (select (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| ExhaleHeap@@13) o_55@@4 f_54@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| ExhaleHeap@@13) o_55@@4 f_54@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7628) (ExhaleHeap@@14 T@PolymorphicMapType_7628) (Mask@@35 T@PolymorphicMapType_7649) (o_55@@5 T@Ref) (f_54@@44 T@Field_4857_13804) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_4857_21429 Mask@@35 o_55@@5 f_54@@44) (= (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@16) o_55@@5 f_54@@44) (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| ExhaleHeap@@14) o_55@@5 f_54@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| ExhaleHeap@@14) o_55@@5 f_54@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7628) (ExhaleHeap@@15 T@PolymorphicMapType_7628) (Mask@@36 T@PolymorphicMapType_7649) (o_55@@6 T@Ref) (f_54@@45 T@Field_7701_7702) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_4857_7702 Mask@@36 o_55@@6 f_54@@45) (= (select (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@@17) o_55@@6 f_54@@45) (select (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| ExhaleHeap@@15) o_55@@6 f_54@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| ExhaleHeap@@15) o_55@@6 f_54@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7628) (ExhaleHeap@@16 T@PolymorphicMapType_7628) (Mask@@37 T@PolymorphicMapType_7649) (o_55@@7 T@Ref) (f_54@@46 T@Field_7688_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_4857_53 Mask@@37 o_55@@7 f_54@@46) (= (select (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@18) o_55@@7 f_54@@46) (select (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| ExhaleHeap@@16) o_55@@7 f_54@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| ExhaleHeap@@16) o_55@@7 f_54@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7628) (ExhaleHeap@@17 T@PolymorphicMapType_7628) (Mask@@38 T@PolymorphicMapType_7649) (o_55@@8 T@Ref) (f_54@@47 T@Field_4857_4863) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_4857_4863 Mask@@38 o_55@@8 f_54@@47) (= (select (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| Heap@@19) o_55@@8 f_54@@47) (select (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| ExhaleHeap@@17) o_55@@8 f_54@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| ExhaleHeap@@17) o_55@@8 f_54@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_7628) (ExhaleHeap@@18 T@PolymorphicMapType_7628) (Mask@@39 T@PolymorphicMapType_7649) (o_55@@9 T@Ref) (f_54@@48 T@Field_13709_3034) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_4857_3034 Mask@@39 o_55@@9 f_54@@48) (= (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@20) o_55@@9 f_54@@48) (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| ExhaleHeap@@18) o_55@@9 f_54@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| ExhaleHeap@@18) o_55@@9 f_54@@48))
)))
(assert (forall ((s0@@1 T@Seq_14705) (s1@@1 T@Seq_14705) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_4890|)) (not (= s1@@1 |Seq#Empty_4890|))) (= (|Seq#Length_4890| (|Seq#Append_14705| s0@@1 s1@@1)) (+ (|Seq#Length_4890| s0@@1) (|Seq#Length_4890| s1@@1))))
 :qid |stdinbpl.227:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_4890| (|Seq#Append_14705| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2912) (s1@@2 T@Seq_2912) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2912|)) (not (= s1@@2 |Seq#Empty_2912|))) (= (|Seq#Length_2912| (|Seq#Append_2912| s0@@2 s1@@2)) (+ (|Seq#Length_2912| s0@@2) (|Seq#Length_2912| s1@@2))))
 :qid |stdinbpl.227:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2912| (|Seq#Append_2912| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_13799_13804) ) (! (= (select (|PolymorphicMapType_7649_4862_31140#PolymorphicMapType_7649| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7649_4862_31140#PolymorphicMapType_7649| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_4862_7702) ) (! (= (select (|PolymorphicMapType_7649_4862_7702#PolymorphicMapType_7649| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7649_4862_7702#PolymorphicMapType_7649| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_4862_53) ) (! (= (select (|PolymorphicMapType_7649_4862_53#PolymorphicMapType_7649| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7649_4862_53#PolymorphicMapType_7649| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_13786_13787) ) (! (= (select (|PolymorphicMapType_7649_4862_4863#PolymorphicMapType_7649| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7649_4862_4863#PolymorphicMapType_7649| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_4862_3034) ) (! (= (select (|PolymorphicMapType_7649_4862_3034#PolymorphicMapType_7649| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7649_4862_3034#PolymorphicMapType_7649| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_4857_13804) ) (! (= (select (|PolymorphicMapType_7649_4857_30729#PolymorphicMapType_7649| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7649_4857_30729#PolymorphicMapType_7649| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_7701_7702) ) (! (= (select (|PolymorphicMapType_7649_4857_7702#PolymorphicMapType_7649| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7649_4857_7702#PolymorphicMapType_7649| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_7688_53) ) (! (= (select (|PolymorphicMapType_7649_4857_53#PolymorphicMapType_7649| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7649_4857_53#PolymorphicMapType_7649| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_4857_4863) ) (! (= (select (|PolymorphicMapType_7649_4857_4863#PolymorphicMapType_7649| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7649_4857_4863#PolymorphicMapType_7649| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_13709_3034) ) (! (= (select (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((s@@15 T@Seq_14705) (t@@1 T@Seq_14705) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_4890| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_4890| s@@15)) (|Seq#Length_4890| s@@15)) n@@15) (= (|Seq#Drop_4890| (|Seq#Append_14705| s@@15 t@@1) n@@15) (|Seq#Drop_4890| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_4890| s@@15))))))
 :qid |stdinbpl.384:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_4890| (|Seq#Append_14705| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2912) (t@@2 T@Seq_2912) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2912| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2912| s@@16)) (|Seq#Length_2912| s@@16)) n@@16) (= (|Seq#Drop_2912| (|Seq#Append_2912| s@@16 t@@2) n@@16) (|Seq#Drop_2912| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2912| s@@16))))))
 :qid |stdinbpl.384:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2912| (|Seq#Append_2912| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7649) (SummandMask1 T@PolymorphicMapType_7649) (SummandMask2 T@PolymorphicMapType_7649) (o_2@@39 T@Ref) (f_4@@39 T@Field_13799_13804) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7649_4862_31140#PolymorphicMapType_7649| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_7649_4862_31140#PolymorphicMapType_7649| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_7649_4862_31140#PolymorphicMapType_7649| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7649_4862_31140#PolymorphicMapType_7649| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7649_4862_31140#PolymorphicMapType_7649| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7649_4862_31140#PolymorphicMapType_7649| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7649) (SummandMask1@@0 T@PolymorphicMapType_7649) (SummandMask2@@0 T@PolymorphicMapType_7649) (o_2@@40 T@Ref) (f_4@@40 T@Field_4862_7702) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7649_4862_7702#PolymorphicMapType_7649| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_7649_4862_7702#PolymorphicMapType_7649| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_7649_4862_7702#PolymorphicMapType_7649| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7649_4862_7702#PolymorphicMapType_7649| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7649_4862_7702#PolymorphicMapType_7649| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7649_4862_7702#PolymorphicMapType_7649| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7649) (SummandMask1@@1 T@PolymorphicMapType_7649) (SummandMask2@@1 T@PolymorphicMapType_7649) (o_2@@41 T@Ref) (f_4@@41 T@Field_4862_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7649_4862_53#PolymorphicMapType_7649| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_7649_4862_53#PolymorphicMapType_7649| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_7649_4862_53#PolymorphicMapType_7649| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7649_4862_53#PolymorphicMapType_7649| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7649_4862_53#PolymorphicMapType_7649| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7649_4862_53#PolymorphicMapType_7649| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7649) (SummandMask1@@2 T@PolymorphicMapType_7649) (SummandMask2@@2 T@PolymorphicMapType_7649) (o_2@@42 T@Ref) (f_4@@42 T@Field_13786_13787) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7649_4862_4863#PolymorphicMapType_7649| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_7649_4862_4863#PolymorphicMapType_7649| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_7649_4862_4863#PolymorphicMapType_7649| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7649_4862_4863#PolymorphicMapType_7649| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7649_4862_4863#PolymorphicMapType_7649| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7649_4862_4863#PolymorphicMapType_7649| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7649) (SummandMask1@@3 T@PolymorphicMapType_7649) (SummandMask2@@3 T@PolymorphicMapType_7649) (o_2@@43 T@Ref) (f_4@@43 T@Field_4862_3034) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7649_4862_3034#PolymorphicMapType_7649| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_7649_4862_3034#PolymorphicMapType_7649| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_7649_4862_3034#PolymorphicMapType_7649| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7649_4862_3034#PolymorphicMapType_7649| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7649_4862_3034#PolymorphicMapType_7649| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7649_4862_3034#PolymorphicMapType_7649| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_7649) (SummandMask1@@4 T@PolymorphicMapType_7649) (SummandMask2@@4 T@PolymorphicMapType_7649) (o_2@@44 T@Ref) (f_4@@44 T@Field_4857_13804) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_7649_4857_30729#PolymorphicMapType_7649| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_7649_4857_30729#PolymorphicMapType_7649| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_7649_4857_30729#PolymorphicMapType_7649| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7649_4857_30729#PolymorphicMapType_7649| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7649_4857_30729#PolymorphicMapType_7649| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7649_4857_30729#PolymorphicMapType_7649| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_7649) (SummandMask1@@5 T@PolymorphicMapType_7649) (SummandMask2@@5 T@PolymorphicMapType_7649) (o_2@@45 T@Ref) (f_4@@45 T@Field_7701_7702) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_7649_4857_7702#PolymorphicMapType_7649| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_7649_4857_7702#PolymorphicMapType_7649| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_7649_4857_7702#PolymorphicMapType_7649| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7649_4857_7702#PolymorphicMapType_7649| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7649_4857_7702#PolymorphicMapType_7649| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7649_4857_7702#PolymorphicMapType_7649| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_7649) (SummandMask1@@6 T@PolymorphicMapType_7649) (SummandMask2@@6 T@PolymorphicMapType_7649) (o_2@@46 T@Ref) (f_4@@46 T@Field_7688_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_7649_4857_53#PolymorphicMapType_7649| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_7649_4857_53#PolymorphicMapType_7649| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_7649_4857_53#PolymorphicMapType_7649| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7649_4857_53#PolymorphicMapType_7649| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7649_4857_53#PolymorphicMapType_7649| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7649_4857_53#PolymorphicMapType_7649| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_7649) (SummandMask1@@7 T@PolymorphicMapType_7649) (SummandMask2@@7 T@PolymorphicMapType_7649) (o_2@@47 T@Ref) (f_4@@47 T@Field_4857_4863) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_7649_4857_4863#PolymorphicMapType_7649| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_7649_4857_4863#PolymorphicMapType_7649| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_7649_4857_4863#PolymorphicMapType_7649| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7649_4857_4863#PolymorphicMapType_7649| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7649_4857_4863#PolymorphicMapType_7649| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7649_4857_4863#PolymorphicMapType_7649| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_7649) (SummandMask1@@8 T@PolymorphicMapType_7649) (SummandMask2@@8 T@PolymorphicMapType_7649) (o_2@@48 T@Ref) (f_4@@48 T@Field_13709_3034) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2912| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2912| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.549:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2912| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_14705) (b T@Seq_14705) ) (!  (=> (|Seq#Equal_14705| a b) (= a b))
 :qid |stdinbpl.522:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_14705| a b))
)))
(assert (forall ((a@@0 T@Seq_2912) (b@@0 T@Seq_2912) ) (!  (=> (|Seq#Equal_2912| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.522:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2912| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_14705) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_4890| s@@17))) (|Seq#ContainsTrigger_4890| s@@17 (|Seq#Index_4890| s@@17 i@@3)))
 :qid |stdinbpl.415:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_4890| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_2912) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2912| s@@18))) (|Seq#ContainsTrigger_2912| s@@18 (|Seq#Index_2912| s@@18 i@@4)))
 :qid |stdinbpl.415:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2912| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_14705) (s1@@3 T@Seq_14705) ) (!  (and (=> (= s0@@3 |Seq#Empty_4890|) (= (|Seq#Append_14705| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_4890|) (= (|Seq#Append_14705| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.233:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_14705| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2912) (s1@@4 T@Seq_2912) ) (!  (and (=> (= s0@@4 |Seq#Empty_2912|) (= (|Seq#Append_2912| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2912|) (= (|Seq#Append_2912| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.233:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2912| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_4890| (|Seq#Singleton_4890| t@@3) 0) t@@3)
 :qid |stdinbpl.237:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_4890| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2912| (|Seq#Singleton_2912| t@@4) 0) t@@4)
 :qid |stdinbpl.237:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2912| t@@4))
)))
(assert (forall ((s@@19 T@Seq_14705) ) (! (<= 0 (|Seq#Length_4890| s@@19))
 :qid |stdinbpl.216:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_4890| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2912) ) (! (<= 0 (|Seq#Length_2912| s@@20))
 :qid |stdinbpl.216:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2912| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_14705) (s1@@5 T@Seq_14705) ) (!  (=> (|Seq#Equal_14705| s0@@5 s1@@5) (and (= (|Seq#Length_4890| s0@@5) (|Seq#Length_4890| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_4890| s0@@5))) (= (|Seq#Index_4890| s0@@5 j@@6) (|Seq#Index_4890| s1@@5 j@@6)))
 :qid |stdinbpl.512:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_4890| s0@@5 j@@6))
 :pattern ( (|Seq#Index_4890| s1@@5 j@@6))
))))
 :qid |stdinbpl.509:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_14705| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2912) (s1@@6 T@Seq_2912) ) (!  (=> (|Seq#Equal_2912| s0@@6 s1@@6) (and (= (|Seq#Length_2912| s0@@6) (|Seq#Length_2912| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2912| s0@@6))) (= (|Seq#Index_2912| s0@@6 j@@7) (|Seq#Index_2912| s1@@6 j@@7)))
 :qid |stdinbpl.512:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2912| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2912| s1@@6 j@@7))
))))
 :qid |stdinbpl.509:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2912| s0@@6 s1@@6))
)))
(assert (forall ((x@@7 T@Ref) ) (! (= (getPredWandId_4862_4863 (P x@@7)) 0)
 :qid |stdinbpl.584:15|
 :skolemid |60|
 :pattern ( (P x@@7))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_4890| (|Seq#Singleton_4890| t@@5)) 1)
 :qid |stdinbpl.224:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_4890| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2912| (|Seq#Singleton_2912| t@@6)) 1)
 :qid |stdinbpl.224:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2912| t@@6))
)))
(assert (forall ((s@@21 T@Seq_14705) (t@@7 T@Seq_14705) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_4890| s@@21))) (= (|Seq#Take_4890| (|Seq#Append_14705| s@@21 t@@7) n@@17) (|Seq#Take_4890| s@@21 n@@17)))
 :qid |stdinbpl.366:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_4890| (|Seq#Append_14705| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2912) (t@@8 T@Seq_2912) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2912| s@@22))) (= (|Seq#Take_2912| (|Seq#Append_2912| s@@22 t@@8) n@@18) (|Seq#Take_2912| s@@22 n@@18)))
 :qid |stdinbpl.366:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2912| (|Seq#Append_2912| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_14705) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_4890| s@@23))) (= (|Seq#Length_4890| (|Seq#Update_4890| s@@23 i@@5 v@@2)) (|Seq#Length_4890| s@@23)))
 :qid |stdinbpl.265:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_4890| (|Seq#Update_4890| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_4890| s@@23) (|Seq#Update_4890| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2912) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2912| s@@24))) (= (|Seq#Length_2912| (|Seq#Update_2912| s@@24 i@@6 v@@3)) (|Seq#Length_2912| s@@24)))
 :qid |stdinbpl.265:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2912| (|Seq#Update_2912| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_2912| s@@24) (|Seq#Update_2912| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_7628) (o_54 T@Ref) (f_8 T@Field_13799_13804) (v@@4 T@PolymorphicMapType_8177) ) (! (succHeap Heap@@21 (PolymorphicMapType_7628 (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@21) (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@@21) (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@21) (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@@21) (store (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@21) o_54 f_8 v@@4) (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| Heap@@21) (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@21) (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| Heap@@21) (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| Heap@@21) (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7628 (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@21) (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@@21) (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@21) (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@@21) (store (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@21) o_54 f_8 v@@4) (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| Heap@@21) (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@21) (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| Heap@@21) (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| Heap@@21) (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_7628) (o_54@@0 T@Ref) (f_8@@0 T@Field_13786_13787) (v@@5 T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_7628 (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@22) (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@@22) (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@22) (store (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@@22) o_54@@0 f_8@@0 v@@5) (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@22) (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| Heap@@22) (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@22) (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| Heap@@22) (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| Heap@@22) (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7628 (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@22) (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@@22) (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@22) (store (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@@22) o_54@@0 f_8@@0 v@@5) (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@22) (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| Heap@@22) (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@22) (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| Heap@@22) (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| Heap@@22) (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_7628) (o_54@@1 T@Ref) (f_8@@1 T@Field_4862_3034) (v@@6 Int) ) (! (succHeap Heap@@23 (PolymorphicMapType_7628 (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@23) (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@@23) (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@23) (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@@23) (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@23) (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| Heap@@23) (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@23) (store (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| Heap@@23) o_54@@1 f_8@@1 v@@6) (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| Heap@@23) (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7628 (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@23) (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@@23) (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@23) (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@@23) (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@23) (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| Heap@@23) (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@23) (store (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| Heap@@23) o_54@@1 f_8@@1 v@@6) (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| Heap@@23) (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_7628) (o_54@@2 T@Ref) (f_8@@2 T@Field_4862_7702) (v@@7 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_7628 (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@24) (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@@24) (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@24) (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@@24) (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@24) (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| Heap@@24) (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@24) (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| Heap@@24) (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| Heap@@24) (store (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| Heap@@24) o_54@@2 f_8@@2 v@@7)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7628 (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@24) (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@@24) (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@24) (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@@24) (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@24) (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| Heap@@24) (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@24) (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| Heap@@24) (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| Heap@@24) (store (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| Heap@@24) o_54@@2 f_8@@2 v@@7)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_7628) (o_54@@3 T@Ref) (f_8@@3 T@Field_4862_53) (v@@8 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_7628 (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@25) (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@@25) (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@25) (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@@25) (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@25) (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| Heap@@25) (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@25) (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| Heap@@25) (store (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| Heap@@25) o_54@@3 f_8@@3 v@@8) (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7628 (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@25) (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@@25) (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@25) (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@@25) (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@25) (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| Heap@@25) (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@25) (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| Heap@@25) (store (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| Heap@@25) o_54@@3 f_8@@3 v@@8) (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_7628) (o_54@@4 T@Ref) (f_8@@4 T@Field_4857_13804) (v@@9 T@PolymorphicMapType_8177) ) (! (succHeap Heap@@26 (PolymorphicMapType_7628 (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@26) (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@@26) (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@26) (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@@26) (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@26) (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| Heap@@26) (store (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@26) o_54@@4 f_8@@4 v@@9) (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| Heap@@26) (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| Heap@@26) (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7628 (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@26) (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@@26) (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@26) (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@@26) (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@26) (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| Heap@@26) (store (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@26) o_54@@4 f_8@@4 v@@9) (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| Heap@@26) (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| Heap@@26) (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_7628) (o_54@@5 T@Ref) (f_8@@5 T@Field_4857_4863) (v@@10 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_7628 (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@27) (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@@27) (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@27) (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@@27) (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@27) (store (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| Heap@@27) o_54@@5 f_8@@5 v@@10) (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@27) (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| Heap@@27) (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| Heap@@27) (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7628 (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@27) (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@@27) (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@27) (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@@27) (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@27) (store (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| Heap@@27) o_54@@5 f_8@@5 v@@10) (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@27) (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| Heap@@27) (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| Heap@@27) (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_7628) (o_54@@6 T@Ref) (f_8@@6 T@Field_13709_3034) (v@@11 Int) ) (! (succHeap Heap@@28 (PolymorphicMapType_7628 (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@28) (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@@28) (store (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@28) o_54@@6 f_8@@6 v@@11) (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@@28) (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@28) (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| Heap@@28) (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@28) (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| Heap@@28) (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| Heap@@28) (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7628 (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@28) (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@@28) (store (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@28) o_54@@6 f_8@@6 v@@11) (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@@28) (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@28) (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| Heap@@28) (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@28) (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| Heap@@28) (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| Heap@@28) (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_7628) (o_54@@7 T@Ref) (f_8@@7 T@Field_7701_7702) (v@@12 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_7628 (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@29) (store (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@@29) o_54@@7 f_8@@7 v@@12) (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@29) (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@@29) (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@29) (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| Heap@@29) (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@29) (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| Heap@@29) (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| Heap@@29) (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7628 (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@29) (store (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@@29) o_54@@7 f_8@@7 v@@12) (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@29) (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@@29) (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@29) (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| Heap@@29) (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@29) (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| Heap@@29) (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| Heap@@29) (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_7628) (o_54@@8 T@Ref) (f_8@@8 T@Field_7688_53) (v@@13 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_7628 (store (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@30) o_54@@8 f_8@@8 v@@13) (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@@30) (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@30) (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@@30) (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@30) (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| Heap@@30) (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@30) (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| Heap@@30) (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| Heap@@30) (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7628 (store (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@30) o_54@@8 f_8@@8 v@@13) (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@@30) (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@30) (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@@30) (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@30) (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| Heap@@30) (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@30) (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| Heap@@30) (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| Heap@@30) (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| Heap@@30)))
)))
(assert (forall ((x@@8 T@Ref) ) (! (= (PredicateMaskField_4862 (P x@@8)) (|P#sm| x@@8))
 :qid |stdinbpl.576:15|
 :skolemid |58|
 :pattern ( (PredicateMaskField_4862 (P x@@8)))
)))
(assert (forall ((s@@25 T@Seq_14705) (t@@9 T@Seq_14705) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_4890| s@@25))) (= (|Seq#Drop_4890| (|Seq#Append_14705| s@@25 t@@9) n@@19) (|Seq#Append_14705| (|Seq#Drop_4890| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.380:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_4890| (|Seq#Append_14705| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2912) (t@@10 T@Seq_2912) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2912| s@@26))) (= (|Seq#Drop_2912| (|Seq#Append_2912| s@@26 t@@10) n@@20) (|Seq#Append_2912| (|Seq#Drop_2912| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.380:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2912| (|Seq#Append_2912| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_14705) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_4890| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_4890| (|Seq#Drop_4890| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_4890| s@@27 i@@7))))
 :qid |stdinbpl.316:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_4890| s@@27 n@@21) (|Seq#Index_4890| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_2912) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_2912| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_2912| (|Seq#Drop_2912| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_2912| s@@28 i@@8))))
 :qid |stdinbpl.316:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2912| s@@28 n@@22) (|Seq#Index_2912| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_14705) (s1@@7 T@Seq_14705) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_4890|)) (not (= s1@@7 |Seq#Empty_4890|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_4890| s0@@7))) (= (|Seq#Index_4890| (|Seq#Append_14705| s0@@7 s1@@7) n@@23) (|Seq#Index_4890| s0@@7 n@@23)))
 :qid |stdinbpl.256:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_4890| (|Seq#Append_14705| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_4890| s0@@7 n@@23) (|Seq#Append_14705| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2912) (s1@@8 T@Seq_2912) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2912|)) (not (= s1@@8 |Seq#Empty_2912|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2912| s0@@8))) (= (|Seq#Index_2912| (|Seq#Append_2912| s0@@8 s1@@8) n@@24) (|Seq#Index_2912| s0@@8 n@@24)))
 :qid |stdinbpl.256:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2912| (|Seq#Append_2912| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2912| s0@@8 n@@24) (|Seq#Append_2912| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_14705) (s1@@9 T@Seq_14705) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_4890|)) (not (= s1@@9 |Seq#Empty_4890|))) (<= 0 m)) (< m (|Seq#Length_4890| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_4890| s0@@9)) (|Seq#Length_4890| s0@@9)) m) (= (|Seq#Index_4890| (|Seq#Append_14705| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_4890| s0@@9))) (|Seq#Index_4890| s1@@9 m))))
 :qid |stdinbpl.261:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_4890| s1@@9 m) (|Seq#Append_14705| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2912) (s1@@10 T@Seq_2912) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2912|)) (not (= s1@@10 |Seq#Empty_2912|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2912| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2912| s0@@10)) (|Seq#Length_2912| s0@@10)) m@@0) (= (|Seq#Index_2912| (|Seq#Append_2912| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2912| s0@@10))) (|Seq#Index_2912| s1@@10 m@@0))))
 :qid |stdinbpl.261:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2912| s1@@10 m@@0) (|Seq#Append_2912| s0@@10 s1@@10))
)))
(assert (forall ((o_54@@9 T@Ref) (f_24 T@Field_7701_7702) (Heap@@31 T@PolymorphicMapType_7628) ) (!  (=> (select (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@31) o_54@@9 $allocated) (select (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@31) (select (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@@31) o_54@@9 f_24) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@@31) o_54@@9 f_24))
)))
(assert (forall ((s@@29 T@Seq_14705) (x@@9 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_4890| s@@29))) (= (|Seq#Index_4890| s@@29 i@@9) x@@9)) (|Seq#Contains_14705| s@@29 x@@9))
 :qid |stdinbpl.413:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_14705| s@@29 x@@9) (|Seq#Index_4890| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_2912) (x@@10 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2912| s@@30))) (= (|Seq#Index_2912| s@@30 i@@10) x@@10)) (|Seq#Contains_2912| s@@30 x@@10))
 :qid |stdinbpl.413:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2912| s@@30 x@@10) (|Seq#Index_2912| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_14705) (s1@@11 T@Seq_14705) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_14705| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_14705| s0@@11 s1@@11))) (not (= (|Seq#Length_4890| s0@@11) (|Seq#Length_4890| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_14705| s0@@11 s1@@11))) (= (|Seq#Length_4890| s0@@11) (|Seq#Length_4890| s1@@11))) (= (|Seq#SkolemDiff_14705| s0@@11 s1@@11) (|Seq#SkolemDiff_14705| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_14705| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_14705| s0@@11 s1@@11) (|Seq#Length_4890| s0@@11))) (not (= (|Seq#Index_4890| s0@@11 (|Seq#SkolemDiff_14705| s0@@11 s1@@11)) (|Seq#Index_4890| s1@@11 (|Seq#SkolemDiff_14705| s0@@11 s1@@11))))))
 :qid |stdinbpl.517:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_14705| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2912) (s1@@12 T@Seq_2912) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2912| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2912| s0@@12 s1@@12))) (not (= (|Seq#Length_2912| s0@@12) (|Seq#Length_2912| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2912| s0@@12 s1@@12))) (= (|Seq#Length_2912| s0@@12) (|Seq#Length_2912| s1@@12))) (= (|Seq#SkolemDiff_2912| s0@@12 s1@@12) (|Seq#SkolemDiff_2912| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2912| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2912| s0@@12 s1@@12) (|Seq#Length_2912| s0@@12))) (not (= (|Seq#Index_2912| s0@@12 (|Seq#SkolemDiff_2912| s0@@12 s1@@12)) (|Seq#Index_2912| s1@@12 (|Seq#SkolemDiff_2912| s0@@12 s1@@12))))))
 :qid |stdinbpl.517:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2912| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_13786_13787) (v_1@@1 T@FrameType) (q T@Field_13786_13787) (w@@1 T@FrameType) (r T@Field_13786_13787) (u T@FrameType) ) (!  (=> (and (InsidePredicate_13786_13786 p@@2 v_1@@1 q w@@1) (InsidePredicate_13786_13786 q w@@1 r u)) (InsidePredicate_13786_13786 p@@2 v_1@@1 r u))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13786_13786 p@@2 v_1@@1 q w@@1) (InsidePredicate_13786_13786 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_13786_13787) (v_1@@2 T@FrameType) (q@@0 T@Field_13786_13787) (w@@2 T@FrameType) (r@@0 T@Field_4857_4863) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_13786_13786 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_13786_7688 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_13786_7688 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13786_13786 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_13786_7688 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_13786_13787) (v_1@@3 T@FrameType) (q@@1 T@Field_4857_4863) (w@@3 T@FrameType) (r@@1 T@Field_13786_13787) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_13786_7688 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7688_13786 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_13786_13786 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13786_7688 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7688_13786 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_13786_13787) (v_1@@4 T@FrameType) (q@@2 T@Field_4857_4863) (w@@4 T@FrameType) (r@@2 T@Field_4857_4863) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_13786_7688 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7688_7688 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_13786_7688 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13786_7688 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7688_7688 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_4857_4863) (v_1@@5 T@FrameType) (q@@3 T@Field_13786_13787) (w@@5 T@FrameType) (r@@3 T@Field_13786_13787) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_7688_13786 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_13786_13786 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_7688_13786 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7688_13786 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_13786_13786 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_4857_4863) (v_1@@6 T@FrameType) (q@@4 T@Field_13786_13787) (w@@6 T@FrameType) (r@@4 T@Field_4857_4863) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_7688_13786 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_13786_7688 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_7688_7688 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7688_13786 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_13786_7688 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_4857_4863) (v_1@@7 T@FrameType) (q@@5 T@Field_4857_4863) (w@@7 T@FrameType) (r@@5 T@Field_13786_13787) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_7688_7688 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7688_13786 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_7688_13786 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7688_7688 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7688_13786 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_4857_4863) (v_1@@8 T@FrameType) (q@@6 T@Field_4857_4863) (w@@8 T@FrameType) (r@@6 T@Field_4857_4863) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_7688_7688 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7688_7688 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_7688_7688 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7688_7688 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7688_7688 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((s@@31 T@Seq_14705) ) (!  (=> (= (|Seq#Length_4890| s@@31) 0) (= s@@31 |Seq#Empty_4890|))
 :qid |stdinbpl.220:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_4890| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2912) ) (!  (=> (= (|Seq#Length_2912| s@@32) 0) (= s@@32 |Seq#Empty_2912|))
 :qid |stdinbpl.220:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2912| s@@32))
)))
(assert (forall ((s@@33 T@Seq_14705) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_4890| s@@33 n@@25) |Seq#Empty_4890|))
 :qid |stdinbpl.396:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_4890| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2912) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2912| s@@34 n@@26) |Seq#Empty_2912|))
 :qid |stdinbpl.396:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2912| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i_4 () Int)
(declare-fun Heap@5 () T@PolymorphicMapType_7628)
(declare-fun x@@11 () T@Ref)
(declare-fun zs () T@Seq_14705)
(declare-fun Mask@4 () T@PolymorphicMapType_7649)
(declare-fun neverTriggered2 (Int) Bool)
(declare-fun wildcard@3 () Real)
(declare-fun Mask@3 () T@PolymorphicMapType_7649)
(declare-fun Heap@3 () T@PolymorphicMapType_7628)
(declare-fun Heap@4 () T@PolymorphicMapType_7628)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Heap@2 () T@PolymorphicMapType_7628)
(declare-fun Mask@2 () T@PolymorphicMapType_7649)
(declare-fun FrameFragment_3034 (Int) T@FrameType)
(declare-fun wildcard@2 () Real)
(declare-fun Heap@@32 () T@PolymorphicMapType_7628)
(declare-fun Heap@0 () T@PolymorphicMapType_7628)
(declare-fun Heap@1 () T@PolymorphicMapType_7628)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_7649)
(declare-fun Mask@0 () T@PolymorphicMapType_7649)
(declare-fun wildcard@0 () Real)
(declare-fun Mask@1 () T@PolymorphicMapType_7649)
(declare-fun wildcard@1 () Real)
(declare-fun i_3 () Int)
(declare-fun i_18 () Int)
(declare-fun j_14 () Int)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id test_1)
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
 (=> (= (ControlFlow 0 0) 41) (let ((anon19_correct true))
(let ((anon30_Else_correct  (=> (and (not (and (<= 0 i_4) (< i_4 (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@5) x@@11 f_7)))) (= (ControlFlow 0 23) 19)) anon19_correct)))
(let ((anon30_Then_correct  (=> (and (<= 0 i_4) (< i_4 (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@5) x@@11 f_7))) (and (=> (= (ControlFlow 0 20) (- 0 22)) (>= i_4 0)) (=> (>= i_4 0) (and (=> (= (ControlFlow 0 20) (- 0 21)) (< i_4 (|Seq#Length_4890| zs))) (=> (< i_4 (|Seq#Length_4890| zs)) (=> (= (ControlFlow 0 20) 19) anon19_correct))))))))
(let ((anon29_Else_correct  (=> (< i_4 0) (and (=> (= (ControlFlow 0 26) 20) anon30_Then_correct) (=> (= (ControlFlow 0 26) 23) anon30_Else_correct)))))
(let ((anon29_Then_correct  (=> (<= 0 i_4) (and (=> (= (ControlFlow 0 24) (- 0 25)) (HasDirectPerm_4857_3034 Mask@4 x@@11 f_7)) (=> (HasDirectPerm_4857_3034 Mask@4 x@@11 f_7) (and (=> (= (ControlFlow 0 24) 20) anon30_Then_correct) (=> (= (ControlFlow 0 24) 23) anon30_Else_correct)))))))
(let ((anon28_Else_correct  (and (=> (= (ControlFlow 0 17) (- 0 18)) (forall ((i_5_1 Int) (i_5_2 Int) ) (!  (=> (and (and (and (and (not (= i_5_1 i_5_2)) (and (<= 0 i_5_1) (< i_5_1 (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@5) x@@11 f_7)))) (and (<= 0 i_5_2) (< i_5_2 (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@5) x@@11 f_7)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_4890| zs i_5_1) (|Seq#Index_4890| zs i_5_2))))
 :qid |stdinbpl.840:17|
 :skolemid |71|
 :pattern ( (neverTriggered2 i_5_1) (neverTriggered2 i_5_2))
))) (=> (forall ((i_5_1@@0 Int) (i_5_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_5_1@@0 i_5_2@@0)) (and (<= 0 i_5_1@@0) (< i_5_1@@0 (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@5) x@@11 f_7)))) (and (<= 0 i_5_2@@0) (< i_5_2@@0 (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@5) x@@11 f_7)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_4890| zs i_5_1@@0) (|Seq#Index_4890| zs i_5_2@@0))))
 :qid |stdinbpl.840:17|
 :skolemid |71|
 :pattern ( (neverTriggered2 i_5_1@@0) (neverTriggered2 i_5_2@@0))
)) (=> (= (ControlFlow 0 17) (- 0 16)) (forall ((i_5_1@@1 Int) ) (!  (=> (and (<= 0 i_5_1@@1) (< i_5_1@@1 (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@5) x@@11 f_7))) (>= (select (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| Mask@4) (|Seq#Index_4890| zs i_5_1@@1) g) FullPerm))
 :qid |stdinbpl.847:17|
 :skolemid |72|
 :pattern ( (|Seq#Index_4890| zs i_5_1@@1))
 :pattern ( (|Seq#Index_4890| zs i_5_1@@1))
)))))))
(let ((anon14_correct  (=> (and (> wildcard@3 NoPerm) (not (= x@@11 null))) (=> (and (and (= Mask@4 (PolymorphicMapType_7649 (store (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| Mask@3) x@@11 f_7 (+ (select (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| Mask@3) x@@11 f_7) wildcard@3)) (|PolymorphicMapType_7649_4862_4863#PolymorphicMapType_7649| Mask@3) (|PolymorphicMapType_7649_4857_4863#PolymorphicMapType_7649| Mask@3) (|PolymorphicMapType_7649_4857_53#PolymorphicMapType_7649| Mask@3) (|PolymorphicMapType_7649_4857_7702#PolymorphicMapType_7649| Mask@3) (|PolymorphicMapType_7649_4857_30729#PolymorphicMapType_7649| Mask@3) (|PolymorphicMapType_7649_4862_3034#PolymorphicMapType_7649| Mask@3) (|PolymorphicMapType_7649_4862_53#PolymorphicMapType_7649| Mask@3) (|PolymorphicMapType_7649_4862_7702#PolymorphicMapType_7649| Mask@3) (|PolymorphicMapType_7649_4862_31140#PolymorphicMapType_7649| Mask@3))) (state Heap@5 Mask@4)) (and (state Heap@5 Mask@4) (state Heap@5 Mask@4))) (and (and (=> (= (ControlFlow 0 27) 17) anon28_Else_correct) (=> (= (ControlFlow 0 27) 24) anon29_Then_correct)) (=> (= (ControlFlow 0 27) 26) anon29_Else_correct))))))
(let ((anon27_Else_correct  (=> (HasDirectPerm_4862_4863 Mask@3 null (P x@@11)) (=> (and (= Heap@5 Heap@3) (= (ControlFlow 0 29) 27)) anon14_correct))))
(let ((anon27_Then_correct  (=> (and (and (not (HasDirectPerm_4862_4863 Mask@3 null (P x@@11))) (= Heap@4 (PolymorphicMapType_7628 (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@3) (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@3) (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@3) (store (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@3) null (P x@@11) newVersion@0) (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@3) (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| Heap@3) (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@3) (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| Heap@3) (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| Heap@3) (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| Heap@3)))) (and (= Heap@5 Heap@4) (= (ControlFlow 0 28) 27))) anon14_correct)))
(let ((anon12_correct  (=> (= Heap@3 (PolymorphicMapType_7628 (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@2) (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@2) (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@2) (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@2) (store (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@2) null (|P#sm| x@@11) (PolymorphicMapType_8177 (store (|PolymorphicMapType_8177_4857_3034#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@2) null (|P#sm| x@@11))) x@@11 f_7 true) (|PolymorphicMapType_8177_4857_53#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@2) null (|P#sm| x@@11))) (|PolymorphicMapType_8177_4857_7702#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@2) null (|P#sm| x@@11))) (|PolymorphicMapType_8177_4857_13787#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@2) null (|P#sm| x@@11))) (|PolymorphicMapType_8177_4857_24287#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@2) null (|P#sm| x@@11))) (|PolymorphicMapType_8177_13786_3034#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@2) null (|P#sm| x@@11))) (|PolymorphicMapType_8177_13786_53#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@2) null (|P#sm| x@@11))) (|PolymorphicMapType_8177_13786_7702#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@2) null (|P#sm| x@@11))) (|PolymorphicMapType_8177_13786_13787#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@2) null (|P#sm| x@@11))) (|PolymorphicMapType_8177_13786_25335#PolymorphicMapType_8177| (select (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@2) null (|P#sm| x@@11))))) (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| Heap@2) (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@2) (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| Heap@2) (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| Heap@2) (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| Heap@2))) (=> (and (and (state Heap@3 Mask@2) (state Heap@3 Mask@2)) (and (|P#trigger_4862| Heap@3 (P x@@11)) (= (select (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@3) null (P x@@11)) (FrameFragment_3034 (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@3) x@@11 f_7))))) (and (=> (= (ControlFlow 0 30) (- 0 31)) (> (select (|PolymorphicMapType_7649_4862_4863#PolymorphicMapType_7649| Mask@2) null (P x@@11)) NoPerm)) (=> (> (select (|PolymorphicMapType_7649_4862_4863#PolymorphicMapType_7649| Mask@2) null (P x@@11)) NoPerm) (=> (> wildcard@2 NoPerm) (=> (and (< wildcard@2 (select (|PolymorphicMapType_7649_4862_4863#PolymorphicMapType_7649| Mask@2) null (P x@@11))) (= Mask@3 (PolymorphicMapType_7649 (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| Mask@2) (store (|PolymorphicMapType_7649_4862_4863#PolymorphicMapType_7649| Mask@2) null (P x@@11) (- (select (|PolymorphicMapType_7649_4862_4863#PolymorphicMapType_7649| Mask@2) null (P x@@11)) wildcard@2)) (|PolymorphicMapType_7649_4857_4863#PolymorphicMapType_7649| Mask@2) (|PolymorphicMapType_7649_4857_53#PolymorphicMapType_7649| Mask@2) (|PolymorphicMapType_7649_4857_7702#PolymorphicMapType_7649| Mask@2) (|PolymorphicMapType_7649_4857_30729#PolymorphicMapType_7649| Mask@2) (|PolymorphicMapType_7649_4862_3034#PolymorphicMapType_7649| Mask@2) (|PolymorphicMapType_7649_4862_53#PolymorphicMapType_7649| Mask@2) (|PolymorphicMapType_7649_4862_7702#PolymorphicMapType_7649| Mask@2) (|PolymorphicMapType_7649_4862_31140#PolymorphicMapType_7649| Mask@2)))) (and (=> (= (ControlFlow 0 30) 28) anon27_Then_correct) (=> (= (ControlFlow 0 30) 29) anon27_Else_correct))))))))))
(let ((anon26_Else_correct  (=> (HasDirectPerm_4862_4863 Mask@2 null (P x@@11)) (=> (and (= Heap@2 Heap@@32) (= (ControlFlow 0 33) 30)) anon12_correct))))
(let ((anon26_Then_correct  (=> (not (HasDirectPerm_4862_4863 Mask@2 null (P x@@11))) (=> (and (and (= Heap@0 (PolymorphicMapType_7628 (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@32) (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@@32) (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@32) (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@@32) (store (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@@32) null (|P#sm| x@@11) ZeroPMask) (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| Heap@@32) (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@@32) (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| Heap@@32) (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| Heap@@32) (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| Heap@@32))) (= Heap@1 (PolymorphicMapType_7628 (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@0) (|PolymorphicMapType_7628_4668_4669#PolymorphicMapType_7628| Heap@0) (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@0) (store (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@0) null (P x@@11) freshVersion@0) (|PolymorphicMapType_7628_4866_17855#PolymorphicMapType_7628| Heap@0) (|PolymorphicMapType_7628_4857_4863#PolymorphicMapType_7628| Heap@0) (|PolymorphicMapType_7628_4857_21471#PolymorphicMapType_7628| Heap@0) (|PolymorphicMapType_7628_4862_3034#PolymorphicMapType_7628| Heap@0) (|PolymorphicMapType_7628_4862_53#PolymorphicMapType_7628| Heap@0) (|PolymorphicMapType_7628_4862_7702#PolymorphicMapType_7628| Heap@0)))) (and (= Heap@2 Heap@1) (= (ControlFlow 0 32) 30))) anon12_correct))))
(let ((anon23_Else_correct  (and (=> (= (ControlFlow 0 34) (- 0 36)) (forall ((i_3_2 Int) (i_3_3 Int) ) (!  (=> (and (and (and (and (not (= i_3_2 i_3_3)) (and (<= 0 i_3_2) (< i_3_2 (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@32) x@@11 f_7)))) (and (<= 0 i_3_3) (< i_3_3 (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@32) x@@11 f_7)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_4890| zs i_3_2) (|Seq#Index_4890| zs i_3_3))))
 :qid |stdinbpl.728:15|
 :skolemid |65|
))) (=> (forall ((i_3_2@@0 Int) (i_3_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3_2@@0 i_3_3@@0)) (and (<= 0 i_3_2@@0) (< i_3_2@@0 (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@32) x@@11 f_7)))) (and (<= 0 i_3_3@@0) (< i_3_3@@0 (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@32) x@@11 f_7)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_4890| zs i_3_2@@0) (|Seq#Index_4890| zs i_3_3@@0))))
 :qid |stdinbpl.728:15|
 :skolemid |65|
)) (=> (and (and (forall ((i_3_2@@1 Int) ) (!  (=> (and (and (<= 0 i_3_2@@1) (< i_3_2@@1 (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@32) x@@11 f_7))) (< NoPerm FullPerm)) (and (qpRange1 (|Seq#Index_4890| zs i_3_2@@1)) (= (invRecv1 (|Seq#Index_4890| zs i_3_2@@1)) i_3_2@@1)))
 :qid |stdinbpl.734:22|
 :skolemid |66|
 :pattern ( (|Seq#Index_4890| zs i_3_2@@1))
 :pattern ( (|Seq#Index_4890| zs i_3_2@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv1 o_9)) (< (invRecv1 o_9) (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@32) x@@11 f_7))) (< NoPerm FullPerm)) (qpRange1 o_9)) (= (|Seq#Index_4890| zs (invRecv1 o_9)) o_9))
 :qid |stdinbpl.738:22|
 :skolemid |67|
 :pattern ( (invRecv1 o_9))
))) (and (forall ((i_3_2@@2 Int) ) (!  (=> (and (<= 0 i_3_2@@2) (< i_3_2@@2 (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@32) x@@11 f_7))) (not (= (|Seq#Index_4890| zs i_3_2@@2) null)))
 :qid |stdinbpl.744:22|
 :skolemid |68|
 :pattern ( (|Seq#Index_4890| zs i_3_2@@2))
 :pattern ( (|Seq#Index_4890| zs i_3_2@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv1 o_9@@0)) (< (invRecv1 o_9@@0) (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@32) x@@11 f_7))) (< NoPerm FullPerm)) (qpRange1 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_4890| zs (invRecv1 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| QPMask@0) o_9@@0 g) (+ (select (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| Mask@0) o_9@@0 g) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv1 o_9@@0)) (< (invRecv1 o_9@@0) (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@32) x@@11 f_7))) (< NoPerm FullPerm)) (qpRange1 o_9@@0))) (= (select (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| QPMask@0) o_9@@0 g) (select (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| Mask@0) o_9@@0 g))))
 :qid |stdinbpl.750:22|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| QPMask@0) o_9@@0 g))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_7688_53) ) (!  (=> true (= (select (|PolymorphicMapType_7649_4857_53#PolymorphicMapType_7649| Mask@0) o_9@@1 f_5) (select (|PolymorphicMapType_7649_4857_53#PolymorphicMapType_7649| QPMask@0) o_9@@1 f_5)))
 :qid |stdinbpl.754:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_7649_4857_53#PolymorphicMapType_7649| Mask@0) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_7649_4857_53#PolymorphicMapType_7649| QPMask@0) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_7701_7702) ) (!  (=> true (= (select (|PolymorphicMapType_7649_4857_7702#PolymorphicMapType_7649| Mask@0) o_9@@2 f_5@@0) (select (|PolymorphicMapType_7649_4857_7702#PolymorphicMapType_7649| QPMask@0) o_9@@2 f_5@@0)))
 :qid |stdinbpl.754:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_7649_4857_7702#PolymorphicMapType_7649| Mask@0) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_7649_4857_7702#PolymorphicMapType_7649| QPMask@0) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_13709_3034) ) (!  (=> (not (= f_5@@1 g)) (= (select (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| Mask@0) o_9@@3 f_5@@1) (select (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| QPMask@0) o_9@@3 f_5@@1)))
 :qid |stdinbpl.754:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| Mask@0) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| QPMask@0) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_4857_4863) ) (!  (=> true (= (select (|PolymorphicMapType_7649_4857_4863#PolymorphicMapType_7649| Mask@0) o_9@@4 f_5@@2) (select (|PolymorphicMapType_7649_4857_4863#PolymorphicMapType_7649| QPMask@0) o_9@@4 f_5@@2)))
 :qid |stdinbpl.754:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_7649_4857_4863#PolymorphicMapType_7649| Mask@0) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_7649_4857_4863#PolymorphicMapType_7649| QPMask@0) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_4857_13804) ) (!  (=> true (= (select (|PolymorphicMapType_7649_4857_30729#PolymorphicMapType_7649| Mask@0) o_9@@5 f_5@@3) (select (|PolymorphicMapType_7649_4857_30729#PolymorphicMapType_7649| QPMask@0) o_9@@5 f_5@@3)))
 :qid |stdinbpl.754:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_7649_4857_30729#PolymorphicMapType_7649| Mask@0) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_7649_4857_30729#PolymorphicMapType_7649| QPMask@0) o_9@@5 f_5@@3))
))) (forall ((o_9@@6 T@Ref) (f_5@@4 T@Field_4862_53) ) (!  (=> true (= (select (|PolymorphicMapType_7649_4862_53#PolymorphicMapType_7649| Mask@0) o_9@@6 f_5@@4) (select (|PolymorphicMapType_7649_4862_53#PolymorphicMapType_7649| QPMask@0) o_9@@6 f_5@@4)))
 :qid |stdinbpl.754:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_7649_4862_53#PolymorphicMapType_7649| Mask@0) o_9@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_7649_4862_53#PolymorphicMapType_7649| QPMask@0) o_9@@6 f_5@@4))
))) (forall ((o_9@@7 T@Ref) (f_5@@5 T@Field_4862_7702) ) (!  (=> true (= (select (|PolymorphicMapType_7649_4862_7702#PolymorphicMapType_7649| Mask@0) o_9@@7 f_5@@5) (select (|PolymorphicMapType_7649_4862_7702#PolymorphicMapType_7649| QPMask@0) o_9@@7 f_5@@5)))
 :qid |stdinbpl.754:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_7649_4862_7702#PolymorphicMapType_7649| Mask@0) o_9@@7 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_7649_4862_7702#PolymorphicMapType_7649| QPMask@0) o_9@@7 f_5@@5))
))) (forall ((o_9@@8 T@Ref) (f_5@@6 T@Field_4862_3034) ) (!  (=> true (= (select (|PolymorphicMapType_7649_4862_3034#PolymorphicMapType_7649| Mask@0) o_9@@8 f_5@@6) (select (|PolymorphicMapType_7649_4862_3034#PolymorphicMapType_7649| QPMask@0) o_9@@8 f_5@@6)))
 :qid |stdinbpl.754:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_7649_4862_3034#PolymorphicMapType_7649| Mask@0) o_9@@8 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_7649_4862_3034#PolymorphicMapType_7649| QPMask@0) o_9@@8 f_5@@6))
))) (forall ((o_9@@9 T@Ref) (f_5@@7 T@Field_13786_13787) ) (!  (=> true (= (select (|PolymorphicMapType_7649_4862_4863#PolymorphicMapType_7649| Mask@0) o_9@@9 f_5@@7) (select (|PolymorphicMapType_7649_4862_4863#PolymorphicMapType_7649| QPMask@0) o_9@@9 f_5@@7)))
 :qid |stdinbpl.754:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_7649_4862_4863#PolymorphicMapType_7649| Mask@0) o_9@@9 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_7649_4862_4863#PolymorphicMapType_7649| QPMask@0) o_9@@9 f_5@@7))
))) (forall ((o_9@@10 T@Ref) (f_5@@8 T@Field_13799_13804) ) (!  (=> true (= (select (|PolymorphicMapType_7649_4862_31140#PolymorphicMapType_7649| Mask@0) o_9@@10 f_5@@8) (select (|PolymorphicMapType_7649_4862_31140#PolymorphicMapType_7649| QPMask@0) o_9@@10 f_5@@8)))
 :qid |stdinbpl.754:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_7649_4862_31140#PolymorphicMapType_7649| Mask@0) o_9@@10 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_7649_4862_31140#PolymorphicMapType_7649| QPMask@0) o_9@@10 f_5@@8))
))) (state Heap@@32 QPMask@0)) (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0))) (and (=> (= (ControlFlow 0 34) (- 0 35)) (> (select (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| QPMask@0) x@@11 f_7) NoPerm)) (=> (> (select (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| QPMask@0) x@@11 f_7) NoPerm) (=> (> wildcard@0 NoPerm) (=> (and (and (and (< wildcard@0 (select (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| QPMask@0) x@@11 f_7)) (= Mask@1 (PolymorphicMapType_7649 (store (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| QPMask@0) x@@11 f_7 (- (select (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| QPMask@0) x@@11 f_7) wildcard@0)) (|PolymorphicMapType_7649_4862_4863#PolymorphicMapType_7649| QPMask@0) (|PolymorphicMapType_7649_4857_4863#PolymorphicMapType_7649| QPMask@0) (|PolymorphicMapType_7649_4857_53#PolymorphicMapType_7649| QPMask@0) (|PolymorphicMapType_7649_4857_7702#PolymorphicMapType_7649| QPMask@0) (|PolymorphicMapType_7649_4857_30729#PolymorphicMapType_7649| QPMask@0) (|PolymorphicMapType_7649_4862_3034#PolymorphicMapType_7649| QPMask@0) (|PolymorphicMapType_7649_4862_53#PolymorphicMapType_7649| QPMask@0) (|PolymorphicMapType_7649_4862_7702#PolymorphicMapType_7649| QPMask@0) (|PolymorphicMapType_7649_4862_31140#PolymorphicMapType_7649| QPMask@0)))) (and (> wildcard@1 NoPerm) (= Mask@2 (PolymorphicMapType_7649 (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| Mask@1) (store (|PolymorphicMapType_7649_4862_4863#PolymorphicMapType_7649| Mask@1) null (P x@@11) (+ (select (|PolymorphicMapType_7649_4862_4863#PolymorphicMapType_7649| Mask@1) null (P x@@11)) wildcard@1)) (|PolymorphicMapType_7649_4857_4863#PolymorphicMapType_7649| Mask@1) (|PolymorphicMapType_7649_4857_53#PolymorphicMapType_7649| Mask@1) (|PolymorphicMapType_7649_4857_7702#PolymorphicMapType_7649| Mask@1) (|PolymorphicMapType_7649_4857_30729#PolymorphicMapType_7649| Mask@1) (|PolymorphicMapType_7649_4862_3034#PolymorphicMapType_7649| Mask@1) (|PolymorphicMapType_7649_4862_53#PolymorphicMapType_7649| Mask@1) (|PolymorphicMapType_7649_4862_7702#PolymorphicMapType_7649| Mask@1) (|PolymorphicMapType_7649_4862_31140#PolymorphicMapType_7649| Mask@1))))) (and (and (state Heap@@32 Mask@2) (state Heap@@32 Mask@2)) (and (|P#trigger_4862| Heap@@32 (P x@@11)) (= (select (|PolymorphicMapType_7628_4862_4863#PolymorphicMapType_7628| Heap@@32) null (P x@@11)) (FrameFragment_3034 (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@32) x@@11 f_7)))))) (and (=> (= (ControlFlow 0 34) 32) anon26_Then_correct) (=> (= (ControlFlow 0 34) 33) anon26_Else_correct))))))))))))
(let ((anon9_correct true))
(let ((anon25_Else_correct  (=> (and (not (and (<= 0 i_3) (< i_3 (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@32) x@@11 f_7)))) (= (ControlFlow 0 12) 8)) anon9_correct)))
(let ((anon25_Then_correct  (=> (and (<= 0 i_3) (< i_3 (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@32) x@@11 f_7))) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= i_3 0)) (=> (>= i_3 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< i_3 (|Seq#Length_4890| zs))) (=> (< i_3 (|Seq#Length_4890| zs)) (=> (= (ControlFlow 0 9) 8) anon9_correct))))))))
(let ((anon24_Else_correct  (=> (< i_3 0) (and (=> (= (ControlFlow 0 15) 9) anon25_Then_correct) (=> (= (ControlFlow 0 15) 12) anon25_Else_correct)))))
(let ((anon24_Then_correct  (=> (<= 0 i_3) (and (=> (= (ControlFlow 0 13) (- 0 14)) (HasDirectPerm_4857_3034 Mask@0 x@@11 f_7)) (=> (HasDirectPerm_4857_3034 Mask@0 x@@11 f_7) (and (=> (= (ControlFlow 0 13) 9) anon25_Then_correct) (=> (= (ControlFlow 0 13) 12) anon25_Else_correct)))))))
(let ((anon21_Else_correct  (=> (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (>= i_1 0) (and (< i_1 (|Seq#Length_4890| zs)) (and (>= j_1 0) (and (< j_1 (|Seq#Length_4890| zs)) (not (= i_1 j_1)))))) (not (= (|Seq#Index_4890| zs i_1) (|Seq#Index_4890| zs j_1))))
 :qid |stdinbpl.701:20|
 :skolemid |64|
 :pattern ( (|Seq#Index_4890| zs i_1) (|Seq#Index_4890| zs j_1))
)) (=> (and (state Heap@@32 Mask@0) (state Heap@@32 Mask@0)) (and (and (=> (= (ControlFlow 0 37) 34) anon23_Else_correct) (=> (= (ControlFlow 0 37) 13) anon24_Then_correct)) (=> (= (ControlFlow 0 37) 15) anon24_Else_correct))))))
(let ((anon3_correct true))
(let ((anon22_Else_correct  (=> (and (not (and (>= i_18 0) (and (< i_18 (|Seq#Length_4890| zs)) (and (>= j_14 0) (and (< j_14 (|Seq#Length_4890| zs)) (not (= i_18 j_14))))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon22_Then_correct  (=> (and (>= i_18 0) (and (< i_18 (|Seq#Length_4890| zs)) (and (>= j_14 0) (and (< j_14 (|Seq#Length_4890| zs)) (not (= i_18 j_14)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i_18 0)) (=> (>= i_18 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i_18 (|Seq#Length_4890| zs))) (=> (< i_18 (|Seq#Length_4890| zs)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_14 0)) (=> (>= j_14 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_14 (|Seq#Length_4890| zs))) (=> (< j_14 (|Seq#Length_4890| zs)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (and (and (state Heap@@32 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_7628_4665_53#PolymorphicMapType_7628| Heap@@32) x@@11 $allocated) (not (= x@@11 null)))) (and (and (= Mask@0 (PolymorphicMapType_7649 (store (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| ZeroMask) x@@11 f_7 (+ (select (|PolymorphicMapType_7649_4857_3034#PolymorphicMapType_7649| ZeroMask) x@@11 f_7) FullPerm)) (|PolymorphicMapType_7649_4862_4863#PolymorphicMapType_7649| ZeroMask) (|PolymorphicMapType_7649_4857_4863#PolymorphicMapType_7649| ZeroMask) (|PolymorphicMapType_7649_4857_53#PolymorphicMapType_7649| ZeroMask) (|PolymorphicMapType_7649_4857_7702#PolymorphicMapType_7649| ZeroMask) (|PolymorphicMapType_7649_4857_30729#PolymorphicMapType_7649| ZeroMask) (|PolymorphicMapType_7649_4862_3034#PolymorphicMapType_7649| ZeroMask) (|PolymorphicMapType_7649_4862_53#PolymorphicMapType_7649| ZeroMask) (|PolymorphicMapType_7649_4862_7702#PolymorphicMapType_7649| ZeroMask) (|PolymorphicMapType_7649_4862_31140#PolymorphicMapType_7649| ZeroMask))) (state Heap@@32 Mask@0)) (and (state Heap@@32 Mask@0) (state Heap@@32 Mask@0)))) (and (=> (= (ControlFlow 0 38) (- 0 40)) (HasDirectPerm_4857_3034 Mask@0 x@@11 f_7)) (=> (HasDirectPerm_4857_3034 Mask@0 x@@11 f_7) (=> (<= 0 (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@32) x@@11 f_7)) (and (=> (= (ControlFlow 0 38) (- 0 39)) (HasDirectPerm_4857_3034 Mask@0 x@@11 f_7)) (=> (HasDirectPerm_4857_3034 Mask@0 x@@11 f_7) (=> (< (select (|PolymorphicMapType_7628_4857_3034#PolymorphicMapType_7628| Heap@@32) x@@11 f_7) (|Seq#Length_4890| zs)) (=> (and (state Heap@@32 Mask@0) (state Heap@@32 Mask@0)) (and (and (=> (= (ControlFlow 0 38) 37) anon21_Else_correct) (=> (= (ControlFlow 0 38) 2) anon22_Then_correct)) (=> (= (ControlFlow 0 38) 7) anon22_Else_correct))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 41) 38)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
