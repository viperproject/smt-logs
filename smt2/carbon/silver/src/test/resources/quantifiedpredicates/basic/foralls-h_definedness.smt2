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
(declare-sort T@Field_13498_53 0)
(declare-sort T@Field_13511_13512 0)
(declare-sort T@Field_22420_22421 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_22373_5155 0)
(declare-sort T@Field_13498_22421 0)
(declare-sort T@Field_13498_22438 0)
(declare-sort T@Field_22420_53 0)
(declare-sort T@Field_22420_13512 0)
(declare-sort T@Field_22420_5155 0)
(declare-sort T@Field_22433_22438 0)
(declare-datatypes ((T@PolymorphicMapType_13459 0)) (((PolymorphicMapType_13459 (|PolymorphicMapType_13459_9207_5155#PolymorphicMapType_13459| (Array T@Ref T@Field_22373_5155 Real)) (|PolymorphicMapType_13459_9210_9211#PolymorphicMapType_13459| (Array T@Ref T@Field_22420_22421 Real)) (|PolymorphicMapType_13459_9207_9211#PolymorphicMapType_13459| (Array T@Ref T@Field_13498_22421 Real)) (|PolymorphicMapType_13459_9207_53#PolymorphicMapType_13459| (Array T@Ref T@Field_13498_53 Real)) (|PolymorphicMapType_13459_9207_13512#PolymorphicMapType_13459| (Array T@Ref T@Field_13511_13512 Real)) (|PolymorphicMapType_13459_9207_44354#PolymorphicMapType_13459| (Array T@Ref T@Field_13498_22438 Real)) (|PolymorphicMapType_13459_9210_5155#PolymorphicMapType_13459| (Array T@Ref T@Field_22420_5155 Real)) (|PolymorphicMapType_13459_9210_53#PolymorphicMapType_13459| (Array T@Ref T@Field_22420_53 Real)) (|PolymorphicMapType_13459_9210_13512#PolymorphicMapType_13459| (Array T@Ref T@Field_22420_13512 Real)) (|PolymorphicMapType_13459_9210_44765#PolymorphicMapType_13459| (Array T@Ref T@Field_22433_22438 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13987 0)) (((PolymorphicMapType_13987 (|PolymorphicMapType_13987_13498_53#PolymorphicMapType_13987| (Array T@Ref T@Field_13498_53 Bool)) (|PolymorphicMapType_13987_13498_13512#PolymorphicMapType_13987| (Array T@Ref T@Field_13511_13512 Bool)) (|PolymorphicMapType_13987_13498_5155#PolymorphicMapType_13987| (Array T@Ref T@Field_22373_5155 Bool)) (|PolymorphicMapType_13987_13498_22421#PolymorphicMapType_13987| (Array T@Ref T@Field_13498_22421 Bool)) (|PolymorphicMapType_13987_13498_37912#PolymorphicMapType_13987| (Array T@Ref T@Field_13498_22438 Bool)) (|PolymorphicMapType_13987_22420_53#PolymorphicMapType_13987| (Array T@Ref T@Field_22420_53 Bool)) (|PolymorphicMapType_13987_22420_13512#PolymorphicMapType_13987| (Array T@Ref T@Field_22420_13512 Bool)) (|PolymorphicMapType_13987_22420_5155#PolymorphicMapType_13987| (Array T@Ref T@Field_22420_5155 Bool)) (|PolymorphicMapType_13987_22420_22421#PolymorphicMapType_13987| (Array T@Ref T@Field_22420_22421 Bool)) (|PolymorphicMapType_13987_22420_38960#PolymorphicMapType_13987| (Array T@Ref T@Field_22433_22438 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13438 0)) (((PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| (Array T@Ref T@Field_13498_53 Bool)) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| (Array T@Ref T@Field_13511_13512 T@Ref)) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| (Array T@Ref T@Field_22420_22421 T@FrameType)) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| (Array T@Ref T@Field_22373_5155 Int)) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| (Array T@Ref T@Field_13498_22421 T@FrameType)) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| (Array T@Ref T@Field_13498_22438 T@PolymorphicMapType_13987)) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| (Array T@Ref T@Field_22420_53 Bool)) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| (Array T@Ref T@Field_22420_13512 T@Ref)) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| (Array T@Ref T@Field_22420_5155 Int)) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| (Array T@Ref T@Field_22433_22438 T@PolymorphicMapType_13987)) ) ) ))
(declare-fun $allocated () T@Field_13498_53)
(declare-fun f_7 () T@Field_22373_5155)
(declare-sort T@Seq_23340 0)
(declare-fun |Seq#Length_9242| (T@Seq_23340) Int)
(declare-fun |Seq#Drop_9242| (T@Seq_23340 Int) T@Seq_23340)
(declare-sort T@Seq_3032 0)
(declare-fun |Seq#Length_3032| (T@Seq_3032) Int)
(declare-fun |Seq#Drop_3032| (T@Seq_3032 Int) T@Seq_3032)
(declare-fun succHeap (T@PolymorphicMapType_13438 T@PolymorphicMapType_13438) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_13438 T@PolymorphicMapType_13438) Bool)
(declare-fun state (T@PolymorphicMapType_13438 T@PolymorphicMapType_13459) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_13459) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_13987)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Seq#Index_9242| (T@Seq_23340 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3032| (T@Seq_3032 Int) Int)
(declare-fun |Seq#Empty_9242| () T@Seq_23340)
(declare-fun |Seq#Empty_3032| () T@Seq_3032)
(declare-fun h (T@Ref) T@Field_22420_22421)
(declare-fun IsPredicateField_9210_9211 (T@Field_22420_22421) Bool)
(declare-fun |h#trigger_9210| (T@PolymorphicMapType_13438 T@Field_22420_22421) Bool)
(declare-fun |h#everUsed_9210| (T@Field_22420_22421) Bool)
(declare-fun |Seq#Update_9242| (T@Seq_23340 Int T@Ref) T@Seq_23340)
(declare-fun |Seq#Update_3032| (T@Seq_3032 Int Int) T@Seq_3032)
(declare-fun |Set#Union_8326| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Intersection_8326| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Singleton_8326| (Int) (Array Int Bool))
(declare-fun |Seq#Take_9242| (T@Seq_23340 Int) T@Seq_23340)
(declare-fun |Seq#Take_3032| (T@Seq_3032 Int) T@Seq_3032)
(declare-fun |Seq#Contains_3032| (T@Seq_3032 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3032)
(declare-fun |Set#Card_8326| ((Array Int Bool)) Int)
(declare-fun |Seq#Contains_23340| (T@Seq_23340 T@Ref) Bool)
(declare-fun |Seq#Skolem_23340| (T@Seq_23340 T@Ref) Int)
(declare-fun |Seq#Skolem_3032| (T@Seq_3032 Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_13438 T@PolymorphicMapType_13438 T@PolymorphicMapType_13459) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9210 (T@Field_22420_22421) T@Field_22433_22438)
(declare-fun HasDirectPerm_22420_22421 (T@PolymorphicMapType_13459 T@Ref T@Field_22420_22421) Bool)
(declare-fun IsPredicateField_13498_36428 (T@Field_13498_22421) Bool)
(declare-fun PredicateMaskField_13498 (T@Field_13498_22421) T@Field_13498_22438)
(declare-fun HasDirectPerm_13498_22421 (T@PolymorphicMapType_13459 T@Ref T@Field_13498_22421) Bool)
(declare-fun IsWandField_22420_40125 (T@Field_22420_22421) Bool)
(declare-fun WandMaskField_22420 (T@Field_22420_22421) T@Field_22433_22438)
(declare-fun IsWandField_13498_39768 (T@Field_13498_22421) Bool)
(declare-fun WandMaskField_13498 (T@Field_13498_22421) T@Field_13498_22438)
(declare-fun |Seq#Singleton_9242| (T@Ref) T@Seq_23340)
(declare-fun |Seq#Singleton_3032| (Int) T@Seq_3032)
(declare-fun |h#sm| (T@Ref) T@Field_22433_22438)
(declare-fun |Seq#Append_23340| (T@Seq_23340 T@Seq_23340) T@Seq_23340)
(declare-fun |Seq#Append_3032| (T@Seq_3032 T@Seq_3032) T@Seq_3032)
(declare-fun dummyHeap () T@PolymorphicMapType_13438)
(declare-fun ZeroMask () T@PolymorphicMapType_13459)
(declare-fun InsidePredicate_22420_22420 (T@Field_22420_22421 T@FrameType T@Field_22420_22421 T@FrameType) Bool)
(declare-fun InsidePredicate_13498_13498 (T@Field_13498_22421 T@FrameType T@Field_13498_22421 T@FrameType) Bool)
(declare-fun IsPredicateField_9207_5155 (T@Field_22373_5155) Bool)
(declare-fun IsWandField_9207_5155 (T@Field_22373_5155) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9210_47057 (T@Field_22433_22438) Bool)
(declare-fun IsWandField_9210_47073 (T@Field_22433_22438) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_9210_13512 (T@Field_22420_13512) Bool)
(declare-fun IsWandField_9210_13512 (T@Field_22420_13512) Bool)
(declare-fun IsPredicateField_9210_53 (T@Field_22420_53) Bool)
(declare-fun IsWandField_9210_53 (T@Field_22420_53) Bool)
(declare-fun IsPredicateField_9210_5155 (T@Field_22420_5155) Bool)
(declare-fun IsWandField_9210_5155 (T@Field_22420_5155) Bool)
(declare-fun IsPredicateField_9207_46226 (T@Field_13498_22438) Bool)
(declare-fun IsWandField_9207_46242 (T@Field_13498_22438) Bool)
(declare-fun IsPredicateField_9207_13512 (T@Field_13511_13512) Bool)
(declare-fun IsWandField_9207_13512 (T@Field_13511_13512) Bool)
(declare-fun IsPredicateField_9207_53 (T@Field_13498_53) Bool)
(declare-fun IsWandField_9207_53 (T@Field_13498_53) Bool)
(declare-fun HasDirectPerm_22420_36140 (T@PolymorphicMapType_13459 T@Ref T@Field_22433_22438) Bool)
(declare-fun HasDirectPerm_22420_5155 (T@PolymorphicMapType_13459 T@Ref T@Field_22420_5155) Bool)
(declare-fun HasDirectPerm_22420_13512 (T@PolymorphicMapType_13459 T@Ref T@Field_22420_13512) Bool)
(declare-fun HasDirectPerm_22420_53 (T@PolymorphicMapType_13459 T@Ref T@Field_22420_53) Bool)
(declare-fun HasDirectPerm_13498_34979 (T@PolymorphicMapType_13459 T@Ref T@Field_13498_22438) Bool)
(declare-fun HasDirectPerm_13498_5155 (T@PolymorphicMapType_13459 T@Ref T@Field_22373_5155) Bool)
(declare-fun HasDirectPerm_13498_13512 (T@PolymorphicMapType_13459 T@Ref T@Field_13511_13512) Bool)
(declare-fun HasDirectPerm_13498_53 (T@PolymorphicMapType_13459 T@Ref T@Field_13498_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_13459 T@PolymorphicMapType_13459 T@PolymorphicMapType_13459) Bool)
(declare-fun |Set#Difference_8326| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Seq#Equal_23340| (T@Seq_23340 T@Seq_23340) Bool)
(declare-fun |Seq#Equal_3032| (T@Seq_3032 T@Seq_3032) Bool)
(declare-fun |Set#UnionOne_8326| ((Array Int Bool) Int) (Array Int Bool))
(declare-fun |Seq#ContainsTrigger_9242| (T@Seq_23340 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3032| (T@Seq_3032 Int) Bool)
(declare-fun getPredWandId_9210_9211 (T@Field_22420_22421) Int)
(declare-fun |Set#Empty_8326| () (Array Int Bool))
(declare-fun |Seq#SkolemDiff_23340| (T@Seq_23340 T@Seq_23340) Int)
(declare-fun |Seq#SkolemDiff_3032| (T@Seq_3032 T@Seq_3032) Int)
(declare-fun InsidePredicate_22420_13498 (T@Field_22420_22421 T@FrameType T@Field_13498_22421 T@FrameType) Bool)
(declare-fun InsidePredicate_13498_22420 (T@Field_13498_22421 T@FrameType T@Field_22420_22421 T@FrameType) Bool)
(assert (forall ((s T@Seq_23340) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_9242| s)) (= (|Seq#Length_9242| (|Seq#Drop_9242| s n)) (- (|Seq#Length_9242| s) n))) (=> (< (|Seq#Length_9242| s) n) (= (|Seq#Length_9242| (|Seq#Drop_9242| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_9242| (|Seq#Drop_9242| s n)) (|Seq#Length_9242| s))))
 :qid |stdinbpl.306:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_9242| (|Seq#Drop_9242| s n)))
 :pattern ( (|Seq#Length_9242| s) (|Seq#Drop_9242| s n))
)))
(assert (forall ((s@@0 T@Seq_3032) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3032| s@@0)) (= (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)) (- (|Seq#Length_3032| s@@0) n@@0))) (=> (< (|Seq#Length_3032| s@@0) n@@0) (= (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)) (|Seq#Length_3032| s@@0))))
 :qid |stdinbpl.306:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3032| s@@0) (|Seq#Drop_3032| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_13438) (Heap1 T@PolymorphicMapType_13438) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_13438) (Mask T@PolymorphicMapType_13459) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_13438) (Heap1@@0 T@PolymorphicMapType_13438) (Heap2 T@PolymorphicMapType_13438) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_22433_22438) ) (!  (not (select (|PolymorphicMapType_13987_22420_38960#PolymorphicMapType_13987| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13987_22420_38960#PolymorphicMapType_13987| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_22420_22421) ) (!  (not (select (|PolymorphicMapType_13987_22420_22421#PolymorphicMapType_13987| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13987_22420_22421#PolymorphicMapType_13987| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_22420_5155) ) (!  (not (select (|PolymorphicMapType_13987_22420_5155#PolymorphicMapType_13987| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13987_22420_5155#PolymorphicMapType_13987| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_22420_13512) ) (!  (not (select (|PolymorphicMapType_13987_22420_13512#PolymorphicMapType_13987| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13987_22420_13512#PolymorphicMapType_13987| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_22420_53) ) (!  (not (select (|PolymorphicMapType_13987_22420_53#PolymorphicMapType_13987| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13987_22420_53#PolymorphicMapType_13987| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_13498_22438) ) (!  (not (select (|PolymorphicMapType_13987_13498_37912#PolymorphicMapType_13987| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13987_13498_37912#PolymorphicMapType_13987| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_13498_22421) ) (!  (not (select (|PolymorphicMapType_13987_13498_22421#PolymorphicMapType_13987| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13987_13498_22421#PolymorphicMapType_13987| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_22373_5155) ) (!  (not (select (|PolymorphicMapType_13987_13498_5155#PolymorphicMapType_13987| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13987_13498_5155#PolymorphicMapType_13987| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_13511_13512) ) (!  (not (select (|PolymorphicMapType_13987_13498_13512#PolymorphicMapType_13987| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13987_13498_13512#PolymorphicMapType_13987| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_13498_53) ) (!  (not (select (|PolymorphicMapType_13987_13498_53#PolymorphicMapType_13987| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13987_13498_53#PolymorphicMapType_13987| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.670:15|
 :skolemid |89|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((s@@1 T@Seq_23340) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_9242| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_9242| (|Seq#Drop_9242| s@@1 n@@1) j) (|Seq#Index_9242| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.327:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_9242| (|Seq#Drop_9242| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3032) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3032| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3032| (|Seq#Drop_3032| s@@2 n@@2) j@@0) (|Seq#Index_3032| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.327:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3032| (|Seq#Drop_3032| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_9242| |Seq#Empty_9242|) 0))
(assert (= (|Seq#Length_3032| |Seq#Empty_3032|) 0))
(assert (forall ((a_2 T@Ref) ) (! (IsPredicateField_9210_9211 (h a_2))
 :qid |stdinbpl.783:15|
 :skolemid |119|
 :pattern ( (h a_2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_13438) (a_2@@0 T@Ref) ) (! (|h#everUsed_9210| (h a_2@@0))
 :qid |stdinbpl.802:15|
 :skolemid |123|
 :pattern ( (|h#trigger_9210| Heap@@0 (h a_2@@0)))
)))
(assert (forall ((s@@3 T@Seq_23340) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_9242| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_9242| (|Seq#Update_9242| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_9242| (|Seq#Update_9242| s@@3 i v) n@@3) (|Seq#Index_9242| s@@3 n@@3)))))
 :qid |stdinbpl.282:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_9242| (|Seq#Update_9242| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_9242| s@@3 n@@3) (|Seq#Update_9242| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3032) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3032| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3032| (|Seq#Update_3032| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3032| (|Seq#Update_3032| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3032| s@@4 n@@4)))))
 :qid |stdinbpl.282:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3032| (|Seq#Update_3032| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3032| s@@4 n@@4) (|Seq#Update_3032| s@@4 i@@0 v@@0))
)))
(assert (forall ((a@@0 (Array Int Bool)) (b@@0 (Array Int Bool)) ) (! (= (|Set#Union_8326| (|Set#Union_8326| a@@0 b@@0) b@@0) (|Set#Union_8326| a@@0 b@@0))
 :qid |stdinbpl.622:18|
 :skolemid |74|
 :pattern ( (|Set#Union_8326| (|Set#Union_8326| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array Int Bool)) (b@@1 (Array Int Bool)) ) (! (= (|Set#Intersection_8326| (|Set#Intersection_8326| a@@1 b@@1) b@@1) (|Set#Intersection_8326| a@@1 b@@1))
 :qid |stdinbpl.626:18|
 :skolemid |76|
 :pattern ( (|Set#Intersection_8326| (|Set#Intersection_8326| a@@1 b@@1) b@@1))
)))
(assert (forall ((r Int) (o Int) ) (! (= (select (|Set#Singleton_8326| r) o) (= r o))
 :qid |stdinbpl.591:18|
 :skolemid |63|
 :pattern ( (select (|Set#Singleton_8326| r) o))
)))
(assert (forall ((s@@5 T@Seq_23340) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_9242| s@@5)) (= (|Seq#Length_9242| (|Seq#Take_9242| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_9242| s@@5) n@@5) (= (|Seq#Length_9242| (|Seq#Take_9242| s@@5 n@@5)) (|Seq#Length_9242| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_9242| (|Seq#Take_9242| s@@5 n@@5)) 0)))
 :qid |stdinbpl.293:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_9242| (|Seq#Take_9242| s@@5 n@@5)))
 :pattern ( (|Seq#Take_9242| s@@5 n@@5) (|Seq#Length_9242| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3032) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3032| s@@6)) (= (|Seq#Length_3032| (|Seq#Take_3032| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3032| s@@6) n@@6) (= (|Seq#Length_3032| (|Seq#Take_3032| s@@6 n@@6)) (|Seq#Length_3032| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3032| (|Seq#Take_3032| s@@6 n@@6)) 0)))
 :qid |stdinbpl.293:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3032| (|Seq#Take_3032| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3032| s@@6 n@@6) (|Seq#Length_3032| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3032| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.567:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((a@@2 (Array Int Bool)) (b@@2 (Array Int Bool)) ) (! (= (+ (|Set#Card_8326| (|Set#Union_8326| a@@2 b@@2)) (|Set#Card_8326| (|Set#Intersection_8326| a@@2 b@@2))) (+ (|Set#Card_8326| a@@2) (|Set#Card_8326| b@@2)))
 :qid |stdinbpl.630:18|
 :skolemid |78|
 :pattern ( (|Set#Card_8326| (|Set#Union_8326| a@@2 b@@2)))
 :pattern ( (|Set#Card_8326| (|Set#Intersection_8326| a@@2 b@@2)))
)))
(assert (forall ((s@@7 T@Seq_23340) (x T@Ref) ) (!  (=> (|Seq#Contains_23340| s@@7 x) (and (and (<= 0 (|Seq#Skolem_23340| s@@7 x)) (< (|Seq#Skolem_23340| s@@7 x) (|Seq#Length_9242| s@@7))) (= (|Seq#Index_9242| s@@7 (|Seq#Skolem_23340| s@@7 x)) x)))
 :qid |stdinbpl.425:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_23340| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3032) (x@@0 Int) ) (!  (=> (|Seq#Contains_3032| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3032| s@@8 x@@0)) (< (|Seq#Skolem_3032| s@@8 x@@0) (|Seq#Length_3032| s@@8))) (= (|Seq#Index_3032| s@@8 (|Seq#Skolem_3032| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.425:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3032| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_23340) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_9242| s@@9 n@@7) s@@9))
 :qid |stdinbpl.409:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_9242| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3032) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3032| s@@10 n@@8) s@@10))
 :qid |stdinbpl.409:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3032| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.262:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.260:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.673:15|
 :skolemid |90|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_13438) (ExhaleHeap T@PolymorphicMapType_13438) (Mask@@0 T@PolymorphicMapType_13459) (pm_f_11 T@Field_22420_22421) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_22420_22421 Mask@@0 null pm_f_11) (IsPredicateField_9210_9211 pm_f_11)) (= (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@1) null (PredicateMaskField_9210 pm_f_11)) (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| ExhaleHeap) null (PredicateMaskField_9210 pm_f_11)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_9210_9211 pm_f_11) (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| ExhaleHeap) null (PredicateMaskField_9210 pm_f_11)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_13438) (ExhaleHeap@@0 T@PolymorphicMapType_13438) (Mask@@1 T@PolymorphicMapType_13459) (pm_f_11@@0 T@Field_13498_22421) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_13498_22421 Mask@@1 null pm_f_11@@0) (IsPredicateField_13498_36428 pm_f_11@@0)) (= (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@2) null (PredicateMaskField_13498 pm_f_11@@0)) (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| ExhaleHeap@@0) null (PredicateMaskField_13498 pm_f_11@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_13498_36428 pm_f_11@@0) (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| ExhaleHeap@@0) null (PredicateMaskField_13498 pm_f_11@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_13438) (ExhaleHeap@@1 T@PolymorphicMapType_13438) (Mask@@2 T@PolymorphicMapType_13459) (pm_f_11@@1 T@Field_22420_22421) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_22420_22421 Mask@@2 null pm_f_11@@1) (IsWandField_22420_40125 pm_f_11@@1)) (= (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@3) null (WandMaskField_22420 pm_f_11@@1)) (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| ExhaleHeap@@1) null (WandMaskField_22420 pm_f_11@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_22420_40125 pm_f_11@@1) (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| ExhaleHeap@@1) null (WandMaskField_22420 pm_f_11@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_13438) (ExhaleHeap@@2 T@PolymorphicMapType_13438) (Mask@@3 T@PolymorphicMapType_13459) (pm_f_11@@2 T@Field_13498_22421) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_13498_22421 Mask@@3 null pm_f_11@@2) (IsWandField_13498_39768 pm_f_11@@2)) (= (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@4) null (WandMaskField_13498 pm_f_11@@2)) (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| ExhaleHeap@@2) null (WandMaskField_13498 pm_f_11@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_13498_39768 pm_f_11@@2) (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| ExhaleHeap@@2) null (WandMaskField_13498 pm_f_11@@2)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_23340| (|Seq#Singleton_9242| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.550:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_23340| (|Seq#Singleton_9242| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3032| (|Seq#Singleton_3032| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.550:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3032| (|Seq#Singleton_3032| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_23340) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_9242| s@@11))) (= (|Seq#Index_9242| (|Seq#Take_9242| s@@11 n@@9) j@@3) (|Seq#Index_9242| s@@11 j@@3)))
 :qid |stdinbpl.301:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_9242| (|Seq#Take_9242| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_9242| s@@11 j@@3) (|Seq#Take_9242| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3032) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3032| s@@12))) (= (|Seq#Index_3032| (|Seq#Take_3032| s@@12 n@@10) j@@4) (|Seq#Index_3032| s@@12 j@@4)))
 :qid |stdinbpl.301:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3032| (|Seq#Take_3032| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3032| s@@12 j@@4) (|Seq#Take_3032| s@@12 n@@10))
)))
(assert (forall ((a_2@@1 T@Ref) (a2 T@Ref) ) (!  (=> (= (h a_2@@1) (h a2)) (= a_2@@1 a2))
 :qid |stdinbpl.793:15|
 :skolemid |121|
 :pattern ( (h a_2@@1) (h a2))
)))
(assert (forall ((a_2@@2 T@Ref) (a2@@0 T@Ref) ) (!  (=> (= (|h#sm| a_2@@2) (|h#sm| a2@@0)) (= a_2@@2 a2@@0))
 :qid |stdinbpl.797:15|
 :skolemid |122|
 :pattern ( (|h#sm| a_2@@2) (|h#sm| a2@@0))
)))
(assert (forall ((s@@13 T@Seq_23340) (t T@Seq_23340) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_9242| s@@13))) (< n@@11 (|Seq#Length_9242| (|Seq#Append_23340| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_9242| s@@13)) (|Seq#Length_9242| s@@13)) n@@11) (= (|Seq#Take_9242| (|Seq#Append_23340| s@@13 t) n@@11) (|Seq#Append_23340| s@@13 (|Seq#Take_9242| t (|Seq#Sub| n@@11 (|Seq#Length_9242| s@@13)))))))
 :qid |stdinbpl.386:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_9242| (|Seq#Append_23340| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3032) (t@@0 T@Seq_3032) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3032| s@@14))) (< n@@12 (|Seq#Length_3032| (|Seq#Append_3032| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3032| s@@14)) (|Seq#Length_3032| s@@14)) n@@12) (= (|Seq#Take_3032| (|Seq#Append_3032| s@@14 t@@0) n@@12) (|Seq#Append_3032| s@@14 (|Seq#Take_3032| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3032| s@@14)))))))
 :qid |stdinbpl.386:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3032| (|Seq#Append_3032| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_13438) (ExhaleHeap@@3 T@PolymorphicMapType_13438) (Mask@@4 T@PolymorphicMapType_13459) (pm_f_11@@3 T@Field_22420_22421) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_22420_22421 Mask@@4 null pm_f_11@@3) (IsPredicateField_9210_9211 pm_f_11@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_11 T@Ref) (f_36 T@Field_13498_53) ) (!  (=> (select (|PolymorphicMapType_13987_13498_53#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@5) null (PredicateMaskField_9210 pm_f_11@@3))) o2_11 f_36) (= (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@5) o2_11 f_36) (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11 f_36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11 f_36))
)) (forall ((o2_11@@0 T@Ref) (f_36@@0 T@Field_13511_13512) ) (!  (=> (select (|PolymorphicMapType_13987_13498_13512#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@5) null (PredicateMaskField_9210 pm_f_11@@3))) o2_11@@0 f_36@@0) (= (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@5) o2_11@@0 f_36@@0) (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@0 f_36@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@0 f_36@@0))
))) (forall ((o2_11@@1 T@Ref) (f_36@@1 T@Field_22373_5155) ) (!  (=> (select (|PolymorphicMapType_13987_13498_5155#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@5) null (PredicateMaskField_9210 pm_f_11@@3))) o2_11@@1 f_36@@1) (= (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@5) o2_11@@1 f_36@@1) (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@1 f_36@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@1 f_36@@1))
))) (forall ((o2_11@@2 T@Ref) (f_36@@2 T@Field_13498_22421) ) (!  (=> (select (|PolymorphicMapType_13987_13498_22421#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@5) null (PredicateMaskField_9210 pm_f_11@@3))) o2_11@@2 f_36@@2) (= (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@5) o2_11@@2 f_36@@2) (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@2 f_36@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@2 f_36@@2))
))) (forall ((o2_11@@3 T@Ref) (f_36@@3 T@Field_13498_22438) ) (!  (=> (select (|PolymorphicMapType_13987_13498_37912#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@5) null (PredicateMaskField_9210 pm_f_11@@3))) o2_11@@3 f_36@@3) (= (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@5) o2_11@@3 f_36@@3) (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@3 f_36@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@3 f_36@@3))
))) (forall ((o2_11@@4 T@Ref) (f_36@@4 T@Field_22420_53) ) (!  (=> (select (|PolymorphicMapType_13987_22420_53#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@5) null (PredicateMaskField_9210 pm_f_11@@3))) o2_11@@4 f_36@@4) (= (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@5) o2_11@@4 f_36@@4) (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@4 f_36@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@4 f_36@@4))
))) (forall ((o2_11@@5 T@Ref) (f_36@@5 T@Field_22420_13512) ) (!  (=> (select (|PolymorphicMapType_13987_22420_13512#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@5) null (PredicateMaskField_9210 pm_f_11@@3))) o2_11@@5 f_36@@5) (= (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@5) o2_11@@5 f_36@@5) (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@5 f_36@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@5 f_36@@5))
))) (forall ((o2_11@@6 T@Ref) (f_36@@6 T@Field_22420_5155) ) (!  (=> (select (|PolymorphicMapType_13987_22420_5155#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@5) null (PredicateMaskField_9210 pm_f_11@@3))) o2_11@@6 f_36@@6) (= (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@5) o2_11@@6 f_36@@6) (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@6 f_36@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@6 f_36@@6))
))) (forall ((o2_11@@7 T@Ref) (f_36@@7 T@Field_22420_22421) ) (!  (=> (select (|PolymorphicMapType_13987_22420_22421#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@5) null (PredicateMaskField_9210 pm_f_11@@3))) o2_11@@7 f_36@@7) (= (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@5) o2_11@@7 f_36@@7) (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@7 f_36@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@7 f_36@@7))
))) (forall ((o2_11@@8 T@Ref) (f_36@@8 T@Field_22433_22438) ) (!  (=> (select (|PolymorphicMapType_13987_22420_38960#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@5) null (PredicateMaskField_9210 pm_f_11@@3))) o2_11@@8 f_36@@8) (= (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@5) o2_11@@8 f_36@@8) (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@8 f_36@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@8 f_36@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_9210_9211 pm_f_11@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_13438) (ExhaleHeap@@4 T@PolymorphicMapType_13438) (Mask@@5 T@PolymorphicMapType_13459) (pm_f_11@@4 T@Field_13498_22421) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_13498_22421 Mask@@5 null pm_f_11@@4) (IsPredicateField_13498_36428 pm_f_11@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_11@@9 T@Ref) (f_36@@9 T@Field_13498_53) ) (!  (=> (select (|PolymorphicMapType_13987_13498_53#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@6) null (PredicateMaskField_13498 pm_f_11@@4))) o2_11@@9 f_36@@9) (= (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@6) o2_11@@9 f_36@@9) (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@9 f_36@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@9 f_36@@9))
)) (forall ((o2_11@@10 T@Ref) (f_36@@10 T@Field_13511_13512) ) (!  (=> (select (|PolymorphicMapType_13987_13498_13512#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@6) null (PredicateMaskField_13498 pm_f_11@@4))) o2_11@@10 f_36@@10) (= (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@6) o2_11@@10 f_36@@10) (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@10 f_36@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@10 f_36@@10))
))) (forall ((o2_11@@11 T@Ref) (f_36@@11 T@Field_22373_5155) ) (!  (=> (select (|PolymorphicMapType_13987_13498_5155#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@6) null (PredicateMaskField_13498 pm_f_11@@4))) o2_11@@11 f_36@@11) (= (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@6) o2_11@@11 f_36@@11) (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@11 f_36@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@11 f_36@@11))
))) (forall ((o2_11@@12 T@Ref) (f_36@@12 T@Field_13498_22421) ) (!  (=> (select (|PolymorphicMapType_13987_13498_22421#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@6) null (PredicateMaskField_13498 pm_f_11@@4))) o2_11@@12 f_36@@12) (= (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@6) o2_11@@12 f_36@@12) (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@12 f_36@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@12 f_36@@12))
))) (forall ((o2_11@@13 T@Ref) (f_36@@13 T@Field_13498_22438) ) (!  (=> (select (|PolymorphicMapType_13987_13498_37912#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@6) null (PredicateMaskField_13498 pm_f_11@@4))) o2_11@@13 f_36@@13) (= (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@6) o2_11@@13 f_36@@13) (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@13 f_36@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@13 f_36@@13))
))) (forall ((o2_11@@14 T@Ref) (f_36@@14 T@Field_22420_53) ) (!  (=> (select (|PolymorphicMapType_13987_22420_53#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@6) null (PredicateMaskField_13498 pm_f_11@@4))) o2_11@@14 f_36@@14) (= (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@6) o2_11@@14 f_36@@14) (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@14 f_36@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@14 f_36@@14))
))) (forall ((o2_11@@15 T@Ref) (f_36@@15 T@Field_22420_13512) ) (!  (=> (select (|PolymorphicMapType_13987_22420_13512#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@6) null (PredicateMaskField_13498 pm_f_11@@4))) o2_11@@15 f_36@@15) (= (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@6) o2_11@@15 f_36@@15) (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@15 f_36@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@15 f_36@@15))
))) (forall ((o2_11@@16 T@Ref) (f_36@@16 T@Field_22420_5155) ) (!  (=> (select (|PolymorphicMapType_13987_22420_5155#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@6) null (PredicateMaskField_13498 pm_f_11@@4))) o2_11@@16 f_36@@16) (= (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@6) o2_11@@16 f_36@@16) (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@16 f_36@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@16 f_36@@16))
))) (forall ((o2_11@@17 T@Ref) (f_36@@17 T@Field_22420_22421) ) (!  (=> (select (|PolymorphicMapType_13987_22420_22421#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@6) null (PredicateMaskField_13498 pm_f_11@@4))) o2_11@@17 f_36@@17) (= (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@6) o2_11@@17 f_36@@17) (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@17 f_36@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@17 f_36@@17))
))) (forall ((o2_11@@18 T@Ref) (f_36@@18 T@Field_22433_22438) ) (!  (=> (select (|PolymorphicMapType_13987_22420_38960#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@6) null (PredicateMaskField_13498 pm_f_11@@4))) o2_11@@18 f_36@@18) (= (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@6) o2_11@@18 f_36@@18) (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@18 f_36@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@18 f_36@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_13498_36428 pm_f_11@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_13438) (ExhaleHeap@@5 T@PolymorphicMapType_13438) (Mask@@6 T@PolymorphicMapType_13459) (pm_f_11@@5 T@Field_22420_22421) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_22420_22421 Mask@@6 null pm_f_11@@5) (IsWandField_22420_40125 pm_f_11@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_11@@19 T@Ref) (f_36@@19 T@Field_13498_53) ) (!  (=> (select (|PolymorphicMapType_13987_13498_53#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@7) null (WandMaskField_22420 pm_f_11@@5))) o2_11@@19 f_36@@19) (= (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@7) o2_11@@19 f_36@@19) (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@19 f_36@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@19 f_36@@19))
)) (forall ((o2_11@@20 T@Ref) (f_36@@20 T@Field_13511_13512) ) (!  (=> (select (|PolymorphicMapType_13987_13498_13512#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@7) null (WandMaskField_22420 pm_f_11@@5))) o2_11@@20 f_36@@20) (= (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@7) o2_11@@20 f_36@@20) (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@20 f_36@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@20 f_36@@20))
))) (forall ((o2_11@@21 T@Ref) (f_36@@21 T@Field_22373_5155) ) (!  (=> (select (|PolymorphicMapType_13987_13498_5155#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@7) null (WandMaskField_22420 pm_f_11@@5))) o2_11@@21 f_36@@21) (= (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@7) o2_11@@21 f_36@@21) (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@21 f_36@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@21 f_36@@21))
))) (forall ((o2_11@@22 T@Ref) (f_36@@22 T@Field_13498_22421) ) (!  (=> (select (|PolymorphicMapType_13987_13498_22421#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@7) null (WandMaskField_22420 pm_f_11@@5))) o2_11@@22 f_36@@22) (= (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@7) o2_11@@22 f_36@@22) (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@22 f_36@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@22 f_36@@22))
))) (forall ((o2_11@@23 T@Ref) (f_36@@23 T@Field_13498_22438) ) (!  (=> (select (|PolymorphicMapType_13987_13498_37912#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@7) null (WandMaskField_22420 pm_f_11@@5))) o2_11@@23 f_36@@23) (= (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@7) o2_11@@23 f_36@@23) (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@23 f_36@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@23 f_36@@23))
))) (forall ((o2_11@@24 T@Ref) (f_36@@24 T@Field_22420_53) ) (!  (=> (select (|PolymorphicMapType_13987_22420_53#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@7) null (WandMaskField_22420 pm_f_11@@5))) o2_11@@24 f_36@@24) (= (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@7) o2_11@@24 f_36@@24) (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@24 f_36@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@24 f_36@@24))
))) (forall ((o2_11@@25 T@Ref) (f_36@@25 T@Field_22420_13512) ) (!  (=> (select (|PolymorphicMapType_13987_22420_13512#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@7) null (WandMaskField_22420 pm_f_11@@5))) o2_11@@25 f_36@@25) (= (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@7) o2_11@@25 f_36@@25) (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@25 f_36@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@25 f_36@@25))
))) (forall ((o2_11@@26 T@Ref) (f_36@@26 T@Field_22420_5155) ) (!  (=> (select (|PolymorphicMapType_13987_22420_5155#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@7) null (WandMaskField_22420 pm_f_11@@5))) o2_11@@26 f_36@@26) (= (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@7) o2_11@@26 f_36@@26) (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@26 f_36@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@26 f_36@@26))
))) (forall ((o2_11@@27 T@Ref) (f_36@@27 T@Field_22420_22421) ) (!  (=> (select (|PolymorphicMapType_13987_22420_22421#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@7) null (WandMaskField_22420 pm_f_11@@5))) o2_11@@27 f_36@@27) (= (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@7) o2_11@@27 f_36@@27) (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@27 f_36@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@27 f_36@@27))
))) (forall ((o2_11@@28 T@Ref) (f_36@@28 T@Field_22433_22438) ) (!  (=> (select (|PolymorphicMapType_13987_22420_38960#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@7) null (WandMaskField_22420 pm_f_11@@5))) o2_11@@28 f_36@@28) (= (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@7) o2_11@@28 f_36@@28) (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@28 f_36@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@28 f_36@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_22420_40125 pm_f_11@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_13438) (ExhaleHeap@@6 T@PolymorphicMapType_13438) (Mask@@7 T@PolymorphicMapType_13459) (pm_f_11@@6 T@Field_13498_22421) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_13498_22421 Mask@@7 null pm_f_11@@6) (IsWandField_13498_39768 pm_f_11@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_11@@29 T@Ref) (f_36@@29 T@Field_13498_53) ) (!  (=> (select (|PolymorphicMapType_13987_13498_53#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@8) null (WandMaskField_13498 pm_f_11@@6))) o2_11@@29 f_36@@29) (= (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@8) o2_11@@29 f_36@@29) (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@29 f_36@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@29 f_36@@29))
)) (forall ((o2_11@@30 T@Ref) (f_36@@30 T@Field_13511_13512) ) (!  (=> (select (|PolymorphicMapType_13987_13498_13512#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@8) null (WandMaskField_13498 pm_f_11@@6))) o2_11@@30 f_36@@30) (= (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@8) o2_11@@30 f_36@@30) (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@30 f_36@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@30 f_36@@30))
))) (forall ((o2_11@@31 T@Ref) (f_36@@31 T@Field_22373_5155) ) (!  (=> (select (|PolymorphicMapType_13987_13498_5155#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@8) null (WandMaskField_13498 pm_f_11@@6))) o2_11@@31 f_36@@31) (= (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@8) o2_11@@31 f_36@@31) (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@31 f_36@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@31 f_36@@31))
))) (forall ((o2_11@@32 T@Ref) (f_36@@32 T@Field_13498_22421) ) (!  (=> (select (|PolymorphicMapType_13987_13498_22421#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@8) null (WandMaskField_13498 pm_f_11@@6))) o2_11@@32 f_36@@32) (= (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@8) o2_11@@32 f_36@@32) (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@32 f_36@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@32 f_36@@32))
))) (forall ((o2_11@@33 T@Ref) (f_36@@33 T@Field_13498_22438) ) (!  (=> (select (|PolymorphicMapType_13987_13498_37912#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@8) null (WandMaskField_13498 pm_f_11@@6))) o2_11@@33 f_36@@33) (= (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@8) o2_11@@33 f_36@@33) (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@33 f_36@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@33 f_36@@33))
))) (forall ((o2_11@@34 T@Ref) (f_36@@34 T@Field_22420_53) ) (!  (=> (select (|PolymorphicMapType_13987_22420_53#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@8) null (WandMaskField_13498 pm_f_11@@6))) o2_11@@34 f_36@@34) (= (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@8) o2_11@@34 f_36@@34) (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@34 f_36@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@34 f_36@@34))
))) (forall ((o2_11@@35 T@Ref) (f_36@@35 T@Field_22420_13512) ) (!  (=> (select (|PolymorphicMapType_13987_22420_13512#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@8) null (WandMaskField_13498 pm_f_11@@6))) o2_11@@35 f_36@@35) (= (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@8) o2_11@@35 f_36@@35) (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@35 f_36@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@35 f_36@@35))
))) (forall ((o2_11@@36 T@Ref) (f_36@@36 T@Field_22420_5155) ) (!  (=> (select (|PolymorphicMapType_13987_22420_5155#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@8) null (WandMaskField_13498 pm_f_11@@6))) o2_11@@36 f_36@@36) (= (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@8) o2_11@@36 f_36@@36) (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@36 f_36@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@36 f_36@@36))
))) (forall ((o2_11@@37 T@Ref) (f_36@@37 T@Field_22420_22421) ) (!  (=> (select (|PolymorphicMapType_13987_22420_22421#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@8) null (WandMaskField_13498 pm_f_11@@6))) o2_11@@37 f_36@@37) (= (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@8) o2_11@@37 f_36@@37) (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@37 f_36@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@37 f_36@@37))
))) (forall ((o2_11@@38 T@Ref) (f_36@@38 T@Field_22433_22438) ) (!  (=> (select (|PolymorphicMapType_13987_22420_38960#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@8) null (WandMaskField_13498 pm_f_11@@6))) o2_11@@38 f_36@@38) (= (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@8) o2_11@@38 f_36@@38) (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@38 f_36@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@38 f_36@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_13498_39768 pm_f_11@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_13438) (ExhaleHeap@@7 T@PolymorphicMapType_13438) (Mask@@8 T@PolymorphicMapType_13459) (o_31 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@9) o_31 $allocated) (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| ExhaleHeap@@7) o_31 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| ExhaleHeap@@7) o_31 $allocated))
)))
(assert (forall ((p T@Field_22420_22421) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_22420_22420 p v_1 p w))
 :qid |stdinbpl.204:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22420_22420 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_13498_22421) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_13498_13498 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.204:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13498_13498 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_23340) (s1 T@Seq_23340) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_9242|)) (not (= s1 |Seq#Empty_9242|))) (<= (|Seq#Length_9242| s0) n@@13)) (< n@@13 (|Seq#Length_9242| (|Seq#Append_23340| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_9242| s0)) (|Seq#Length_9242| s0)) n@@13) (= (|Seq#Index_9242| (|Seq#Append_23340| s0 s1) n@@13) (|Seq#Index_9242| s1 (|Seq#Sub| n@@13 (|Seq#Length_9242| s0))))))
 :qid |stdinbpl.273:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_9242| (|Seq#Append_23340| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3032) (s1@@0 T@Seq_3032) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3032|)) (not (= s1@@0 |Seq#Empty_3032|))) (<= (|Seq#Length_3032| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3032| (|Seq#Append_3032| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3032| s0@@0)) (|Seq#Length_3032| s0@@0)) n@@14) (= (|Seq#Index_3032| (|Seq#Append_3032| s0@@0 s1@@0) n@@14) (|Seq#Index_3032| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3032| s0@@0))))))
 :qid |stdinbpl.273:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3032| (|Seq#Append_3032| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_9207_5155 f_7)))
(assert  (not (IsWandField_9207_5155 f_7)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_13438) (ExhaleHeap@@8 T@PolymorphicMapType_13438) (Mask@@9 T@PolymorphicMapType_13459) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_13459) (o_2@@9 T@Ref) (f_4@@9 T@Field_22433_22438) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_13459_9210_44765#PolymorphicMapType_13459| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_9210_47057 f_4@@9))) (not (IsWandField_9210_47073 f_4@@9))) (<= (select (|PolymorphicMapType_13459_9210_44765#PolymorphicMapType_13459| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_13459_9210_44765#PolymorphicMapType_13459| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_13459) (o_2@@10 T@Ref) (f_4@@10 T@Field_22420_13512) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_13459_9210_13512#PolymorphicMapType_13459| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_9210_13512 f_4@@10))) (not (IsWandField_9210_13512 f_4@@10))) (<= (select (|PolymorphicMapType_13459_9210_13512#PolymorphicMapType_13459| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_13459_9210_13512#PolymorphicMapType_13459| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_13459) (o_2@@11 T@Ref) (f_4@@11 T@Field_22420_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_13459_9210_53#PolymorphicMapType_13459| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_9210_53 f_4@@11))) (not (IsWandField_9210_53 f_4@@11))) (<= (select (|PolymorphicMapType_13459_9210_53#PolymorphicMapType_13459| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_13459_9210_53#PolymorphicMapType_13459| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_13459) (o_2@@12 T@Ref) (f_4@@12 T@Field_22420_22421) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_13459_9210_9211#PolymorphicMapType_13459| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_9210_9211 f_4@@12))) (not (IsWandField_22420_40125 f_4@@12))) (<= (select (|PolymorphicMapType_13459_9210_9211#PolymorphicMapType_13459| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_13459_9210_9211#PolymorphicMapType_13459| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_13459) (o_2@@13 T@Ref) (f_4@@13 T@Field_22420_5155) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_13459_9210_5155#PolymorphicMapType_13459| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_9210_5155 f_4@@13))) (not (IsWandField_9210_5155 f_4@@13))) (<= (select (|PolymorphicMapType_13459_9210_5155#PolymorphicMapType_13459| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_13459_9210_5155#PolymorphicMapType_13459| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_13459) (o_2@@14 T@Ref) (f_4@@14 T@Field_13498_22438) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_13459_9207_44354#PolymorphicMapType_13459| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_9207_46226 f_4@@14))) (not (IsWandField_9207_46242 f_4@@14))) (<= (select (|PolymorphicMapType_13459_9207_44354#PolymorphicMapType_13459| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_13459_9207_44354#PolymorphicMapType_13459| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_13459) (o_2@@15 T@Ref) (f_4@@15 T@Field_13511_13512) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_13459_9207_13512#PolymorphicMapType_13459| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_9207_13512 f_4@@15))) (not (IsWandField_9207_13512 f_4@@15))) (<= (select (|PolymorphicMapType_13459_9207_13512#PolymorphicMapType_13459| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_13459_9207_13512#PolymorphicMapType_13459| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_13459) (o_2@@16 T@Ref) (f_4@@16 T@Field_13498_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_13459_9207_53#PolymorphicMapType_13459| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_9207_53 f_4@@16))) (not (IsWandField_9207_53 f_4@@16))) (<= (select (|PolymorphicMapType_13459_9207_53#PolymorphicMapType_13459| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_13459_9207_53#PolymorphicMapType_13459| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_13459) (o_2@@17 T@Ref) (f_4@@17 T@Field_13498_22421) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_13459_9207_9211#PolymorphicMapType_13459| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_13498_36428 f_4@@17))) (not (IsWandField_13498_39768 f_4@@17))) (<= (select (|PolymorphicMapType_13459_9207_9211#PolymorphicMapType_13459| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_13459_9207_9211#PolymorphicMapType_13459| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_13459) (o_2@@18 T@Ref) (f_4@@18 T@Field_22373_5155) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_13459_9207_5155#PolymorphicMapType_13459| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_9207_5155 f_4@@18))) (not (IsWandField_9207_5155 f_4@@18))) (<= (select (|PolymorphicMapType_13459_9207_5155#PolymorphicMapType_13459| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_13459_9207_5155#PolymorphicMapType_13459| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_13459) (o_2@@19 T@Ref) (f_4@@19 T@Field_22433_22438) ) (! (= (HasDirectPerm_22420_36140 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_13459_9210_44765#PolymorphicMapType_13459| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22420_36140 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_13459) (o_2@@20 T@Ref) (f_4@@20 T@Field_22420_22421) ) (! (= (HasDirectPerm_22420_22421 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_13459_9210_9211#PolymorphicMapType_13459| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22420_22421 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_13459) (o_2@@21 T@Ref) (f_4@@21 T@Field_22420_5155) ) (! (= (HasDirectPerm_22420_5155 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_13459_9210_5155#PolymorphicMapType_13459| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22420_5155 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_13459) (o_2@@22 T@Ref) (f_4@@22 T@Field_22420_13512) ) (! (= (HasDirectPerm_22420_13512 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_13459_9210_13512#PolymorphicMapType_13459| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22420_13512 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_13459) (o_2@@23 T@Ref) (f_4@@23 T@Field_22420_53) ) (! (= (HasDirectPerm_22420_53 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_13459_9210_53#PolymorphicMapType_13459| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22420_53 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_13459) (o_2@@24 T@Ref) (f_4@@24 T@Field_13498_22438) ) (! (= (HasDirectPerm_13498_34979 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_13459_9207_44354#PolymorphicMapType_13459| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13498_34979 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_13459) (o_2@@25 T@Ref) (f_4@@25 T@Field_13498_22421) ) (! (= (HasDirectPerm_13498_22421 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_13459_9207_9211#PolymorphicMapType_13459| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13498_22421 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_13459) (o_2@@26 T@Ref) (f_4@@26 T@Field_22373_5155) ) (! (= (HasDirectPerm_13498_5155 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_13459_9207_5155#PolymorphicMapType_13459| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13498_5155 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_13459) (o_2@@27 T@Ref) (f_4@@27 T@Field_13511_13512) ) (! (= (HasDirectPerm_13498_13512 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_13459_9207_13512#PolymorphicMapType_13459| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13498_13512 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_13459) (o_2@@28 T@Ref) (f_4@@28 T@Field_13498_53) ) (! (= (HasDirectPerm_13498_53 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_13459_9207_53#PolymorphicMapType_13459| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13498_53 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.192:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3032| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.565:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3032| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_13438) (ExhaleHeap@@9 T@PolymorphicMapType_13438) (Mask@@30 T@PolymorphicMapType_13459) (o_31@@0 T@Ref) (f_36@@39 T@Field_22433_22438) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_22420_36140 Mask@@30 o_31@@0 f_36@@39) (= (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@11) o_31@@0 f_36@@39) (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| ExhaleHeap@@9) o_31@@0 f_36@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| ExhaleHeap@@9) o_31@@0 f_36@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_13438) (ExhaleHeap@@10 T@PolymorphicMapType_13438) (Mask@@31 T@PolymorphicMapType_13459) (o_31@@1 T@Ref) (f_36@@40 T@Field_22420_22421) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_22420_22421 Mask@@31 o_31@@1 f_36@@40) (= (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@12) o_31@@1 f_36@@40) (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| ExhaleHeap@@10) o_31@@1 f_36@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| ExhaleHeap@@10) o_31@@1 f_36@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_13438) (ExhaleHeap@@11 T@PolymorphicMapType_13438) (Mask@@32 T@PolymorphicMapType_13459) (o_31@@2 T@Ref) (f_36@@41 T@Field_22420_5155) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_22420_5155 Mask@@32 o_31@@2 f_36@@41) (= (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@13) o_31@@2 f_36@@41) (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| ExhaleHeap@@11) o_31@@2 f_36@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| ExhaleHeap@@11) o_31@@2 f_36@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_13438) (ExhaleHeap@@12 T@PolymorphicMapType_13438) (Mask@@33 T@PolymorphicMapType_13459) (o_31@@3 T@Ref) (f_36@@42 T@Field_22420_13512) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_22420_13512 Mask@@33 o_31@@3 f_36@@42) (= (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@14) o_31@@3 f_36@@42) (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| ExhaleHeap@@12) o_31@@3 f_36@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| ExhaleHeap@@12) o_31@@3 f_36@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_13438) (ExhaleHeap@@13 T@PolymorphicMapType_13438) (Mask@@34 T@PolymorphicMapType_13459) (o_31@@4 T@Ref) (f_36@@43 T@Field_22420_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_22420_53 Mask@@34 o_31@@4 f_36@@43) (= (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@15) o_31@@4 f_36@@43) (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| ExhaleHeap@@13) o_31@@4 f_36@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| ExhaleHeap@@13) o_31@@4 f_36@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_13438) (ExhaleHeap@@14 T@PolymorphicMapType_13438) (Mask@@35 T@PolymorphicMapType_13459) (o_31@@5 T@Ref) (f_36@@44 T@Field_13498_22438) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_13498_34979 Mask@@35 o_31@@5 f_36@@44) (= (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@16) o_31@@5 f_36@@44) (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| ExhaleHeap@@14) o_31@@5 f_36@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| ExhaleHeap@@14) o_31@@5 f_36@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_13438) (ExhaleHeap@@15 T@PolymorphicMapType_13438) (Mask@@36 T@PolymorphicMapType_13459) (o_31@@6 T@Ref) (f_36@@45 T@Field_13498_22421) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_13498_22421 Mask@@36 o_31@@6 f_36@@45) (= (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@17) o_31@@6 f_36@@45) (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| ExhaleHeap@@15) o_31@@6 f_36@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| ExhaleHeap@@15) o_31@@6 f_36@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_13438) (ExhaleHeap@@16 T@PolymorphicMapType_13438) (Mask@@37 T@PolymorphicMapType_13459) (o_31@@7 T@Ref) (f_36@@46 T@Field_22373_5155) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_13498_5155 Mask@@37 o_31@@7 f_36@@46) (= (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@18) o_31@@7 f_36@@46) (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| ExhaleHeap@@16) o_31@@7 f_36@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| ExhaleHeap@@16) o_31@@7 f_36@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_13438) (ExhaleHeap@@17 T@PolymorphicMapType_13438) (Mask@@38 T@PolymorphicMapType_13459) (o_31@@8 T@Ref) (f_36@@47 T@Field_13511_13512) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_13498_13512 Mask@@38 o_31@@8 f_36@@47) (= (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@19) o_31@@8 f_36@@47) (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| ExhaleHeap@@17) o_31@@8 f_36@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| ExhaleHeap@@17) o_31@@8 f_36@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_13438) (ExhaleHeap@@18 T@PolymorphicMapType_13438) (Mask@@39 T@PolymorphicMapType_13459) (o_31@@9 T@Ref) (f_36@@48 T@Field_13498_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_13498_53 Mask@@39 o_31@@9 f_36@@48) (= (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@20) o_31@@9 f_36@@48) (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| ExhaleHeap@@18) o_31@@9 f_36@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| ExhaleHeap@@18) o_31@@9 f_36@@48))
)))
(assert (forall ((s0@@1 T@Seq_23340) (s1@@1 T@Seq_23340) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_9242|)) (not (= s1@@1 |Seq#Empty_9242|))) (= (|Seq#Length_9242| (|Seq#Append_23340| s0@@1 s1@@1)) (+ (|Seq#Length_9242| s0@@1) (|Seq#Length_9242| s1@@1))))
 :qid |stdinbpl.242:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_9242| (|Seq#Append_23340| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3032) (s1@@2 T@Seq_3032) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3032|)) (not (= s1@@2 |Seq#Empty_3032|))) (= (|Seq#Length_3032| (|Seq#Append_3032| s0@@2 s1@@2)) (+ (|Seq#Length_3032| s0@@2) (|Seq#Length_3032| s1@@2))))
 :qid |stdinbpl.242:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3032| (|Seq#Append_3032| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_22433_22438) ) (! (= (select (|PolymorphicMapType_13459_9210_44765#PolymorphicMapType_13459| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13459_9210_44765#PolymorphicMapType_13459| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_22420_13512) ) (! (= (select (|PolymorphicMapType_13459_9210_13512#PolymorphicMapType_13459| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13459_9210_13512#PolymorphicMapType_13459| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_22420_53) ) (! (= (select (|PolymorphicMapType_13459_9210_53#PolymorphicMapType_13459| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13459_9210_53#PolymorphicMapType_13459| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_22420_22421) ) (! (= (select (|PolymorphicMapType_13459_9210_9211#PolymorphicMapType_13459| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13459_9210_9211#PolymorphicMapType_13459| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_22420_5155) ) (! (= (select (|PolymorphicMapType_13459_9210_5155#PolymorphicMapType_13459| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13459_9210_5155#PolymorphicMapType_13459| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_13498_22438) ) (! (= (select (|PolymorphicMapType_13459_9207_44354#PolymorphicMapType_13459| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13459_9207_44354#PolymorphicMapType_13459| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_13511_13512) ) (! (= (select (|PolymorphicMapType_13459_9207_13512#PolymorphicMapType_13459| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13459_9207_13512#PolymorphicMapType_13459| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_13498_53) ) (! (= (select (|PolymorphicMapType_13459_9207_53#PolymorphicMapType_13459| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13459_9207_53#PolymorphicMapType_13459| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_13498_22421) ) (! (= (select (|PolymorphicMapType_13459_9207_9211#PolymorphicMapType_13459| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13459_9207_9211#PolymorphicMapType_13459| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_22373_5155) ) (! (= (select (|PolymorphicMapType_13459_9207_5155#PolymorphicMapType_13459| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13459_9207_5155#PolymorphicMapType_13459| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((s@@15 T@Seq_23340) (t@@1 T@Seq_23340) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_9242| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_9242| s@@15)) (|Seq#Length_9242| s@@15)) n@@15) (= (|Seq#Drop_9242| (|Seq#Append_23340| s@@15 t@@1) n@@15) (|Seq#Drop_9242| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_9242| s@@15))))))
 :qid |stdinbpl.399:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_9242| (|Seq#Append_23340| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3032) (t@@2 T@Seq_3032) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3032| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3032| s@@16)) (|Seq#Length_3032| s@@16)) n@@16) (= (|Seq#Drop_3032| (|Seq#Append_3032| s@@16 t@@2) n@@16) (|Seq#Drop_3032| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3032| s@@16))))))
 :qid |stdinbpl.399:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3032| (|Seq#Append_3032| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_13459) (SummandMask1 T@PolymorphicMapType_13459) (SummandMask2 T@PolymorphicMapType_13459) (o_2@@39 T@Ref) (f_4@@39 T@Field_22433_22438) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_13459_9210_44765#PolymorphicMapType_13459| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_13459_9210_44765#PolymorphicMapType_13459| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_13459_9210_44765#PolymorphicMapType_13459| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13459_9210_44765#PolymorphicMapType_13459| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13459_9210_44765#PolymorphicMapType_13459| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13459_9210_44765#PolymorphicMapType_13459| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_13459) (SummandMask1@@0 T@PolymorphicMapType_13459) (SummandMask2@@0 T@PolymorphicMapType_13459) (o_2@@40 T@Ref) (f_4@@40 T@Field_22420_13512) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_13459_9210_13512#PolymorphicMapType_13459| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_13459_9210_13512#PolymorphicMapType_13459| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_13459_9210_13512#PolymorphicMapType_13459| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13459_9210_13512#PolymorphicMapType_13459| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13459_9210_13512#PolymorphicMapType_13459| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13459_9210_13512#PolymorphicMapType_13459| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_13459) (SummandMask1@@1 T@PolymorphicMapType_13459) (SummandMask2@@1 T@PolymorphicMapType_13459) (o_2@@41 T@Ref) (f_4@@41 T@Field_22420_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_13459_9210_53#PolymorphicMapType_13459| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_13459_9210_53#PolymorphicMapType_13459| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_13459_9210_53#PolymorphicMapType_13459| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13459_9210_53#PolymorphicMapType_13459| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13459_9210_53#PolymorphicMapType_13459| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13459_9210_53#PolymorphicMapType_13459| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_13459) (SummandMask1@@2 T@PolymorphicMapType_13459) (SummandMask2@@2 T@PolymorphicMapType_13459) (o_2@@42 T@Ref) (f_4@@42 T@Field_22420_22421) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_13459_9210_9211#PolymorphicMapType_13459| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_13459_9210_9211#PolymorphicMapType_13459| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_13459_9210_9211#PolymorphicMapType_13459| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13459_9210_9211#PolymorphicMapType_13459| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13459_9210_9211#PolymorphicMapType_13459| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13459_9210_9211#PolymorphicMapType_13459| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_13459) (SummandMask1@@3 T@PolymorphicMapType_13459) (SummandMask2@@3 T@PolymorphicMapType_13459) (o_2@@43 T@Ref) (f_4@@43 T@Field_22420_5155) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_13459_9210_5155#PolymorphicMapType_13459| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_13459_9210_5155#PolymorphicMapType_13459| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_13459_9210_5155#PolymorphicMapType_13459| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13459_9210_5155#PolymorphicMapType_13459| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13459_9210_5155#PolymorphicMapType_13459| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13459_9210_5155#PolymorphicMapType_13459| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_13459) (SummandMask1@@4 T@PolymorphicMapType_13459) (SummandMask2@@4 T@PolymorphicMapType_13459) (o_2@@44 T@Ref) (f_4@@44 T@Field_13498_22438) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_13459_9207_44354#PolymorphicMapType_13459| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_13459_9207_44354#PolymorphicMapType_13459| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_13459_9207_44354#PolymorphicMapType_13459| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13459_9207_44354#PolymorphicMapType_13459| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13459_9207_44354#PolymorphicMapType_13459| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13459_9207_44354#PolymorphicMapType_13459| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_13459) (SummandMask1@@5 T@PolymorphicMapType_13459) (SummandMask2@@5 T@PolymorphicMapType_13459) (o_2@@45 T@Ref) (f_4@@45 T@Field_13511_13512) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_13459_9207_13512#PolymorphicMapType_13459| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_13459_9207_13512#PolymorphicMapType_13459| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_13459_9207_13512#PolymorphicMapType_13459| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13459_9207_13512#PolymorphicMapType_13459| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13459_9207_13512#PolymorphicMapType_13459| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13459_9207_13512#PolymorphicMapType_13459| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_13459) (SummandMask1@@6 T@PolymorphicMapType_13459) (SummandMask2@@6 T@PolymorphicMapType_13459) (o_2@@46 T@Ref) (f_4@@46 T@Field_13498_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_13459_9207_53#PolymorphicMapType_13459| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_13459_9207_53#PolymorphicMapType_13459| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_13459_9207_53#PolymorphicMapType_13459| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13459_9207_53#PolymorphicMapType_13459| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13459_9207_53#PolymorphicMapType_13459| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13459_9207_53#PolymorphicMapType_13459| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_13459) (SummandMask1@@7 T@PolymorphicMapType_13459) (SummandMask2@@7 T@PolymorphicMapType_13459) (o_2@@47 T@Ref) (f_4@@47 T@Field_13498_22421) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_13459_9207_9211#PolymorphicMapType_13459| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_13459_9207_9211#PolymorphicMapType_13459| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_13459_9207_9211#PolymorphicMapType_13459| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13459_9207_9211#PolymorphicMapType_13459| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13459_9207_9211#PolymorphicMapType_13459| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13459_9207_9211#PolymorphicMapType_13459| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_13459) (SummandMask1@@8 T@PolymorphicMapType_13459) (SummandMask2@@8 T@PolymorphicMapType_13459) (o_2@@48 T@Ref) (f_4@@48 T@Field_22373_5155) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_13459_9207_5155#PolymorphicMapType_13459| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_13459_9207_5155#PolymorphicMapType_13459| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_13459_9207_5155#PolymorphicMapType_13459| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13459_9207_5155#PolymorphicMapType_13459| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13459_9207_5155#PolymorphicMapType_13459| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13459_9207_5155#PolymorphicMapType_13459| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((a@@4 (Array Int Bool)) (b@@3 (Array Int Bool)) (o@@0 Int) ) (! (= (select (|Set#Intersection_8326| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.619:18|
 :skolemid |73|
 :pattern ( (select (|Set#Intersection_8326| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_8326| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_8326| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3032| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3032| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.564:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3032| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a@@5 (Array Int Bool)) (b@@4 (Array Int Bool)) (o@@1 Int) ) (! (= (select (|Set#Difference_8326| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.634:18|
 :skolemid |79|
 :pattern ( (select (|Set#Difference_8326| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_8326| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 T@Seq_23340) (b@@5 T@Seq_23340) ) (!  (=> (|Seq#Equal_23340| a@@6 b@@5) (= a@@6 b@@5))
 :qid |stdinbpl.537:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_23340| a@@6 b@@5))
)))
(assert (forall ((a@@7 T@Seq_3032) (b@@6 T@Seq_3032) ) (!  (=> (|Seq#Equal_3032| a@@7 b@@6) (= a@@7 b@@6))
 :qid |stdinbpl.537:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3032| a@@7 b@@6))
)))
(assert (forall ((a@@8 (Array Int Bool)) (x@@3 Int) (y@@1 Int) ) (!  (=> (select a@@8 y@@1) (select (|Set#UnionOne_8326| a@@8 x@@3) y@@1))
 :qid |stdinbpl.599:18|
 :skolemid |67|
 :pattern ( (|Set#UnionOne_8326| a@@8 x@@3) (select a@@8 y@@1))
)))
(assert (forall ((a@@9 (Array Int Bool)) (b@@7 (Array Int Bool)) (y@@2 Int) ) (!  (=> (select a@@9 y@@2) (select (|Set#Union_8326| a@@9 b@@7) y@@2))
 :qid |stdinbpl.609:18|
 :skolemid |71|
 :pattern ( (|Set#Union_8326| a@@9 b@@7) (select a@@9 y@@2))
)))
(assert (forall ((a@@10 (Array Int Bool)) (b@@8 (Array Int Bool)) (y@@3 Int) ) (!  (=> (select b@@8 y@@3) (select (|Set#Union_8326| a@@10 b@@8) y@@3))
 :qid |stdinbpl.611:18|
 :skolemid |72|
 :pattern ( (|Set#Union_8326| a@@10 b@@8) (select b@@8 y@@3))
)))
(assert (forall ((a@@11 (Array Int Bool)) (x@@4 Int) (o@@2 Int) ) (! (= (select (|Set#UnionOne_8326| a@@11 x@@4) o@@2)  (or (= o@@2 x@@4) (select a@@11 o@@2)))
 :qid |stdinbpl.595:18|
 :skolemid |65|
 :pattern ( (select (|Set#UnionOne_8326| a@@11 x@@4) o@@2))
)))
(assert (forall ((a@@12 (Array Int Bool)) (b@@9 (Array Int Bool)) (y@@4 Int) ) (!  (=> (select b@@9 y@@4) (not (select (|Set#Difference_8326| a@@12 b@@9) y@@4)))
 :qid |stdinbpl.636:18|
 :skolemid |80|
 :pattern ( (|Set#Difference_8326| a@@12 b@@9) (select b@@9 y@@4))
)))
(assert (forall ((s@@17 T@Seq_23340) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_9242| s@@17))) (|Seq#ContainsTrigger_9242| s@@17 (|Seq#Index_9242| s@@17 i@@3)))
 :qid |stdinbpl.430:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_9242| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3032) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3032| s@@18))) (|Seq#ContainsTrigger_3032| s@@18 (|Seq#Index_3032| s@@18 i@@4)))
 :qid |stdinbpl.430:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3032| s@@18 i@@4))
)))
(assert (forall ((a@@13 (Array Int Bool)) (b@@10 (Array Int Bool)) ) (!  (and (= (+ (+ (|Set#Card_8326| (|Set#Difference_8326| a@@13 b@@10)) (|Set#Card_8326| (|Set#Difference_8326| b@@10 a@@13))) (|Set#Card_8326| (|Set#Intersection_8326| a@@13 b@@10))) (|Set#Card_8326| (|Set#Union_8326| a@@13 b@@10))) (= (|Set#Card_8326| (|Set#Difference_8326| a@@13 b@@10)) (- (|Set#Card_8326| a@@13) (|Set#Card_8326| (|Set#Intersection_8326| a@@13 b@@10)))))
 :qid |stdinbpl.638:18|
 :skolemid |81|
 :pattern ( (|Set#Card_8326| (|Set#Difference_8326| a@@13 b@@10)))
)))
(assert (forall ((s0@@3 T@Seq_23340) (s1@@3 T@Seq_23340) ) (!  (and (=> (= s0@@3 |Seq#Empty_9242|) (= (|Seq#Append_23340| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_9242|) (= (|Seq#Append_23340| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.248:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_23340| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3032) (s1@@4 T@Seq_3032) ) (!  (and (=> (= s0@@4 |Seq#Empty_3032|) (= (|Seq#Append_3032| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3032|) (= (|Seq#Append_3032| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.248:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3032| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_9242| (|Seq#Singleton_9242| t@@3) 0) t@@3)
 :qid |stdinbpl.252:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_9242| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3032| (|Seq#Singleton_3032| t@@4) 0) t@@4)
 :qid |stdinbpl.252:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3032| t@@4))
)))
(assert (forall ((s@@19 T@Seq_23340) ) (! (<= 0 (|Seq#Length_9242| s@@19))
 :qid |stdinbpl.231:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_9242| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3032) ) (! (<= 0 (|Seq#Length_3032| s@@20))
 :qid |stdinbpl.231:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3032| s@@20))
)))
(assert (forall ((s@@21 (Array Int Bool)) ) (! (<= 0 (|Set#Card_8326| s@@21))
 :qid |stdinbpl.581:18|
 :skolemid |58|
 :pattern ( (|Set#Card_8326| s@@21))
)))
(assert (forall ((a@@14 (Array Int Bool)) (x@@5 Int) ) (! (select (|Set#UnionOne_8326| a@@14 x@@5) x@@5)
 :qid |stdinbpl.597:18|
 :skolemid |66|
 :pattern ( (|Set#UnionOne_8326| a@@14 x@@5))
)))
(assert (forall ((s0@@5 T@Seq_23340) (s1@@5 T@Seq_23340) ) (!  (=> (|Seq#Equal_23340| s0@@5 s1@@5) (and (= (|Seq#Length_9242| s0@@5) (|Seq#Length_9242| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_9242| s0@@5))) (= (|Seq#Index_9242| s0@@5 j@@6) (|Seq#Index_9242| s1@@5 j@@6)))
 :qid |stdinbpl.527:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_9242| s0@@5 j@@6))
 :pattern ( (|Seq#Index_9242| s1@@5 j@@6))
))))
 :qid |stdinbpl.524:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_23340| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3032) (s1@@6 T@Seq_3032) ) (!  (=> (|Seq#Equal_3032| s0@@6 s1@@6) (and (= (|Seq#Length_3032| s0@@6) (|Seq#Length_3032| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3032| s0@@6))) (= (|Seq#Index_3032| s0@@6 j@@7) (|Seq#Index_3032| s1@@6 j@@7)))
 :qid |stdinbpl.527:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3032| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3032| s1@@6 j@@7))
))))
 :qid |stdinbpl.524:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3032| s0@@6 s1@@6))
)))
(assert (forall ((a@@15 (Array Int Bool)) (x@@6 Int) ) (!  (=> (select a@@15 x@@6) (= (|Set#Card_8326| (|Set#UnionOne_8326| a@@15 x@@6)) (|Set#Card_8326| a@@15)))
 :qid |stdinbpl.601:18|
 :skolemid |68|
 :pattern ( (|Set#Card_8326| (|Set#UnionOne_8326| a@@15 x@@6)))
)))
(assert (forall ((a_2@@3 T@Ref) ) (! (= (getPredWandId_9210_9211 (h a_2@@3)) 0)
 :qid |stdinbpl.787:15|
 :skolemid |120|
 :pattern ( (h a_2@@3))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_9242| (|Seq#Singleton_9242| t@@5)) 1)
 :qid |stdinbpl.239:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_9242| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3032| (|Seq#Singleton_3032| t@@6)) 1)
 :qid |stdinbpl.239:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3032| t@@6))
)))
(assert (forall ((r@@0 Int) ) (! (= (|Set#Card_8326| (|Set#Singleton_8326| r@@0)) 1)
 :qid |stdinbpl.592:18|
 :skolemid |64|
 :pattern ( (|Set#Card_8326| (|Set#Singleton_8326| r@@0)))
)))
(assert (forall ((r@@1 Int) ) (! (select (|Set#Singleton_8326| r@@1) r@@1)
 :qid |stdinbpl.590:18|
 :skolemid |62|
 :pattern ( (|Set#Singleton_8326| r@@1))
)))
(assert (forall ((a@@16 (Array Int Bool)) (b@@11 (Array Int Bool)) ) (! (= (|Set#Union_8326| a@@16 (|Set#Union_8326| a@@16 b@@11)) (|Set#Union_8326| a@@16 b@@11))
 :qid |stdinbpl.624:18|
 :skolemid |75|
 :pattern ( (|Set#Union_8326| a@@16 (|Set#Union_8326| a@@16 b@@11)))
)))
(assert (forall ((a@@17 (Array Int Bool)) (b@@12 (Array Int Bool)) ) (! (= (|Set#Intersection_8326| a@@17 (|Set#Intersection_8326| a@@17 b@@12)) (|Set#Intersection_8326| a@@17 b@@12))
 :qid |stdinbpl.628:18|
 :skolemid |77|
 :pattern ( (|Set#Intersection_8326| a@@17 (|Set#Intersection_8326| a@@17 b@@12)))
)))
(assert (forall ((s@@22 T@Seq_23340) (t@@7 T@Seq_23340) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_9242| s@@22))) (= (|Seq#Take_9242| (|Seq#Append_23340| s@@22 t@@7) n@@17) (|Seq#Take_9242| s@@22 n@@17)))
 :qid |stdinbpl.381:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_9242| (|Seq#Append_23340| s@@22 t@@7) n@@17))
)))
(assert (forall ((s@@23 T@Seq_3032) (t@@8 T@Seq_3032) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3032| s@@23))) (= (|Seq#Take_3032| (|Seq#Append_3032| s@@23 t@@8) n@@18) (|Seq#Take_3032| s@@23 n@@18)))
 :qid |stdinbpl.381:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3032| (|Seq#Append_3032| s@@23 t@@8) n@@18))
)))
(assert (forall ((o@@3 Int) ) (!  (not (select |Set#Empty_8326| o@@3))
 :qid |stdinbpl.584:18|
 :skolemid |59|
 :pattern ( (select |Set#Empty_8326| o@@3))
)))
(assert (forall ((s@@24 T@Seq_23340) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_9242| s@@24))) (= (|Seq#Length_9242| (|Seq#Update_9242| s@@24 i@@5 v@@2)) (|Seq#Length_9242| s@@24)))
 :qid |stdinbpl.280:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_9242| (|Seq#Update_9242| s@@24 i@@5 v@@2)))
 :pattern ( (|Seq#Length_9242| s@@24) (|Seq#Update_9242| s@@24 i@@5 v@@2))
)))
(assert (forall ((s@@25 T@Seq_3032) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3032| s@@25))) (= (|Seq#Length_3032| (|Seq#Update_3032| s@@25 i@@6 v@@3)) (|Seq#Length_3032| s@@25)))
 :qid |stdinbpl.280:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3032| (|Seq#Update_3032| s@@25 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3032| s@@25) (|Seq#Update_3032| s@@25 i@@6 v@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_13438) (o_30 T@Ref) (f_37 T@Field_22433_22438) (v@@4 T@PolymorphicMapType_13987) ) (! (succHeap Heap@@21 (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@21) (store (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@21) o_30 f_37 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@21) (store (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@21) o_30 f_37 v@@4)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_13438) (o_30@@0 T@Ref) (f_37@@0 T@Field_22420_5155) (v@@5 Int) ) (! (succHeap Heap@@22 (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@22) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@22) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@22) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@22) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@22) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@22) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@22) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@22) (store (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@22) o_30@@0 f_37@@0 v@@5) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@22) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@22) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@22) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@22) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@22) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@22) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@22) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@22) (store (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@22) o_30@@0 f_37@@0 v@@5) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_13438) (o_30@@1 T@Ref) (f_37@@1 T@Field_22420_22421) (v@@6 T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@23) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@23) (store (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@23) o_30@@1 f_37@@1 v@@6) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@23) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@23) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@23) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@23) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@23) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@23) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@23) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@23) (store (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@23) o_30@@1 f_37@@1 v@@6) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@23) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@23) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@23) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@23) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@23) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@23) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_13438) (o_30@@2 T@Ref) (f_37@@2 T@Field_22420_13512) (v@@7 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@24) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@24) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@24) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@24) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@24) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@24) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@24) (store (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@24) o_30@@2 f_37@@2 v@@7) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@24) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@24) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@24) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@24) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@24) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@24) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@24) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@24) (store (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@24) o_30@@2 f_37@@2 v@@7) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@24) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_13438) (o_30@@3 T@Ref) (f_37@@3 T@Field_22420_53) (v@@8 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@25) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@25) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@25) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@25) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@25) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@25) (store (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@25) o_30@@3 f_37@@3 v@@8) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@25) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@25) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@25) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@25) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@25) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@25) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@25) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@25) (store (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@25) o_30@@3 f_37@@3 v@@8) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@25) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@25) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_13438) (o_30@@4 T@Ref) (f_37@@4 T@Field_13498_22438) (v@@9 T@PolymorphicMapType_13987) ) (! (succHeap Heap@@26 (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@26) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@26) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@26) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@26) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@26) (store (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@26) o_30@@4 f_37@@4 v@@9) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@26) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@26) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@26) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@26) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@26) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@26) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@26) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@26) (store (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@26) o_30@@4 f_37@@4 v@@9) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@26) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@26) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@26) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_13438) (o_30@@5 T@Ref) (f_37@@5 T@Field_22373_5155) (v@@10 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@27) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@27) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@27) (store (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@27) o_30@@5 f_37@@5 v@@10) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@27) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@27) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@27) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@27) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@27) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@27) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@27) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@27) (store (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@27) o_30@@5 f_37@@5 v@@10) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@27) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@27) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@27) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@27) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@27) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_13438) (o_30@@6 T@Ref) (f_37@@6 T@Field_13498_22421) (v@@11 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@28) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@28) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@28) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@28) (store (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@28) o_30@@6 f_37@@6 v@@11) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@28) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@28) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@28) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@28) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@28) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@28) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@28) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@28) (store (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@28) o_30@@6 f_37@@6 v@@11) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@28) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@28) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@28) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@28) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_13438) (o_30@@7 T@Ref) (f_37@@7 T@Field_13511_13512) (v@@12 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@29) (store (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@29) o_30@@7 f_37@@7 v@@12) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@29) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@29) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@29) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@29) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@29) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@29) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@29) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@29) (store (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@29) o_30@@7 f_37@@7 v@@12) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@29) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@29) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@29) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@29) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@29) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@29) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@29) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_13438) (o_30@@8 T@Ref) (f_37@@8 T@Field_13498_53) (v@@13 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_13438 (store (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@30) o_30@@8 f_37@@8 v@@13) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13438 (store (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@30) o_30@@8 f_37@@8 v@@13) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@30)))
)))
(assert (forall ((a_2@@4 T@Ref) ) (! (= (PredicateMaskField_9210 (h a_2@@4)) (|h#sm| a_2@@4))
 :qid |stdinbpl.779:15|
 :skolemid |118|
 :pattern ( (PredicateMaskField_9210 (h a_2@@4)))
)))
(assert (forall ((s@@26 T@Seq_23340) (t@@9 T@Seq_23340) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_9242| s@@26))) (= (|Seq#Drop_9242| (|Seq#Append_23340| s@@26 t@@9) n@@19) (|Seq#Append_23340| (|Seq#Drop_9242| s@@26 n@@19) t@@9)))
 :qid |stdinbpl.395:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_9242| (|Seq#Append_23340| s@@26 t@@9) n@@19))
)))
(assert (forall ((s@@27 T@Seq_3032) (t@@10 T@Seq_3032) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3032| s@@27))) (= (|Seq#Drop_3032| (|Seq#Append_3032| s@@27 t@@10) n@@20) (|Seq#Append_3032| (|Seq#Drop_3032| s@@27 n@@20) t@@10)))
 :qid |stdinbpl.395:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3032| (|Seq#Append_3032| s@@27 t@@10) n@@20))
)))
(assert (forall ((a@@18 Int) (b@@13 Int) ) (! (= (<= a@@18 b@@13) (= (|Math#min| a@@18 b@@13) a@@18))
 :qid |stdinbpl.668:15|
 :skolemid |87|
 :pattern ( (|Math#min| a@@18 b@@13))
)))
(assert (forall ((a@@19 Int) (b@@14 Int) ) (! (= (<= b@@14 a@@19) (= (|Math#min| a@@19 b@@14) b@@14))
 :qid |stdinbpl.669:15|
 :skolemid |88|
 :pattern ( (|Math#min| a@@19 b@@14))
)))
(assert (forall ((s@@28 T@Seq_23340) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_9242| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_9242| (|Seq#Drop_9242| s@@28 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_9242| s@@28 i@@7))))
 :qid |stdinbpl.331:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_9242| s@@28 n@@21) (|Seq#Index_9242| s@@28 i@@7))
)))
(assert (forall ((s@@29 T@Seq_3032) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3032| s@@29))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3032| (|Seq#Drop_3032| s@@29 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3032| s@@29 i@@8))))
 :qid |stdinbpl.331:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3032| s@@29 n@@22) (|Seq#Index_3032| s@@29 i@@8))
)))
(assert (forall ((s@@30 (Array Int Bool)) ) (!  (and (= (= (|Set#Card_8326| s@@30) 0) (= s@@30 |Set#Empty_8326|)) (=> (not (= (|Set#Card_8326| s@@30) 0)) (exists ((x@@7 Int) ) (! (select s@@30 x@@7)
 :qid |stdinbpl.587:33|
 :skolemid |60|
))))
 :qid |stdinbpl.585:18|
 :skolemid |61|
 :pattern ( (|Set#Card_8326| s@@30))
)))
(assert (forall ((s0@@7 T@Seq_23340) (s1@@7 T@Seq_23340) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_9242|)) (not (= s1@@7 |Seq#Empty_9242|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_9242| s0@@7))) (= (|Seq#Index_9242| (|Seq#Append_23340| s0@@7 s1@@7) n@@23) (|Seq#Index_9242| s0@@7 n@@23)))
 :qid |stdinbpl.271:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_9242| (|Seq#Append_23340| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_9242| s0@@7 n@@23) (|Seq#Append_23340| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3032) (s1@@8 T@Seq_3032) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3032|)) (not (= s1@@8 |Seq#Empty_3032|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3032| s0@@8))) (= (|Seq#Index_3032| (|Seq#Append_3032| s0@@8 s1@@8) n@@24) (|Seq#Index_3032| s0@@8 n@@24)))
 :qid |stdinbpl.271:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3032| (|Seq#Append_3032| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3032| s0@@8 n@@24) (|Seq#Append_3032| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_23340) (s1@@9 T@Seq_23340) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_9242|)) (not (= s1@@9 |Seq#Empty_9242|))) (<= 0 m)) (< m (|Seq#Length_9242| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_9242| s0@@9)) (|Seq#Length_9242| s0@@9)) m) (= (|Seq#Index_9242| (|Seq#Append_23340| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_9242| s0@@9))) (|Seq#Index_9242| s1@@9 m))))
 :qid |stdinbpl.276:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_9242| s1@@9 m) (|Seq#Append_23340| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3032) (s1@@10 T@Seq_3032) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3032|)) (not (= s1@@10 |Seq#Empty_3032|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3032| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3032| s0@@10)) (|Seq#Length_3032| s0@@10)) m@@0) (= (|Seq#Index_3032| (|Seq#Append_3032| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3032| s0@@10))) (|Seq#Index_3032| s1@@10 m@@0))))
 :qid |stdinbpl.276:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3032| s1@@10 m@@0) (|Seq#Append_3032| s0@@10 s1@@10))
)))
(assert (forall ((a@@20 (Array Int Bool)) (x@@8 Int) ) (!  (=> (not (select a@@20 x@@8)) (= (|Set#Card_8326| (|Set#UnionOne_8326| a@@20 x@@8)) (+ (|Set#Card_8326| a@@20) 1)))
 :qid |stdinbpl.603:18|
 :skolemid |69|
 :pattern ( (|Set#Card_8326| (|Set#UnionOne_8326| a@@20 x@@8)))
)))
(assert (forall ((o_30@@9 T@Ref) (f_35 T@Field_13511_13512) (Heap@@31 T@PolymorphicMapType_13438) ) (!  (=> (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@31) o_30@@9 $allocated) (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@31) (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@31) o_30@@9 f_35) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@31) o_30@@9 f_35))
)))
(assert (forall ((s@@31 T@Seq_23340) (x@@9 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_9242| s@@31))) (= (|Seq#Index_9242| s@@31 i@@9) x@@9)) (|Seq#Contains_23340| s@@31 x@@9))
 :qid |stdinbpl.428:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_23340| s@@31 x@@9) (|Seq#Index_9242| s@@31 i@@9))
)))
(assert (forall ((s@@32 T@Seq_3032) (x@@10 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3032| s@@32))) (= (|Seq#Index_3032| s@@32 i@@10) x@@10)) (|Seq#Contains_3032| s@@32 x@@10))
 :qid |stdinbpl.428:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3032| s@@32 x@@10) (|Seq#Index_3032| s@@32 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_23340) (s1@@11 T@Seq_23340) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_23340| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_23340| s0@@11 s1@@11))) (not (= (|Seq#Length_9242| s0@@11) (|Seq#Length_9242| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_23340| s0@@11 s1@@11))) (= (|Seq#Length_9242| s0@@11) (|Seq#Length_9242| s1@@11))) (= (|Seq#SkolemDiff_23340| s0@@11 s1@@11) (|Seq#SkolemDiff_23340| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_23340| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_23340| s0@@11 s1@@11) (|Seq#Length_9242| s0@@11))) (not (= (|Seq#Index_9242| s0@@11 (|Seq#SkolemDiff_23340| s0@@11 s1@@11)) (|Seq#Index_9242| s1@@11 (|Seq#SkolemDiff_23340| s0@@11 s1@@11))))))
 :qid |stdinbpl.532:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_23340| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3032) (s1@@12 T@Seq_3032) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3032| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3032| s0@@12 s1@@12))) (not (= (|Seq#Length_3032| s0@@12) (|Seq#Length_3032| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3032| s0@@12 s1@@12))) (= (|Seq#Length_3032| s0@@12) (|Seq#Length_3032| s1@@12))) (= (|Seq#SkolemDiff_3032| s0@@12 s1@@12) (|Seq#SkolemDiff_3032| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3032| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3032| s0@@12 s1@@12) (|Seq#Length_3032| s0@@12))) (not (= (|Seq#Index_3032| s0@@12 (|Seq#SkolemDiff_3032| s0@@12 s1@@12)) (|Seq#Index_3032| s1@@12 (|Seq#SkolemDiff_3032| s0@@12 s1@@12))))))
 :qid |stdinbpl.532:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3032| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_22420_22421) (v_1@@1 T@FrameType) (q T@Field_22420_22421) (w@@1 T@FrameType) (r@@2 T@Field_22420_22421) (u T@FrameType) ) (!  (=> (and (InsidePredicate_22420_22420 p@@2 v_1@@1 q w@@1) (InsidePredicate_22420_22420 q w@@1 r@@2 u)) (InsidePredicate_22420_22420 p@@2 v_1@@1 r@@2 u))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22420_22420 p@@2 v_1@@1 q w@@1) (InsidePredicate_22420_22420 q w@@1 r@@2 u))
)))
(assert (forall ((p@@3 T@Field_22420_22421) (v_1@@2 T@FrameType) (q@@0 T@Field_22420_22421) (w@@2 T@FrameType) (r@@3 T@Field_13498_22421) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_22420_22420 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_22420_13498 q@@0 w@@2 r@@3 u@@0)) (InsidePredicate_22420_13498 p@@3 v_1@@2 r@@3 u@@0))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22420_22420 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_22420_13498 q@@0 w@@2 r@@3 u@@0))
)))
(assert (forall ((p@@4 T@Field_22420_22421) (v_1@@3 T@FrameType) (q@@1 T@Field_13498_22421) (w@@3 T@FrameType) (r@@4 T@Field_22420_22421) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_22420_13498 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_13498_22420 q@@1 w@@3 r@@4 u@@1)) (InsidePredicate_22420_22420 p@@4 v_1@@3 r@@4 u@@1))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22420_13498 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_13498_22420 q@@1 w@@3 r@@4 u@@1))
)))
(assert (forall ((p@@5 T@Field_22420_22421) (v_1@@4 T@FrameType) (q@@2 T@Field_13498_22421) (w@@4 T@FrameType) (r@@5 T@Field_13498_22421) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_22420_13498 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_13498_13498 q@@2 w@@4 r@@5 u@@2)) (InsidePredicate_22420_13498 p@@5 v_1@@4 r@@5 u@@2))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22420_13498 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_13498_13498 q@@2 w@@4 r@@5 u@@2))
)))
(assert (forall ((p@@6 T@Field_13498_22421) (v_1@@5 T@FrameType) (q@@3 T@Field_22420_22421) (w@@5 T@FrameType) (r@@6 T@Field_22420_22421) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_13498_22420 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_22420_22420 q@@3 w@@5 r@@6 u@@3)) (InsidePredicate_13498_22420 p@@6 v_1@@5 r@@6 u@@3))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13498_22420 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_22420_22420 q@@3 w@@5 r@@6 u@@3))
)))
(assert (forall ((p@@7 T@Field_13498_22421) (v_1@@6 T@FrameType) (q@@4 T@Field_22420_22421) (w@@6 T@FrameType) (r@@7 T@Field_13498_22421) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_13498_22420 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_22420_13498 q@@4 w@@6 r@@7 u@@4)) (InsidePredicate_13498_13498 p@@7 v_1@@6 r@@7 u@@4))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13498_22420 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_22420_13498 q@@4 w@@6 r@@7 u@@4))
)))
(assert (forall ((p@@8 T@Field_13498_22421) (v_1@@7 T@FrameType) (q@@5 T@Field_13498_22421) (w@@7 T@FrameType) (r@@8 T@Field_22420_22421) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_13498_13498 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_13498_22420 q@@5 w@@7 r@@8 u@@5)) (InsidePredicate_13498_22420 p@@8 v_1@@7 r@@8 u@@5))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13498_13498 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_13498_22420 q@@5 w@@7 r@@8 u@@5))
)))
(assert (forall ((p@@9 T@Field_13498_22421) (v_1@@8 T@FrameType) (q@@6 T@Field_13498_22421) (w@@8 T@FrameType) (r@@9 T@Field_13498_22421) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_13498_13498 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_13498_13498 q@@6 w@@8 r@@9 u@@6)) (InsidePredicate_13498_13498 p@@9 v_1@@8 r@@9 u@@6))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13498_13498 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_13498_13498 q@@6 w@@8 r@@9 u@@6))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (< a@@21 0) (= (|Math#clip| a@@21) 0))
 :qid |stdinbpl.674:15|
 :skolemid |91|
 :pattern ( (|Math#clip| a@@21))
)))
(assert (forall ((s@@33 T@Seq_23340) ) (!  (=> (= (|Seq#Length_9242| s@@33) 0) (= s@@33 |Seq#Empty_9242|))
 :qid |stdinbpl.235:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_9242| s@@33))
)))
(assert (forall ((s@@34 T@Seq_3032) ) (!  (=> (= (|Seq#Length_3032| s@@34) 0) (= s@@34 |Seq#Empty_3032|))
 :qid |stdinbpl.235:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3032| s@@34))
)))
(assert (forall ((s@@35 T@Seq_23340) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_9242| s@@35 n@@25) |Seq#Empty_9242|))
 :qid |stdinbpl.411:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_9242| s@@35 n@@25))
)))
(assert (forall ((s@@36 T@Seq_3032) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3032| s@@36 n@@26) |Seq#Empty_3032|))
 :qid |stdinbpl.411:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3032| s@@36 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@22 (Array Int Bool)) (b@@15 (Array Int Bool)) (o@@4 Int) ) (! (= (select (|Set#Union_8326| a@@22 b@@15) o@@4)  (or (select a@@22 o@@4) (select b@@15 o@@4)))
 :qid |stdinbpl.607:18|
 :skolemid |70|
 :pattern ( (select (|Set#Union_8326| a@@22 b@@15) o@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |h#definedness|)
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
(declare-sort T@Field_13498_53 0)
(declare-sort T@Field_13511_13512 0)
(declare-sort T@Field_22420_22421 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_22373_5155 0)
(declare-sort T@Field_13498_22421 0)
(declare-sort T@Field_13498_22438 0)
(declare-sort T@Field_22420_53 0)
(declare-sort T@Field_22420_13512 0)
(declare-sort T@Field_22420_5155 0)
(declare-sort T@Field_22433_22438 0)
(declare-datatypes ((T@PolymorphicMapType_13459 0)) (((PolymorphicMapType_13459 (|PolymorphicMapType_13459_9207_5155#PolymorphicMapType_13459| (Array T@Ref T@Field_22373_5155 Real)) (|PolymorphicMapType_13459_9210_9211#PolymorphicMapType_13459| (Array T@Ref T@Field_22420_22421 Real)) (|PolymorphicMapType_13459_9207_9211#PolymorphicMapType_13459| (Array T@Ref T@Field_13498_22421 Real)) (|PolymorphicMapType_13459_9207_53#PolymorphicMapType_13459| (Array T@Ref T@Field_13498_53 Real)) (|PolymorphicMapType_13459_9207_13512#PolymorphicMapType_13459| (Array T@Ref T@Field_13511_13512 Real)) (|PolymorphicMapType_13459_9207_44354#PolymorphicMapType_13459| (Array T@Ref T@Field_13498_22438 Real)) (|PolymorphicMapType_13459_9210_5155#PolymorphicMapType_13459| (Array T@Ref T@Field_22420_5155 Real)) (|PolymorphicMapType_13459_9210_53#PolymorphicMapType_13459| (Array T@Ref T@Field_22420_53 Real)) (|PolymorphicMapType_13459_9210_13512#PolymorphicMapType_13459| (Array T@Ref T@Field_22420_13512 Real)) (|PolymorphicMapType_13459_9210_44765#PolymorphicMapType_13459| (Array T@Ref T@Field_22433_22438 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13987 0)) (((PolymorphicMapType_13987 (|PolymorphicMapType_13987_13498_53#PolymorphicMapType_13987| (Array T@Ref T@Field_13498_53 Bool)) (|PolymorphicMapType_13987_13498_13512#PolymorphicMapType_13987| (Array T@Ref T@Field_13511_13512 Bool)) (|PolymorphicMapType_13987_13498_5155#PolymorphicMapType_13987| (Array T@Ref T@Field_22373_5155 Bool)) (|PolymorphicMapType_13987_13498_22421#PolymorphicMapType_13987| (Array T@Ref T@Field_13498_22421 Bool)) (|PolymorphicMapType_13987_13498_37912#PolymorphicMapType_13987| (Array T@Ref T@Field_13498_22438 Bool)) (|PolymorphicMapType_13987_22420_53#PolymorphicMapType_13987| (Array T@Ref T@Field_22420_53 Bool)) (|PolymorphicMapType_13987_22420_13512#PolymorphicMapType_13987| (Array T@Ref T@Field_22420_13512 Bool)) (|PolymorphicMapType_13987_22420_5155#PolymorphicMapType_13987| (Array T@Ref T@Field_22420_5155 Bool)) (|PolymorphicMapType_13987_22420_22421#PolymorphicMapType_13987| (Array T@Ref T@Field_22420_22421 Bool)) (|PolymorphicMapType_13987_22420_38960#PolymorphicMapType_13987| (Array T@Ref T@Field_22433_22438 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13438 0)) (((PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| (Array T@Ref T@Field_13498_53 Bool)) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| (Array T@Ref T@Field_13511_13512 T@Ref)) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| (Array T@Ref T@Field_22420_22421 T@FrameType)) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| (Array T@Ref T@Field_22373_5155 Int)) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| (Array T@Ref T@Field_13498_22421 T@FrameType)) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| (Array T@Ref T@Field_13498_22438 T@PolymorphicMapType_13987)) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| (Array T@Ref T@Field_22420_53 Bool)) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| (Array T@Ref T@Field_22420_13512 T@Ref)) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| (Array T@Ref T@Field_22420_5155 Int)) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| (Array T@Ref T@Field_22433_22438 T@PolymorphicMapType_13987)) ) ) ))
(declare-fun $allocated () T@Field_13498_53)
(declare-fun f_7 () T@Field_22373_5155)
(declare-sort T@Seq_23340 0)
(declare-fun |Seq#Length_9242| (T@Seq_23340) Int)
(declare-fun |Seq#Drop_9242| (T@Seq_23340 Int) T@Seq_23340)
(declare-sort T@Seq_3032 0)
(declare-fun |Seq#Length_3032| (T@Seq_3032) Int)
(declare-fun |Seq#Drop_3032| (T@Seq_3032 Int) T@Seq_3032)
(declare-fun succHeap (T@PolymorphicMapType_13438 T@PolymorphicMapType_13438) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_13438 T@PolymorphicMapType_13438) Bool)
(declare-fun state (T@PolymorphicMapType_13438 T@PolymorphicMapType_13459) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_13459) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_13987)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Seq#Index_9242| (T@Seq_23340 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3032| (T@Seq_3032 Int) Int)
(declare-fun |Seq#Empty_9242| () T@Seq_23340)
(declare-fun |Seq#Empty_3032| () T@Seq_3032)
(declare-fun h (T@Ref) T@Field_22420_22421)
(declare-fun IsPredicateField_9210_9211 (T@Field_22420_22421) Bool)
(declare-fun |h#trigger_9210| (T@PolymorphicMapType_13438 T@Field_22420_22421) Bool)
(declare-fun |h#everUsed_9210| (T@Field_22420_22421) Bool)
(declare-fun |Seq#Update_9242| (T@Seq_23340 Int T@Ref) T@Seq_23340)
(declare-fun |Seq#Update_3032| (T@Seq_3032 Int Int) T@Seq_3032)
(declare-fun |Set#Union_8326| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Intersection_8326| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Singleton_8326| (Int) (Array Int Bool))
(declare-fun |Seq#Take_9242| (T@Seq_23340 Int) T@Seq_23340)
(declare-fun |Seq#Take_3032| (T@Seq_3032 Int) T@Seq_3032)
(declare-fun |Seq#Contains_3032| (T@Seq_3032 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3032)
(declare-fun |Set#Card_8326| ((Array Int Bool)) Int)
(declare-fun |Seq#Contains_23340| (T@Seq_23340 T@Ref) Bool)
(declare-fun |Seq#Skolem_23340| (T@Seq_23340 T@Ref) Int)
(declare-fun |Seq#Skolem_3032| (T@Seq_3032 Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_13438 T@PolymorphicMapType_13438 T@PolymorphicMapType_13459) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9210 (T@Field_22420_22421) T@Field_22433_22438)
(declare-fun HasDirectPerm_22420_22421 (T@PolymorphicMapType_13459 T@Ref T@Field_22420_22421) Bool)
(declare-fun IsPredicateField_13498_36428 (T@Field_13498_22421) Bool)
(declare-fun PredicateMaskField_13498 (T@Field_13498_22421) T@Field_13498_22438)
(declare-fun HasDirectPerm_13498_22421 (T@PolymorphicMapType_13459 T@Ref T@Field_13498_22421) Bool)
(declare-fun IsWandField_22420_40125 (T@Field_22420_22421) Bool)
(declare-fun WandMaskField_22420 (T@Field_22420_22421) T@Field_22433_22438)
(declare-fun IsWandField_13498_39768 (T@Field_13498_22421) Bool)
(declare-fun WandMaskField_13498 (T@Field_13498_22421) T@Field_13498_22438)
(declare-fun |Seq#Singleton_9242| (T@Ref) T@Seq_23340)
(declare-fun |Seq#Singleton_3032| (Int) T@Seq_3032)
(declare-fun |h#sm| (T@Ref) T@Field_22433_22438)
(declare-fun |Seq#Append_23340| (T@Seq_23340 T@Seq_23340) T@Seq_23340)
(declare-fun |Seq#Append_3032| (T@Seq_3032 T@Seq_3032) T@Seq_3032)
(declare-fun dummyHeap () T@PolymorphicMapType_13438)
(declare-fun ZeroMask () T@PolymorphicMapType_13459)
(declare-fun InsidePredicate_22420_22420 (T@Field_22420_22421 T@FrameType T@Field_22420_22421 T@FrameType) Bool)
(declare-fun InsidePredicate_13498_13498 (T@Field_13498_22421 T@FrameType T@Field_13498_22421 T@FrameType) Bool)
(declare-fun IsPredicateField_9207_5155 (T@Field_22373_5155) Bool)
(declare-fun IsWandField_9207_5155 (T@Field_22373_5155) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9210_47057 (T@Field_22433_22438) Bool)
(declare-fun IsWandField_9210_47073 (T@Field_22433_22438) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_9210_13512 (T@Field_22420_13512) Bool)
(declare-fun IsWandField_9210_13512 (T@Field_22420_13512) Bool)
(declare-fun IsPredicateField_9210_53 (T@Field_22420_53) Bool)
(declare-fun IsWandField_9210_53 (T@Field_22420_53) Bool)
(declare-fun IsPredicateField_9210_5155 (T@Field_22420_5155) Bool)
(declare-fun IsWandField_9210_5155 (T@Field_22420_5155) Bool)
(declare-fun IsPredicateField_9207_46226 (T@Field_13498_22438) Bool)
(declare-fun IsWandField_9207_46242 (T@Field_13498_22438) Bool)
(declare-fun IsPredicateField_9207_13512 (T@Field_13511_13512) Bool)
(declare-fun IsWandField_9207_13512 (T@Field_13511_13512) Bool)
(declare-fun IsPredicateField_9207_53 (T@Field_13498_53) Bool)
(declare-fun IsWandField_9207_53 (T@Field_13498_53) Bool)
(declare-fun HasDirectPerm_22420_36140 (T@PolymorphicMapType_13459 T@Ref T@Field_22433_22438) Bool)
(declare-fun HasDirectPerm_22420_5155 (T@PolymorphicMapType_13459 T@Ref T@Field_22420_5155) Bool)
(declare-fun HasDirectPerm_22420_13512 (T@PolymorphicMapType_13459 T@Ref T@Field_22420_13512) Bool)
(declare-fun HasDirectPerm_22420_53 (T@PolymorphicMapType_13459 T@Ref T@Field_22420_53) Bool)
(declare-fun HasDirectPerm_13498_34979 (T@PolymorphicMapType_13459 T@Ref T@Field_13498_22438) Bool)
(declare-fun HasDirectPerm_13498_5155 (T@PolymorphicMapType_13459 T@Ref T@Field_22373_5155) Bool)
(declare-fun HasDirectPerm_13498_13512 (T@PolymorphicMapType_13459 T@Ref T@Field_13511_13512) Bool)
(declare-fun HasDirectPerm_13498_53 (T@PolymorphicMapType_13459 T@Ref T@Field_13498_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_13459 T@PolymorphicMapType_13459 T@PolymorphicMapType_13459) Bool)
(declare-fun |Set#Difference_8326| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Seq#Equal_23340| (T@Seq_23340 T@Seq_23340) Bool)
(declare-fun |Seq#Equal_3032| (T@Seq_3032 T@Seq_3032) Bool)
(declare-fun |Set#UnionOne_8326| ((Array Int Bool) Int) (Array Int Bool))
(declare-fun |Seq#ContainsTrigger_9242| (T@Seq_23340 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3032| (T@Seq_3032 Int) Bool)
(declare-fun getPredWandId_9210_9211 (T@Field_22420_22421) Int)
(declare-fun |Set#Empty_8326| () (Array Int Bool))
(declare-fun |Seq#SkolemDiff_23340| (T@Seq_23340 T@Seq_23340) Int)
(declare-fun |Seq#SkolemDiff_3032| (T@Seq_3032 T@Seq_3032) Int)
(declare-fun InsidePredicate_22420_13498 (T@Field_22420_22421 T@FrameType T@Field_13498_22421 T@FrameType) Bool)
(declare-fun InsidePredicate_13498_22420 (T@Field_13498_22421 T@FrameType T@Field_22420_22421 T@FrameType) Bool)
(assert (forall ((s T@Seq_23340) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_9242| s)) (= (|Seq#Length_9242| (|Seq#Drop_9242| s n)) (- (|Seq#Length_9242| s) n))) (=> (< (|Seq#Length_9242| s) n) (= (|Seq#Length_9242| (|Seq#Drop_9242| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_9242| (|Seq#Drop_9242| s n)) (|Seq#Length_9242| s))))
 :qid |stdinbpl.306:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_9242| (|Seq#Drop_9242| s n)))
 :pattern ( (|Seq#Length_9242| s) (|Seq#Drop_9242| s n))
)))
(assert (forall ((s@@0 T@Seq_3032) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3032| s@@0)) (= (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)) (- (|Seq#Length_3032| s@@0) n@@0))) (=> (< (|Seq#Length_3032| s@@0) n@@0) (= (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)) (|Seq#Length_3032| s@@0))))
 :qid |stdinbpl.306:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3032| s@@0) (|Seq#Drop_3032| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_13438) (Heap1 T@PolymorphicMapType_13438) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_13438) (Mask T@PolymorphicMapType_13459) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_13438) (Heap1@@0 T@PolymorphicMapType_13438) (Heap2 T@PolymorphicMapType_13438) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_22433_22438) ) (!  (not (select (|PolymorphicMapType_13987_22420_38960#PolymorphicMapType_13987| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13987_22420_38960#PolymorphicMapType_13987| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_22420_22421) ) (!  (not (select (|PolymorphicMapType_13987_22420_22421#PolymorphicMapType_13987| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13987_22420_22421#PolymorphicMapType_13987| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_22420_5155) ) (!  (not (select (|PolymorphicMapType_13987_22420_5155#PolymorphicMapType_13987| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13987_22420_5155#PolymorphicMapType_13987| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_22420_13512) ) (!  (not (select (|PolymorphicMapType_13987_22420_13512#PolymorphicMapType_13987| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13987_22420_13512#PolymorphicMapType_13987| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_22420_53) ) (!  (not (select (|PolymorphicMapType_13987_22420_53#PolymorphicMapType_13987| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13987_22420_53#PolymorphicMapType_13987| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_13498_22438) ) (!  (not (select (|PolymorphicMapType_13987_13498_37912#PolymorphicMapType_13987| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13987_13498_37912#PolymorphicMapType_13987| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_13498_22421) ) (!  (not (select (|PolymorphicMapType_13987_13498_22421#PolymorphicMapType_13987| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13987_13498_22421#PolymorphicMapType_13987| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_22373_5155) ) (!  (not (select (|PolymorphicMapType_13987_13498_5155#PolymorphicMapType_13987| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13987_13498_5155#PolymorphicMapType_13987| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_13511_13512) ) (!  (not (select (|PolymorphicMapType_13987_13498_13512#PolymorphicMapType_13987| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13987_13498_13512#PolymorphicMapType_13987| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_13498_53) ) (!  (not (select (|PolymorphicMapType_13987_13498_53#PolymorphicMapType_13987| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13987_13498_53#PolymorphicMapType_13987| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.670:15|
 :skolemid |89|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((s@@1 T@Seq_23340) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_9242| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_9242| (|Seq#Drop_9242| s@@1 n@@1) j) (|Seq#Index_9242| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.327:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_9242| (|Seq#Drop_9242| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3032) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3032| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3032| (|Seq#Drop_3032| s@@2 n@@2) j@@0) (|Seq#Index_3032| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.327:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3032| (|Seq#Drop_3032| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_9242| |Seq#Empty_9242|) 0))
(assert (= (|Seq#Length_3032| |Seq#Empty_3032|) 0))
(assert (forall ((a_2 T@Ref) ) (! (IsPredicateField_9210_9211 (h a_2))
 :qid |stdinbpl.783:15|
 :skolemid |119|
 :pattern ( (h a_2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_13438) (a_2@@0 T@Ref) ) (! (|h#everUsed_9210| (h a_2@@0))
 :qid |stdinbpl.802:15|
 :skolemid |123|
 :pattern ( (|h#trigger_9210| Heap@@0 (h a_2@@0)))
)))
(assert (forall ((s@@3 T@Seq_23340) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_9242| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_9242| (|Seq#Update_9242| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_9242| (|Seq#Update_9242| s@@3 i v) n@@3) (|Seq#Index_9242| s@@3 n@@3)))))
 :qid |stdinbpl.282:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_9242| (|Seq#Update_9242| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_9242| s@@3 n@@3) (|Seq#Update_9242| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3032) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3032| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3032| (|Seq#Update_3032| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3032| (|Seq#Update_3032| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3032| s@@4 n@@4)))))
 :qid |stdinbpl.282:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3032| (|Seq#Update_3032| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3032| s@@4 n@@4) (|Seq#Update_3032| s@@4 i@@0 v@@0))
)))
(assert (forall ((a@@0 (Array Int Bool)) (b@@0 (Array Int Bool)) ) (! (= (|Set#Union_8326| (|Set#Union_8326| a@@0 b@@0) b@@0) (|Set#Union_8326| a@@0 b@@0))
 :qid |stdinbpl.622:18|
 :skolemid |74|
 :pattern ( (|Set#Union_8326| (|Set#Union_8326| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array Int Bool)) (b@@1 (Array Int Bool)) ) (! (= (|Set#Intersection_8326| (|Set#Intersection_8326| a@@1 b@@1) b@@1) (|Set#Intersection_8326| a@@1 b@@1))
 :qid |stdinbpl.626:18|
 :skolemid |76|
 :pattern ( (|Set#Intersection_8326| (|Set#Intersection_8326| a@@1 b@@1) b@@1))
)))
(assert (forall ((r Int) (o Int) ) (! (= (select (|Set#Singleton_8326| r) o) (= r o))
 :qid |stdinbpl.591:18|
 :skolemid |63|
 :pattern ( (select (|Set#Singleton_8326| r) o))
)))
(assert (forall ((s@@5 T@Seq_23340) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_9242| s@@5)) (= (|Seq#Length_9242| (|Seq#Take_9242| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_9242| s@@5) n@@5) (= (|Seq#Length_9242| (|Seq#Take_9242| s@@5 n@@5)) (|Seq#Length_9242| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_9242| (|Seq#Take_9242| s@@5 n@@5)) 0)))
 :qid |stdinbpl.293:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_9242| (|Seq#Take_9242| s@@5 n@@5)))
 :pattern ( (|Seq#Take_9242| s@@5 n@@5) (|Seq#Length_9242| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3032) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3032| s@@6)) (= (|Seq#Length_3032| (|Seq#Take_3032| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3032| s@@6) n@@6) (= (|Seq#Length_3032| (|Seq#Take_3032| s@@6 n@@6)) (|Seq#Length_3032| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3032| (|Seq#Take_3032| s@@6 n@@6)) 0)))
 :qid |stdinbpl.293:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3032| (|Seq#Take_3032| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3032| s@@6 n@@6) (|Seq#Length_3032| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3032| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.567:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((a@@2 (Array Int Bool)) (b@@2 (Array Int Bool)) ) (! (= (+ (|Set#Card_8326| (|Set#Union_8326| a@@2 b@@2)) (|Set#Card_8326| (|Set#Intersection_8326| a@@2 b@@2))) (+ (|Set#Card_8326| a@@2) (|Set#Card_8326| b@@2)))
 :qid |stdinbpl.630:18|
 :skolemid |78|
 :pattern ( (|Set#Card_8326| (|Set#Union_8326| a@@2 b@@2)))
 :pattern ( (|Set#Card_8326| (|Set#Intersection_8326| a@@2 b@@2)))
)))
(assert (forall ((s@@7 T@Seq_23340) (x T@Ref) ) (!  (=> (|Seq#Contains_23340| s@@7 x) (and (and (<= 0 (|Seq#Skolem_23340| s@@7 x)) (< (|Seq#Skolem_23340| s@@7 x) (|Seq#Length_9242| s@@7))) (= (|Seq#Index_9242| s@@7 (|Seq#Skolem_23340| s@@7 x)) x)))
 :qid |stdinbpl.425:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_23340| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3032) (x@@0 Int) ) (!  (=> (|Seq#Contains_3032| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3032| s@@8 x@@0)) (< (|Seq#Skolem_3032| s@@8 x@@0) (|Seq#Length_3032| s@@8))) (= (|Seq#Index_3032| s@@8 (|Seq#Skolem_3032| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.425:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3032| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_23340) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_9242| s@@9 n@@7) s@@9))
 :qid |stdinbpl.409:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_9242| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3032) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3032| s@@10 n@@8) s@@10))
 :qid |stdinbpl.409:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3032| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.262:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.260:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.673:15|
 :skolemid |90|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_13438) (ExhaleHeap T@PolymorphicMapType_13438) (Mask@@0 T@PolymorphicMapType_13459) (pm_f_11 T@Field_22420_22421) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_22420_22421 Mask@@0 null pm_f_11) (IsPredicateField_9210_9211 pm_f_11)) (= (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@1) null (PredicateMaskField_9210 pm_f_11)) (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| ExhaleHeap) null (PredicateMaskField_9210 pm_f_11)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_9210_9211 pm_f_11) (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| ExhaleHeap) null (PredicateMaskField_9210 pm_f_11)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_13438) (ExhaleHeap@@0 T@PolymorphicMapType_13438) (Mask@@1 T@PolymorphicMapType_13459) (pm_f_11@@0 T@Field_13498_22421) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_13498_22421 Mask@@1 null pm_f_11@@0) (IsPredicateField_13498_36428 pm_f_11@@0)) (= (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@2) null (PredicateMaskField_13498 pm_f_11@@0)) (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| ExhaleHeap@@0) null (PredicateMaskField_13498 pm_f_11@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_13498_36428 pm_f_11@@0) (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| ExhaleHeap@@0) null (PredicateMaskField_13498 pm_f_11@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_13438) (ExhaleHeap@@1 T@PolymorphicMapType_13438) (Mask@@2 T@PolymorphicMapType_13459) (pm_f_11@@1 T@Field_22420_22421) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_22420_22421 Mask@@2 null pm_f_11@@1) (IsWandField_22420_40125 pm_f_11@@1)) (= (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@3) null (WandMaskField_22420 pm_f_11@@1)) (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| ExhaleHeap@@1) null (WandMaskField_22420 pm_f_11@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_22420_40125 pm_f_11@@1) (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| ExhaleHeap@@1) null (WandMaskField_22420 pm_f_11@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_13438) (ExhaleHeap@@2 T@PolymorphicMapType_13438) (Mask@@3 T@PolymorphicMapType_13459) (pm_f_11@@2 T@Field_13498_22421) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_13498_22421 Mask@@3 null pm_f_11@@2) (IsWandField_13498_39768 pm_f_11@@2)) (= (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@4) null (WandMaskField_13498 pm_f_11@@2)) (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| ExhaleHeap@@2) null (WandMaskField_13498 pm_f_11@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_13498_39768 pm_f_11@@2) (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| ExhaleHeap@@2) null (WandMaskField_13498 pm_f_11@@2)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_23340| (|Seq#Singleton_9242| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.550:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_23340| (|Seq#Singleton_9242| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3032| (|Seq#Singleton_3032| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.550:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3032| (|Seq#Singleton_3032| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_23340) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_9242| s@@11))) (= (|Seq#Index_9242| (|Seq#Take_9242| s@@11 n@@9) j@@3) (|Seq#Index_9242| s@@11 j@@3)))
 :qid |stdinbpl.301:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_9242| (|Seq#Take_9242| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_9242| s@@11 j@@3) (|Seq#Take_9242| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3032) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3032| s@@12))) (= (|Seq#Index_3032| (|Seq#Take_3032| s@@12 n@@10) j@@4) (|Seq#Index_3032| s@@12 j@@4)))
 :qid |stdinbpl.301:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3032| (|Seq#Take_3032| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3032| s@@12 j@@4) (|Seq#Take_3032| s@@12 n@@10))
)))
(assert (forall ((a_2@@1 T@Ref) (a2 T@Ref) ) (!  (=> (= (h a_2@@1) (h a2)) (= a_2@@1 a2))
 :qid |stdinbpl.793:15|
 :skolemid |121|
 :pattern ( (h a_2@@1) (h a2))
)))
(assert (forall ((a_2@@2 T@Ref) (a2@@0 T@Ref) ) (!  (=> (= (|h#sm| a_2@@2) (|h#sm| a2@@0)) (= a_2@@2 a2@@0))
 :qid |stdinbpl.797:15|
 :skolemid |122|
 :pattern ( (|h#sm| a_2@@2) (|h#sm| a2@@0))
)))
(assert (forall ((s@@13 T@Seq_23340) (t T@Seq_23340) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_9242| s@@13))) (< n@@11 (|Seq#Length_9242| (|Seq#Append_23340| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_9242| s@@13)) (|Seq#Length_9242| s@@13)) n@@11) (= (|Seq#Take_9242| (|Seq#Append_23340| s@@13 t) n@@11) (|Seq#Append_23340| s@@13 (|Seq#Take_9242| t (|Seq#Sub| n@@11 (|Seq#Length_9242| s@@13)))))))
 :qid |stdinbpl.386:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_9242| (|Seq#Append_23340| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3032) (t@@0 T@Seq_3032) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3032| s@@14))) (< n@@12 (|Seq#Length_3032| (|Seq#Append_3032| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3032| s@@14)) (|Seq#Length_3032| s@@14)) n@@12) (= (|Seq#Take_3032| (|Seq#Append_3032| s@@14 t@@0) n@@12) (|Seq#Append_3032| s@@14 (|Seq#Take_3032| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3032| s@@14)))))))
 :qid |stdinbpl.386:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3032| (|Seq#Append_3032| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_13438) (ExhaleHeap@@3 T@PolymorphicMapType_13438) (Mask@@4 T@PolymorphicMapType_13459) (pm_f_11@@3 T@Field_22420_22421) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_22420_22421 Mask@@4 null pm_f_11@@3) (IsPredicateField_9210_9211 pm_f_11@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_11 T@Ref) (f_36 T@Field_13498_53) ) (!  (=> (select (|PolymorphicMapType_13987_13498_53#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@5) null (PredicateMaskField_9210 pm_f_11@@3))) o2_11 f_36) (= (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@5) o2_11 f_36) (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11 f_36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11 f_36))
)) (forall ((o2_11@@0 T@Ref) (f_36@@0 T@Field_13511_13512) ) (!  (=> (select (|PolymorphicMapType_13987_13498_13512#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@5) null (PredicateMaskField_9210 pm_f_11@@3))) o2_11@@0 f_36@@0) (= (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@5) o2_11@@0 f_36@@0) (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@0 f_36@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@0 f_36@@0))
))) (forall ((o2_11@@1 T@Ref) (f_36@@1 T@Field_22373_5155) ) (!  (=> (select (|PolymorphicMapType_13987_13498_5155#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@5) null (PredicateMaskField_9210 pm_f_11@@3))) o2_11@@1 f_36@@1) (= (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@5) o2_11@@1 f_36@@1) (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@1 f_36@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@1 f_36@@1))
))) (forall ((o2_11@@2 T@Ref) (f_36@@2 T@Field_13498_22421) ) (!  (=> (select (|PolymorphicMapType_13987_13498_22421#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@5) null (PredicateMaskField_9210 pm_f_11@@3))) o2_11@@2 f_36@@2) (= (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@5) o2_11@@2 f_36@@2) (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@2 f_36@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@2 f_36@@2))
))) (forall ((o2_11@@3 T@Ref) (f_36@@3 T@Field_13498_22438) ) (!  (=> (select (|PolymorphicMapType_13987_13498_37912#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@5) null (PredicateMaskField_9210 pm_f_11@@3))) o2_11@@3 f_36@@3) (= (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@5) o2_11@@3 f_36@@3) (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@3 f_36@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@3 f_36@@3))
))) (forall ((o2_11@@4 T@Ref) (f_36@@4 T@Field_22420_53) ) (!  (=> (select (|PolymorphicMapType_13987_22420_53#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@5) null (PredicateMaskField_9210 pm_f_11@@3))) o2_11@@4 f_36@@4) (= (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@5) o2_11@@4 f_36@@4) (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@4 f_36@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@4 f_36@@4))
))) (forall ((o2_11@@5 T@Ref) (f_36@@5 T@Field_22420_13512) ) (!  (=> (select (|PolymorphicMapType_13987_22420_13512#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@5) null (PredicateMaskField_9210 pm_f_11@@3))) o2_11@@5 f_36@@5) (= (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@5) o2_11@@5 f_36@@5) (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@5 f_36@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@5 f_36@@5))
))) (forall ((o2_11@@6 T@Ref) (f_36@@6 T@Field_22420_5155) ) (!  (=> (select (|PolymorphicMapType_13987_22420_5155#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@5) null (PredicateMaskField_9210 pm_f_11@@3))) o2_11@@6 f_36@@6) (= (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@5) o2_11@@6 f_36@@6) (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@6 f_36@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@6 f_36@@6))
))) (forall ((o2_11@@7 T@Ref) (f_36@@7 T@Field_22420_22421) ) (!  (=> (select (|PolymorphicMapType_13987_22420_22421#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@5) null (PredicateMaskField_9210 pm_f_11@@3))) o2_11@@7 f_36@@7) (= (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@5) o2_11@@7 f_36@@7) (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@7 f_36@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@7 f_36@@7))
))) (forall ((o2_11@@8 T@Ref) (f_36@@8 T@Field_22433_22438) ) (!  (=> (select (|PolymorphicMapType_13987_22420_38960#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@5) null (PredicateMaskField_9210 pm_f_11@@3))) o2_11@@8 f_36@@8) (= (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@5) o2_11@@8 f_36@@8) (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@8 f_36@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| ExhaleHeap@@3) o2_11@@8 f_36@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_9210_9211 pm_f_11@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_13438) (ExhaleHeap@@4 T@PolymorphicMapType_13438) (Mask@@5 T@PolymorphicMapType_13459) (pm_f_11@@4 T@Field_13498_22421) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_13498_22421 Mask@@5 null pm_f_11@@4) (IsPredicateField_13498_36428 pm_f_11@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_11@@9 T@Ref) (f_36@@9 T@Field_13498_53) ) (!  (=> (select (|PolymorphicMapType_13987_13498_53#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@6) null (PredicateMaskField_13498 pm_f_11@@4))) o2_11@@9 f_36@@9) (= (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@6) o2_11@@9 f_36@@9) (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@9 f_36@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@9 f_36@@9))
)) (forall ((o2_11@@10 T@Ref) (f_36@@10 T@Field_13511_13512) ) (!  (=> (select (|PolymorphicMapType_13987_13498_13512#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@6) null (PredicateMaskField_13498 pm_f_11@@4))) o2_11@@10 f_36@@10) (= (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@6) o2_11@@10 f_36@@10) (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@10 f_36@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@10 f_36@@10))
))) (forall ((o2_11@@11 T@Ref) (f_36@@11 T@Field_22373_5155) ) (!  (=> (select (|PolymorphicMapType_13987_13498_5155#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@6) null (PredicateMaskField_13498 pm_f_11@@4))) o2_11@@11 f_36@@11) (= (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@6) o2_11@@11 f_36@@11) (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@11 f_36@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@11 f_36@@11))
))) (forall ((o2_11@@12 T@Ref) (f_36@@12 T@Field_13498_22421) ) (!  (=> (select (|PolymorphicMapType_13987_13498_22421#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@6) null (PredicateMaskField_13498 pm_f_11@@4))) o2_11@@12 f_36@@12) (= (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@6) o2_11@@12 f_36@@12) (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@12 f_36@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@12 f_36@@12))
))) (forall ((o2_11@@13 T@Ref) (f_36@@13 T@Field_13498_22438) ) (!  (=> (select (|PolymorphicMapType_13987_13498_37912#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@6) null (PredicateMaskField_13498 pm_f_11@@4))) o2_11@@13 f_36@@13) (= (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@6) o2_11@@13 f_36@@13) (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@13 f_36@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@13 f_36@@13))
))) (forall ((o2_11@@14 T@Ref) (f_36@@14 T@Field_22420_53) ) (!  (=> (select (|PolymorphicMapType_13987_22420_53#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@6) null (PredicateMaskField_13498 pm_f_11@@4))) o2_11@@14 f_36@@14) (= (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@6) o2_11@@14 f_36@@14) (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@14 f_36@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@14 f_36@@14))
))) (forall ((o2_11@@15 T@Ref) (f_36@@15 T@Field_22420_13512) ) (!  (=> (select (|PolymorphicMapType_13987_22420_13512#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@6) null (PredicateMaskField_13498 pm_f_11@@4))) o2_11@@15 f_36@@15) (= (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@6) o2_11@@15 f_36@@15) (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@15 f_36@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@15 f_36@@15))
))) (forall ((o2_11@@16 T@Ref) (f_36@@16 T@Field_22420_5155) ) (!  (=> (select (|PolymorphicMapType_13987_22420_5155#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@6) null (PredicateMaskField_13498 pm_f_11@@4))) o2_11@@16 f_36@@16) (= (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@6) o2_11@@16 f_36@@16) (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@16 f_36@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@16 f_36@@16))
))) (forall ((o2_11@@17 T@Ref) (f_36@@17 T@Field_22420_22421) ) (!  (=> (select (|PolymorphicMapType_13987_22420_22421#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@6) null (PredicateMaskField_13498 pm_f_11@@4))) o2_11@@17 f_36@@17) (= (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@6) o2_11@@17 f_36@@17) (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@17 f_36@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@17 f_36@@17))
))) (forall ((o2_11@@18 T@Ref) (f_36@@18 T@Field_22433_22438) ) (!  (=> (select (|PolymorphicMapType_13987_22420_38960#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@6) null (PredicateMaskField_13498 pm_f_11@@4))) o2_11@@18 f_36@@18) (= (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@6) o2_11@@18 f_36@@18) (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@18 f_36@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| ExhaleHeap@@4) o2_11@@18 f_36@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_13498_36428 pm_f_11@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_13438) (ExhaleHeap@@5 T@PolymorphicMapType_13438) (Mask@@6 T@PolymorphicMapType_13459) (pm_f_11@@5 T@Field_22420_22421) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_22420_22421 Mask@@6 null pm_f_11@@5) (IsWandField_22420_40125 pm_f_11@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_11@@19 T@Ref) (f_36@@19 T@Field_13498_53) ) (!  (=> (select (|PolymorphicMapType_13987_13498_53#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@7) null (WandMaskField_22420 pm_f_11@@5))) o2_11@@19 f_36@@19) (= (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@7) o2_11@@19 f_36@@19) (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@19 f_36@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@19 f_36@@19))
)) (forall ((o2_11@@20 T@Ref) (f_36@@20 T@Field_13511_13512) ) (!  (=> (select (|PolymorphicMapType_13987_13498_13512#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@7) null (WandMaskField_22420 pm_f_11@@5))) o2_11@@20 f_36@@20) (= (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@7) o2_11@@20 f_36@@20) (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@20 f_36@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@20 f_36@@20))
))) (forall ((o2_11@@21 T@Ref) (f_36@@21 T@Field_22373_5155) ) (!  (=> (select (|PolymorphicMapType_13987_13498_5155#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@7) null (WandMaskField_22420 pm_f_11@@5))) o2_11@@21 f_36@@21) (= (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@7) o2_11@@21 f_36@@21) (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@21 f_36@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@21 f_36@@21))
))) (forall ((o2_11@@22 T@Ref) (f_36@@22 T@Field_13498_22421) ) (!  (=> (select (|PolymorphicMapType_13987_13498_22421#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@7) null (WandMaskField_22420 pm_f_11@@5))) o2_11@@22 f_36@@22) (= (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@7) o2_11@@22 f_36@@22) (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@22 f_36@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@22 f_36@@22))
))) (forall ((o2_11@@23 T@Ref) (f_36@@23 T@Field_13498_22438) ) (!  (=> (select (|PolymorphicMapType_13987_13498_37912#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@7) null (WandMaskField_22420 pm_f_11@@5))) o2_11@@23 f_36@@23) (= (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@7) o2_11@@23 f_36@@23) (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@23 f_36@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@23 f_36@@23))
))) (forall ((o2_11@@24 T@Ref) (f_36@@24 T@Field_22420_53) ) (!  (=> (select (|PolymorphicMapType_13987_22420_53#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@7) null (WandMaskField_22420 pm_f_11@@5))) o2_11@@24 f_36@@24) (= (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@7) o2_11@@24 f_36@@24) (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@24 f_36@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@24 f_36@@24))
))) (forall ((o2_11@@25 T@Ref) (f_36@@25 T@Field_22420_13512) ) (!  (=> (select (|PolymorphicMapType_13987_22420_13512#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@7) null (WandMaskField_22420 pm_f_11@@5))) o2_11@@25 f_36@@25) (= (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@7) o2_11@@25 f_36@@25) (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@25 f_36@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@25 f_36@@25))
))) (forall ((o2_11@@26 T@Ref) (f_36@@26 T@Field_22420_5155) ) (!  (=> (select (|PolymorphicMapType_13987_22420_5155#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@7) null (WandMaskField_22420 pm_f_11@@5))) o2_11@@26 f_36@@26) (= (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@7) o2_11@@26 f_36@@26) (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@26 f_36@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@26 f_36@@26))
))) (forall ((o2_11@@27 T@Ref) (f_36@@27 T@Field_22420_22421) ) (!  (=> (select (|PolymorphicMapType_13987_22420_22421#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@7) null (WandMaskField_22420 pm_f_11@@5))) o2_11@@27 f_36@@27) (= (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@7) o2_11@@27 f_36@@27) (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@27 f_36@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@27 f_36@@27))
))) (forall ((o2_11@@28 T@Ref) (f_36@@28 T@Field_22433_22438) ) (!  (=> (select (|PolymorphicMapType_13987_22420_38960#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@7) null (WandMaskField_22420 pm_f_11@@5))) o2_11@@28 f_36@@28) (= (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@7) o2_11@@28 f_36@@28) (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@28 f_36@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| ExhaleHeap@@5) o2_11@@28 f_36@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_22420_40125 pm_f_11@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_13438) (ExhaleHeap@@6 T@PolymorphicMapType_13438) (Mask@@7 T@PolymorphicMapType_13459) (pm_f_11@@6 T@Field_13498_22421) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_13498_22421 Mask@@7 null pm_f_11@@6) (IsWandField_13498_39768 pm_f_11@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_11@@29 T@Ref) (f_36@@29 T@Field_13498_53) ) (!  (=> (select (|PolymorphicMapType_13987_13498_53#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@8) null (WandMaskField_13498 pm_f_11@@6))) o2_11@@29 f_36@@29) (= (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@8) o2_11@@29 f_36@@29) (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@29 f_36@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@29 f_36@@29))
)) (forall ((o2_11@@30 T@Ref) (f_36@@30 T@Field_13511_13512) ) (!  (=> (select (|PolymorphicMapType_13987_13498_13512#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@8) null (WandMaskField_13498 pm_f_11@@6))) o2_11@@30 f_36@@30) (= (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@8) o2_11@@30 f_36@@30) (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@30 f_36@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@30 f_36@@30))
))) (forall ((o2_11@@31 T@Ref) (f_36@@31 T@Field_22373_5155) ) (!  (=> (select (|PolymorphicMapType_13987_13498_5155#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@8) null (WandMaskField_13498 pm_f_11@@6))) o2_11@@31 f_36@@31) (= (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@8) o2_11@@31 f_36@@31) (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@31 f_36@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@31 f_36@@31))
))) (forall ((o2_11@@32 T@Ref) (f_36@@32 T@Field_13498_22421) ) (!  (=> (select (|PolymorphicMapType_13987_13498_22421#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@8) null (WandMaskField_13498 pm_f_11@@6))) o2_11@@32 f_36@@32) (= (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@8) o2_11@@32 f_36@@32) (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@32 f_36@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@32 f_36@@32))
))) (forall ((o2_11@@33 T@Ref) (f_36@@33 T@Field_13498_22438) ) (!  (=> (select (|PolymorphicMapType_13987_13498_37912#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@8) null (WandMaskField_13498 pm_f_11@@6))) o2_11@@33 f_36@@33) (= (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@8) o2_11@@33 f_36@@33) (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@33 f_36@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@33 f_36@@33))
))) (forall ((o2_11@@34 T@Ref) (f_36@@34 T@Field_22420_53) ) (!  (=> (select (|PolymorphicMapType_13987_22420_53#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@8) null (WandMaskField_13498 pm_f_11@@6))) o2_11@@34 f_36@@34) (= (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@8) o2_11@@34 f_36@@34) (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@34 f_36@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@34 f_36@@34))
))) (forall ((o2_11@@35 T@Ref) (f_36@@35 T@Field_22420_13512) ) (!  (=> (select (|PolymorphicMapType_13987_22420_13512#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@8) null (WandMaskField_13498 pm_f_11@@6))) o2_11@@35 f_36@@35) (= (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@8) o2_11@@35 f_36@@35) (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@35 f_36@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@35 f_36@@35))
))) (forall ((o2_11@@36 T@Ref) (f_36@@36 T@Field_22420_5155) ) (!  (=> (select (|PolymorphicMapType_13987_22420_5155#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@8) null (WandMaskField_13498 pm_f_11@@6))) o2_11@@36 f_36@@36) (= (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@8) o2_11@@36 f_36@@36) (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@36 f_36@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@36 f_36@@36))
))) (forall ((o2_11@@37 T@Ref) (f_36@@37 T@Field_22420_22421) ) (!  (=> (select (|PolymorphicMapType_13987_22420_22421#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@8) null (WandMaskField_13498 pm_f_11@@6))) o2_11@@37 f_36@@37) (= (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@8) o2_11@@37 f_36@@37) (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@37 f_36@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@37 f_36@@37))
))) (forall ((o2_11@@38 T@Ref) (f_36@@38 T@Field_22433_22438) ) (!  (=> (select (|PolymorphicMapType_13987_22420_38960#PolymorphicMapType_13987| (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@8) null (WandMaskField_13498 pm_f_11@@6))) o2_11@@38 f_36@@38) (= (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@8) o2_11@@38 f_36@@38) (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@38 f_36@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| ExhaleHeap@@6) o2_11@@38 f_36@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_13498_39768 pm_f_11@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_13438) (ExhaleHeap@@7 T@PolymorphicMapType_13438) (Mask@@8 T@PolymorphicMapType_13459) (o_31 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@9) o_31 $allocated) (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| ExhaleHeap@@7) o_31 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| ExhaleHeap@@7) o_31 $allocated))
)))
(assert (forall ((p T@Field_22420_22421) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_22420_22420 p v_1 p w))
 :qid |stdinbpl.204:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22420_22420 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_13498_22421) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_13498_13498 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.204:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13498_13498 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_23340) (s1 T@Seq_23340) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_9242|)) (not (= s1 |Seq#Empty_9242|))) (<= (|Seq#Length_9242| s0) n@@13)) (< n@@13 (|Seq#Length_9242| (|Seq#Append_23340| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_9242| s0)) (|Seq#Length_9242| s0)) n@@13) (= (|Seq#Index_9242| (|Seq#Append_23340| s0 s1) n@@13) (|Seq#Index_9242| s1 (|Seq#Sub| n@@13 (|Seq#Length_9242| s0))))))
 :qid |stdinbpl.273:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_9242| (|Seq#Append_23340| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3032) (s1@@0 T@Seq_3032) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3032|)) (not (= s1@@0 |Seq#Empty_3032|))) (<= (|Seq#Length_3032| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3032| (|Seq#Append_3032| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3032| s0@@0)) (|Seq#Length_3032| s0@@0)) n@@14) (= (|Seq#Index_3032| (|Seq#Append_3032| s0@@0 s1@@0) n@@14) (|Seq#Index_3032| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3032| s0@@0))))))
 :qid |stdinbpl.273:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3032| (|Seq#Append_3032| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_9207_5155 f_7)))
(assert  (not (IsWandField_9207_5155 f_7)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_13438) (ExhaleHeap@@8 T@PolymorphicMapType_13438) (Mask@@9 T@PolymorphicMapType_13459) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_13459) (o_2@@9 T@Ref) (f_4@@9 T@Field_22433_22438) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_13459_9210_44765#PolymorphicMapType_13459| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_9210_47057 f_4@@9))) (not (IsWandField_9210_47073 f_4@@9))) (<= (select (|PolymorphicMapType_13459_9210_44765#PolymorphicMapType_13459| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_13459_9210_44765#PolymorphicMapType_13459| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_13459) (o_2@@10 T@Ref) (f_4@@10 T@Field_22420_13512) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_13459_9210_13512#PolymorphicMapType_13459| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_9210_13512 f_4@@10))) (not (IsWandField_9210_13512 f_4@@10))) (<= (select (|PolymorphicMapType_13459_9210_13512#PolymorphicMapType_13459| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_13459_9210_13512#PolymorphicMapType_13459| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_13459) (o_2@@11 T@Ref) (f_4@@11 T@Field_22420_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_13459_9210_53#PolymorphicMapType_13459| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_9210_53 f_4@@11))) (not (IsWandField_9210_53 f_4@@11))) (<= (select (|PolymorphicMapType_13459_9210_53#PolymorphicMapType_13459| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_13459_9210_53#PolymorphicMapType_13459| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_13459) (o_2@@12 T@Ref) (f_4@@12 T@Field_22420_22421) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_13459_9210_9211#PolymorphicMapType_13459| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_9210_9211 f_4@@12))) (not (IsWandField_22420_40125 f_4@@12))) (<= (select (|PolymorphicMapType_13459_9210_9211#PolymorphicMapType_13459| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_13459_9210_9211#PolymorphicMapType_13459| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_13459) (o_2@@13 T@Ref) (f_4@@13 T@Field_22420_5155) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_13459_9210_5155#PolymorphicMapType_13459| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_9210_5155 f_4@@13))) (not (IsWandField_9210_5155 f_4@@13))) (<= (select (|PolymorphicMapType_13459_9210_5155#PolymorphicMapType_13459| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_13459_9210_5155#PolymorphicMapType_13459| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_13459) (o_2@@14 T@Ref) (f_4@@14 T@Field_13498_22438) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_13459_9207_44354#PolymorphicMapType_13459| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_9207_46226 f_4@@14))) (not (IsWandField_9207_46242 f_4@@14))) (<= (select (|PolymorphicMapType_13459_9207_44354#PolymorphicMapType_13459| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_13459_9207_44354#PolymorphicMapType_13459| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_13459) (o_2@@15 T@Ref) (f_4@@15 T@Field_13511_13512) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_13459_9207_13512#PolymorphicMapType_13459| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_9207_13512 f_4@@15))) (not (IsWandField_9207_13512 f_4@@15))) (<= (select (|PolymorphicMapType_13459_9207_13512#PolymorphicMapType_13459| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_13459_9207_13512#PolymorphicMapType_13459| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_13459) (o_2@@16 T@Ref) (f_4@@16 T@Field_13498_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_13459_9207_53#PolymorphicMapType_13459| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_9207_53 f_4@@16))) (not (IsWandField_9207_53 f_4@@16))) (<= (select (|PolymorphicMapType_13459_9207_53#PolymorphicMapType_13459| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_13459_9207_53#PolymorphicMapType_13459| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_13459) (o_2@@17 T@Ref) (f_4@@17 T@Field_13498_22421) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_13459_9207_9211#PolymorphicMapType_13459| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_13498_36428 f_4@@17))) (not (IsWandField_13498_39768 f_4@@17))) (<= (select (|PolymorphicMapType_13459_9207_9211#PolymorphicMapType_13459| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_13459_9207_9211#PolymorphicMapType_13459| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_13459) (o_2@@18 T@Ref) (f_4@@18 T@Field_22373_5155) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_13459_9207_5155#PolymorphicMapType_13459| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_9207_5155 f_4@@18))) (not (IsWandField_9207_5155 f_4@@18))) (<= (select (|PolymorphicMapType_13459_9207_5155#PolymorphicMapType_13459| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_13459_9207_5155#PolymorphicMapType_13459| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_13459) (o_2@@19 T@Ref) (f_4@@19 T@Field_22433_22438) ) (! (= (HasDirectPerm_22420_36140 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_13459_9210_44765#PolymorphicMapType_13459| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22420_36140 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_13459) (o_2@@20 T@Ref) (f_4@@20 T@Field_22420_22421) ) (! (= (HasDirectPerm_22420_22421 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_13459_9210_9211#PolymorphicMapType_13459| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22420_22421 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_13459) (o_2@@21 T@Ref) (f_4@@21 T@Field_22420_5155) ) (! (= (HasDirectPerm_22420_5155 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_13459_9210_5155#PolymorphicMapType_13459| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22420_5155 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_13459) (o_2@@22 T@Ref) (f_4@@22 T@Field_22420_13512) ) (! (= (HasDirectPerm_22420_13512 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_13459_9210_13512#PolymorphicMapType_13459| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22420_13512 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_13459) (o_2@@23 T@Ref) (f_4@@23 T@Field_22420_53) ) (! (= (HasDirectPerm_22420_53 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_13459_9210_53#PolymorphicMapType_13459| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22420_53 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_13459) (o_2@@24 T@Ref) (f_4@@24 T@Field_13498_22438) ) (! (= (HasDirectPerm_13498_34979 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_13459_9207_44354#PolymorphicMapType_13459| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13498_34979 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_13459) (o_2@@25 T@Ref) (f_4@@25 T@Field_13498_22421) ) (! (= (HasDirectPerm_13498_22421 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_13459_9207_9211#PolymorphicMapType_13459| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13498_22421 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_13459) (o_2@@26 T@Ref) (f_4@@26 T@Field_22373_5155) ) (! (= (HasDirectPerm_13498_5155 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_13459_9207_5155#PolymorphicMapType_13459| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13498_5155 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_13459) (o_2@@27 T@Ref) (f_4@@27 T@Field_13511_13512) ) (! (= (HasDirectPerm_13498_13512 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_13459_9207_13512#PolymorphicMapType_13459| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13498_13512 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_13459) (o_2@@28 T@Ref) (f_4@@28 T@Field_13498_53) ) (! (= (HasDirectPerm_13498_53 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_13459_9207_53#PolymorphicMapType_13459| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13498_53 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.192:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3032| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.565:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3032| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_13438) (ExhaleHeap@@9 T@PolymorphicMapType_13438) (Mask@@30 T@PolymorphicMapType_13459) (o_31@@0 T@Ref) (f_36@@39 T@Field_22433_22438) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_22420_36140 Mask@@30 o_31@@0 f_36@@39) (= (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@11) o_31@@0 f_36@@39) (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| ExhaleHeap@@9) o_31@@0 f_36@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| ExhaleHeap@@9) o_31@@0 f_36@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_13438) (ExhaleHeap@@10 T@PolymorphicMapType_13438) (Mask@@31 T@PolymorphicMapType_13459) (o_31@@1 T@Ref) (f_36@@40 T@Field_22420_22421) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_22420_22421 Mask@@31 o_31@@1 f_36@@40) (= (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@12) o_31@@1 f_36@@40) (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| ExhaleHeap@@10) o_31@@1 f_36@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| ExhaleHeap@@10) o_31@@1 f_36@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_13438) (ExhaleHeap@@11 T@PolymorphicMapType_13438) (Mask@@32 T@PolymorphicMapType_13459) (o_31@@2 T@Ref) (f_36@@41 T@Field_22420_5155) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_22420_5155 Mask@@32 o_31@@2 f_36@@41) (= (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@13) o_31@@2 f_36@@41) (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| ExhaleHeap@@11) o_31@@2 f_36@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| ExhaleHeap@@11) o_31@@2 f_36@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_13438) (ExhaleHeap@@12 T@PolymorphicMapType_13438) (Mask@@33 T@PolymorphicMapType_13459) (o_31@@3 T@Ref) (f_36@@42 T@Field_22420_13512) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_22420_13512 Mask@@33 o_31@@3 f_36@@42) (= (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@14) o_31@@3 f_36@@42) (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| ExhaleHeap@@12) o_31@@3 f_36@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| ExhaleHeap@@12) o_31@@3 f_36@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_13438) (ExhaleHeap@@13 T@PolymorphicMapType_13438) (Mask@@34 T@PolymorphicMapType_13459) (o_31@@4 T@Ref) (f_36@@43 T@Field_22420_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_22420_53 Mask@@34 o_31@@4 f_36@@43) (= (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@15) o_31@@4 f_36@@43) (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| ExhaleHeap@@13) o_31@@4 f_36@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| ExhaleHeap@@13) o_31@@4 f_36@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_13438) (ExhaleHeap@@14 T@PolymorphicMapType_13438) (Mask@@35 T@PolymorphicMapType_13459) (o_31@@5 T@Ref) (f_36@@44 T@Field_13498_22438) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_13498_34979 Mask@@35 o_31@@5 f_36@@44) (= (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@16) o_31@@5 f_36@@44) (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| ExhaleHeap@@14) o_31@@5 f_36@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| ExhaleHeap@@14) o_31@@5 f_36@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_13438) (ExhaleHeap@@15 T@PolymorphicMapType_13438) (Mask@@36 T@PolymorphicMapType_13459) (o_31@@6 T@Ref) (f_36@@45 T@Field_13498_22421) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_13498_22421 Mask@@36 o_31@@6 f_36@@45) (= (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@17) o_31@@6 f_36@@45) (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| ExhaleHeap@@15) o_31@@6 f_36@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| ExhaleHeap@@15) o_31@@6 f_36@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_13438) (ExhaleHeap@@16 T@PolymorphicMapType_13438) (Mask@@37 T@PolymorphicMapType_13459) (o_31@@7 T@Ref) (f_36@@46 T@Field_22373_5155) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_13498_5155 Mask@@37 o_31@@7 f_36@@46) (= (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@18) o_31@@7 f_36@@46) (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| ExhaleHeap@@16) o_31@@7 f_36@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| ExhaleHeap@@16) o_31@@7 f_36@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_13438) (ExhaleHeap@@17 T@PolymorphicMapType_13438) (Mask@@38 T@PolymorphicMapType_13459) (o_31@@8 T@Ref) (f_36@@47 T@Field_13511_13512) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_13498_13512 Mask@@38 o_31@@8 f_36@@47) (= (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@19) o_31@@8 f_36@@47) (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| ExhaleHeap@@17) o_31@@8 f_36@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| ExhaleHeap@@17) o_31@@8 f_36@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_13438) (ExhaleHeap@@18 T@PolymorphicMapType_13438) (Mask@@39 T@PolymorphicMapType_13459) (o_31@@9 T@Ref) (f_36@@48 T@Field_13498_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_13498_53 Mask@@39 o_31@@9 f_36@@48) (= (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@20) o_31@@9 f_36@@48) (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| ExhaleHeap@@18) o_31@@9 f_36@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| ExhaleHeap@@18) o_31@@9 f_36@@48))
)))
(assert (forall ((s0@@1 T@Seq_23340) (s1@@1 T@Seq_23340) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_9242|)) (not (= s1@@1 |Seq#Empty_9242|))) (= (|Seq#Length_9242| (|Seq#Append_23340| s0@@1 s1@@1)) (+ (|Seq#Length_9242| s0@@1) (|Seq#Length_9242| s1@@1))))
 :qid |stdinbpl.242:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_9242| (|Seq#Append_23340| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3032) (s1@@2 T@Seq_3032) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3032|)) (not (= s1@@2 |Seq#Empty_3032|))) (= (|Seq#Length_3032| (|Seq#Append_3032| s0@@2 s1@@2)) (+ (|Seq#Length_3032| s0@@2) (|Seq#Length_3032| s1@@2))))
 :qid |stdinbpl.242:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3032| (|Seq#Append_3032| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_22433_22438) ) (! (= (select (|PolymorphicMapType_13459_9210_44765#PolymorphicMapType_13459| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13459_9210_44765#PolymorphicMapType_13459| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_22420_13512) ) (! (= (select (|PolymorphicMapType_13459_9210_13512#PolymorphicMapType_13459| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13459_9210_13512#PolymorphicMapType_13459| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_22420_53) ) (! (= (select (|PolymorphicMapType_13459_9210_53#PolymorphicMapType_13459| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13459_9210_53#PolymorphicMapType_13459| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_22420_22421) ) (! (= (select (|PolymorphicMapType_13459_9210_9211#PolymorphicMapType_13459| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13459_9210_9211#PolymorphicMapType_13459| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_22420_5155) ) (! (= (select (|PolymorphicMapType_13459_9210_5155#PolymorphicMapType_13459| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13459_9210_5155#PolymorphicMapType_13459| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_13498_22438) ) (! (= (select (|PolymorphicMapType_13459_9207_44354#PolymorphicMapType_13459| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13459_9207_44354#PolymorphicMapType_13459| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_13511_13512) ) (! (= (select (|PolymorphicMapType_13459_9207_13512#PolymorphicMapType_13459| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13459_9207_13512#PolymorphicMapType_13459| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_13498_53) ) (! (= (select (|PolymorphicMapType_13459_9207_53#PolymorphicMapType_13459| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13459_9207_53#PolymorphicMapType_13459| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_13498_22421) ) (! (= (select (|PolymorphicMapType_13459_9207_9211#PolymorphicMapType_13459| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13459_9207_9211#PolymorphicMapType_13459| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_22373_5155) ) (! (= (select (|PolymorphicMapType_13459_9207_5155#PolymorphicMapType_13459| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13459_9207_5155#PolymorphicMapType_13459| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((s@@15 T@Seq_23340) (t@@1 T@Seq_23340) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_9242| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_9242| s@@15)) (|Seq#Length_9242| s@@15)) n@@15) (= (|Seq#Drop_9242| (|Seq#Append_23340| s@@15 t@@1) n@@15) (|Seq#Drop_9242| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_9242| s@@15))))))
 :qid |stdinbpl.399:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_9242| (|Seq#Append_23340| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3032) (t@@2 T@Seq_3032) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3032| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3032| s@@16)) (|Seq#Length_3032| s@@16)) n@@16) (= (|Seq#Drop_3032| (|Seq#Append_3032| s@@16 t@@2) n@@16) (|Seq#Drop_3032| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3032| s@@16))))))
 :qid |stdinbpl.399:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3032| (|Seq#Append_3032| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_13459) (SummandMask1 T@PolymorphicMapType_13459) (SummandMask2 T@PolymorphicMapType_13459) (o_2@@39 T@Ref) (f_4@@39 T@Field_22433_22438) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_13459_9210_44765#PolymorphicMapType_13459| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_13459_9210_44765#PolymorphicMapType_13459| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_13459_9210_44765#PolymorphicMapType_13459| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13459_9210_44765#PolymorphicMapType_13459| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13459_9210_44765#PolymorphicMapType_13459| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13459_9210_44765#PolymorphicMapType_13459| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_13459) (SummandMask1@@0 T@PolymorphicMapType_13459) (SummandMask2@@0 T@PolymorphicMapType_13459) (o_2@@40 T@Ref) (f_4@@40 T@Field_22420_13512) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_13459_9210_13512#PolymorphicMapType_13459| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_13459_9210_13512#PolymorphicMapType_13459| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_13459_9210_13512#PolymorphicMapType_13459| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13459_9210_13512#PolymorphicMapType_13459| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13459_9210_13512#PolymorphicMapType_13459| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13459_9210_13512#PolymorphicMapType_13459| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_13459) (SummandMask1@@1 T@PolymorphicMapType_13459) (SummandMask2@@1 T@PolymorphicMapType_13459) (o_2@@41 T@Ref) (f_4@@41 T@Field_22420_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_13459_9210_53#PolymorphicMapType_13459| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_13459_9210_53#PolymorphicMapType_13459| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_13459_9210_53#PolymorphicMapType_13459| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13459_9210_53#PolymorphicMapType_13459| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13459_9210_53#PolymorphicMapType_13459| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13459_9210_53#PolymorphicMapType_13459| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_13459) (SummandMask1@@2 T@PolymorphicMapType_13459) (SummandMask2@@2 T@PolymorphicMapType_13459) (o_2@@42 T@Ref) (f_4@@42 T@Field_22420_22421) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_13459_9210_9211#PolymorphicMapType_13459| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_13459_9210_9211#PolymorphicMapType_13459| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_13459_9210_9211#PolymorphicMapType_13459| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13459_9210_9211#PolymorphicMapType_13459| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13459_9210_9211#PolymorphicMapType_13459| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13459_9210_9211#PolymorphicMapType_13459| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_13459) (SummandMask1@@3 T@PolymorphicMapType_13459) (SummandMask2@@3 T@PolymorphicMapType_13459) (o_2@@43 T@Ref) (f_4@@43 T@Field_22420_5155) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_13459_9210_5155#PolymorphicMapType_13459| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_13459_9210_5155#PolymorphicMapType_13459| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_13459_9210_5155#PolymorphicMapType_13459| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13459_9210_5155#PolymorphicMapType_13459| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13459_9210_5155#PolymorphicMapType_13459| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13459_9210_5155#PolymorphicMapType_13459| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_13459) (SummandMask1@@4 T@PolymorphicMapType_13459) (SummandMask2@@4 T@PolymorphicMapType_13459) (o_2@@44 T@Ref) (f_4@@44 T@Field_13498_22438) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_13459_9207_44354#PolymorphicMapType_13459| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_13459_9207_44354#PolymorphicMapType_13459| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_13459_9207_44354#PolymorphicMapType_13459| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13459_9207_44354#PolymorphicMapType_13459| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13459_9207_44354#PolymorphicMapType_13459| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13459_9207_44354#PolymorphicMapType_13459| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_13459) (SummandMask1@@5 T@PolymorphicMapType_13459) (SummandMask2@@5 T@PolymorphicMapType_13459) (o_2@@45 T@Ref) (f_4@@45 T@Field_13511_13512) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_13459_9207_13512#PolymorphicMapType_13459| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_13459_9207_13512#PolymorphicMapType_13459| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_13459_9207_13512#PolymorphicMapType_13459| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13459_9207_13512#PolymorphicMapType_13459| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13459_9207_13512#PolymorphicMapType_13459| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13459_9207_13512#PolymorphicMapType_13459| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_13459) (SummandMask1@@6 T@PolymorphicMapType_13459) (SummandMask2@@6 T@PolymorphicMapType_13459) (o_2@@46 T@Ref) (f_4@@46 T@Field_13498_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_13459_9207_53#PolymorphicMapType_13459| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_13459_9207_53#PolymorphicMapType_13459| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_13459_9207_53#PolymorphicMapType_13459| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13459_9207_53#PolymorphicMapType_13459| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13459_9207_53#PolymorphicMapType_13459| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13459_9207_53#PolymorphicMapType_13459| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_13459) (SummandMask1@@7 T@PolymorphicMapType_13459) (SummandMask2@@7 T@PolymorphicMapType_13459) (o_2@@47 T@Ref) (f_4@@47 T@Field_13498_22421) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_13459_9207_9211#PolymorphicMapType_13459| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_13459_9207_9211#PolymorphicMapType_13459| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_13459_9207_9211#PolymorphicMapType_13459| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13459_9207_9211#PolymorphicMapType_13459| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13459_9207_9211#PolymorphicMapType_13459| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13459_9207_9211#PolymorphicMapType_13459| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_13459) (SummandMask1@@8 T@PolymorphicMapType_13459) (SummandMask2@@8 T@PolymorphicMapType_13459) (o_2@@48 T@Ref) (f_4@@48 T@Field_22373_5155) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_13459_9207_5155#PolymorphicMapType_13459| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_13459_9207_5155#PolymorphicMapType_13459| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_13459_9207_5155#PolymorphicMapType_13459| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13459_9207_5155#PolymorphicMapType_13459| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13459_9207_5155#PolymorphicMapType_13459| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13459_9207_5155#PolymorphicMapType_13459| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((a@@4 (Array Int Bool)) (b@@3 (Array Int Bool)) (o@@0 Int) ) (! (= (select (|Set#Intersection_8326| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.619:18|
 :skolemid |73|
 :pattern ( (select (|Set#Intersection_8326| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_8326| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_8326| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3032| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3032| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.564:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3032| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a@@5 (Array Int Bool)) (b@@4 (Array Int Bool)) (o@@1 Int) ) (! (= (select (|Set#Difference_8326| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.634:18|
 :skolemid |79|
 :pattern ( (select (|Set#Difference_8326| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_8326| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 T@Seq_23340) (b@@5 T@Seq_23340) ) (!  (=> (|Seq#Equal_23340| a@@6 b@@5) (= a@@6 b@@5))
 :qid |stdinbpl.537:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_23340| a@@6 b@@5))
)))
(assert (forall ((a@@7 T@Seq_3032) (b@@6 T@Seq_3032) ) (!  (=> (|Seq#Equal_3032| a@@7 b@@6) (= a@@7 b@@6))
 :qid |stdinbpl.537:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3032| a@@7 b@@6))
)))
(assert (forall ((a@@8 (Array Int Bool)) (x@@3 Int) (y@@1 Int) ) (!  (=> (select a@@8 y@@1) (select (|Set#UnionOne_8326| a@@8 x@@3) y@@1))
 :qid |stdinbpl.599:18|
 :skolemid |67|
 :pattern ( (|Set#UnionOne_8326| a@@8 x@@3) (select a@@8 y@@1))
)))
(assert (forall ((a@@9 (Array Int Bool)) (b@@7 (Array Int Bool)) (y@@2 Int) ) (!  (=> (select a@@9 y@@2) (select (|Set#Union_8326| a@@9 b@@7) y@@2))
 :qid |stdinbpl.609:18|
 :skolemid |71|
 :pattern ( (|Set#Union_8326| a@@9 b@@7) (select a@@9 y@@2))
)))
(assert (forall ((a@@10 (Array Int Bool)) (b@@8 (Array Int Bool)) (y@@3 Int) ) (!  (=> (select b@@8 y@@3) (select (|Set#Union_8326| a@@10 b@@8) y@@3))
 :qid |stdinbpl.611:18|
 :skolemid |72|
 :pattern ( (|Set#Union_8326| a@@10 b@@8) (select b@@8 y@@3))
)))
(assert (forall ((a@@11 (Array Int Bool)) (x@@4 Int) (o@@2 Int) ) (! (= (select (|Set#UnionOne_8326| a@@11 x@@4) o@@2)  (or (= o@@2 x@@4) (select a@@11 o@@2)))
 :qid |stdinbpl.595:18|
 :skolemid |65|
 :pattern ( (select (|Set#UnionOne_8326| a@@11 x@@4) o@@2))
)))
(assert (forall ((a@@12 (Array Int Bool)) (b@@9 (Array Int Bool)) (y@@4 Int) ) (!  (=> (select b@@9 y@@4) (not (select (|Set#Difference_8326| a@@12 b@@9) y@@4)))
 :qid |stdinbpl.636:18|
 :skolemid |80|
 :pattern ( (|Set#Difference_8326| a@@12 b@@9) (select b@@9 y@@4))
)))
(assert (forall ((s@@17 T@Seq_23340) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_9242| s@@17))) (|Seq#ContainsTrigger_9242| s@@17 (|Seq#Index_9242| s@@17 i@@3)))
 :qid |stdinbpl.430:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_9242| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3032) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3032| s@@18))) (|Seq#ContainsTrigger_3032| s@@18 (|Seq#Index_3032| s@@18 i@@4)))
 :qid |stdinbpl.430:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3032| s@@18 i@@4))
)))
(assert (forall ((a@@13 (Array Int Bool)) (b@@10 (Array Int Bool)) ) (!  (and (= (+ (+ (|Set#Card_8326| (|Set#Difference_8326| a@@13 b@@10)) (|Set#Card_8326| (|Set#Difference_8326| b@@10 a@@13))) (|Set#Card_8326| (|Set#Intersection_8326| a@@13 b@@10))) (|Set#Card_8326| (|Set#Union_8326| a@@13 b@@10))) (= (|Set#Card_8326| (|Set#Difference_8326| a@@13 b@@10)) (- (|Set#Card_8326| a@@13) (|Set#Card_8326| (|Set#Intersection_8326| a@@13 b@@10)))))
 :qid |stdinbpl.638:18|
 :skolemid |81|
 :pattern ( (|Set#Card_8326| (|Set#Difference_8326| a@@13 b@@10)))
)))
(assert (forall ((s0@@3 T@Seq_23340) (s1@@3 T@Seq_23340) ) (!  (and (=> (= s0@@3 |Seq#Empty_9242|) (= (|Seq#Append_23340| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_9242|) (= (|Seq#Append_23340| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.248:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_23340| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3032) (s1@@4 T@Seq_3032) ) (!  (and (=> (= s0@@4 |Seq#Empty_3032|) (= (|Seq#Append_3032| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3032|) (= (|Seq#Append_3032| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.248:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3032| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_9242| (|Seq#Singleton_9242| t@@3) 0) t@@3)
 :qid |stdinbpl.252:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_9242| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3032| (|Seq#Singleton_3032| t@@4) 0) t@@4)
 :qid |stdinbpl.252:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3032| t@@4))
)))
(assert (forall ((s@@19 T@Seq_23340) ) (! (<= 0 (|Seq#Length_9242| s@@19))
 :qid |stdinbpl.231:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_9242| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3032) ) (! (<= 0 (|Seq#Length_3032| s@@20))
 :qid |stdinbpl.231:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3032| s@@20))
)))
(assert (forall ((s@@21 (Array Int Bool)) ) (! (<= 0 (|Set#Card_8326| s@@21))
 :qid |stdinbpl.581:18|
 :skolemid |58|
 :pattern ( (|Set#Card_8326| s@@21))
)))
(assert (forall ((a@@14 (Array Int Bool)) (x@@5 Int) ) (! (select (|Set#UnionOne_8326| a@@14 x@@5) x@@5)
 :qid |stdinbpl.597:18|
 :skolemid |66|
 :pattern ( (|Set#UnionOne_8326| a@@14 x@@5))
)))
(assert (forall ((s0@@5 T@Seq_23340) (s1@@5 T@Seq_23340) ) (!  (=> (|Seq#Equal_23340| s0@@5 s1@@5) (and (= (|Seq#Length_9242| s0@@5) (|Seq#Length_9242| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_9242| s0@@5))) (= (|Seq#Index_9242| s0@@5 j@@6) (|Seq#Index_9242| s1@@5 j@@6)))
 :qid |stdinbpl.527:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_9242| s0@@5 j@@6))
 :pattern ( (|Seq#Index_9242| s1@@5 j@@6))
))))
 :qid |stdinbpl.524:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_23340| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3032) (s1@@6 T@Seq_3032) ) (!  (=> (|Seq#Equal_3032| s0@@6 s1@@6) (and (= (|Seq#Length_3032| s0@@6) (|Seq#Length_3032| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3032| s0@@6))) (= (|Seq#Index_3032| s0@@6 j@@7) (|Seq#Index_3032| s1@@6 j@@7)))
 :qid |stdinbpl.527:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3032| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3032| s1@@6 j@@7))
))))
 :qid |stdinbpl.524:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3032| s0@@6 s1@@6))
)))
(assert (forall ((a@@15 (Array Int Bool)) (x@@6 Int) ) (!  (=> (select a@@15 x@@6) (= (|Set#Card_8326| (|Set#UnionOne_8326| a@@15 x@@6)) (|Set#Card_8326| a@@15)))
 :qid |stdinbpl.601:18|
 :skolemid |68|
 :pattern ( (|Set#Card_8326| (|Set#UnionOne_8326| a@@15 x@@6)))
)))
(assert (forall ((a_2@@3 T@Ref) ) (! (= (getPredWandId_9210_9211 (h a_2@@3)) 0)
 :qid |stdinbpl.787:15|
 :skolemid |120|
 :pattern ( (h a_2@@3))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_9242| (|Seq#Singleton_9242| t@@5)) 1)
 :qid |stdinbpl.239:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_9242| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3032| (|Seq#Singleton_3032| t@@6)) 1)
 :qid |stdinbpl.239:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3032| t@@6))
)))
(assert (forall ((r@@0 Int) ) (! (= (|Set#Card_8326| (|Set#Singleton_8326| r@@0)) 1)
 :qid |stdinbpl.592:18|
 :skolemid |64|
 :pattern ( (|Set#Card_8326| (|Set#Singleton_8326| r@@0)))
)))
(assert (forall ((r@@1 Int) ) (! (select (|Set#Singleton_8326| r@@1) r@@1)
 :qid |stdinbpl.590:18|
 :skolemid |62|
 :pattern ( (|Set#Singleton_8326| r@@1))
)))
(assert (forall ((a@@16 (Array Int Bool)) (b@@11 (Array Int Bool)) ) (! (= (|Set#Union_8326| a@@16 (|Set#Union_8326| a@@16 b@@11)) (|Set#Union_8326| a@@16 b@@11))
 :qid |stdinbpl.624:18|
 :skolemid |75|
 :pattern ( (|Set#Union_8326| a@@16 (|Set#Union_8326| a@@16 b@@11)))
)))
(assert (forall ((a@@17 (Array Int Bool)) (b@@12 (Array Int Bool)) ) (! (= (|Set#Intersection_8326| a@@17 (|Set#Intersection_8326| a@@17 b@@12)) (|Set#Intersection_8326| a@@17 b@@12))
 :qid |stdinbpl.628:18|
 :skolemid |77|
 :pattern ( (|Set#Intersection_8326| a@@17 (|Set#Intersection_8326| a@@17 b@@12)))
)))
(assert (forall ((s@@22 T@Seq_23340) (t@@7 T@Seq_23340) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_9242| s@@22))) (= (|Seq#Take_9242| (|Seq#Append_23340| s@@22 t@@7) n@@17) (|Seq#Take_9242| s@@22 n@@17)))
 :qid |stdinbpl.381:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_9242| (|Seq#Append_23340| s@@22 t@@7) n@@17))
)))
(assert (forall ((s@@23 T@Seq_3032) (t@@8 T@Seq_3032) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3032| s@@23))) (= (|Seq#Take_3032| (|Seq#Append_3032| s@@23 t@@8) n@@18) (|Seq#Take_3032| s@@23 n@@18)))
 :qid |stdinbpl.381:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3032| (|Seq#Append_3032| s@@23 t@@8) n@@18))
)))
(assert (forall ((o@@3 Int) ) (!  (not (select |Set#Empty_8326| o@@3))
 :qid |stdinbpl.584:18|
 :skolemid |59|
 :pattern ( (select |Set#Empty_8326| o@@3))
)))
(assert (forall ((s@@24 T@Seq_23340) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_9242| s@@24))) (= (|Seq#Length_9242| (|Seq#Update_9242| s@@24 i@@5 v@@2)) (|Seq#Length_9242| s@@24)))
 :qid |stdinbpl.280:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_9242| (|Seq#Update_9242| s@@24 i@@5 v@@2)))
 :pattern ( (|Seq#Length_9242| s@@24) (|Seq#Update_9242| s@@24 i@@5 v@@2))
)))
(assert (forall ((s@@25 T@Seq_3032) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3032| s@@25))) (= (|Seq#Length_3032| (|Seq#Update_3032| s@@25 i@@6 v@@3)) (|Seq#Length_3032| s@@25)))
 :qid |stdinbpl.280:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3032| (|Seq#Update_3032| s@@25 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3032| s@@25) (|Seq#Update_3032| s@@25 i@@6 v@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_13438) (o_30 T@Ref) (f_37 T@Field_22433_22438) (v@@4 T@PolymorphicMapType_13987) ) (! (succHeap Heap@@21 (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@21) (store (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@21) o_30 f_37 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@21) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@21) (store (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@21) o_30 f_37 v@@4)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_13438) (o_30@@0 T@Ref) (f_37@@0 T@Field_22420_5155) (v@@5 Int) ) (! (succHeap Heap@@22 (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@22) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@22) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@22) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@22) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@22) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@22) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@22) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@22) (store (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@22) o_30@@0 f_37@@0 v@@5) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@22) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@22) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@22) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@22) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@22) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@22) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@22) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@22) (store (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@22) o_30@@0 f_37@@0 v@@5) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_13438) (o_30@@1 T@Ref) (f_37@@1 T@Field_22420_22421) (v@@6 T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@23) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@23) (store (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@23) o_30@@1 f_37@@1 v@@6) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@23) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@23) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@23) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@23) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@23) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@23) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@23) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@23) (store (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@23) o_30@@1 f_37@@1 v@@6) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@23) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@23) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@23) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@23) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@23) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@23) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_13438) (o_30@@2 T@Ref) (f_37@@2 T@Field_22420_13512) (v@@7 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@24) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@24) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@24) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@24) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@24) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@24) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@24) (store (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@24) o_30@@2 f_37@@2 v@@7) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@24) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@24) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@24) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@24) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@24) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@24) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@24) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@24) (store (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@24) o_30@@2 f_37@@2 v@@7) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@24) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_13438) (o_30@@3 T@Ref) (f_37@@3 T@Field_22420_53) (v@@8 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@25) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@25) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@25) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@25) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@25) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@25) (store (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@25) o_30@@3 f_37@@3 v@@8) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@25) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@25) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@25) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@25) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@25) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@25) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@25) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@25) (store (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@25) o_30@@3 f_37@@3 v@@8) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@25) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@25) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_13438) (o_30@@4 T@Ref) (f_37@@4 T@Field_13498_22438) (v@@9 T@PolymorphicMapType_13987) ) (! (succHeap Heap@@26 (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@26) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@26) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@26) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@26) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@26) (store (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@26) o_30@@4 f_37@@4 v@@9) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@26) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@26) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@26) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@26) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@26) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@26) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@26) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@26) (store (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@26) o_30@@4 f_37@@4 v@@9) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@26) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@26) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@26) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_13438) (o_30@@5 T@Ref) (f_37@@5 T@Field_22373_5155) (v@@10 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@27) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@27) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@27) (store (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@27) o_30@@5 f_37@@5 v@@10) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@27) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@27) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@27) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@27) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@27) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@27) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@27) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@27) (store (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@27) o_30@@5 f_37@@5 v@@10) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@27) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@27) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@27) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@27) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@27) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_13438) (o_30@@6 T@Ref) (f_37@@6 T@Field_13498_22421) (v@@11 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@28) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@28) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@28) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@28) (store (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@28) o_30@@6 f_37@@6 v@@11) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@28) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@28) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@28) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@28) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@28) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@28) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@28) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@28) (store (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@28) o_30@@6 f_37@@6 v@@11) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@28) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@28) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@28) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@28) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_13438) (o_30@@7 T@Ref) (f_37@@7 T@Field_13511_13512) (v@@12 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@29) (store (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@29) o_30@@7 f_37@@7 v@@12) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@29) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@29) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@29) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@29) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@29) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@29) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@29) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13438 (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@29) (store (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@29) o_30@@7 f_37@@7 v@@12) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@29) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@29) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@29) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@29) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@29) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@29) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@29) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_13438) (o_30@@8 T@Ref) (f_37@@8 T@Field_13498_53) (v@@13 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_13438 (store (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@30) o_30@@8 f_37@@8 v@@13) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13438 (store (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@30) o_30@@8 f_37@@8 v@@13) (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_9210_9211#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_13498_5155#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_13498_22421#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_13498_35021#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_22420_53#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_22420_13512#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_22420_5155#PolymorphicMapType_13438| Heap@@30) (|PolymorphicMapType_13438_22420_36182#PolymorphicMapType_13438| Heap@@30)))
)))
(assert (forall ((a_2@@4 T@Ref) ) (! (= (PredicateMaskField_9210 (h a_2@@4)) (|h#sm| a_2@@4))
 :qid |stdinbpl.779:15|
 :skolemid |118|
 :pattern ( (PredicateMaskField_9210 (h a_2@@4)))
)))
(assert (forall ((s@@26 T@Seq_23340) (t@@9 T@Seq_23340) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_9242| s@@26))) (= (|Seq#Drop_9242| (|Seq#Append_23340| s@@26 t@@9) n@@19) (|Seq#Append_23340| (|Seq#Drop_9242| s@@26 n@@19) t@@9)))
 :qid |stdinbpl.395:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_9242| (|Seq#Append_23340| s@@26 t@@9) n@@19))
)))
(assert (forall ((s@@27 T@Seq_3032) (t@@10 T@Seq_3032) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3032| s@@27))) (= (|Seq#Drop_3032| (|Seq#Append_3032| s@@27 t@@10) n@@20) (|Seq#Append_3032| (|Seq#Drop_3032| s@@27 n@@20) t@@10)))
 :qid |stdinbpl.395:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3032| (|Seq#Append_3032| s@@27 t@@10) n@@20))
)))
(assert (forall ((a@@18 Int) (b@@13 Int) ) (! (= (<= a@@18 b@@13) (= (|Math#min| a@@18 b@@13) a@@18))
 :qid |stdinbpl.668:15|
 :skolemid |87|
 :pattern ( (|Math#min| a@@18 b@@13))
)))
(assert (forall ((a@@19 Int) (b@@14 Int) ) (! (= (<= b@@14 a@@19) (= (|Math#min| a@@19 b@@14) b@@14))
 :qid |stdinbpl.669:15|
 :skolemid |88|
 :pattern ( (|Math#min| a@@19 b@@14))
)))
(assert (forall ((s@@28 T@Seq_23340) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_9242| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_9242| (|Seq#Drop_9242| s@@28 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_9242| s@@28 i@@7))))
 :qid |stdinbpl.331:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_9242| s@@28 n@@21) (|Seq#Index_9242| s@@28 i@@7))
)))
(assert (forall ((s@@29 T@Seq_3032) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3032| s@@29))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3032| (|Seq#Drop_3032| s@@29 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3032| s@@29 i@@8))))
 :qid |stdinbpl.331:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3032| s@@29 n@@22) (|Seq#Index_3032| s@@29 i@@8))
)))
(assert (forall ((s@@30 (Array Int Bool)) ) (!  (and (= (= (|Set#Card_8326| s@@30) 0) (= s@@30 |Set#Empty_8326|)) (=> (not (= (|Set#Card_8326| s@@30) 0)) (exists ((x@@7 Int) ) (! (select s@@30 x@@7)
 :qid |stdinbpl.587:33|
 :skolemid |60|
))))
 :qid |stdinbpl.585:18|
 :skolemid |61|
 :pattern ( (|Set#Card_8326| s@@30))
)))
(assert (forall ((s0@@7 T@Seq_23340) (s1@@7 T@Seq_23340) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_9242|)) (not (= s1@@7 |Seq#Empty_9242|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_9242| s0@@7))) (= (|Seq#Index_9242| (|Seq#Append_23340| s0@@7 s1@@7) n@@23) (|Seq#Index_9242| s0@@7 n@@23)))
 :qid |stdinbpl.271:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_9242| (|Seq#Append_23340| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_9242| s0@@7 n@@23) (|Seq#Append_23340| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3032) (s1@@8 T@Seq_3032) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3032|)) (not (= s1@@8 |Seq#Empty_3032|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3032| s0@@8))) (= (|Seq#Index_3032| (|Seq#Append_3032| s0@@8 s1@@8) n@@24) (|Seq#Index_3032| s0@@8 n@@24)))
 :qid |stdinbpl.271:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3032| (|Seq#Append_3032| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3032| s0@@8 n@@24) (|Seq#Append_3032| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_23340) (s1@@9 T@Seq_23340) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_9242|)) (not (= s1@@9 |Seq#Empty_9242|))) (<= 0 m)) (< m (|Seq#Length_9242| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_9242| s0@@9)) (|Seq#Length_9242| s0@@9)) m) (= (|Seq#Index_9242| (|Seq#Append_23340| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_9242| s0@@9))) (|Seq#Index_9242| s1@@9 m))))
 :qid |stdinbpl.276:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_9242| s1@@9 m) (|Seq#Append_23340| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3032) (s1@@10 T@Seq_3032) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3032|)) (not (= s1@@10 |Seq#Empty_3032|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3032| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3032| s0@@10)) (|Seq#Length_3032| s0@@10)) m@@0) (= (|Seq#Index_3032| (|Seq#Append_3032| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3032| s0@@10))) (|Seq#Index_3032| s1@@10 m@@0))))
 :qid |stdinbpl.276:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3032| s1@@10 m@@0) (|Seq#Append_3032| s0@@10 s1@@10))
)))
(assert (forall ((a@@20 (Array Int Bool)) (x@@8 Int) ) (!  (=> (not (select a@@20 x@@8)) (= (|Set#Card_8326| (|Set#UnionOne_8326| a@@20 x@@8)) (+ (|Set#Card_8326| a@@20) 1)))
 :qid |stdinbpl.603:18|
 :skolemid |69|
 :pattern ( (|Set#Card_8326| (|Set#UnionOne_8326| a@@20 x@@8)))
)))
(assert (forall ((o_30@@9 T@Ref) (f_35 T@Field_13511_13512) (Heap@@31 T@PolymorphicMapType_13438) ) (!  (=> (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@31) o_30@@9 $allocated) (select (|PolymorphicMapType_13438_8842_53#PolymorphicMapType_13438| Heap@@31) (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@31) o_30@@9 f_35) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_13438_8845_8846#PolymorphicMapType_13438| Heap@@31) o_30@@9 f_35))
)))
(assert (forall ((s@@31 T@Seq_23340) (x@@9 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_9242| s@@31))) (= (|Seq#Index_9242| s@@31 i@@9) x@@9)) (|Seq#Contains_23340| s@@31 x@@9))
 :qid |stdinbpl.428:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_23340| s@@31 x@@9) (|Seq#Index_9242| s@@31 i@@9))
)))
(assert (forall ((s@@32 T@Seq_3032) (x@@10 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3032| s@@32))) (= (|Seq#Index_3032| s@@32 i@@10) x@@10)) (|Seq#Contains_3032| s@@32 x@@10))
 :qid |stdinbpl.428:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3032| s@@32 x@@10) (|Seq#Index_3032| s@@32 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_23340) (s1@@11 T@Seq_23340) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_23340| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_23340| s0@@11 s1@@11))) (not (= (|Seq#Length_9242| s0@@11) (|Seq#Length_9242| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_23340| s0@@11 s1@@11))) (= (|Seq#Length_9242| s0@@11) (|Seq#Length_9242| s1@@11))) (= (|Seq#SkolemDiff_23340| s0@@11 s1@@11) (|Seq#SkolemDiff_23340| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_23340| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_23340| s0@@11 s1@@11) (|Seq#Length_9242| s0@@11))) (not (= (|Seq#Index_9242| s0@@11 (|Seq#SkolemDiff_23340| s0@@11 s1@@11)) (|Seq#Index_9242| s1@@11 (|Seq#SkolemDiff_23340| s0@@11 s1@@11))))))
 :qid |stdinbpl.532:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_23340| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3032) (s1@@12 T@Seq_3032) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3032| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3032| s0@@12 s1@@12))) (not (= (|Seq#Length_3032| s0@@12) (|Seq#Length_3032| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3032| s0@@12 s1@@12))) (= (|Seq#Length_3032| s0@@12) (|Seq#Length_3032| s1@@12))) (= (|Seq#SkolemDiff_3032| s0@@12 s1@@12) (|Seq#SkolemDiff_3032| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3032| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3032| s0@@12 s1@@12) (|Seq#Length_3032| s0@@12))) (not (= (|Seq#Index_3032| s0@@12 (|Seq#SkolemDiff_3032| s0@@12 s1@@12)) (|Seq#Index_3032| s1@@12 (|Seq#SkolemDiff_3032| s0@@12 s1@@12))))))
 :qid |stdinbpl.532:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3032| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_22420_22421) (v_1@@1 T@FrameType) (q T@Field_22420_22421) (w@@1 T@FrameType) (r@@2 T@Field_22420_22421) (u T@FrameType) ) (!  (=> (and (InsidePredicate_22420_22420 p@@2 v_1@@1 q w@@1) (InsidePredicate_22420_22420 q w@@1 r@@2 u)) (InsidePredicate_22420_22420 p@@2 v_1@@1 r@@2 u))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22420_22420 p@@2 v_1@@1 q w@@1) (InsidePredicate_22420_22420 q w@@1 r@@2 u))
)))
(assert (forall ((p@@3 T@Field_22420_22421) (v_1@@2 T@FrameType) (q@@0 T@Field_22420_22421) (w@@2 T@FrameType) (r@@3 T@Field_13498_22421) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_22420_22420 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_22420_13498 q@@0 w@@2 r@@3 u@@0)) (InsidePredicate_22420_13498 p@@3 v_1@@2 r@@3 u@@0))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22420_22420 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_22420_13498 q@@0 w@@2 r@@3 u@@0))
)))
(assert (forall ((p@@4 T@Field_22420_22421) (v_1@@3 T@FrameType) (q@@1 T@Field_13498_22421) (w@@3 T@FrameType) (r@@4 T@Field_22420_22421) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_22420_13498 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_13498_22420 q@@1 w@@3 r@@4 u@@1)) (InsidePredicate_22420_22420 p@@4 v_1@@3 r@@4 u@@1))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22420_13498 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_13498_22420 q@@1 w@@3 r@@4 u@@1))
)))
(assert (forall ((p@@5 T@Field_22420_22421) (v_1@@4 T@FrameType) (q@@2 T@Field_13498_22421) (w@@4 T@FrameType) (r@@5 T@Field_13498_22421) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_22420_13498 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_13498_13498 q@@2 w@@4 r@@5 u@@2)) (InsidePredicate_22420_13498 p@@5 v_1@@4 r@@5 u@@2))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22420_13498 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_13498_13498 q@@2 w@@4 r@@5 u@@2))
)))
(assert (forall ((p@@6 T@Field_13498_22421) (v_1@@5 T@FrameType) (q@@3 T@Field_22420_22421) (w@@5 T@FrameType) (r@@6 T@Field_22420_22421) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_13498_22420 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_22420_22420 q@@3 w@@5 r@@6 u@@3)) (InsidePredicate_13498_22420 p@@6 v_1@@5 r@@6 u@@3))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13498_22420 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_22420_22420 q@@3 w@@5 r@@6 u@@3))
)))
(assert (forall ((p@@7 T@Field_13498_22421) (v_1@@6 T@FrameType) (q@@4 T@Field_22420_22421) (w@@6 T@FrameType) (r@@7 T@Field_13498_22421) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_13498_22420 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_22420_13498 q@@4 w@@6 r@@7 u@@4)) (InsidePredicate_13498_13498 p@@7 v_1@@6 r@@7 u@@4))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13498_22420 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_22420_13498 q@@4 w@@6 r@@7 u@@4))
)))
(assert (forall ((p@@8 T@Field_13498_22421) (v_1@@7 T@FrameType) (q@@5 T@Field_13498_22421) (w@@7 T@FrameType) (r@@8 T@Field_22420_22421) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_13498_13498 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_13498_22420 q@@5 w@@7 r@@8 u@@5)) (InsidePredicate_13498_22420 p@@8 v_1@@7 r@@8 u@@5))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13498_13498 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_13498_22420 q@@5 w@@7 r@@8 u@@5))
)))
(assert (forall ((p@@9 T@Field_13498_22421) (v_1@@8 T@FrameType) (q@@6 T@Field_13498_22421) (w@@8 T@FrameType) (r@@9 T@Field_13498_22421) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_13498_13498 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_13498_13498 q@@6 w@@8 r@@9 u@@6)) (InsidePredicate_13498_13498 p@@9 v_1@@8 r@@9 u@@6))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13498_13498 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_13498_13498 q@@6 w@@8 r@@9 u@@6))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (< a@@21 0) (= (|Math#clip| a@@21) 0))
 :qid |stdinbpl.674:15|
 :skolemid |91|
 :pattern ( (|Math#clip| a@@21))
)))
(assert (forall ((s@@33 T@Seq_23340) ) (!  (=> (= (|Seq#Length_9242| s@@33) 0) (= s@@33 |Seq#Empty_9242|))
 :qid |stdinbpl.235:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_9242| s@@33))
)))
(assert (forall ((s@@34 T@Seq_3032) ) (!  (=> (= (|Seq#Length_3032| s@@34) 0) (= s@@34 |Seq#Empty_3032|))
 :qid |stdinbpl.235:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3032| s@@34))
)))
(assert (forall ((s@@35 T@Seq_23340) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_9242| s@@35 n@@25) |Seq#Empty_9242|))
 :qid |stdinbpl.411:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_9242| s@@35 n@@25))
)))
(assert (forall ((s@@36 T@Seq_3032) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3032| s@@36 n@@26) |Seq#Empty_3032|))
 :qid |stdinbpl.411:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3032| s@@36 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@22 (Array Int Bool)) (b@@15 (Array Int Bool)) (o@@4 Int) ) (! (= (select (|Set#Union_8326| a@@22 b@@15) o@@4)  (or (select a@@22 o@@4) (select b@@15 o@@4)))
 :qid |stdinbpl.607:18|
 :skolemid |70|
 :pattern ( (select (|Set#Union_8326| a@@22 b@@15) o@@4))
)))
; Valid

