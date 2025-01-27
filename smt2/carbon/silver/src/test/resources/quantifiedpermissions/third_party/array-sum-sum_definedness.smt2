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
(declare-sort T@Field_11164_53 0)
(declare-sort T@Field_11177_11178 0)
(declare-sort T@Field_17192_3109 0)
(declare-sort T@Field_7619_29592 0)
(declare-sort T@Field_7619_29459 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_11125 0)) (((PolymorphicMapType_11125 (|PolymorphicMapType_11125_7619_3124#PolymorphicMapType_11125| (Array T@Ref T@Field_17192_3109 Real)) (|PolymorphicMapType_11125_7619_53#PolymorphicMapType_11125| (Array T@Ref T@Field_11164_53 Real)) (|PolymorphicMapType_11125_7619_11178#PolymorphicMapType_11125| (Array T@Ref T@Field_11177_11178 Real)) (|PolymorphicMapType_11125_7619_29459#PolymorphicMapType_11125| (Array T@Ref T@Field_7619_29459 Real)) (|PolymorphicMapType_11125_7619_33714#PolymorphicMapType_11125| (Array T@Ref T@Field_7619_29592 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11653 0)) (((PolymorphicMapType_11653 (|PolymorphicMapType_11653_11164_53#PolymorphicMapType_11653| (Array T@Ref T@Field_11164_53 Bool)) (|PolymorphicMapType_11653_11164_11178#PolymorphicMapType_11653| (Array T@Ref T@Field_11177_11178 Bool)) (|PolymorphicMapType_11653_11164_3109#PolymorphicMapType_11653| (Array T@Ref T@Field_17192_3109 Bool)) (|PolymorphicMapType_11653_11164_29459#PolymorphicMapType_11653| (Array T@Ref T@Field_7619_29459 Bool)) (|PolymorphicMapType_11653_11164_30770#PolymorphicMapType_11653| (Array T@Ref T@Field_7619_29592 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11104 0)) (((PolymorphicMapType_11104 (|PolymorphicMapType_11104_7419_53#PolymorphicMapType_11104| (Array T@Ref T@Field_11164_53 Bool)) (|PolymorphicMapType_11104_7422_7423#PolymorphicMapType_11104| (Array T@Ref T@Field_11177_11178 T@Ref)) (|PolymorphicMapType_11104_7619_3124#PolymorphicMapType_11104| (Array T@Ref T@Field_17192_3109 Int)) (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| (Array T@Ref T@Field_7619_29592 T@PolymorphicMapType_11653)) (|PolymorphicMapType_11104_11164_29459#PolymorphicMapType_11104| (Array T@Ref T@Field_7619_29459 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_11164_53)
(declare-fun res_1 () T@Field_17192_3109)
(declare-fun val () T@Field_17192_3109)
(declare-sort T@Seq_17270 0)
(declare-fun |Seq#Length_7640| (T@Seq_17270) Int)
(declare-fun |Seq#Drop_7640| (T@Seq_17270 Int) T@Seq_17270)
(declare-sort T@Seq_2987 0)
(declare-fun |Seq#Length_2987| (T@Seq_2987) Int)
(declare-fun |Seq#Drop_2987| (T@Seq_2987 Int) T@Seq_2987)
(declare-fun succHeap (T@PolymorphicMapType_11104 T@PolymorphicMapType_11104) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_11104 T@PolymorphicMapType_11104) Bool)
(declare-fun state (T@PolymorphicMapType_11104 T@PolymorphicMapType_11125) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_11125) Bool)
(declare-fun sum_1 (T@PolymorphicMapType_11104 T@Ref Int Int Int T@Seq_17270) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun null () T@Ref)
(declare-fun |Seq#ContainsTrigger_2987| (T@Seq_2987 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2987)
(declare-fun |Seq#Contains_2987| (T@Seq_2987 Int) Bool)
(declare-fun |Seq#Index_7640| (T@Seq_17270 Int) T@Ref)
(declare-fun |sum'| (T@PolymorphicMapType_11104 T@Ref Int Int Int T@Seq_17270) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_11653)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2987| (T@Seq_2987 Int) Int)
(declare-fun |Seq#Empty_7640| () T@Seq_17270)
(declare-fun |Seq#Empty_2987| () T@Seq_2987)
(declare-fun |Seq#Update_7640| (T@Seq_17270 Int T@Ref) T@Seq_17270)
(declare-fun |Seq#Update_2987| (T@Seq_2987 Int Int) T@Seq_2987)
(declare-fun |Seq#Take_7640| (T@Seq_17270 Int) T@Seq_17270)
(declare-fun |Seq#Take_2987| (T@Seq_2987 Int) T@Seq_2987)
(declare-fun dummyFunction_3921 (Int) Bool)
(declare-fun |sum#triggerStateless| (T@Ref Int Int Int T@Seq_17270) Int)
(declare-fun |Seq#Contains_17270| (T@Seq_17270 T@Ref) Bool)
(declare-fun |Seq#Skolem_17270| (T@Seq_17270 T@Ref) Int)
(declare-fun |Seq#Skolem_2987| (T@Seq_2987 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_11104 T@PolymorphicMapType_11104 T@PolymorphicMapType_11125) Bool)
(declare-fun IsPredicateField_7619_29550 (T@Field_7619_29459) Bool)
(declare-fun PredicateMaskField_7619 (T@Field_7619_29459) T@Field_7619_29592)
(declare-fun HasDirectPerm_7619_29523 (T@PolymorphicMapType_11125 T@Ref T@Field_7619_29459) Bool)
(declare-fun IsWandField_7619_31297 (T@Field_7619_29459) Bool)
(declare-fun WandMaskField_7619 (T@Field_7619_29459) T@Field_7619_29592)
(declare-fun |Seq#Singleton_7640| (T@Ref) T@Seq_17270)
(declare-fun |Seq#Singleton_2987| (Int) T@Seq_2987)
(declare-fun |Seq#Append_17270| (T@Seq_17270 T@Seq_17270) T@Seq_17270)
(declare-fun |Seq#Append_2987| (T@Seq_2987 T@Seq_2987) T@Seq_2987)
(declare-fun dummyHeap () T@PolymorphicMapType_11104)
(declare-fun ZeroMask () T@PolymorphicMapType_11125)
(declare-fun InsidePredicate_11164_11164 (T@Field_7619_29459 T@FrameType T@Field_7619_29459 T@FrameType) Bool)
(declare-fun IsPredicateField_7617_3109 (T@Field_17192_3109) Bool)
(declare-fun IsWandField_7617_3109 (T@Field_17192_3109) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7619_34843 (T@Field_7619_29592) Bool)
(declare-fun IsWandField_7619_34859 (T@Field_7619_29592) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7619_11178 (T@Field_11177_11178) Bool)
(declare-fun IsWandField_7619_11178 (T@Field_11177_11178) Bool)
(declare-fun IsPredicateField_7619_53 (T@Field_11164_53) Bool)
(declare-fun IsWandField_7619_53 (T@Field_11164_53) Bool)
(declare-fun HasDirectPerm_7619_35297 (T@PolymorphicMapType_11125 T@Ref T@Field_7619_29592) Bool)
(declare-fun HasDirectPerm_7619_11178 (T@PolymorphicMapType_11125 T@Ref T@Field_11177_11178) Bool)
(declare-fun HasDirectPerm_7619_53 (T@PolymorphicMapType_11125 T@Ref T@Field_11164_53) Bool)
(declare-fun HasDirectPerm_7619_3124 (T@PolymorphicMapType_11125 T@Ref T@Field_17192_3109) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_11125 T@PolymorphicMapType_11125 T@PolymorphicMapType_11125) Bool)
(declare-fun |Seq#Equal_17270| (T@Seq_17270 T@Seq_17270) Bool)
(declare-fun |Seq#Equal_2987| (T@Seq_2987 T@Seq_2987) Bool)
(declare-fun |Seq#ContainsTrigger_7640| (T@Seq_17270 T@Ref) Bool)
(declare-fun |Seq#SkolemDiff_17270| (T@Seq_17270 T@Seq_17270) Int)
(declare-fun |Seq#SkolemDiff_2987| (T@Seq_2987 T@Seq_2987) Int)
(declare-fun |sum#frame| (T@FrameType T@Ref Int Int Int T@Seq_17270) Int)
(declare-fun FrameFragment_3668 (Int) T@FrameType)
(declare-fun |sum#condqp1| (T@PolymorphicMapType_11104 T@Ref Int Int Int T@Seq_17270) Int)
(declare-fun |sk_sum#condqp1| (Int Int) Int)
(assert (distinct res_1 val)
)
(assert (forall ((s T@Seq_17270) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_7640| s)) (= (|Seq#Length_7640| (|Seq#Drop_7640| s n)) (- (|Seq#Length_7640| s) n))) (=> (< (|Seq#Length_7640| s) n) (= (|Seq#Length_7640| (|Seq#Drop_7640| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_7640| (|Seq#Drop_7640| s n)) (|Seq#Length_7640| s))))
 :qid |stdinbpl.303:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_7640| (|Seq#Drop_7640| s n)))
 :pattern ( (|Seq#Length_7640| s) (|Seq#Drop_7640| s n))
)))
(assert (forall ((s@@0 T@Seq_2987) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2987| s@@0)) (= (|Seq#Length_2987| (|Seq#Drop_2987| s@@0 n@@0)) (- (|Seq#Length_2987| s@@0) n@@0))) (=> (< (|Seq#Length_2987| s@@0) n@@0) (= (|Seq#Length_2987| (|Seq#Drop_2987| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2987| (|Seq#Drop_2987| s@@0 n@@0)) (|Seq#Length_2987| s@@0))))
 :qid |stdinbpl.303:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2987| (|Seq#Drop_2987| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2987| s@@0) (|Seq#Drop_2987| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_11104) (Heap1 T@PolymorphicMapType_11104) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_11104) (Mask T@PolymorphicMapType_11125) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_11104) (Mask@@0 T@PolymorphicMapType_11125) (diz T@Ref) (lo Int) (hi Int) (i Int) (ar_1 T@Seq_17270) ) (!  (=> (and (state Heap@@0 Mask@@0) (< AssumeFunctionsAbove 0)) (=> (and (and (and (not (= diz null)) (and (<= 0 lo) (and (<= lo i) (<= i hi)))) (<= hi (|Seq#Length_7640| ar_1))) (forall ((k1 Int) (k2 Int) ) (!  (=> (and (|Seq#Contains_2987| (|Seq#Range| lo hi) k1) (and (|Seq#Contains_2987| (|Seq#Range| lo hi) k2) (not (= k1 k2)))) (not (= (|Seq#Index_7640| ar_1 k1) (|Seq#Index_7640| ar_1 k2))))
 :qid |stdinbpl.600:143|
 :skolemid |60|
 :pattern ( (|Seq#ContainsTrigger_2987| (|Seq#Range| lo hi) k1) (|Seq#ContainsTrigger_2987| (|Seq#Range| lo hi) k2))
 :pattern ( (|Seq#ContainsTrigger_2987| (|Seq#Range| lo hi) k1) (|Seq#Contains_2987| (|Seq#Range| lo hi) k2))
 :pattern ( (|Seq#Contains_2987| (|Seq#Range| lo hi) k1) (|Seq#ContainsTrigger_2987| (|Seq#Range| lo hi) k2))
 :pattern ( (|Seq#Contains_2987| (|Seq#Range| lo hi) k1) (|Seq#Contains_2987| (|Seq#Range| lo hi) k2))
 :pattern ( (|Seq#ContainsTrigger_2987| (|Seq#Range| lo hi) k1) (|Seq#Index_7640| ar_1 k2))
 :pattern ( (|Seq#Contains_2987| (|Seq#Range| lo hi) k1) (|Seq#Index_7640| ar_1 k2))
 :pattern ( (|Seq#ContainsTrigger_2987| (|Seq#Range| lo hi) k2) (|Seq#Index_7640| ar_1 k1))
 :pattern ( (|Seq#Contains_2987| (|Seq#Range| lo hi) k2) (|Seq#Index_7640| ar_1 k1))
 :pattern ( (|Seq#Index_7640| ar_1 k1) (|Seq#Index_7640| ar_1 k2))
))) (= (sum_1 Heap@@0 diz lo hi i ar_1) (ite (< i hi) (+ (select (|PolymorphicMapType_11104_7619_3124#PolymorphicMapType_11104| Heap@@0) (|Seq#Index_7640| ar_1 i) val) (|sum'| Heap@@0 diz lo hi (+ i 1) ar_1)) 0))))
 :qid |stdinbpl.598:15|
 :skolemid |61|
 :pattern ( (state Heap@@0 Mask@@0) (sum_1 Heap@@0 diz lo hi i ar_1))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_11104) (Heap1@@0 T@PolymorphicMapType_11104) (Heap2 T@PolymorphicMapType_11104) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_7619_29592) ) (!  (not (select (|PolymorphicMapType_11653_11164_30770#PolymorphicMapType_11653| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11653_11164_30770#PolymorphicMapType_11653| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_7619_29459) ) (!  (not (select (|PolymorphicMapType_11653_11164_29459#PolymorphicMapType_11653| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11653_11164_29459#PolymorphicMapType_11653| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_17192_3109) ) (!  (not (select (|PolymorphicMapType_11653_11164_3109#PolymorphicMapType_11653| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11653_11164_3109#PolymorphicMapType_11653| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11177_11178) ) (!  (not (select (|PolymorphicMapType_11653_11164_11178#PolymorphicMapType_11653| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11653_11164_11178#PolymorphicMapType_11653| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_11164_53) ) (!  (not (select (|PolymorphicMapType_11653_11164_53#PolymorphicMapType_11653| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11653_11164_53#PolymorphicMapType_11653| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_17270) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_7640| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_7640| (|Seq#Drop_7640| s@@1 n@@1) j) (|Seq#Index_7640| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.324:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_7640| (|Seq#Drop_7640| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2987) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2987| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2987| (|Seq#Drop_2987| s@@2 n@@2) j@@0) (|Seq#Index_2987| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.324:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2987| (|Seq#Drop_2987| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_7640| |Seq#Empty_7640|) 0))
(assert (= (|Seq#Length_2987| |Seq#Empty_2987|) 0))
(assert (forall ((s@@3 T@Seq_17270) (i@@0 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_7640| s@@3))) (and (=> (= i@@0 n@@3) (= (|Seq#Index_7640| (|Seq#Update_7640| s@@3 i@@0 v) n@@3) v)) (=> (not (= i@@0 n@@3)) (= (|Seq#Index_7640| (|Seq#Update_7640| s@@3 i@@0 v) n@@3) (|Seq#Index_7640| s@@3 n@@3)))))
 :qid |stdinbpl.279:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_7640| (|Seq#Update_7640| s@@3 i@@0 v) n@@3))
 :pattern ( (|Seq#Index_7640| s@@3 n@@3) (|Seq#Update_7640| s@@3 i@@0 v))
)))
(assert (forall ((s@@4 T@Seq_2987) (i@@1 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2987| s@@4))) (and (=> (= i@@1 n@@4) (= (|Seq#Index_2987| (|Seq#Update_2987| s@@4 i@@1 v@@0) n@@4) v@@0)) (=> (not (= i@@1 n@@4)) (= (|Seq#Index_2987| (|Seq#Update_2987| s@@4 i@@1 v@@0) n@@4) (|Seq#Index_2987| s@@4 n@@4)))))
 :qid |stdinbpl.279:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2987| (|Seq#Update_2987| s@@4 i@@1 v@@0) n@@4))
 :pattern ( (|Seq#Index_2987| s@@4 n@@4) (|Seq#Update_2987| s@@4 i@@1 v@@0))
)))
(assert (forall ((s@@5 T@Seq_17270) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_7640| s@@5)) (= (|Seq#Length_7640| (|Seq#Take_7640| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_7640| s@@5) n@@5) (= (|Seq#Length_7640| (|Seq#Take_7640| s@@5 n@@5)) (|Seq#Length_7640| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_7640| (|Seq#Take_7640| s@@5 n@@5)) 0)))
 :qid |stdinbpl.290:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_7640| (|Seq#Take_7640| s@@5 n@@5)))
 :pattern ( (|Seq#Take_7640| s@@5 n@@5) (|Seq#Length_7640| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2987) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2987| s@@6)) (= (|Seq#Length_2987| (|Seq#Take_2987| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2987| s@@6) n@@6) (= (|Seq#Length_2987| (|Seq#Take_2987| s@@6 n@@6)) (|Seq#Length_2987| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2987| (|Seq#Take_2987| s@@6 n@@6)) 0)))
 :qid |stdinbpl.290:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2987| (|Seq#Take_2987| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2987| s@@6 n@@6) (|Seq#Length_2987| s@@6))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11104) (diz@@0 T@Ref) (lo@@0 Int) (hi@@0 Int) (i@@2 Int) (ar_1@@0 T@Seq_17270) ) (!  (and (= (sum_1 Heap@@1 diz@@0 lo@@0 hi@@0 i@@2 ar_1@@0) (|sum'| Heap@@1 diz@@0 lo@@0 hi@@0 i@@2 ar_1@@0)) (dummyFunction_3921 (|sum#triggerStateless| diz@@0 lo@@0 hi@@0 i@@2 ar_1@@0)))
 :qid |stdinbpl.588:15|
 :skolemid |58|
 :pattern ( (sum_1 Heap@@1 diz@@0 lo@@0 hi@@0 i@@2 ar_1@@0))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2987| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.564:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2987| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_17270) (x T@Ref) ) (!  (=> (|Seq#Contains_17270| s@@7 x) (and (and (<= 0 (|Seq#Skolem_17270| s@@7 x)) (< (|Seq#Skolem_17270| s@@7 x) (|Seq#Length_7640| s@@7))) (= (|Seq#Index_7640| s@@7 (|Seq#Skolem_17270| s@@7 x)) x)))
 :qid |stdinbpl.422:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_17270| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2987) (x@@0 Int) ) (!  (=> (|Seq#Contains_2987| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2987| s@@8 x@@0)) (< (|Seq#Skolem_2987| s@@8 x@@0) (|Seq#Length_2987| s@@8))) (= (|Seq#Index_2987| s@@8 (|Seq#Skolem_2987| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.422:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2987| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_17270) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_7640| s@@9 n@@7) s@@9))
 :qid |stdinbpl.406:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_7640| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2987) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2987| s@@10 n@@8) s@@10))
 :qid |stdinbpl.406:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2987| s@@10 n@@8))
)))
(assert (forall ((i@@3 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@3 j@@1) (- i@@3 j@@1))
 :qid |stdinbpl.259:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@3 j@@1))
)))
(assert (forall ((i@@4 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@4 j@@2) (+ i@@4 j@@2))
 :qid |stdinbpl.257:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@4 j@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11104) (ExhaleHeap T@PolymorphicMapType_11104) (Mask@@1 T@PolymorphicMapType_11125) (pm_f_1 T@Field_7619_29459) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_7619_29523 Mask@@1 null pm_f_1) (IsPredicateField_7619_29550 pm_f_1)) (= (select (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| Heap@@2) null (PredicateMaskField_7619 pm_f_1)) (select (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| ExhaleHeap) null (PredicateMaskField_7619 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (IsPredicateField_7619_29550 pm_f_1) (select (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| ExhaleHeap) null (PredicateMaskField_7619 pm_f_1)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11104) (ExhaleHeap@@0 T@PolymorphicMapType_11104) (Mask@@2 T@PolymorphicMapType_11125) (pm_f_1@@0 T@Field_7619_29459) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_7619_29523 Mask@@2 null pm_f_1@@0) (IsWandField_7619_31297 pm_f_1@@0)) (= (select (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| Heap@@3) null (WandMaskField_7619 pm_f_1@@0)) (select (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| ExhaleHeap@@0) null (WandMaskField_7619 pm_f_1@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (IsWandField_7619_31297 pm_f_1@@0) (select (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| ExhaleHeap@@0) null (WandMaskField_7619 pm_f_1@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_17270| (|Seq#Singleton_7640| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.547:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_17270| (|Seq#Singleton_7640| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2987| (|Seq#Singleton_2987| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.547:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2987| (|Seq#Singleton_2987| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_17270) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_7640| s@@11))) (= (|Seq#Index_7640| (|Seq#Take_7640| s@@11 n@@9) j@@3) (|Seq#Index_7640| s@@11 j@@3)))
 :qid |stdinbpl.298:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_7640| (|Seq#Take_7640| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_7640| s@@11 j@@3) (|Seq#Take_7640| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2987) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2987| s@@12))) (= (|Seq#Index_2987| (|Seq#Take_2987| s@@12 n@@10) j@@4) (|Seq#Index_2987| s@@12 j@@4)))
 :qid |stdinbpl.298:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2987| (|Seq#Take_2987| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2987| s@@12 j@@4) (|Seq#Take_2987| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_17270) (t T@Seq_17270) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_7640| s@@13))) (< n@@11 (|Seq#Length_7640| (|Seq#Append_17270| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_7640| s@@13)) (|Seq#Length_7640| s@@13)) n@@11) (= (|Seq#Take_7640| (|Seq#Append_17270| s@@13 t) n@@11) (|Seq#Append_17270| s@@13 (|Seq#Take_7640| t (|Seq#Sub| n@@11 (|Seq#Length_7640| s@@13)))))))
 :qid |stdinbpl.383:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_7640| (|Seq#Append_17270| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2987) (t@@0 T@Seq_2987) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2987| s@@14))) (< n@@12 (|Seq#Length_2987| (|Seq#Append_2987| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2987| s@@14)) (|Seq#Length_2987| s@@14)) n@@12) (= (|Seq#Take_2987| (|Seq#Append_2987| s@@14 t@@0) n@@12) (|Seq#Append_2987| s@@14 (|Seq#Take_2987| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2987| s@@14)))))))
 :qid |stdinbpl.383:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2987| (|Seq#Append_2987| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_11104) (ExhaleHeap@@1 T@PolymorphicMapType_11104) (Mask@@3 T@PolymorphicMapType_11125) (o_4 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (=> (select (|PolymorphicMapType_11104_7419_53#PolymorphicMapType_11104| Heap@@4) o_4 $allocated) (select (|PolymorphicMapType_11104_7419_53#PolymorphicMapType_11104| ExhaleHeap@@1) o_4 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (select (|PolymorphicMapType_11104_7419_53#PolymorphicMapType_11104| ExhaleHeap@@1) o_4 $allocated))
)))
(assert (forall ((p T@Field_7619_29459) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11164_11164 p v_1 p w))
 :qid |stdinbpl.201:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11164_11164 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_17270) (s1 T@Seq_17270) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_7640|)) (not (= s1 |Seq#Empty_7640|))) (<= (|Seq#Length_7640| s0) n@@13)) (< n@@13 (|Seq#Length_7640| (|Seq#Append_17270| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_7640| s0)) (|Seq#Length_7640| s0)) n@@13) (= (|Seq#Index_7640| (|Seq#Append_17270| s0 s1) n@@13) (|Seq#Index_7640| s1 (|Seq#Sub| n@@13 (|Seq#Length_7640| s0))))))
 :qid |stdinbpl.270:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_7640| (|Seq#Append_17270| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2987) (s1@@0 T@Seq_2987) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2987|)) (not (= s1@@0 |Seq#Empty_2987|))) (<= (|Seq#Length_2987| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2987| (|Seq#Append_2987| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2987| s0@@0)) (|Seq#Length_2987| s0@@0)) n@@14) (= (|Seq#Index_2987| (|Seq#Append_2987| s0@@0 s1@@0) n@@14) (|Seq#Index_2987| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2987| s0@@0))))))
 :qid |stdinbpl.270:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2987| (|Seq#Append_2987| s0@@0 s1@@0) n@@14))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11104) (diz@@1 T@Ref) (lo@@1 Int) (hi@@1 Int) (i@@5 Int) (ar_1@@1 T@Seq_17270) ) (! (dummyFunction_3921 (|sum#triggerStateless| diz@@1 lo@@1 hi@@1 i@@5 ar_1@@1))
 :qid |stdinbpl.592:15|
 :skolemid |59|
 :pattern ( (|sum'| Heap@@5 diz@@1 lo@@1 hi@@1 i@@5 ar_1@@1))
)))
(assert  (not (IsPredicateField_7617_3109 res_1)))
(assert  (not (IsWandField_7617_3109 res_1)))
(assert  (not (IsPredicateField_7617_3109 val)))
(assert  (not (IsWandField_7617_3109 val)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11104) (ExhaleHeap@@2 T@PolymorphicMapType_11104) (Mask@@4 T@PolymorphicMapType_11125) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (succHeap Heap@@6 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_11125) (o_2@@4 T@Ref) (f_4@@4 T@Field_7619_29592) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_11125_7619_33714#PolymorphicMapType_11125| Mask@@5) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_7619_34843 f_4@@4))) (not (IsWandField_7619_34859 f_4@@4))) (<= (select (|PolymorphicMapType_11125_7619_33714#PolymorphicMapType_11125| Mask@@5) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_11125_7619_33714#PolymorphicMapType_11125| Mask@@5) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_11125) (o_2@@5 T@Ref) (f_4@@5 T@Field_7619_29459) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_11125_7619_29459#PolymorphicMapType_11125| Mask@@6) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_7619_29550 f_4@@5))) (not (IsWandField_7619_31297 f_4@@5))) (<= (select (|PolymorphicMapType_11125_7619_29459#PolymorphicMapType_11125| Mask@@6) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_11125_7619_29459#PolymorphicMapType_11125| Mask@@6) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_11125) (o_2@@6 T@Ref) (f_4@@6 T@Field_11177_11178) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_11125_7619_11178#PolymorphicMapType_11125| Mask@@7) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_7619_11178 f_4@@6))) (not (IsWandField_7619_11178 f_4@@6))) (<= (select (|PolymorphicMapType_11125_7619_11178#PolymorphicMapType_11125| Mask@@7) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_11125_7619_11178#PolymorphicMapType_11125| Mask@@7) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_11125) (o_2@@7 T@Ref) (f_4@@7 T@Field_11164_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_11125_7619_53#PolymorphicMapType_11125| Mask@@8) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_7619_53 f_4@@7))) (not (IsWandField_7619_53 f_4@@7))) (<= (select (|PolymorphicMapType_11125_7619_53#PolymorphicMapType_11125| Mask@@8) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_11125_7619_53#PolymorphicMapType_11125| Mask@@8) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_11125) (o_2@@8 T@Ref) (f_4@@8 T@Field_17192_3109) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_11125_7619_3124#PolymorphicMapType_11125| Mask@@9) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_7617_3109 f_4@@8))) (not (IsWandField_7617_3109 f_4@@8))) (<= (select (|PolymorphicMapType_11125_7619_3124#PolymorphicMapType_11125| Mask@@9) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_11125_7619_3124#PolymorphicMapType_11125| Mask@@9) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_11125) (o_2@@9 T@Ref) (f_4@@9 T@Field_7619_29592) ) (! (= (HasDirectPerm_7619_35297 Mask@@10 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_11125_7619_33714#PolymorphicMapType_11125| Mask@@10) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7619_35297 Mask@@10 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_11125) (o_2@@10 T@Ref) (f_4@@10 T@Field_7619_29459) ) (! (= (HasDirectPerm_7619_29523 Mask@@11 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_11125_7619_29459#PolymorphicMapType_11125| Mask@@11) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7619_29523 Mask@@11 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_11125) (o_2@@11 T@Ref) (f_4@@11 T@Field_11177_11178) ) (! (= (HasDirectPerm_7619_11178 Mask@@12 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_11125_7619_11178#PolymorphicMapType_11125| Mask@@12) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7619_11178 Mask@@12 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_11125) (o_2@@12 T@Ref) (f_4@@12 T@Field_11164_53) ) (! (= (HasDirectPerm_7619_53 Mask@@13 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_11125_7619_53#PolymorphicMapType_11125| Mask@@13) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7619_53 Mask@@13 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_11125) (o_2@@13 T@Ref) (f_4@@13 T@Field_17192_3109) ) (! (= (HasDirectPerm_7619_3124 Mask@@14 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_11125_7619_3124#PolymorphicMapType_11125| Mask@@14) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7619_3124 Mask@@14 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11104) (ExhaleHeap@@3 T@PolymorphicMapType_11104) (Mask@@15 T@PolymorphicMapType_11125) (pm_f_1@@1 T@Field_7619_29459) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@15) (=> (and (HasDirectPerm_7619_29523 Mask@@15 null pm_f_1@@1) (IsPredicateField_7619_29550 pm_f_1@@1)) (and (and (and (and (forall ((o2_1 T@Ref) (f_9 T@Field_11164_53) ) (!  (=> (select (|PolymorphicMapType_11653_11164_53#PolymorphicMapType_11653| (select (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| Heap@@7) null (PredicateMaskField_7619 pm_f_1@@1))) o2_1 f_9) (= (select (|PolymorphicMapType_11104_7419_53#PolymorphicMapType_11104| Heap@@7) o2_1 f_9) (select (|PolymorphicMapType_11104_7419_53#PolymorphicMapType_11104| ExhaleHeap@@3) o2_1 f_9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11104_7419_53#PolymorphicMapType_11104| ExhaleHeap@@3) o2_1 f_9))
)) (forall ((o2_1@@0 T@Ref) (f_9@@0 T@Field_11177_11178) ) (!  (=> (select (|PolymorphicMapType_11653_11164_11178#PolymorphicMapType_11653| (select (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| Heap@@7) null (PredicateMaskField_7619 pm_f_1@@1))) o2_1@@0 f_9@@0) (= (select (|PolymorphicMapType_11104_7422_7423#PolymorphicMapType_11104| Heap@@7) o2_1@@0 f_9@@0) (select (|PolymorphicMapType_11104_7422_7423#PolymorphicMapType_11104| ExhaleHeap@@3) o2_1@@0 f_9@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11104_7422_7423#PolymorphicMapType_11104| ExhaleHeap@@3) o2_1@@0 f_9@@0))
))) (forall ((o2_1@@1 T@Ref) (f_9@@1 T@Field_17192_3109) ) (!  (=> (select (|PolymorphicMapType_11653_11164_3109#PolymorphicMapType_11653| (select (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| Heap@@7) null (PredicateMaskField_7619 pm_f_1@@1))) o2_1@@1 f_9@@1) (= (select (|PolymorphicMapType_11104_7619_3124#PolymorphicMapType_11104| Heap@@7) o2_1@@1 f_9@@1) (select (|PolymorphicMapType_11104_7619_3124#PolymorphicMapType_11104| ExhaleHeap@@3) o2_1@@1 f_9@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11104_7619_3124#PolymorphicMapType_11104| ExhaleHeap@@3) o2_1@@1 f_9@@1))
))) (forall ((o2_1@@2 T@Ref) (f_9@@2 T@Field_7619_29459) ) (!  (=> (select (|PolymorphicMapType_11653_11164_29459#PolymorphicMapType_11653| (select (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| Heap@@7) null (PredicateMaskField_7619 pm_f_1@@1))) o2_1@@2 f_9@@2) (= (select (|PolymorphicMapType_11104_11164_29459#PolymorphicMapType_11104| Heap@@7) o2_1@@2 f_9@@2) (select (|PolymorphicMapType_11104_11164_29459#PolymorphicMapType_11104| ExhaleHeap@@3) o2_1@@2 f_9@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11104_11164_29459#PolymorphicMapType_11104| ExhaleHeap@@3) o2_1@@2 f_9@@2))
))) (forall ((o2_1@@3 T@Ref) (f_9@@3 T@Field_7619_29592) ) (!  (=> (select (|PolymorphicMapType_11653_11164_30770#PolymorphicMapType_11653| (select (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| Heap@@7) null (PredicateMaskField_7619 pm_f_1@@1))) o2_1@@3 f_9@@3) (= (select (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| Heap@@7) o2_1@@3 f_9@@3) (select (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| ExhaleHeap@@3) o2_1@@3 f_9@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| ExhaleHeap@@3) o2_1@@3 f_9@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@15) (IsPredicateField_7619_29550 pm_f_1@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11104) (ExhaleHeap@@4 T@PolymorphicMapType_11104) (Mask@@16 T@PolymorphicMapType_11125) (pm_f_1@@2 T@Field_7619_29459) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@16) (=> (and (HasDirectPerm_7619_29523 Mask@@16 null pm_f_1@@2) (IsWandField_7619_31297 pm_f_1@@2)) (and (and (and (and (forall ((o2_1@@4 T@Ref) (f_9@@4 T@Field_11164_53) ) (!  (=> (select (|PolymorphicMapType_11653_11164_53#PolymorphicMapType_11653| (select (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| Heap@@8) null (WandMaskField_7619 pm_f_1@@2))) o2_1@@4 f_9@@4) (= (select (|PolymorphicMapType_11104_7419_53#PolymorphicMapType_11104| Heap@@8) o2_1@@4 f_9@@4) (select (|PolymorphicMapType_11104_7419_53#PolymorphicMapType_11104| ExhaleHeap@@4) o2_1@@4 f_9@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11104_7419_53#PolymorphicMapType_11104| ExhaleHeap@@4) o2_1@@4 f_9@@4))
)) (forall ((o2_1@@5 T@Ref) (f_9@@5 T@Field_11177_11178) ) (!  (=> (select (|PolymorphicMapType_11653_11164_11178#PolymorphicMapType_11653| (select (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| Heap@@8) null (WandMaskField_7619 pm_f_1@@2))) o2_1@@5 f_9@@5) (= (select (|PolymorphicMapType_11104_7422_7423#PolymorphicMapType_11104| Heap@@8) o2_1@@5 f_9@@5) (select (|PolymorphicMapType_11104_7422_7423#PolymorphicMapType_11104| ExhaleHeap@@4) o2_1@@5 f_9@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11104_7422_7423#PolymorphicMapType_11104| ExhaleHeap@@4) o2_1@@5 f_9@@5))
))) (forall ((o2_1@@6 T@Ref) (f_9@@6 T@Field_17192_3109) ) (!  (=> (select (|PolymorphicMapType_11653_11164_3109#PolymorphicMapType_11653| (select (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| Heap@@8) null (WandMaskField_7619 pm_f_1@@2))) o2_1@@6 f_9@@6) (= (select (|PolymorphicMapType_11104_7619_3124#PolymorphicMapType_11104| Heap@@8) o2_1@@6 f_9@@6) (select (|PolymorphicMapType_11104_7619_3124#PolymorphicMapType_11104| ExhaleHeap@@4) o2_1@@6 f_9@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11104_7619_3124#PolymorphicMapType_11104| ExhaleHeap@@4) o2_1@@6 f_9@@6))
))) (forall ((o2_1@@7 T@Ref) (f_9@@7 T@Field_7619_29459) ) (!  (=> (select (|PolymorphicMapType_11653_11164_29459#PolymorphicMapType_11653| (select (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| Heap@@8) null (WandMaskField_7619 pm_f_1@@2))) o2_1@@7 f_9@@7) (= (select (|PolymorphicMapType_11104_11164_29459#PolymorphicMapType_11104| Heap@@8) o2_1@@7 f_9@@7) (select (|PolymorphicMapType_11104_11164_29459#PolymorphicMapType_11104| ExhaleHeap@@4) o2_1@@7 f_9@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11104_11164_29459#PolymorphicMapType_11104| ExhaleHeap@@4) o2_1@@7 f_9@@7))
))) (forall ((o2_1@@8 T@Ref) (f_9@@8 T@Field_7619_29592) ) (!  (=> (select (|PolymorphicMapType_11653_11164_30770#PolymorphicMapType_11653| (select (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| Heap@@8) null (WandMaskField_7619 pm_f_1@@2))) o2_1@@8 f_9@@8) (= (select (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| Heap@@8) o2_1@@8 f_9@@8) (select (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| ExhaleHeap@@4) o2_1@@8 f_9@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| ExhaleHeap@@4) o2_1@@8 f_9@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@16) (IsWandField_7619_31297 pm_f_1@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.189:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2987| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.562:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2987| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11104) (ExhaleHeap@@5 T@PolymorphicMapType_11104) (Mask@@17 T@PolymorphicMapType_11125) (o_4@@0 T@Ref) (f_9@@9 T@Field_7619_29592) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_7619_35297 Mask@@17 o_4@@0 f_9@@9) (= (select (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| Heap@@9) o_4@@0 f_9@@9) (select (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| ExhaleHeap@@5) o_4@@0 f_9@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| ExhaleHeap@@5) o_4@@0 f_9@@9))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11104) (ExhaleHeap@@6 T@PolymorphicMapType_11104) (Mask@@18 T@PolymorphicMapType_11125) (o_4@@1 T@Ref) (f_9@@10 T@Field_7619_29459) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_7619_29523 Mask@@18 o_4@@1 f_9@@10) (= (select (|PolymorphicMapType_11104_11164_29459#PolymorphicMapType_11104| Heap@@10) o_4@@1 f_9@@10) (select (|PolymorphicMapType_11104_11164_29459#PolymorphicMapType_11104| ExhaleHeap@@6) o_4@@1 f_9@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_11104_11164_29459#PolymorphicMapType_11104| ExhaleHeap@@6) o_4@@1 f_9@@10))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11104) (ExhaleHeap@@7 T@PolymorphicMapType_11104) (Mask@@19 T@PolymorphicMapType_11125) (o_4@@2 T@Ref) (f_9@@11 T@Field_11177_11178) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_7619_11178 Mask@@19 o_4@@2 f_9@@11) (= (select (|PolymorphicMapType_11104_7422_7423#PolymorphicMapType_11104| Heap@@11) o_4@@2 f_9@@11) (select (|PolymorphicMapType_11104_7422_7423#PolymorphicMapType_11104| ExhaleHeap@@7) o_4@@2 f_9@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_11104_7422_7423#PolymorphicMapType_11104| ExhaleHeap@@7) o_4@@2 f_9@@11))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11104) (ExhaleHeap@@8 T@PolymorphicMapType_11104) (Mask@@20 T@PolymorphicMapType_11125) (o_4@@3 T@Ref) (f_9@@12 T@Field_11164_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_7619_53 Mask@@20 o_4@@3 f_9@@12) (= (select (|PolymorphicMapType_11104_7419_53#PolymorphicMapType_11104| Heap@@12) o_4@@3 f_9@@12) (select (|PolymorphicMapType_11104_7419_53#PolymorphicMapType_11104| ExhaleHeap@@8) o_4@@3 f_9@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_11104_7419_53#PolymorphicMapType_11104| ExhaleHeap@@8) o_4@@3 f_9@@12))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11104) (ExhaleHeap@@9 T@PolymorphicMapType_11104) (Mask@@21 T@PolymorphicMapType_11125) (o_4@@4 T@Ref) (f_9@@13 T@Field_17192_3109) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@21) (=> (HasDirectPerm_7619_3124 Mask@@21 o_4@@4 f_9@@13) (= (select (|PolymorphicMapType_11104_7619_3124#PolymorphicMapType_11104| Heap@@13) o_4@@4 f_9@@13) (select (|PolymorphicMapType_11104_7619_3124#PolymorphicMapType_11104| ExhaleHeap@@9) o_4@@4 f_9@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@21) (select (|PolymorphicMapType_11104_7619_3124#PolymorphicMapType_11104| ExhaleHeap@@9) o_4@@4 f_9@@13))
)))
(assert (forall ((s0@@1 T@Seq_17270) (s1@@1 T@Seq_17270) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_7640|)) (not (= s1@@1 |Seq#Empty_7640|))) (= (|Seq#Length_7640| (|Seq#Append_17270| s0@@1 s1@@1)) (+ (|Seq#Length_7640| s0@@1) (|Seq#Length_7640| s1@@1))))
 :qid |stdinbpl.239:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_7640| (|Seq#Append_17270| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2987) (s1@@2 T@Seq_2987) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2987|)) (not (= s1@@2 |Seq#Empty_2987|))) (= (|Seq#Length_2987| (|Seq#Append_2987| s0@@2 s1@@2)) (+ (|Seq#Length_2987| s0@@2) (|Seq#Length_2987| s1@@2))))
 :qid |stdinbpl.239:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2987| (|Seq#Append_2987| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_7619_29592) ) (! (= (select (|PolymorphicMapType_11125_7619_33714#PolymorphicMapType_11125| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11125_7619_33714#PolymorphicMapType_11125| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_7619_29459) ) (! (= (select (|PolymorphicMapType_11125_7619_29459#PolymorphicMapType_11125| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11125_7619_29459#PolymorphicMapType_11125| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_11177_11178) ) (! (= (select (|PolymorphicMapType_11125_7619_11178#PolymorphicMapType_11125| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11125_7619_11178#PolymorphicMapType_11125| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_11164_53) ) (! (= (select (|PolymorphicMapType_11125_7619_53#PolymorphicMapType_11125| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11125_7619_53#PolymorphicMapType_11125| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_17192_3109) ) (! (= (select (|PolymorphicMapType_11125_7619_3124#PolymorphicMapType_11125| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11125_7619_3124#PolymorphicMapType_11125| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_17270) (t@@1 T@Seq_17270) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_7640| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_7640| s@@15)) (|Seq#Length_7640| s@@15)) n@@15) (= (|Seq#Drop_7640| (|Seq#Append_17270| s@@15 t@@1) n@@15) (|Seq#Drop_7640| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_7640| s@@15))))))
 :qid |stdinbpl.396:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_7640| (|Seq#Append_17270| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2987) (t@@2 T@Seq_2987) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2987| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2987| s@@16)) (|Seq#Length_2987| s@@16)) n@@16) (= (|Seq#Drop_2987| (|Seq#Append_2987| s@@16 t@@2) n@@16) (|Seq#Drop_2987| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2987| s@@16))))))
 :qid |stdinbpl.396:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2987| (|Seq#Append_2987| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_11125) (SummandMask1 T@PolymorphicMapType_11125) (SummandMask2 T@PolymorphicMapType_11125) (o_2@@19 T@Ref) (f_4@@19 T@Field_7619_29592) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_11125_7619_33714#PolymorphicMapType_11125| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_11125_7619_33714#PolymorphicMapType_11125| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_11125_7619_33714#PolymorphicMapType_11125| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11125_7619_33714#PolymorphicMapType_11125| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11125_7619_33714#PolymorphicMapType_11125| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11125_7619_33714#PolymorphicMapType_11125| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_11125) (SummandMask1@@0 T@PolymorphicMapType_11125) (SummandMask2@@0 T@PolymorphicMapType_11125) (o_2@@20 T@Ref) (f_4@@20 T@Field_7619_29459) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_11125_7619_29459#PolymorphicMapType_11125| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_11125_7619_29459#PolymorphicMapType_11125| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_11125_7619_29459#PolymorphicMapType_11125| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11125_7619_29459#PolymorphicMapType_11125| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11125_7619_29459#PolymorphicMapType_11125| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11125_7619_29459#PolymorphicMapType_11125| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_11125) (SummandMask1@@1 T@PolymorphicMapType_11125) (SummandMask2@@1 T@PolymorphicMapType_11125) (o_2@@21 T@Ref) (f_4@@21 T@Field_11177_11178) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_11125_7619_11178#PolymorphicMapType_11125| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_11125_7619_11178#PolymorphicMapType_11125| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_11125_7619_11178#PolymorphicMapType_11125| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11125_7619_11178#PolymorphicMapType_11125| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11125_7619_11178#PolymorphicMapType_11125| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11125_7619_11178#PolymorphicMapType_11125| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_11125) (SummandMask1@@2 T@PolymorphicMapType_11125) (SummandMask2@@2 T@PolymorphicMapType_11125) (o_2@@22 T@Ref) (f_4@@22 T@Field_11164_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_11125_7619_53#PolymorphicMapType_11125| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_11125_7619_53#PolymorphicMapType_11125| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_11125_7619_53#PolymorphicMapType_11125| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11125_7619_53#PolymorphicMapType_11125| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11125_7619_53#PolymorphicMapType_11125| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11125_7619_53#PolymorphicMapType_11125| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_11125) (SummandMask1@@3 T@PolymorphicMapType_11125) (SummandMask2@@3 T@PolymorphicMapType_11125) (o_2@@23 T@Ref) (f_4@@23 T@Field_17192_3109) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_11125_7619_3124#PolymorphicMapType_11125| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_11125_7619_3124#PolymorphicMapType_11125| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_11125_7619_3124#PolymorphicMapType_11125| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11125_7619_3124#PolymorphicMapType_11125| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11125_7619_3124#PolymorphicMapType_11125| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11125_7619_3124#PolymorphicMapType_11125| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2987| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2987| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.561:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2987| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_17270) (b T@Seq_17270) ) (!  (=> (|Seq#Equal_17270| a b) (= a b))
 :qid |stdinbpl.534:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_17270| a b))
)))
(assert (forall ((a@@0 T@Seq_2987) (b@@0 T@Seq_2987) ) (!  (=> (|Seq#Equal_2987| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.534:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2987| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_17270) (i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_7640| s@@17))) (|Seq#ContainsTrigger_7640| s@@17 (|Seq#Index_7640| s@@17 i@@6)))
 :qid |stdinbpl.427:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_7640| s@@17 i@@6))
)))
(assert (forall ((s@@18 T@Seq_2987) (i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_2987| s@@18))) (|Seq#ContainsTrigger_2987| s@@18 (|Seq#Index_2987| s@@18 i@@7)))
 :qid |stdinbpl.427:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2987| s@@18 i@@7))
)))
(assert (forall ((s0@@3 T@Seq_17270) (s1@@3 T@Seq_17270) ) (!  (and (=> (= s0@@3 |Seq#Empty_7640|) (= (|Seq#Append_17270| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_7640|) (= (|Seq#Append_17270| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.245:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_17270| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2987) (s1@@4 T@Seq_2987) ) (!  (and (=> (= s0@@4 |Seq#Empty_2987|) (= (|Seq#Append_2987| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2987|) (= (|Seq#Append_2987| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.245:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2987| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_7640| (|Seq#Singleton_7640| t@@3) 0) t@@3)
 :qid |stdinbpl.249:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_7640| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2987| (|Seq#Singleton_2987| t@@4) 0) t@@4)
 :qid |stdinbpl.249:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2987| t@@4))
)))
(assert (forall ((s@@19 T@Seq_17270) ) (! (<= 0 (|Seq#Length_7640| s@@19))
 :qid |stdinbpl.228:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_7640| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2987) ) (! (<= 0 (|Seq#Length_2987| s@@20))
 :qid |stdinbpl.228:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2987| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_17270) (s1@@5 T@Seq_17270) ) (!  (=> (|Seq#Equal_17270| s0@@5 s1@@5) (and (= (|Seq#Length_7640| s0@@5) (|Seq#Length_7640| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_7640| s0@@5))) (= (|Seq#Index_7640| s0@@5 j@@6) (|Seq#Index_7640| s1@@5 j@@6)))
 :qid |stdinbpl.524:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_7640| s0@@5 j@@6))
 :pattern ( (|Seq#Index_7640| s1@@5 j@@6))
))))
 :qid |stdinbpl.521:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_17270| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2987) (s1@@6 T@Seq_2987) ) (!  (=> (|Seq#Equal_2987| s0@@6 s1@@6) (and (= (|Seq#Length_2987| s0@@6) (|Seq#Length_2987| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2987| s0@@6))) (= (|Seq#Index_2987| s0@@6 j@@7) (|Seq#Index_2987| s1@@6 j@@7)))
 :qid |stdinbpl.524:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2987| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2987| s1@@6 j@@7))
))))
 :qid |stdinbpl.521:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2987| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_7640| (|Seq#Singleton_7640| t@@5)) 1)
 :qid |stdinbpl.236:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_7640| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2987| (|Seq#Singleton_2987| t@@6)) 1)
 :qid |stdinbpl.236:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2987| t@@6))
)))
(assert (forall ((s@@21 T@Seq_17270) (t@@7 T@Seq_17270) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_7640| s@@21))) (= (|Seq#Take_7640| (|Seq#Append_17270| s@@21 t@@7) n@@17) (|Seq#Take_7640| s@@21 n@@17)))
 :qid |stdinbpl.378:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_7640| (|Seq#Append_17270| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2987) (t@@8 T@Seq_2987) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2987| s@@22))) (= (|Seq#Take_2987| (|Seq#Append_2987| s@@22 t@@8) n@@18) (|Seq#Take_2987| s@@22 n@@18)))
 :qid |stdinbpl.378:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2987| (|Seq#Append_2987| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_17270) (i@@8 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length_7640| s@@23))) (= (|Seq#Length_7640| (|Seq#Update_7640| s@@23 i@@8 v@@2)) (|Seq#Length_7640| s@@23)))
 :qid |stdinbpl.277:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_7640| (|Seq#Update_7640| s@@23 i@@8 v@@2)))
 :pattern ( (|Seq#Length_7640| s@@23) (|Seq#Update_7640| s@@23 i@@8 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2987) (i@@9 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@9) (< i@@9 (|Seq#Length_2987| s@@24))) (= (|Seq#Length_2987| (|Seq#Update_2987| s@@24 i@@9 v@@3)) (|Seq#Length_2987| s@@24)))
 :qid |stdinbpl.277:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2987| (|Seq#Update_2987| s@@24 i@@9 v@@3)))
 :pattern ( (|Seq#Length_2987| s@@24) (|Seq#Update_2987| s@@24 i@@9 v@@3))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_11104) (o_3 T@Ref) (f_10 T@Field_7619_29459) (v@@4 T@FrameType) ) (! (succHeap Heap@@14 (PolymorphicMapType_11104 (|PolymorphicMapType_11104_7419_53#PolymorphicMapType_11104| Heap@@14) (|PolymorphicMapType_11104_7422_7423#PolymorphicMapType_11104| Heap@@14) (|PolymorphicMapType_11104_7619_3124#PolymorphicMapType_11104| Heap@@14) (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| Heap@@14) (store (|PolymorphicMapType_11104_11164_29459#PolymorphicMapType_11104| Heap@@14) o_3 f_10 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11104 (|PolymorphicMapType_11104_7419_53#PolymorphicMapType_11104| Heap@@14) (|PolymorphicMapType_11104_7422_7423#PolymorphicMapType_11104| Heap@@14) (|PolymorphicMapType_11104_7619_3124#PolymorphicMapType_11104| Heap@@14) (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| Heap@@14) (store (|PolymorphicMapType_11104_11164_29459#PolymorphicMapType_11104| Heap@@14) o_3 f_10 v@@4)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_11104) (o_3@@0 T@Ref) (f_10@@0 T@Field_7619_29592) (v@@5 T@PolymorphicMapType_11653) ) (! (succHeap Heap@@15 (PolymorphicMapType_11104 (|PolymorphicMapType_11104_7419_53#PolymorphicMapType_11104| Heap@@15) (|PolymorphicMapType_11104_7422_7423#PolymorphicMapType_11104| Heap@@15) (|PolymorphicMapType_11104_7619_3124#PolymorphicMapType_11104| Heap@@15) (store (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| Heap@@15) o_3@@0 f_10@@0 v@@5) (|PolymorphicMapType_11104_11164_29459#PolymorphicMapType_11104| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11104 (|PolymorphicMapType_11104_7419_53#PolymorphicMapType_11104| Heap@@15) (|PolymorphicMapType_11104_7422_7423#PolymorphicMapType_11104| Heap@@15) (|PolymorphicMapType_11104_7619_3124#PolymorphicMapType_11104| Heap@@15) (store (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| Heap@@15) o_3@@0 f_10@@0 v@@5) (|PolymorphicMapType_11104_11164_29459#PolymorphicMapType_11104| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_11104) (o_3@@1 T@Ref) (f_10@@1 T@Field_17192_3109) (v@@6 Int) ) (! (succHeap Heap@@16 (PolymorphicMapType_11104 (|PolymorphicMapType_11104_7419_53#PolymorphicMapType_11104| Heap@@16) (|PolymorphicMapType_11104_7422_7423#PolymorphicMapType_11104| Heap@@16) (store (|PolymorphicMapType_11104_7619_3124#PolymorphicMapType_11104| Heap@@16) o_3@@1 f_10@@1 v@@6) (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| Heap@@16) (|PolymorphicMapType_11104_11164_29459#PolymorphicMapType_11104| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11104 (|PolymorphicMapType_11104_7419_53#PolymorphicMapType_11104| Heap@@16) (|PolymorphicMapType_11104_7422_7423#PolymorphicMapType_11104| Heap@@16) (store (|PolymorphicMapType_11104_7619_3124#PolymorphicMapType_11104| Heap@@16) o_3@@1 f_10@@1 v@@6) (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| Heap@@16) (|PolymorphicMapType_11104_11164_29459#PolymorphicMapType_11104| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_11104) (o_3@@2 T@Ref) (f_10@@2 T@Field_11177_11178) (v@@7 T@Ref) ) (! (succHeap Heap@@17 (PolymorphicMapType_11104 (|PolymorphicMapType_11104_7419_53#PolymorphicMapType_11104| Heap@@17) (store (|PolymorphicMapType_11104_7422_7423#PolymorphicMapType_11104| Heap@@17) o_3@@2 f_10@@2 v@@7) (|PolymorphicMapType_11104_7619_3124#PolymorphicMapType_11104| Heap@@17) (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| Heap@@17) (|PolymorphicMapType_11104_11164_29459#PolymorphicMapType_11104| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11104 (|PolymorphicMapType_11104_7419_53#PolymorphicMapType_11104| Heap@@17) (store (|PolymorphicMapType_11104_7422_7423#PolymorphicMapType_11104| Heap@@17) o_3@@2 f_10@@2 v@@7) (|PolymorphicMapType_11104_7619_3124#PolymorphicMapType_11104| Heap@@17) (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| Heap@@17) (|PolymorphicMapType_11104_11164_29459#PolymorphicMapType_11104| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_11104) (o_3@@3 T@Ref) (f_10@@3 T@Field_11164_53) (v@@8 Bool) ) (! (succHeap Heap@@18 (PolymorphicMapType_11104 (store (|PolymorphicMapType_11104_7419_53#PolymorphicMapType_11104| Heap@@18) o_3@@3 f_10@@3 v@@8) (|PolymorphicMapType_11104_7422_7423#PolymorphicMapType_11104| Heap@@18) (|PolymorphicMapType_11104_7619_3124#PolymorphicMapType_11104| Heap@@18) (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| Heap@@18) (|PolymorphicMapType_11104_11164_29459#PolymorphicMapType_11104| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11104 (store (|PolymorphicMapType_11104_7419_53#PolymorphicMapType_11104| Heap@@18) o_3@@3 f_10@@3 v@@8) (|PolymorphicMapType_11104_7422_7423#PolymorphicMapType_11104| Heap@@18) (|PolymorphicMapType_11104_7619_3124#PolymorphicMapType_11104| Heap@@18) (|PolymorphicMapType_11104_7619_29636#PolymorphicMapType_11104| Heap@@18) (|PolymorphicMapType_11104_11164_29459#PolymorphicMapType_11104| Heap@@18)))
)))
(assert (forall ((s@@25 T@Seq_17270) (t@@9 T@Seq_17270) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_7640| s@@25))) (= (|Seq#Drop_7640| (|Seq#Append_17270| s@@25 t@@9) n@@19) (|Seq#Append_17270| (|Seq#Drop_7640| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.392:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_7640| (|Seq#Append_17270| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2987) (t@@10 T@Seq_2987) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2987| s@@26))) (= (|Seq#Drop_2987| (|Seq#Append_2987| s@@26 t@@10) n@@20) (|Seq#Append_2987| (|Seq#Drop_2987| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.392:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2987| (|Seq#Append_2987| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_17270) (n@@21 Int) (i@@10 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@10)) (< i@@10 (|Seq#Length_7640| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@10 n@@21) n@@21) i@@10) (= (|Seq#Index_7640| (|Seq#Drop_7640| s@@27 n@@21) (|Seq#Sub| i@@10 n@@21)) (|Seq#Index_7640| s@@27 i@@10))))
 :qid |stdinbpl.328:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_7640| s@@27 n@@21) (|Seq#Index_7640| s@@27 i@@10))
)))
(assert (forall ((s@@28 T@Seq_2987) (n@@22 Int) (i@@11 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@11)) (< i@@11 (|Seq#Length_2987| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@11 n@@22) n@@22) i@@11) (= (|Seq#Index_2987| (|Seq#Drop_2987| s@@28 n@@22) (|Seq#Sub| i@@11 n@@22)) (|Seq#Index_2987| s@@28 i@@11))))
 :qid |stdinbpl.328:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2987| s@@28 n@@22) (|Seq#Index_2987| s@@28 i@@11))
)))
(assert (forall ((s0@@7 T@Seq_17270) (s1@@7 T@Seq_17270) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_7640|)) (not (= s1@@7 |Seq#Empty_7640|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_7640| s0@@7))) (= (|Seq#Index_7640| (|Seq#Append_17270| s0@@7 s1@@7) n@@23) (|Seq#Index_7640| s0@@7 n@@23)))
 :qid |stdinbpl.268:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_7640| (|Seq#Append_17270| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_7640| s0@@7 n@@23) (|Seq#Append_17270| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2987) (s1@@8 T@Seq_2987) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2987|)) (not (= s1@@8 |Seq#Empty_2987|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2987| s0@@8))) (= (|Seq#Index_2987| (|Seq#Append_2987| s0@@8 s1@@8) n@@24) (|Seq#Index_2987| s0@@8 n@@24)))
 :qid |stdinbpl.268:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2987| (|Seq#Append_2987| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2987| s0@@8 n@@24) (|Seq#Append_2987| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_17270) (s1@@9 T@Seq_17270) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_7640|)) (not (= s1@@9 |Seq#Empty_7640|))) (<= 0 m)) (< m (|Seq#Length_7640| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_7640| s0@@9)) (|Seq#Length_7640| s0@@9)) m) (= (|Seq#Index_7640| (|Seq#Append_17270| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_7640| s0@@9))) (|Seq#Index_7640| s1@@9 m))))
 :qid |stdinbpl.273:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_7640| s1@@9 m) (|Seq#Append_17270| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2987) (s1@@10 T@Seq_2987) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2987|)) (not (= s1@@10 |Seq#Empty_2987|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2987| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2987| s0@@10)) (|Seq#Length_2987| s0@@10)) m@@0) (= (|Seq#Index_2987| (|Seq#Append_2987| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2987| s0@@10))) (|Seq#Index_2987| s1@@10 m@@0))))
 :qid |stdinbpl.273:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2987| s1@@10 m@@0) (|Seq#Append_2987| s0@@10 s1@@10))
)))
(assert (forall ((o_3@@4 T@Ref) (f_8 T@Field_11177_11178) (Heap@@19 T@PolymorphicMapType_11104) ) (!  (=> (select (|PolymorphicMapType_11104_7419_53#PolymorphicMapType_11104| Heap@@19) o_3@@4 $allocated) (select (|PolymorphicMapType_11104_7419_53#PolymorphicMapType_11104| Heap@@19) (select (|PolymorphicMapType_11104_7422_7423#PolymorphicMapType_11104| Heap@@19) o_3@@4 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11104_7422_7423#PolymorphicMapType_11104| Heap@@19) o_3@@4 f_8))
)))
(assert (forall ((s@@29 T@Seq_17270) (x@@3 T@Ref) (i@@12 Int) ) (!  (=> (and (and (<= 0 i@@12) (< i@@12 (|Seq#Length_7640| s@@29))) (= (|Seq#Index_7640| s@@29 i@@12) x@@3)) (|Seq#Contains_17270| s@@29 x@@3))
 :qid |stdinbpl.425:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_17270| s@@29 x@@3) (|Seq#Index_7640| s@@29 i@@12))
)))
(assert (forall ((s@@30 T@Seq_2987) (x@@4 Int) (i@@13 Int) ) (!  (=> (and (and (<= 0 i@@13) (< i@@13 (|Seq#Length_2987| s@@30))) (= (|Seq#Index_2987| s@@30 i@@13) x@@4)) (|Seq#Contains_2987| s@@30 x@@4))
 :qid |stdinbpl.425:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2987| s@@30 x@@4) (|Seq#Index_2987| s@@30 i@@13))
)))
(assert (forall ((s0@@11 T@Seq_17270) (s1@@11 T@Seq_17270) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_17270| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_17270| s0@@11 s1@@11))) (not (= (|Seq#Length_7640| s0@@11) (|Seq#Length_7640| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_17270| s0@@11 s1@@11))) (= (|Seq#Length_7640| s0@@11) (|Seq#Length_7640| s1@@11))) (= (|Seq#SkolemDiff_17270| s0@@11 s1@@11) (|Seq#SkolemDiff_17270| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_17270| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_17270| s0@@11 s1@@11) (|Seq#Length_7640| s0@@11))) (not (= (|Seq#Index_7640| s0@@11 (|Seq#SkolemDiff_17270| s0@@11 s1@@11)) (|Seq#Index_7640| s1@@11 (|Seq#SkolemDiff_17270| s0@@11 s1@@11))))))
 :qid |stdinbpl.529:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_17270| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2987) (s1@@12 T@Seq_2987) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2987| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2987| s0@@12 s1@@12))) (not (= (|Seq#Length_2987| s0@@12) (|Seq#Length_2987| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2987| s0@@12 s1@@12))) (= (|Seq#Length_2987| s0@@12) (|Seq#Length_2987| s1@@12))) (= (|Seq#SkolemDiff_2987| s0@@12 s1@@12) (|Seq#SkolemDiff_2987| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2987| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2987| s0@@12 s1@@12) (|Seq#Length_2987| s0@@12))) (not (= (|Seq#Index_2987| s0@@12 (|Seq#SkolemDiff_2987| s0@@12 s1@@12)) (|Seq#Index_2987| s1@@12 (|Seq#SkolemDiff_2987| s0@@12 s1@@12))))))
 :qid |stdinbpl.529:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2987| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_7619_29459) (v_1@@0 T@FrameType) (q T@Field_7619_29459) (w@@0 T@FrameType) (r T@Field_7619_29459) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11164_11164 p@@1 v_1@@0 q w@@0) (InsidePredicate_11164_11164 q w@@0 r u)) (InsidePredicate_11164_11164 p@@1 v_1@@0 r u))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11164_11164 p@@1 v_1@@0 q w@@0) (InsidePredicate_11164_11164 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_17270) ) (!  (=> (= (|Seq#Length_7640| s@@31) 0) (= s@@31 |Seq#Empty_7640|))
 :qid |stdinbpl.232:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_7640| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2987) ) (!  (=> (= (|Seq#Length_2987| s@@32) 0) (= s@@32 |Seq#Empty_2987|))
 :qid |stdinbpl.232:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2987| s@@32))
)))
(assert (forall ((s@@33 T@Seq_17270) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_7640| s@@33 n@@25) |Seq#Empty_7640|))
 :qid |stdinbpl.408:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_7640| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2987) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2987| s@@34 n@@26) |Seq#Empty_2987|))
 :qid |stdinbpl.408:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2987| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@20 T@PolymorphicMapType_11104) (Mask@@22 T@PolymorphicMapType_11125) (diz@@2 T@Ref) (lo@@2 Int) (hi@@2 Int) (i@@14 Int) (ar_1@@2 T@Seq_17270) ) (!  (=> (state Heap@@20 Mask@@22) (= (|sum'| Heap@@20 diz@@2 lo@@2 hi@@2 i@@14 ar_1@@2) (|sum#frame| (FrameFragment_3668 (|sum#condqp1| Heap@@20 diz@@2 lo@@2 hi@@2 i@@14 ar_1@@2)) diz@@2 lo@@2 hi@@2 i@@14 ar_1@@2)))
 :qid |stdinbpl.608:15|
 :skolemid |62|
 :pattern ( (state Heap@@20 Mask@@22) (|sum'| Heap@@20 diz@@2 lo@@2 hi@@2 i@@14 ar_1@@2))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_11104) (Heap1Heap T@PolymorphicMapType_11104) (diz@@3 T@Ref) (lo@@3 Int) (hi@@3 Int) (i@@15 Int) (ar_1@@3 T@Seq_17270) ) (!  (=> (and (= (|Seq#Contains_2987| (|Seq#Range| lo@@3 hi@@3) (|sk_sum#condqp1| (|sum#condqp1| Heap2Heap diz@@3 lo@@3 hi@@3 i@@15 ar_1@@3) (|sum#condqp1| Heap1Heap diz@@3 lo@@3 hi@@3 i@@15 ar_1@@3))) (|Seq#Contains_2987| (|Seq#Range| lo@@3 hi@@3) (|sk_sum#condqp1| (|sum#condqp1| Heap2Heap diz@@3 lo@@3 hi@@3 i@@15 ar_1@@3) (|sum#condqp1| Heap1Heap diz@@3 lo@@3 hi@@3 i@@15 ar_1@@3)))) (=> (|Seq#Contains_2987| (|Seq#Range| lo@@3 hi@@3) (|sk_sum#condqp1| (|sum#condqp1| Heap2Heap diz@@3 lo@@3 hi@@3 i@@15 ar_1@@3) (|sum#condqp1| Heap1Heap diz@@3 lo@@3 hi@@3 i@@15 ar_1@@3))) (= (select (|PolymorphicMapType_11104_7619_3124#PolymorphicMapType_11104| Heap2Heap) (|Seq#Index_7640| ar_1@@3 (|sk_sum#condqp1| (|sum#condqp1| Heap2Heap diz@@3 lo@@3 hi@@3 i@@15 ar_1@@3) (|sum#condqp1| Heap1Heap diz@@3 lo@@3 hi@@3 i@@15 ar_1@@3))) val) (select (|PolymorphicMapType_11104_7619_3124#PolymorphicMapType_11104| Heap1Heap) (|Seq#Index_7640| ar_1@@3 (|sk_sum#condqp1| (|sum#condqp1| Heap2Heap diz@@3 lo@@3 hi@@3 i@@15 ar_1@@3) (|sum#condqp1| Heap1Heap diz@@3 lo@@3 hi@@3 i@@15 ar_1@@3))) val)))) (= (|sum#condqp1| Heap2Heap diz@@3 lo@@3 hi@@3 i@@15 ar_1@@3) (|sum#condqp1| Heap1Heap diz@@3 lo@@3 hi@@3 i@@15 ar_1@@3)))
 :qid |stdinbpl.618:15|
 :skolemid |63|
 :pattern ( (|sum#condqp1| Heap2Heap diz@@3 lo@@3 hi@@3 i@@15 ar_1@@3) (|sum#condqp1| Heap1Heap diz@@3 lo@@3 hi@@3 i@@15 ar_1@@3) (succHeapTrans Heap2Heap Heap1Heap))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lo@@4 () Int)
(declare-fun hi@@4 () Int)
(declare-fun k1_4 () Int)
(declare-fun k2_4 () Int)
(declare-fun ar_1@@4 () T@Seq_17270)
(declare-fun wildcard@0 () Real)
(declare-fun QPMask@0 () T@PolymorphicMapType_11125)
(declare-fun Heap@@21 () T@PolymorphicMapType_11104)
(declare-fun neverTriggered2 (Int) Bool)
(declare-fun diz@@4 () T@Ref)
(declare-fun i@@16 () Int)
(declare-fun |sum#trigger| (T@FrameType T@Ref Int Int Int T@Seq_17270) Bool)
(declare-fun wildcard () Real)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun k_6 () Int)
(declare-fun k1_1 () Int)
(declare-fun k2_1 () Int)
(set-info :boogie-vc-id |sum#definedness|)
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
 (=> (= (ControlFlow 0 0) 39) (let ((anon13_correct true))
(let ((anon24_Else_correct  (=> (and (not (and (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k1_4) (and (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k2_4) (not (= k1_4 k2_4))))) (= (ControlFlow 0 24) 21)) anon13_correct)))
(let ((anon24_Then_correct  (=> (and (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k1_4) (and (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k2_4) (not (= k1_4 k2_4)))) (and (=> (= (ControlFlow 0 22) (- 0 23)) (not (= (|Seq#Index_7640| ar_1@@4 k1_4) (|Seq#Index_7640| ar_1@@4 k2_4)))) (=> (not (= (|Seq#Index_7640| ar_1@@4 k1_4) (|Seq#Index_7640| ar_1@@4 k2_4))) (=> (= (ControlFlow 0 22) 21) anon13_correct))))))
(let ((anon23_Else_correct  (=> (and (forall ((k1_5_1 Int) (k2_5_1 Int) ) (!  (=> (and (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k1_5_1) (and (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k2_5_1) (not (= k1_5_1 k2_5_1)))) (not (= (|Seq#Index_7640| ar_1@@4 k1_5_1) (|Seq#Index_7640| ar_1@@4 k2_5_1))))
 :qid |stdinbpl.758:26|
 :skolemid |71|
 :pattern ( (|Seq#ContainsTrigger_2987| (|Seq#Range| lo@@4 hi@@4) k1_5_1) (|Seq#ContainsTrigger_2987| (|Seq#Range| lo@@4 hi@@4) k2_5_1))
 :pattern ( (|Seq#ContainsTrigger_2987| (|Seq#Range| lo@@4 hi@@4) k1_5_1) (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k2_5_1))
 :pattern ( (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k1_5_1) (|Seq#ContainsTrigger_2987| (|Seq#Range| lo@@4 hi@@4) k2_5_1))
 :pattern ( (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k1_5_1) (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k2_5_1))
 :pattern ( (|Seq#ContainsTrigger_2987| (|Seq#Range| lo@@4 hi@@4) k1_5_1) (|Seq#Index_7640| ar_1@@4 k2_5_1))
 :pattern ( (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k1_5_1) (|Seq#Index_7640| ar_1@@4 k2_5_1))
 :pattern ( (|Seq#ContainsTrigger_2987| (|Seq#Range| lo@@4 hi@@4) k2_5_1) (|Seq#Index_7640| ar_1@@4 k1_5_1))
 :pattern ( (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k2_5_1) (|Seq#Index_7640| ar_1@@4 k1_5_1))
 :pattern ( (|Seq#Index_7640| ar_1@@4 k1_5_1) (|Seq#Index_7640| ar_1@@4 k2_5_1))
)) (> wildcard@0 0.0)) (and (=> (= (ControlFlow 0 17) (- 0 20)) (forall ((k_5 Int) ) (!  (=> (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k_5) (> (select (|PolymorphicMapType_11125_7619_3124#PolymorphicMapType_11125| QPMask@0) (|Seq#Index_7640| ar_1@@4 k_5) val) NoPerm))
 :qid |stdinbpl.766:21|
 :skolemid |72|
))) (=> (forall ((k_5@@0 Int) ) (!  (=> (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k_5@@0) (> (select (|PolymorphicMapType_11125_7619_3124#PolymorphicMapType_11125| QPMask@0) (|Seq#Index_7640| ar_1@@4 k_5@@0) val) NoPerm))
 :qid |stdinbpl.766:21|
 :skolemid |72|
)) (=> (forall ((k_5@@1 Int) ) (!  (=> (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k_5@@1) (< wildcard@0 (select (|PolymorphicMapType_11125_7619_3124#PolymorphicMapType_11125| QPMask@0) (|Seq#Index_7640| ar_1@@4 k_5@@1) val)))
 :qid |stdinbpl.770:26|
 :skolemid |73|
)) (and (=> (= (ControlFlow 0 17) (- 0 19)) (forall ((k_5@@2 Int) ) (!  (=> (and (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k_5@@2) (dummyFunction_3921 (select (|PolymorphicMapType_11104_7619_3124#PolymorphicMapType_11104| Heap@@21) (|Seq#Index_7640| ar_1@@4 k_5@@2) val))) (>= wildcard@0 NoPerm))
 :qid |stdinbpl.777:23|
 :skolemid |74|
 :pattern ( (|Seq#Index_7640| ar_1@@4 k_5@@2))
 :pattern ( (|Seq#ContainsTrigger_2987| (|Seq#Range| lo@@4 hi@@4) k_5@@2))
 :pattern ( (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k_5@@2))
 :pattern ( (|Seq#Index_7640| ar_1@@4 k_5@@2))
))) (=> (forall ((k_5@@3 Int) ) (!  (=> (and (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k_5@@3) (dummyFunction_3921 (select (|PolymorphicMapType_11104_7619_3124#PolymorphicMapType_11104| Heap@@21) (|Seq#Index_7640| ar_1@@4 k_5@@3) val))) (>= wildcard@0 NoPerm))
 :qid |stdinbpl.777:23|
 :skolemid |74|
 :pattern ( (|Seq#Index_7640| ar_1@@4 k_5@@3))
 :pattern ( (|Seq#ContainsTrigger_2987| (|Seq#Range| lo@@4 hi@@4) k_5@@3))
 :pattern ( (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k_5@@3))
 :pattern ( (|Seq#Index_7640| ar_1@@4 k_5@@3))
)) (and (=> (= (ControlFlow 0 17) (- 0 18)) (forall ((k_5@@4 Int) (k_5_1 Int) ) (!  (=> (and (and (and (and (not (= k_5@@4 k_5_1)) (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k_5@@4)) (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k_5_1)) (< NoPerm wildcard@0)) (< NoPerm wildcard@0)) (not (= (|Seq#Index_7640| ar_1@@4 k_5@@4) (|Seq#Index_7640| ar_1@@4 k_5_1))))
 :qid |stdinbpl.784:23|
 :skolemid |75|
 :pattern ( (neverTriggered2 k_5@@4) (neverTriggered2 k_5_1))
))) (=> (forall ((k_5@@5 Int) (k_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= k_5@@5 k_5_1@@0)) (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k_5@@5)) (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k_5_1@@0)) (< NoPerm wildcard@0)) (< NoPerm wildcard@0)) (not (= (|Seq#Index_7640| ar_1@@4 k_5@@5) (|Seq#Index_7640| ar_1@@4 k_5_1@@0))))
 :qid |stdinbpl.784:23|
 :skolemid |75|
 :pattern ( (neverTriggered2 k_5@@5) (neverTriggered2 k_5_1@@0))
)) (=> (= (ControlFlow 0 17) (- 0 16)) (forall ((k_5@@6 Int) ) (!  (=> (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k_5@@6) (=> (> wildcard@0 NoPerm) (> (select (|PolymorphicMapType_11125_7619_3124#PolymorphicMapType_11125| QPMask@0) (|Seq#Index_7640| ar_1@@4 k_5@@6) val) NoPerm)))
 :qid |stdinbpl.791:23|
 :skolemid |76|
 :pattern ( (|Seq#Index_7640| ar_1@@4 k_5@@6))
 :pattern ( (|Seq#ContainsTrigger_2987| (|Seq#Range| lo@@4 hi@@4) k_5@@6))
 :pattern ( (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k_5@@6))
 :pattern ( (|Seq#Index_7640| ar_1@@4 k_5@@6))
)))))))))))))
(let ((anon22_Then_correct  (and (=> (= (ControlFlow 0 25) (- 0 30)) (not (= diz@@4 null))) (=> (not (= diz@@4 null)) (and (=> (= (ControlFlow 0 25) (- 0 29)) (<= 0 lo@@4)) (=> (<= 0 lo@@4) (and (=> (= (ControlFlow 0 25) (- 0 28)) (<= lo@@4 (+ i@@16 1))) (=> (<= lo@@4 (+ i@@16 1)) (and (=> (= (ControlFlow 0 25) (- 0 27)) (<= (+ i@@16 1) hi@@4)) (=> (<= (+ i@@16 1) hi@@4) (and (=> (= (ControlFlow 0 25) (- 0 26)) (<= hi@@4 (|Seq#Length_7640| ar_1@@4))) (=> (<= hi@@4 (|Seq#Length_7640| ar_1@@4)) (and (and (=> (= (ControlFlow 0 25) 17) anon23_Else_correct) (=> (= (ControlFlow 0 25) 22) anon24_Then_correct)) (=> (= (ControlFlow 0 25) 24) anon24_Else_correct))))))))))))))
(let ((anon16_correct true))
(let ((anon22_Else_correct  (=> (and (|sum#trigger| (FrameFragment_3668 (|sum#condqp1| Heap@@21 diz@@4 lo@@4 hi@@4 (+ i@@16 1) ar_1@@4)) diz@@4 lo@@4 hi@@4 (+ i@@16 1) ar_1@@4) (= (ControlFlow 0 15) 13)) anon16_correct)))
(let ((anon21_Then_correct  (=> (< i@@16 hi@@4) (and (=> (= (ControlFlow 0 31) (- 0 34)) (>= i@@16 0)) (=> (>= i@@16 0) (and (=> (= (ControlFlow 0 31) (- 0 33)) (< i@@16 (|Seq#Length_7640| ar_1@@4))) (=> (< i@@16 (|Seq#Length_7640| ar_1@@4)) (and (=> (= (ControlFlow 0 31) (- 0 32)) (HasDirectPerm_7619_3124 QPMask@0 (|Seq#Index_7640| ar_1@@4 i@@16) val)) (=> (HasDirectPerm_7619_3124 QPMask@0 (|Seq#Index_7640| ar_1@@4 i@@16) val) (and (=> (= (ControlFlow 0 31) 25) anon22_Then_correct) (=> (= (ControlFlow 0 31) 15) anon22_Else_correct)))))))))))
(let ((anon21_Else_correct  (=> (and (<= hi@@4 i@@16) (= (ControlFlow 0 14) 13)) anon16_correct)))
(let ((anon19_Else_correct  (and (=> (= (ControlFlow 0 35) (- 0 36)) (forall ((k_4_2 Int) (k_4_3 Int) ) (!  (=> (and (and (and (and (not (= k_4_2 k_4_3)) (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k_4_2)) (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k_4_3)) (< NoPerm wildcard)) (< NoPerm wildcard)) (not (= (|Seq#Index_7640| ar_1@@4 k_4_2) (|Seq#Index_7640| ar_1@@4 k_4_3))))
 :qid |stdinbpl.693:15|
 :skolemid |65|
))) (=> (forall ((k_4_2@@0 Int) (k_4_3@@0 Int) ) (!  (=> (and (and (and (and (not (= k_4_2@@0 k_4_3@@0)) (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k_4_2@@0)) (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k_4_3@@0)) (< NoPerm wildcard)) (< NoPerm wildcard)) (not (= (|Seq#Index_7640| ar_1@@4 k_4_2@@0) (|Seq#Index_7640| ar_1@@4 k_4_3@@0))))
 :qid |stdinbpl.693:15|
 :skolemid |65|
)) (=> (and (and (forall ((k_4_2@@1 Int) ) (!  (=> (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k_4_2@@1) (and (qpRange1 (|Seq#Index_7640| ar_1@@4 k_4_2@@1)) (= (invRecv1 (|Seq#Index_7640| ar_1@@4 k_4_2@@1)) k_4_2@@1)))
 :qid |stdinbpl.699:22|
 :skolemid |66|
 :pattern ( (|Seq#Index_7640| ar_1@@4 k_4_2@@1))
 :pattern ( (|Seq#ContainsTrigger_2987| (|Seq#Range| lo@@4 hi@@4) k_4_2@@1))
 :pattern ( (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k_4_2@@1))
 :pattern ( (|Seq#Index_7640| ar_1@@4 k_4_2@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) (invRecv1 o_9)) (qpRange1 o_9)) (= (|Seq#Index_7640| ar_1@@4 (invRecv1 o_9)) o_9))
 :qid |stdinbpl.703:22|
 :skolemid |67|
 :pattern ( (invRecv1 o_9))
))) (and (forall ((k_4_2@@2 Int) ) (!  (=> (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k_4_2@@2) (not (= (|Seq#Index_7640| ar_1@@4 k_4_2@@2) null)))
 :qid |stdinbpl.709:22|
 :skolemid |68|
 :pattern ( (|Seq#Index_7640| ar_1@@4 k_4_2@@2))
 :pattern ( (|Seq#ContainsTrigger_2987| (|Seq#Range| lo@@4 hi@@4) k_4_2@@2))
 :pattern ( (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k_4_2@@2))
 :pattern ( (|Seq#Index_7640| ar_1@@4 k_4_2@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) (invRecv1 o_9@@0)) (qpRange1 o_9@@0)) (and (= (|Seq#Index_7640| ar_1@@4 (invRecv1 o_9@@0)) o_9@@0) (< (select (|PolymorphicMapType_11125_7619_3124#PolymorphicMapType_11125| ZeroMask) o_9@@0 val) (select (|PolymorphicMapType_11125_7619_3124#PolymorphicMapType_11125| QPMask@0) o_9@@0 val)))) (=> (not (and (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) (invRecv1 o_9@@0)) (qpRange1 o_9@@0))) (= (select (|PolymorphicMapType_11125_7619_3124#PolymorphicMapType_11125| QPMask@0) o_9@@0 val) (select (|PolymorphicMapType_11125_7619_3124#PolymorphicMapType_11125| ZeroMask) o_9@@0 val))))
 :qid |stdinbpl.715:22|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_11125_7619_3124#PolymorphicMapType_11125| QPMask@0) o_9@@0 val))
)))) (=> (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_11164_53) ) (!  (=> true (= (select (|PolymorphicMapType_11125_7619_53#PolymorphicMapType_11125| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_11125_7619_53#PolymorphicMapType_11125| QPMask@0) o_9@@1 f_5)))
 :qid |stdinbpl.719:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_11125_7619_53#PolymorphicMapType_11125| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_11125_7619_53#PolymorphicMapType_11125| QPMask@0) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_11177_11178) ) (!  (=> true (= (select (|PolymorphicMapType_11125_7619_11178#PolymorphicMapType_11125| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_11125_7619_11178#PolymorphicMapType_11125| QPMask@0) o_9@@2 f_5@@0)))
 :qid |stdinbpl.719:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_11125_7619_11178#PolymorphicMapType_11125| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_11125_7619_11178#PolymorphicMapType_11125| QPMask@0) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_17192_3109) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_11125_7619_3124#PolymorphicMapType_11125| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_11125_7619_3124#PolymorphicMapType_11125| QPMask@0) o_9@@3 f_5@@1)))
 :qid |stdinbpl.719:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_11125_7619_3124#PolymorphicMapType_11125| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_11125_7619_3124#PolymorphicMapType_11125| QPMask@0) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_7619_29459) ) (!  (=> true (= (select (|PolymorphicMapType_11125_7619_29459#PolymorphicMapType_11125| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_11125_7619_29459#PolymorphicMapType_11125| QPMask@0) o_9@@4 f_5@@2)))
 :qid |stdinbpl.719:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_11125_7619_29459#PolymorphicMapType_11125| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_11125_7619_29459#PolymorphicMapType_11125| QPMask@0) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_7619_29592) ) (!  (=> true (= (select (|PolymorphicMapType_11125_7619_33714#PolymorphicMapType_11125| ZeroMask) o_9@@5 f_5@@3) (select (|PolymorphicMapType_11125_7619_33714#PolymorphicMapType_11125| QPMask@0) o_9@@5 f_5@@3)))
 :qid |stdinbpl.719:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_11125_7619_33714#PolymorphicMapType_11125| ZeroMask) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_11125_7619_33714#PolymorphicMapType_11125| QPMask@0) o_9@@5 f_5@@3))
))) (and (state Heap@@21 QPMask@0) (state Heap@@21 QPMask@0))) (and (=> (= (ControlFlow 0 35) 31) anon21_Then_correct) (=> (= (ControlFlow 0 35) 14) anon21_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon20_Else_correct  (=> (and (not (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k_6)) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon20_Then_correct  (=> (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k_6) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= k_6 0)) (=> (>= k_6 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< k_6 (|Seq#Length_7640| ar_1@@4))) (=> (< k_6 (|Seq#Length_7640| ar_1@@4)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon17_Else_correct  (=> (and (forall ((k1_3 Int) (k2_3 Int) ) (!  (=> (and (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k1_3) (and (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k2_3) (not (= k1_3 k2_3)))) (not (= (|Seq#Index_7640| ar_1@@4 k1_3) (|Seq#Index_7640| ar_1@@4 k2_3))))
 :qid |stdinbpl.675:20|
 :skolemid |64|
 :pattern ( (|Seq#ContainsTrigger_2987| (|Seq#Range| lo@@4 hi@@4) k1_3) (|Seq#ContainsTrigger_2987| (|Seq#Range| lo@@4 hi@@4) k2_3))
 :pattern ( (|Seq#ContainsTrigger_2987| (|Seq#Range| lo@@4 hi@@4) k1_3) (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k2_3))
 :pattern ( (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k1_3) (|Seq#ContainsTrigger_2987| (|Seq#Range| lo@@4 hi@@4) k2_3))
 :pattern ( (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k1_3) (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k2_3))
 :pattern ( (|Seq#ContainsTrigger_2987| (|Seq#Range| lo@@4 hi@@4) k1_3) (|Seq#Index_7640| ar_1@@4 k2_3))
 :pattern ( (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k1_3) (|Seq#Index_7640| ar_1@@4 k2_3))
 :pattern ( (|Seq#ContainsTrigger_2987| (|Seq#Range| lo@@4 hi@@4) k2_3) (|Seq#Index_7640| ar_1@@4 k1_3))
 :pattern ( (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k2_3) (|Seq#Index_7640| ar_1@@4 k1_3))
 :pattern ( (|Seq#Index_7640| ar_1@@4 k1_3) (|Seq#Index_7640| ar_1@@4 k2_3))
)) (state Heap@@21 ZeroMask)) (and (and (=> (= (ControlFlow 0 37) 35) anon19_Else_correct) (=> (= (ControlFlow 0 37) 9) anon20_Then_correct)) (=> (= (ControlFlow 0 37) 12) anon20_Else_correct)))))
(let ((anon3_correct true))
(let ((anon18_Else_correct  (=> (and (not (and (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k1_1) (and (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k2_1) (not (= k1_1 k2_1))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon18_Then_correct  (=> (and (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k1_1) (and (|Seq#Contains_2987| (|Seq#Range| lo@@4 hi@@4) k2_1) (not (= k1_1 k2_1)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= k1_1 0)) (=> (>= k1_1 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< k1_1 (|Seq#Length_7640| ar_1@@4))) (=> (< k1_1 (|Seq#Length_7640| ar_1@@4)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= k2_1 0)) (=> (>= k2_1 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< k2_1 (|Seq#Length_7640| ar_1@@4))) (=> (< k2_1 (|Seq#Length_7640| ar_1@@4)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (and (state Heap@@21 ZeroMask) (not AssumePermUpperBound)) (and (select (|PolymorphicMapType_11104_7419_53#PolymorphicMapType_11104| Heap@@21) diz@@4 $allocated) (= AssumeFunctionsAbove 0))) (=> (and (and (and (not (= diz@@4 null)) (state Heap@@21 ZeroMask)) (and (<= 0 lo@@4) (<= lo@@4 i@@16))) (and (and (<= i@@16 hi@@4) (state Heap@@21 ZeroMask)) (and (<= hi@@4 (|Seq#Length_7640| ar_1@@4)) (state Heap@@21 ZeroMask)))) (and (and (=> (= (ControlFlow 0 38) 37) anon17_Else_correct) (=> (= (ControlFlow 0 38) 2) anon18_Then_correct)) (=> (= (ControlFlow 0 38) 7) anon18_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard 0.0) true) (= (ControlFlow 0 39) 38)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
