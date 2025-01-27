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
(declare-sort T@Field_38871_53 0)
(declare-sort T@Field_38884_38885 0)
(declare-sort T@Field_45003_45008 0)
(declare-sort T@Seq_45006 0)
(declare-sort T@Field_44956_3802 0)
(declare-sort T@Field_24073_128164 0)
(declare-sort T@Field_24073_128031 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_38832 0)) (((PolymorphicMapType_38832 (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| (Array T@Ref T@Field_45003_45008 Real)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| (Array T@Ref T@Field_44956_3802 Real)) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| (Array T@Ref T@Field_38871_53 Real)) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| (Array T@Ref T@Field_38884_38885 Real)) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| (Array T@Ref T@Field_24073_128031 Real)) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| (Array T@Ref T@Field_24073_128164 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_39360 0)) (((PolymorphicMapType_39360 (|PolymorphicMapType_39360_38871_53#PolymorphicMapType_39360| (Array T@Ref T@Field_38871_53 Bool)) (|PolymorphicMapType_39360_38871_38885#PolymorphicMapType_39360| (Array T@Ref T@Field_38884_38885 Bool)) (|PolymorphicMapType_39360_38871_3802#PolymorphicMapType_39360| (Array T@Ref T@Field_44956_3802 Bool)) (|PolymorphicMapType_39360_38871_45008#PolymorphicMapType_39360| (Array T@Ref T@Field_45003_45008 Bool)) (|PolymorphicMapType_39360_38871_128031#PolymorphicMapType_39360| (Array T@Ref T@Field_24073_128031 Bool)) (|PolymorphicMapType_39360_38871_129546#PolymorphicMapType_39360| (Array T@Ref T@Field_24073_128164 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_38811 0)) (((PolymorphicMapType_38811 (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| (Array T@Ref T@Field_38871_53 Bool)) (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| (Array T@Ref T@Field_38884_38885 T@Ref)) (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| (Array T@Ref T@Field_45003_45008 T@Seq_45006)) (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| (Array T@Ref T@Field_44956_3802 Int)) (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| (Array T@Ref T@Field_24073_128164 T@PolymorphicMapType_39360)) (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| (Array T@Ref T@Field_24073_128031 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_38871_53)
(declare-fun value_1 () T@Field_44956_3802)
(declare-fun array_1 () T@Field_45003_45008)
(declare-fun |Seq#Length_24074| (T@Seq_45006) Int)
(declare-fun |Seq#Drop_24074| (T@Seq_45006 Int) T@Seq_45006)
(declare-sort T@Seq_3680 0)
(declare-fun |Seq#Length_3680| (T@Seq_3680) Int)
(declare-fun |Seq#Drop_3680| (T@Seq_3680 Int) T@Seq_3680)
(declare-fun succHeap (T@PolymorphicMapType_38811 T@PolymorphicMapType_38811) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_38811 T@PolymorphicMapType_38811) Bool)
(declare-fun state (T@PolymorphicMapType_38811 T@PolymorphicMapType_38832) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_38832) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_39360)
(declare-fun |Seq#Index_24074| (T@Seq_45006 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3680| (T@Seq_3680 Int) Int)
(declare-fun |Seq#Empty_24074| () T@Seq_45006)
(declare-fun |Seq#Empty_3680| () T@Seq_3680)
(declare-fun |Seq#Update_24074| (T@Seq_45006 Int T@Ref) T@Seq_45006)
(declare-fun |Seq#Update_3680| (T@Seq_3680 Int Int) T@Seq_3680)
(declare-fun |Seq#Take_24074| (T@Seq_45006 Int) T@Seq_45006)
(declare-fun |Seq#Take_3680| (T@Seq_3680 Int) T@Seq_3680)
(declare-fun |Seq#Contains_3680| (T@Seq_3680 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3680)
(declare-fun |Seq#Contains_45006| (T@Seq_45006 T@Ref) Bool)
(declare-fun |Seq#Skolem_45006| (T@Seq_45006 T@Ref) Int)
(declare-fun |Seq#Skolem_3680| (T@Seq_3680 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_38811 T@PolymorphicMapType_38811 T@PolymorphicMapType_38832) Bool)
(declare-fun IsPredicateField_24073_128122 (T@Field_24073_128031) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_24073 (T@Field_24073_128031) T@Field_24073_128164)
(declare-fun HasDirectPerm_24073_128095 (T@PolymorphicMapType_38832 T@Ref T@Field_24073_128031) Bool)
(declare-fun IsWandField_24073_130073 (T@Field_24073_128031) Bool)
(declare-fun WandMaskField_24073 (T@Field_24073_128031) T@Field_24073_128164)
(declare-fun |Seq#Singleton_24074| (T@Ref) T@Seq_45006)
(declare-fun |Seq#Singleton_3680| (Int) T@Seq_3680)
(declare-fun |Seq#Append_45006| (T@Seq_45006 T@Seq_45006) T@Seq_45006)
(declare-fun |Seq#Append_3680| (T@Seq_3680 T@Seq_3680) T@Seq_3680)
(declare-fun dummyHeap () T@PolymorphicMapType_38811)
(declare-fun ZeroMask () T@PolymorphicMapType_38832)
(declare-fun InsidePredicate_38871_38871 (T@Field_24073_128031 T@FrameType T@Field_24073_128031 T@FrameType) Bool)
(declare-fun IsPredicateField_24071_3802 (T@Field_44956_3802) Bool)
(declare-fun IsWandField_24071_3802 (T@Field_44956_3802) Bool)
(declare-fun IsPredicateField_24073_45030 (T@Field_45003_45008) Bool)
(declare-fun IsWandField_24073_45056 (T@Field_45003_45008) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_24073_134207 (T@Field_24073_128164) Bool)
(declare-fun IsWandField_24073_134223 (T@Field_24073_128164) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_24073_38885 (T@Field_38884_38885) Bool)
(declare-fun IsWandField_24073_38885 (T@Field_38884_38885) Bool)
(declare-fun IsPredicateField_24073_53 (T@Field_38871_53) Bool)
(declare-fun IsWandField_24073_53 (T@Field_38871_53) Bool)
(declare-fun HasDirectPerm_24073_134744 (T@PolymorphicMapType_38832 T@Ref T@Field_24073_128164) Bool)
(declare-fun HasDirectPerm_24073_38885 (T@PolymorphicMapType_38832 T@Ref T@Field_38884_38885) Bool)
(declare-fun HasDirectPerm_24073_53 (T@PolymorphicMapType_38832 T@Ref T@Field_38871_53) Bool)
(declare-fun HasDirectPerm_24071_3802 (T@PolymorphicMapType_38832 T@Ref T@Field_44956_3802) Bool)
(declare-fun HasDirectPerm_24073_45764 (T@PolymorphicMapType_38832 T@Ref T@Field_45003_45008) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_38832 T@PolymorphicMapType_38832 T@PolymorphicMapType_38832) Bool)
(declare-fun |Seq#Equal_3680| (T@Seq_3680 T@Seq_3680) Bool)
(declare-fun |Seq#Equal_24074| (T@Seq_45006 T@Seq_45006) Bool)
(declare-fun |Seq#ContainsTrigger_24074| (T@Seq_45006 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3680| (T@Seq_3680 Int) Bool)
(declare-fun |Seq#SkolemDiff_45006| (T@Seq_45006 T@Seq_45006) Int)
(declare-fun |Seq#SkolemDiff_3680| (T@Seq_3680 T@Seq_3680) Int)
(assert (forall ((s T@Seq_45006) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_24074| s)) (= (|Seq#Length_24074| (|Seq#Drop_24074| s n)) (- (|Seq#Length_24074| s) n))) (=> (< (|Seq#Length_24074| s) n) (= (|Seq#Length_24074| (|Seq#Drop_24074| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_24074| (|Seq#Drop_24074| s n)) (|Seq#Length_24074| s))))
 :qid |stdinbpl.387:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_24074| (|Seq#Drop_24074| s n)))
 :pattern ( (|Seq#Length_24074| s) (|Seq#Drop_24074| s n))
)))
(assert (forall ((s@@0 T@Seq_3680) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3680| s@@0)) (= (|Seq#Length_3680| (|Seq#Drop_3680| s@@0 n@@0)) (- (|Seq#Length_3680| s@@0) n@@0))) (=> (< (|Seq#Length_3680| s@@0) n@@0) (= (|Seq#Length_3680| (|Seq#Drop_3680| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3680| (|Seq#Drop_3680| s@@0 n@@0)) (|Seq#Length_3680| s@@0))))
 :qid |stdinbpl.387:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3680| (|Seq#Drop_3680| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3680| s@@0) (|Seq#Drop_3680| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_38811) (Heap1 T@PolymorphicMapType_38811) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_38811) (Mask T@PolymorphicMapType_38832) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_38811) (Heap1@@0 T@PolymorphicMapType_38811) (Heap2 T@PolymorphicMapType_38811) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_24073_128164) ) (!  (not (select (|PolymorphicMapType_39360_38871_129546#PolymorphicMapType_39360| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_39360_38871_129546#PolymorphicMapType_39360| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_24073_128031) ) (!  (not (select (|PolymorphicMapType_39360_38871_128031#PolymorphicMapType_39360| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_39360_38871_128031#PolymorphicMapType_39360| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_45003_45008) ) (!  (not (select (|PolymorphicMapType_39360_38871_45008#PolymorphicMapType_39360| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_39360_38871_45008#PolymorphicMapType_39360| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_44956_3802) ) (!  (not (select (|PolymorphicMapType_39360_38871_3802#PolymorphicMapType_39360| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_39360_38871_3802#PolymorphicMapType_39360| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_38884_38885) ) (!  (not (select (|PolymorphicMapType_39360_38871_38885#PolymorphicMapType_39360| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_39360_38871_38885#PolymorphicMapType_39360| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_38871_53) ) (!  (not (select (|PolymorphicMapType_39360_38871_53#PolymorphicMapType_39360| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_39360_38871_53#PolymorphicMapType_39360| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((s@@1 T@Seq_45006) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_24074| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_24074| (|Seq#Drop_24074| s@@1 n@@1) j) (|Seq#Index_24074| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.408:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_24074| (|Seq#Drop_24074| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3680) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3680| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3680| (|Seq#Drop_3680| s@@2 n@@2) j@@0) (|Seq#Index_3680| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.408:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3680| (|Seq#Drop_3680| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_24074| |Seq#Empty_24074|) 0))
(assert (= (|Seq#Length_3680| |Seq#Empty_3680|) 0))
(assert (forall ((s@@3 T@Seq_45006) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_24074| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_24074| (|Seq#Update_24074| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_24074| (|Seq#Update_24074| s@@3 i v) n@@3) (|Seq#Index_24074| s@@3 n@@3)))))
 :qid |stdinbpl.363:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_24074| (|Seq#Update_24074| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_24074| s@@3 n@@3) (|Seq#Update_24074| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3680) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3680| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3680| (|Seq#Update_3680| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3680| (|Seq#Update_3680| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3680| s@@4 n@@4)))))
 :qid |stdinbpl.363:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3680| (|Seq#Update_3680| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3680| s@@4 n@@4) (|Seq#Update_3680| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_45006) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_24074| s@@5)) (= (|Seq#Length_24074| (|Seq#Take_24074| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_24074| s@@5) n@@5) (= (|Seq#Length_24074| (|Seq#Take_24074| s@@5 n@@5)) (|Seq#Length_24074| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_24074| (|Seq#Take_24074| s@@5 n@@5)) 0)))
 :qid |stdinbpl.374:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_24074| (|Seq#Take_24074| s@@5 n@@5)))
 :pattern ( (|Seq#Take_24074| s@@5 n@@5) (|Seq#Length_24074| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3680) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3680| s@@6)) (= (|Seq#Length_3680| (|Seq#Take_3680| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3680| s@@6) n@@6) (= (|Seq#Length_3680| (|Seq#Take_3680| s@@6 n@@6)) (|Seq#Length_3680| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3680| (|Seq#Take_3680| s@@6 n@@6)) 0)))
 :qid |stdinbpl.374:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3680| (|Seq#Take_3680| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3680| s@@6 n@@6) (|Seq#Length_3680| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3680| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.648:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_45006) (x T@Ref) ) (!  (=> (|Seq#Contains_45006| s@@7 x) (and (and (<= 0 (|Seq#Skolem_45006| s@@7 x)) (< (|Seq#Skolem_45006| s@@7 x) (|Seq#Length_24074| s@@7))) (= (|Seq#Index_24074| s@@7 (|Seq#Skolem_45006| s@@7 x)) x)))
 :qid |stdinbpl.506:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_45006| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3680) (x@@0 Int) ) (!  (=> (|Seq#Contains_3680| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3680| s@@8 x@@0)) (< (|Seq#Skolem_3680| s@@8 x@@0) (|Seq#Length_3680| s@@8))) (= (|Seq#Index_3680| s@@8 (|Seq#Skolem_3680| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.506:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3680| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_45006) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_24074| s@@9 n@@7) s@@9))
 :qid |stdinbpl.490:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_24074| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3680) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3680| s@@10 n@@8) s@@10))
 :qid |stdinbpl.490:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3680| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.343:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.341:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_38811) (ExhaleHeap T@PolymorphicMapType_38811) (Mask@@0 T@PolymorphicMapType_38832) (pm_f_53 T@Field_24073_128031) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_24073_128095 Mask@@0 null pm_f_53) (IsPredicateField_24073_128122 pm_f_53)) (= (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@0) null (PredicateMaskField_24073 pm_f_53)) (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| ExhaleHeap) null (PredicateMaskField_24073 pm_f_53)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_24073_128122 pm_f_53) (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| ExhaleHeap) null (PredicateMaskField_24073 pm_f_53)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_38811) (ExhaleHeap@@0 T@PolymorphicMapType_38811) (Mask@@1 T@PolymorphicMapType_38832) (pm_f_53@@0 T@Field_24073_128031) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_24073_128095 Mask@@1 null pm_f_53@@0) (IsWandField_24073_130073 pm_f_53@@0)) (= (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@1) null (WandMaskField_24073 pm_f_53@@0)) (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| ExhaleHeap@@0) null (WandMaskField_24073 pm_f_53@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_24073_130073 pm_f_53@@0) (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| ExhaleHeap@@0) null (WandMaskField_24073 pm_f_53@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_45006| (|Seq#Singleton_24074| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.631:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_45006| (|Seq#Singleton_24074| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3680| (|Seq#Singleton_3680| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.631:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3680| (|Seq#Singleton_3680| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_45006) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_24074| s@@11))) (= (|Seq#Index_24074| (|Seq#Take_24074| s@@11 n@@9) j@@3) (|Seq#Index_24074| s@@11 j@@3)))
 :qid |stdinbpl.382:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_24074| (|Seq#Take_24074| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_24074| s@@11 j@@3) (|Seq#Take_24074| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3680) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3680| s@@12))) (= (|Seq#Index_3680| (|Seq#Take_3680| s@@12 n@@10) j@@4) (|Seq#Index_3680| s@@12 j@@4)))
 :qid |stdinbpl.382:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3680| (|Seq#Take_3680| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3680| s@@12 j@@4) (|Seq#Take_3680| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_45006) (t T@Seq_45006) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_24074| s@@13))) (< n@@11 (|Seq#Length_24074| (|Seq#Append_45006| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_24074| s@@13)) (|Seq#Length_24074| s@@13)) n@@11) (= (|Seq#Take_24074| (|Seq#Append_45006| s@@13 t) n@@11) (|Seq#Append_45006| s@@13 (|Seq#Take_24074| t (|Seq#Sub| n@@11 (|Seq#Length_24074| s@@13)))))))
 :qid |stdinbpl.467:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_24074| (|Seq#Append_45006| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3680) (t@@0 T@Seq_3680) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3680| s@@14))) (< n@@12 (|Seq#Length_3680| (|Seq#Append_3680| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3680| s@@14)) (|Seq#Length_3680| s@@14)) n@@12) (= (|Seq#Take_3680| (|Seq#Append_3680| s@@14 t@@0) n@@12) (|Seq#Append_3680| s@@14 (|Seq#Take_3680| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3680| s@@14)))))))
 :qid |stdinbpl.467:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3680| (|Seq#Append_3680| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_38811) (ExhaleHeap@@1 T@PolymorphicMapType_38811) (Mask@@2 T@PolymorphicMapType_38832) (o_66 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@2) o_66 $allocated) (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| ExhaleHeap@@1) o_66 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| ExhaleHeap@@1) o_66 $allocated))
)))
(assert (forall ((p T@Field_24073_128031) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_38871_38871 p v_1 p w))
 :qid |stdinbpl.285:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_38871_38871 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_45006) (s1 T@Seq_45006) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_24074|)) (not (= s1 |Seq#Empty_24074|))) (<= (|Seq#Length_24074| s0) n@@13)) (< n@@13 (|Seq#Length_24074| (|Seq#Append_45006| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_24074| s0)) (|Seq#Length_24074| s0)) n@@13) (= (|Seq#Index_24074| (|Seq#Append_45006| s0 s1) n@@13) (|Seq#Index_24074| s1 (|Seq#Sub| n@@13 (|Seq#Length_24074| s0))))))
 :qid |stdinbpl.354:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_24074| (|Seq#Append_45006| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3680) (s1@@0 T@Seq_3680) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3680|)) (not (= s1@@0 |Seq#Empty_3680|))) (<= (|Seq#Length_3680| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3680| (|Seq#Append_3680| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3680| s0@@0)) (|Seq#Length_3680| s0@@0)) n@@14) (= (|Seq#Index_3680| (|Seq#Append_3680| s0@@0 s1@@0) n@@14) (|Seq#Index_3680| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3680| s0@@0))))))
 :qid |stdinbpl.354:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3680| (|Seq#Append_3680| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_24071_3802 value_1)))
(assert  (not (IsWandField_24071_3802 value_1)))
(assert  (not (IsPredicateField_24073_45030 array_1)))
(assert  (not (IsWandField_24073_45056 array_1)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_38811) (ExhaleHeap@@2 T@PolymorphicMapType_38811) (Mask@@3 T@PolymorphicMapType_38832) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_38832) (o_2@@5 T@Ref) (f_4@@5 T@Field_24073_128164) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@@4) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_24073_134207 f_4@@5))) (not (IsWandField_24073_134223 f_4@@5))) (<= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@@4) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@@4) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_38832) (o_2@@6 T@Ref) (f_4@@6 T@Field_24073_128031) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@@5) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_24073_128122 f_4@@6))) (not (IsWandField_24073_130073 f_4@@6))) (<= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@@5) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@@5) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_38832) (o_2@@7 T@Ref) (f_4@@7 T@Field_38884_38885) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@@6) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_24073_38885 f_4@@7))) (not (IsWandField_24073_38885 f_4@@7))) (<= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@@6) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@@6) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_38832) (o_2@@8 T@Ref) (f_4@@8 T@Field_38871_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@@7) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_24073_53 f_4@@8))) (not (IsWandField_24073_53 f_4@@8))) (<= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@@7) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@@7) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_38832) (o_2@@9 T@Ref) (f_4@@9 T@Field_44956_3802) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@@8) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_24071_3802 f_4@@9))) (not (IsWandField_24071_3802 f_4@@9))) (<= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@@8) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@@8) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_38832) (o_2@@10 T@Ref) (f_4@@10 T@Field_45003_45008) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@@9) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_24073_45030 f_4@@10))) (not (IsWandField_24073_45056 f_4@@10))) (<= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@@9) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@@9) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_38832) (o_2@@11 T@Ref) (f_4@@11 T@Field_24073_128164) ) (! (= (HasDirectPerm_24073_134744 Mask@@10 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@@10) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24073_134744 Mask@@10 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_38832) (o_2@@12 T@Ref) (f_4@@12 T@Field_24073_128031) ) (! (= (HasDirectPerm_24073_128095 Mask@@11 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@@11) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24073_128095 Mask@@11 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_38832) (o_2@@13 T@Ref) (f_4@@13 T@Field_38884_38885) ) (! (= (HasDirectPerm_24073_38885 Mask@@12 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@@12) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24073_38885 Mask@@12 o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_38832) (o_2@@14 T@Ref) (f_4@@14 T@Field_38871_53) ) (! (= (HasDirectPerm_24073_53 Mask@@13 o_2@@14 f_4@@14) (> (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@@13) o_2@@14 f_4@@14) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24073_53 Mask@@13 o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_38832) (o_2@@15 T@Ref) (f_4@@15 T@Field_44956_3802) ) (! (= (HasDirectPerm_24071_3802 Mask@@14 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@@14) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24071_3802 Mask@@14 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_38832) (o_2@@16 T@Ref) (f_4@@16 T@Field_45003_45008) ) (! (= (HasDirectPerm_24073_45764 Mask@@15 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@@15) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24073_45764 Mask@@15 o_2@@16 f_4@@16))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.273:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3680| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.646:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3680| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_38811) (ExhaleHeap@@3 T@PolymorphicMapType_38811) (Mask@@16 T@PolymorphicMapType_38832) (o_66@@0 T@Ref) (f_134 T@Field_24073_128164) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (=> (HasDirectPerm_24073_134744 Mask@@16 o_66@@0 f_134) (= (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@4) o_66@@0 f_134) (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| ExhaleHeap@@3) o_66@@0 f_134))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| ExhaleHeap@@3) o_66@@0 f_134))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_38811) (ExhaleHeap@@4 T@PolymorphicMapType_38811) (Mask@@17 T@PolymorphicMapType_38832) (o_66@@1 T@Ref) (f_134@@0 T@Field_24073_128031) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (=> (HasDirectPerm_24073_128095 Mask@@17 o_66@@1 f_134@@0) (= (select (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@5) o_66@@1 f_134@@0) (select (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| ExhaleHeap@@4) o_66@@1 f_134@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (select (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| ExhaleHeap@@4) o_66@@1 f_134@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_38811) (ExhaleHeap@@5 T@PolymorphicMapType_38811) (Mask@@18 T@PolymorphicMapType_38832) (o_66@@2 T@Ref) (f_134@@1 T@Field_38884_38885) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_24073_38885 Mask@@18 o_66@@2 f_134@@1) (= (select (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@6) o_66@@2 f_134@@1) (select (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| ExhaleHeap@@5) o_66@@2 f_134@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| ExhaleHeap@@5) o_66@@2 f_134@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_38811) (ExhaleHeap@@6 T@PolymorphicMapType_38811) (Mask@@19 T@PolymorphicMapType_38832) (o_66@@3 T@Ref) (f_134@@2 T@Field_38871_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_24073_53 Mask@@19 o_66@@3 f_134@@2) (= (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@7) o_66@@3 f_134@@2) (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| ExhaleHeap@@6) o_66@@3 f_134@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| ExhaleHeap@@6) o_66@@3 f_134@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_38811) (ExhaleHeap@@7 T@PolymorphicMapType_38811) (Mask@@20 T@PolymorphicMapType_38832) (o_66@@4 T@Ref) (f_134@@3 T@Field_44956_3802) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_24071_3802 Mask@@20 o_66@@4 f_134@@3) (= (select (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@8) o_66@@4 f_134@@3) (select (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| ExhaleHeap@@7) o_66@@4 f_134@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| ExhaleHeap@@7) o_66@@4 f_134@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_38811) (ExhaleHeap@@8 T@PolymorphicMapType_38811) (Mask@@21 T@PolymorphicMapType_38832) (o_66@@5 T@Ref) (f_134@@4 T@Field_45003_45008) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_24073_45764 Mask@@21 o_66@@5 f_134@@4) (= (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@9) o_66@@5 f_134@@4) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@@8) o_66@@5 f_134@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@@8) o_66@@5 f_134@@4))
)))
(assert (forall ((s0@@1 T@Seq_45006) (s1@@1 T@Seq_45006) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_24074|)) (not (= s1@@1 |Seq#Empty_24074|))) (= (|Seq#Length_24074| (|Seq#Append_45006| s0@@1 s1@@1)) (+ (|Seq#Length_24074| s0@@1) (|Seq#Length_24074| s1@@1))))
 :qid |stdinbpl.323:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_24074| (|Seq#Append_45006| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3680) (s1@@2 T@Seq_3680) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3680|)) (not (= s1@@2 |Seq#Empty_3680|))) (= (|Seq#Length_3680| (|Seq#Append_3680| s0@@2 s1@@2)) (+ (|Seq#Length_3680| s0@@2) (|Seq#Length_3680| s1@@2))))
 :qid |stdinbpl.323:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3680| (|Seq#Append_3680| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_24073_128164) ) (! (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_24073_128031) ) (! (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_38884_38885) ) (! (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| ZeroMask) o_2@@19 f_4@@19) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| ZeroMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_38871_53) ) (! (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| ZeroMask) o_2@@20 f_4@@20) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| ZeroMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_44956_3802) ) (! (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| ZeroMask) o_2@@21 f_4@@21) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| ZeroMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_45003_45008) ) (! (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| ZeroMask) o_2@@22 f_4@@22) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| ZeroMask) o_2@@22 f_4@@22))
)))
(assert (forall ((s@@15 T@Seq_45006) (t@@1 T@Seq_45006) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_24074| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_24074| s@@15)) (|Seq#Length_24074| s@@15)) n@@15) (= (|Seq#Drop_24074| (|Seq#Append_45006| s@@15 t@@1) n@@15) (|Seq#Drop_24074| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_24074| s@@15))))))
 :qid |stdinbpl.480:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_24074| (|Seq#Append_45006| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3680) (t@@2 T@Seq_3680) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3680| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3680| s@@16)) (|Seq#Length_3680| s@@16)) n@@16) (= (|Seq#Drop_3680| (|Seq#Append_3680| s@@16 t@@2) n@@16) (|Seq#Drop_3680| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3680| s@@16))))))
 :qid |stdinbpl.480:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3680| (|Seq#Append_3680| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_38832) (SummandMask1 T@PolymorphicMapType_38832) (SummandMask2 T@PolymorphicMapType_38832) (o_2@@23 T@Ref) (f_4@@23 T@Field_24073_128164) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| ResultMask) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| SummandMask1) o_2@@23 f_4@@23) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| SummandMask2) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| ResultMask) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| SummandMask1) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| SummandMask2) o_2@@23 f_4@@23))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_38832) (SummandMask1@@0 T@PolymorphicMapType_38832) (SummandMask2@@0 T@PolymorphicMapType_38832) (o_2@@24 T@Ref) (f_4@@24 T@Field_24073_128031) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| ResultMask@@0) o_2@@24 f_4@@24) (+ (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| SummandMask1@@0) o_2@@24 f_4@@24) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| SummandMask2@@0) o_2@@24 f_4@@24))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| ResultMask@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| SummandMask1@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| SummandMask2@@0) o_2@@24 f_4@@24))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_38832) (SummandMask1@@1 T@PolymorphicMapType_38832) (SummandMask2@@1 T@PolymorphicMapType_38832) (o_2@@25 T@Ref) (f_4@@25 T@Field_38884_38885) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| ResultMask@@1) o_2@@25 f_4@@25) (+ (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| SummandMask1@@1) o_2@@25 f_4@@25) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| SummandMask2@@1) o_2@@25 f_4@@25))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| ResultMask@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| SummandMask1@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| SummandMask2@@1) o_2@@25 f_4@@25))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_38832) (SummandMask1@@2 T@PolymorphicMapType_38832) (SummandMask2@@2 T@PolymorphicMapType_38832) (o_2@@26 T@Ref) (f_4@@26 T@Field_38871_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| ResultMask@@2) o_2@@26 f_4@@26) (+ (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| SummandMask1@@2) o_2@@26 f_4@@26) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| SummandMask2@@2) o_2@@26 f_4@@26))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| ResultMask@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| SummandMask1@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| SummandMask2@@2) o_2@@26 f_4@@26))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_38832) (SummandMask1@@3 T@PolymorphicMapType_38832) (SummandMask2@@3 T@PolymorphicMapType_38832) (o_2@@27 T@Ref) (f_4@@27 T@Field_44956_3802) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| ResultMask@@3) o_2@@27 f_4@@27) (+ (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| SummandMask1@@3) o_2@@27 f_4@@27) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| SummandMask2@@3) o_2@@27 f_4@@27))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| ResultMask@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| SummandMask1@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| SummandMask2@@3) o_2@@27 f_4@@27))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_38832) (SummandMask1@@4 T@PolymorphicMapType_38832) (SummandMask2@@4 T@PolymorphicMapType_38832) (o_2@@28 T@Ref) (f_4@@28 T@Field_45003_45008) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| ResultMask@@4) o_2@@28 f_4@@28) (+ (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| SummandMask1@@4) o_2@@28 f_4@@28) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| SummandMask2@@4) o_2@@28 f_4@@28))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| ResultMask@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| SummandMask1@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| SummandMask2@@4) o_2@@28 f_4@@28))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3680| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3680| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.645:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3680| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_3680) (b T@Seq_3680) ) (!  (=> (|Seq#Equal_3680| a b) (= a b))
 :qid |stdinbpl.618:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3680| a b))
)))
(assert (forall ((a@@0 T@Seq_45006) (b@@0 T@Seq_45006) ) (!  (=> (|Seq#Equal_24074| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.618:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_24074| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_45006) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_24074| s@@17))) (|Seq#ContainsTrigger_24074| s@@17 (|Seq#Index_24074| s@@17 i@@3)))
 :qid |stdinbpl.511:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_24074| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3680) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3680| s@@18))) (|Seq#ContainsTrigger_3680| s@@18 (|Seq#Index_3680| s@@18 i@@4)))
 :qid |stdinbpl.511:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3680| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_45006) (s1@@3 T@Seq_45006) ) (!  (and (=> (= s0@@3 |Seq#Empty_24074|) (= (|Seq#Append_45006| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_24074|) (= (|Seq#Append_45006| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.329:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_45006| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3680) (s1@@4 T@Seq_3680) ) (!  (and (=> (= s0@@4 |Seq#Empty_3680|) (= (|Seq#Append_3680| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3680|) (= (|Seq#Append_3680| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.329:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3680| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_24074| (|Seq#Singleton_24074| t@@3) 0) t@@3)
 :qid |stdinbpl.333:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_24074| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3680| (|Seq#Singleton_3680| t@@4) 0) t@@4)
 :qid |stdinbpl.333:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3680| t@@4))
)))
(assert (forall ((s@@19 T@Seq_45006) ) (! (<= 0 (|Seq#Length_24074| s@@19))
 :qid |stdinbpl.312:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_24074| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3680) ) (! (<= 0 (|Seq#Length_3680| s@@20))
 :qid |stdinbpl.312:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3680| s@@20))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_38811) (ExhaleHeap@@9 T@PolymorphicMapType_38811) (Mask@@22 T@PolymorphicMapType_38832) (pm_f_53@@1 T@Field_24073_128031) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (=> (and (HasDirectPerm_24073_128095 Mask@@22 null pm_f_53@@1) (IsPredicateField_24073_128122 pm_f_53@@1)) (and (and (and (and (and (forall ((o2_54 T@Ref) (f_134@@5 T@Field_38871_53) ) (!  (=> (select (|PolymorphicMapType_39360_38871_53#PolymorphicMapType_39360| (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@10) null (PredicateMaskField_24073 pm_f_53@@1))) o2_54 f_134@@5) (= (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@10) o2_54 f_134@@5) (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| ExhaleHeap@@9) o2_54 f_134@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| ExhaleHeap@@9) o2_54 f_134@@5))
)) (forall ((o2_54@@0 T@Ref) (f_134@@6 T@Field_38884_38885) ) (!  (=> (select (|PolymorphicMapType_39360_38871_38885#PolymorphicMapType_39360| (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@10) null (PredicateMaskField_24073 pm_f_53@@1))) o2_54@@0 f_134@@6) (= (select (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@10) o2_54@@0 f_134@@6) (select (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| ExhaleHeap@@9) o2_54@@0 f_134@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| ExhaleHeap@@9) o2_54@@0 f_134@@6))
))) (forall ((o2_54@@1 T@Ref) (f_134@@7 T@Field_44956_3802) ) (!  (=> (select (|PolymorphicMapType_39360_38871_3802#PolymorphicMapType_39360| (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@10) null (PredicateMaskField_24073 pm_f_53@@1))) o2_54@@1 f_134@@7) (= (select (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@10) o2_54@@1 f_134@@7) (select (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| ExhaleHeap@@9) o2_54@@1 f_134@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| ExhaleHeap@@9) o2_54@@1 f_134@@7))
))) (forall ((o2_54@@2 T@Ref) (f_134@@8 T@Field_45003_45008) ) (!  (=> (select (|PolymorphicMapType_39360_38871_45008#PolymorphicMapType_39360| (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@10) null (PredicateMaskField_24073 pm_f_53@@1))) o2_54@@2 f_134@@8) (= (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@10) o2_54@@2 f_134@@8) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@@9) o2_54@@2 f_134@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@@9) o2_54@@2 f_134@@8))
))) (forall ((o2_54@@3 T@Ref) (f_134@@9 T@Field_24073_128031) ) (!  (=> (select (|PolymorphicMapType_39360_38871_128031#PolymorphicMapType_39360| (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@10) null (PredicateMaskField_24073 pm_f_53@@1))) o2_54@@3 f_134@@9) (= (select (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@10) o2_54@@3 f_134@@9) (select (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| ExhaleHeap@@9) o2_54@@3 f_134@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| ExhaleHeap@@9) o2_54@@3 f_134@@9))
))) (forall ((o2_54@@4 T@Ref) (f_134@@10 T@Field_24073_128164) ) (!  (=> (select (|PolymorphicMapType_39360_38871_129546#PolymorphicMapType_39360| (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@10) null (PredicateMaskField_24073 pm_f_53@@1))) o2_54@@4 f_134@@10) (= (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@10) o2_54@@4 f_134@@10) (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| ExhaleHeap@@9) o2_54@@4 f_134@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| ExhaleHeap@@9) o2_54@@4 f_134@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (IsPredicateField_24073_128122 pm_f_53@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_38811) (ExhaleHeap@@10 T@PolymorphicMapType_38811) (Mask@@23 T@PolymorphicMapType_38832) (pm_f_53@@2 T@Field_24073_128031) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (=> (and (HasDirectPerm_24073_128095 Mask@@23 null pm_f_53@@2) (IsWandField_24073_130073 pm_f_53@@2)) (and (and (and (and (and (forall ((o2_54@@5 T@Ref) (f_134@@11 T@Field_38871_53) ) (!  (=> (select (|PolymorphicMapType_39360_38871_53#PolymorphicMapType_39360| (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@11) null (WandMaskField_24073 pm_f_53@@2))) o2_54@@5 f_134@@11) (= (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@11) o2_54@@5 f_134@@11) (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| ExhaleHeap@@10) o2_54@@5 f_134@@11)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| ExhaleHeap@@10) o2_54@@5 f_134@@11))
)) (forall ((o2_54@@6 T@Ref) (f_134@@12 T@Field_38884_38885) ) (!  (=> (select (|PolymorphicMapType_39360_38871_38885#PolymorphicMapType_39360| (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@11) null (WandMaskField_24073 pm_f_53@@2))) o2_54@@6 f_134@@12) (= (select (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@11) o2_54@@6 f_134@@12) (select (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| ExhaleHeap@@10) o2_54@@6 f_134@@12)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| ExhaleHeap@@10) o2_54@@6 f_134@@12))
))) (forall ((o2_54@@7 T@Ref) (f_134@@13 T@Field_44956_3802) ) (!  (=> (select (|PolymorphicMapType_39360_38871_3802#PolymorphicMapType_39360| (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@11) null (WandMaskField_24073 pm_f_53@@2))) o2_54@@7 f_134@@13) (= (select (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@11) o2_54@@7 f_134@@13) (select (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| ExhaleHeap@@10) o2_54@@7 f_134@@13)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| ExhaleHeap@@10) o2_54@@7 f_134@@13))
))) (forall ((o2_54@@8 T@Ref) (f_134@@14 T@Field_45003_45008) ) (!  (=> (select (|PolymorphicMapType_39360_38871_45008#PolymorphicMapType_39360| (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@11) null (WandMaskField_24073 pm_f_53@@2))) o2_54@@8 f_134@@14) (= (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@11) o2_54@@8 f_134@@14) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@@10) o2_54@@8 f_134@@14)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@@10) o2_54@@8 f_134@@14))
))) (forall ((o2_54@@9 T@Ref) (f_134@@15 T@Field_24073_128031) ) (!  (=> (select (|PolymorphicMapType_39360_38871_128031#PolymorphicMapType_39360| (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@11) null (WandMaskField_24073 pm_f_53@@2))) o2_54@@9 f_134@@15) (= (select (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@11) o2_54@@9 f_134@@15) (select (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| ExhaleHeap@@10) o2_54@@9 f_134@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| ExhaleHeap@@10) o2_54@@9 f_134@@15))
))) (forall ((o2_54@@10 T@Ref) (f_134@@16 T@Field_24073_128164) ) (!  (=> (select (|PolymorphicMapType_39360_38871_129546#PolymorphicMapType_39360| (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@11) null (WandMaskField_24073 pm_f_53@@2))) o2_54@@10 f_134@@16) (= (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@11) o2_54@@10 f_134@@16) (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| ExhaleHeap@@10) o2_54@@10 f_134@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| ExhaleHeap@@10) o2_54@@10 f_134@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (IsWandField_24073_130073 pm_f_53@@2))
)))
(assert (forall ((s0@@5 T@Seq_3680) (s1@@5 T@Seq_3680) ) (!  (=> (|Seq#Equal_3680| s0@@5 s1@@5) (and (= (|Seq#Length_3680| s0@@5) (|Seq#Length_3680| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_3680| s0@@5))) (= (|Seq#Index_3680| s0@@5 j@@6) (|Seq#Index_3680| s1@@5 j@@6)))
 :qid |stdinbpl.608:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3680| s0@@5 j@@6))
 :pattern ( (|Seq#Index_3680| s1@@5 j@@6))
))))
 :qid |stdinbpl.605:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3680| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_45006) (s1@@6 T@Seq_45006) ) (!  (=> (|Seq#Equal_24074| s0@@6 s1@@6) (and (= (|Seq#Length_24074| s0@@6) (|Seq#Length_24074| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_24074| s0@@6))) (= (|Seq#Index_24074| s0@@6 j@@7) (|Seq#Index_24074| s1@@6 j@@7)))
 :qid |stdinbpl.608:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_24074| s0@@6 j@@7))
 :pattern ( (|Seq#Index_24074| s1@@6 j@@7))
))))
 :qid |stdinbpl.605:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_24074| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_24074| (|Seq#Singleton_24074| t@@5)) 1)
 :qid |stdinbpl.320:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_24074| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3680| (|Seq#Singleton_3680| t@@6)) 1)
 :qid |stdinbpl.320:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3680| t@@6))
)))
(assert (forall ((s@@21 T@Seq_45006) (t@@7 T@Seq_45006) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_24074| s@@21))) (= (|Seq#Take_24074| (|Seq#Append_45006| s@@21 t@@7) n@@17) (|Seq#Take_24074| s@@21 n@@17)))
 :qid |stdinbpl.462:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_24074| (|Seq#Append_45006| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3680) (t@@8 T@Seq_3680) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3680| s@@22))) (= (|Seq#Take_3680| (|Seq#Append_3680| s@@22 t@@8) n@@18) (|Seq#Take_3680| s@@22 n@@18)))
 :qid |stdinbpl.462:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3680| (|Seq#Append_3680| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_45006) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_24074| s@@23))) (= (|Seq#Length_24074| (|Seq#Update_24074| s@@23 i@@5 v@@2)) (|Seq#Length_24074| s@@23)))
 :qid |stdinbpl.361:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_24074| (|Seq#Update_24074| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_24074| s@@23) (|Seq#Update_24074| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3680) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3680| s@@24))) (= (|Seq#Length_3680| (|Seq#Update_3680| s@@24 i@@6 v@@3)) (|Seq#Length_3680| s@@24)))
 :qid |stdinbpl.361:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3680| (|Seq#Update_3680| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3680| s@@24) (|Seq#Update_3680| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_38811) (o_58 T@Ref) (f_67 T@Field_24073_128031) (v@@4 T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_38811 (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@12) (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@12) (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@12) (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@12) (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@12) (store (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@12) o_58 f_67 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38811 (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@12) (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@12) (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@12) (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@12) (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@12) (store (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@12) o_58 f_67 v@@4)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_38811) (o_58@@0 T@Ref) (f_67@@0 T@Field_24073_128164) (v@@5 T@PolymorphicMapType_39360) ) (! (succHeap Heap@@13 (PolymorphicMapType_38811 (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@13) (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@13) (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@13) (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@13) (store (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@13) o_58@@0 f_67@@0 v@@5) (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38811 (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@13) (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@13) (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@13) (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@13) (store (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@13) o_58@@0 f_67@@0 v@@5) (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_38811) (o_58@@1 T@Ref) (f_67@@1 T@Field_44956_3802) (v@@6 Int) ) (! (succHeap Heap@@14 (PolymorphicMapType_38811 (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@14) (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@14) (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@14) (store (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@14) o_58@@1 f_67@@1 v@@6) (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@14) (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38811 (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@14) (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@14) (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@14) (store (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@14) o_58@@1 f_67@@1 v@@6) (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@14) (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_38811) (o_58@@2 T@Ref) (f_67@@2 T@Field_45003_45008) (v@@7 T@Seq_45006) ) (! (succHeap Heap@@15 (PolymorphicMapType_38811 (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@15) (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@15) (store (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@15) o_58@@2 f_67@@2 v@@7) (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@15) (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@15) (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38811 (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@15) (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@15) (store (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@15) o_58@@2 f_67@@2 v@@7) (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@15) (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@15) (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_38811) (o_58@@3 T@Ref) (f_67@@3 T@Field_38884_38885) (v@@8 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_38811 (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@16) (store (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@16) o_58@@3 f_67@@3 v@@8) (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@16) (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@16) (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@16) (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38811 (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@16) (store (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@16) o_58@@3 f_67@@3 v@@8) (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@16) (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@16) (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@16) (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_38811) (o_58@@4 T@Ref) (f_67@@4 T@Field_38871_53) (v@@9 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_38811 (store (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@17) o_58@@4 f_67@@4 v@@9) (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@17) (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@17) (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@17) (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@17) (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38811 (store (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@17) o_58@@4 f_67@@4 v@@9) (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@17) (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@17) (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@17) (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@17) (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@17)))
)))
(assert (forall ((s@@25 T@Seq_45006) (t@@9 T@Seq_45006) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_24074| s@@25))) (= (|Seq#Drop_24074| (|Seq#Append_45006| s@@25 t@@9) n@@19) (|Seq#Append_45006| (|Seq#Drop_24074| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.476:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_24074| (|Seq#Append_45006| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3680) (t@@10 T@Seq_3680) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3680| s@@26))) (= (|Seq#Drop_3680| (|Seq#Append_3680| s@@26 t@@10) n@@20) (|Seq#Append_3680| (|Seq#Drop_3680| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.476:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3680| (|Seq#Append_3680| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_45006) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_24074| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_24074| (|Seq#Drop_24074| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_24074| s@@27 i@@7))))
 :qid |stdinbpl.412:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_24074| s@@27 n@@21) (|Seq#Index_24074| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3680) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3680| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3680| (|Seq#Drop_3680| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3680| s@@28 i@@8))))
 :qid |stdinbpl.412:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3680| s@@28 n@@22) (|Seq#Index_3680| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_45006) (s1@@7 T@Seq_45006) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_24074|)) (not (= s1@@7 |Seq#Empty_24074|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_24074| s0@@7))) (= (|Seq#Index_24074| (|Seq#Append_45006| s0@@7 s1@@7) n@@23) (|Seq#Index_24074| s0@@7 n@@23)))
 :qid |stdinbpl.352:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_24074| (|Seq#Append_45006| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_24074| s0@@7 n@@23) (|Seq#Append_45006| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3680) (s1@@8 T@Seq_3680) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3680|)) (not (= s1@@8 |Seq#Empty_3680|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3680| s0@@8))) (= (|Seq#Index_3680| (|Seq#Append_3680| s0@@8 s1@@8) n@@24) (|Seq#Index_3680| s0@@8 n@@24)))
 :qid |stdinbpl.352:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3680| (|Seq#Append_3680| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3680| s0@@8 n@@24) (|Seq#Append_3680| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_45006) (s1@@9 T@Seq_45006) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_24074|)) (not (= s1@@9 |Seq#Empty_24074|))) (<= 0 m)) (< m (|Seq#Length_24074| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_24074| s0@@9)) (|Seq#Length_24074| s0@@9)) m) (= (|Seq#Index_24074| (|Seq#Append_45006| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_24074| s0@@9))) (|Seq#Index_24074| s1@@9 m))))
 :qid |stdinbpl.357:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_24074| s1@@9 m) (|Seq#Append_45006| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3680) (s1@@10 T@Seq_3680) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3680|)) (not (= s1@@10 |Seq#Empty_3680|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3680| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3680| s0@@10)) (|Seq#Length_3680| s0@@10)) m@@0) (= (|Seq#Index_3680| (|Seq#Append_3680| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3680| s0@@10))) (|Seq#Index_3680| s1@@10 m@@0))))
 :qid |stdinbpl.357:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3680| s1@@10 m@@0) (|Seq#Append_3680| s0@@10 s1@@10))
)))
(assert (forall ((o_58@@5 T@Ref) (f_70 T@Field_38884_38885) (Heap@@18 T@PolymorphicMapType_38811) ) (!  (=> (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@18) o_58@@5 $allocated) (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@18) (select (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@18) o_58@@5 f_70) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@18) o_58@@5 f_70))
)))
(assert (forall ((s@@29 T@Seq_45006) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_24074| s@@29))) (= (|Seq#Index_24074| s@@29 i@@9) x@@3)) (|Seq#Contains_45006| s@@29 x@@3))
 :qid |stdinbpl.509:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_45006| s@@29 x@@3) (|Seq#Index_24074| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3680) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3680| s@@30))) (= (|Seq#Index_3680| s@@30 i@@10) x@@4)) (|Seq#Contains_3680| s@@30 x@@4))
 :qid |stdinbpl.509:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3680| s@@30 x@@4) (|Seq#Index_3680| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_45006) (s1@@11 T@Seq_45006) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_24074| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_24074| s0@@11 s1@@11))) (not (= (|Seq#Length_24074| s0@@11) (|Seq#Length_24074| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_24074| s0@@11 s1@@11))) (= (|Seq#Length_24074| s0@@11) (|Seq#Length_24074| s1@@11))) (= (|Seq#SkolemDiff_45006| s0@@11 s1@@11) (|Seq#SkolemDiff_45006| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_45006| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_45006| s0@@11 s1@@11) (|Seq#Length_24074| s0@@11))) (not (= (|Seq#Index_24074| s0@@11 (|Seq#SkolemDiff_45006| s0@@11 s1@@11)) (|Seq#Index_24074| s1@@11 (|Seq#SkolemDiff_45006| s0@@11 s1@@11))))))
 :qid |stdinbpl.613:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_24074| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3680) (s1@@12 T@Seq_3680) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3680| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3680| s0@@12 s1@@12))) (not (= (|Seq#Length_3680| s0@@12) (|Seq#Length_3680| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3680| s0@@12 s1@@12))) (= (|Seq#Length_3680| s0@@12) (|Seq#Length_3680| s1@@12))) (= (|Seq#SkolemDiff_3680| s0@@12 s1@@12) (|Seq#SkolemDiff_3680| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3680| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3680| s0@@12 s1@@12) (|Seq#Length_3680| s0@@12))) (not (= (|Seq#Index_3680| s0@@12 (|Seq#SkolemDiff_3680| s0@@12 s1@@12)) (|Seq#Index_3680| s1@@12 (|Seq#SkolemDiff_3680| s0@@12 s1@@12))))))
 :qid |stdinbpl.613:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3680| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_24073_128031) (v_1@@0 T@FrameType) (q T@Field_24073_128031) (w@@0 T@FrameType) (r T@Field_24073_128031) (u T@FrameType) ) (!  (=> (and (InsidePredicate_38871_38871 p@@1 v_1@@0 q w@@0) (InsidePredicate_38871_38871 q w@@0 r u)) (InsidePredicate_38871_38871 p@@1 v_1@@0 r u))
 :qid |stdinbpl.280:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38871_38871 p@@1 v_1@@0 q w@@0) (InsidePredicate_38871_38871 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_45006) ) (!  (=> (= (|Seq#Length_24074| s@@31) 0) (= s@@31 |Seq#Empty_24074|))
 :qid |stdinbpl.316:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_24074| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3680) ) (!  (=> (= (|Seq#Length_3680| s@@32) 0) (= s@@32 |Seq#Empty_3680|))
 :qid |stdinbpl.316:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3680| s@@32))
)))
(assert (forall ((s@@33 T@Seq_45006) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_24074| s@@33 n@@25) |Seq#Empty_24074|))
 :qid |stdinbpl.492:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_24074| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3680) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3680| s@@34 n@@26) |Seq#Empty_3680|))
 :qid |stdinbpl.492:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3680| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun start_1 () Int)
(declare-fun end_1 () Int)
(declare-fun i_21 () Int)
(declare-fun QPMask@16 () T@PolymorphicMapType_38832)
(declare-fun b_24 () T@Ref)
(declare-fun PostHeap@0 () T@PolymorphicMapType_38811)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun QPMask@17 () T@PolymorphicMapType_38832)
(declare-fun a_2 () T@Ref)
(declare-fun QPMask@1 () T@PolymorphicMapType_38832)
(declare-fun Heap@@19 () T@PolymorphicMapType_38811)
(declare-fun i_7 () Int)
(declare-fun j_4 () Int)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun PostMask@1 () T@PolymorphicMapType_38832)
(declare-fun i_15 () Int)
(declare-fun i_5 () Int)
(declare-fun j_2 () Int)
(declare-fun wildcard@2 () Real)
(declare-fun PostMask@0 () T@PolymorphicMapType_38832)
(declare-fun wildcard@3 () Real)
(declare-fun i_40 () Int)
(declare-fun j_14_2 () Int)
(declare-fun ExhaleHeap@7 () T@PolymorphicMapType_38811)
(declare-fun i_38 () Int)
(declare-fun j_12_2 () Int)
(declare-fun middle@0 () Int)
(declare-fun i_13 () Int)
(declare-fun QPMask@8 () T@PolymorphicMapType_38832)
(declare-fun i_12 () Int)
(declare-fun Mask@9 () T@PolymorphicMapType_38832)
(declare-fun i_11 () Int)
(declare-fun QPMask@6 () T@PolymorphicMapType_38832)
(declare-fun i_17 () Int)
(declare-fun Mask@7 () T@PolymorphicMapType_38832)
(declare-fun i_10 () Int)
(declare-fun QPMask@4 () T@PolymorphicMapType_38832)
(declare-fun ExhaleHeap@6 () T@PolymorphicMapType_38811)
(declare-fun i_9 () Int)
(declare-fun Mask@5 () T@PolymorphicMapType_38832)
(declare-fun ExhaleHeap@5 () T@PolymorphicMapType_38811)
(declare-fun i_19 () Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_38832)
(declare-fun ExhaleHeap@2 () T@PolymorphicMapType_38811)
(declare-fun i_8 () Int)
(declare-fun Mask@3 () T@PolymorphicMapType_38832)
(declare-fun ExhaleHeap@1 () T@PolymorphicMapType_38811)
(declare-fun i_19_1 () Int)
(declare-fun j_10_2 () Int)
(declare-fun Heap@0 () T@PolymorphicMapType_38811)
(declare-fun neverTriggered6 (Int) Bool)
(declare-fun QPMask@14 () T@PolymorphicMapType_38832)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun QPMask@15 () T@PolymorphicMapType_38832)
(declare-fun neverTriggered5 (Int) Bool)
(declare-fun Mask@16 () T@PolymorphicMapType_38832)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun i_16_1 () Int)
(declare-fun j_8_2 () Int)
(declare-fun Mask@14 () T@PolymorphicMapType_38832)
(declare-fun wildcard@16 () Real)
(declare-fun Mask@15 () T@PolymorphicMapType_38832)
(declare-fun wildcard@17 () Real)
(declare-fun neverTriggered16 (Int) Bool)
(declare-fun QPMask@10 () T@PolymorphicMapType_38832)
(declare-fun qpRange16 (T@Ref) Bool)
(declare-fun invRecv16 (T@Ref) Int)
(declare-fun QPMask@11 () T@PolymorphicMapType_38832)
(declare-fun ExhaleHeap@8 () T@PolymorphicMapType_38811)
(declare-fun wildcard@14 () Real)
(declare-fun Mask@12 () T@PolymorphicMapType_38832)
(declare-fun wildcard@15 () Real)
(declare-fun Mask@13 () T@PolymorphicMapType_38832)
(declare-fun qpRange17 (T@Ref) Bool)
(declare-fun invRecv17 (T@Ref) Int)
(declare-fun QPMask@12 () T@PolymorphicMapType_38832)
(declare-fun qpRange18 (T@Ref) Bool)
(declare-fun invRecv18 (T@Ref) Int)
(declare-fun QPMask@13 () T@PolymorphicMapType_38832)
(declare-fun neverTriggered15 (Int) Bool)
(declare-fun Mask@11 () T@PolymorphicMapType_38832)
(declare-fun qpRange15 (T@Ref) Bool)
(declare-fun invRecv15 (T@Ref) Int)
(declare-fun qpRange14 (T@Ref) Bool)
(declare-fun invRecv14 (T@Ref) Int)
(declare-fun QPMask@9 () T@PolymorphicMapType_38832)
(declare-fun t2A@0 () T@Seq_45006)
(declare-fun t2B@0 () T@Seq_45006)
(declare-fun wildcard@12 () Real)
(declare-fun Mask@10 () T@PolymorphicMapType_38832)
(declare-fun wildcard@13 () Real)
(declare-fun qpRange13 (T@Ref) Bool)
(declare-fun invRecv13 (T@Ref) Int)
(declare-fun qpRange12 (T@Ref) Bool)
(declare-fun invRecv12 (T@Ref) Int)
(declare-fun QPMask@7 () T@PolymorphicMapType_38832)
(declare-fun t1A@0 () T@Seq_45006)
(declare-fun t1B@0 () T@Seq_45006)
(declare-fun wildcard@10 () Real)
(declare-fun Mask@8 () T@PolymorphicMapType_38832)
(declare-fun wildcard@11 () Real)
(declare-fun qpRange11 (T@Ref) Bool)
(declare-fun invRecv11 (T@Ref) Int)
(declare-fun neverTriggered10 (Int) Bool)
(declare-fun qpRange10 (T@Ref) Bool)
(declare-fun invRecv10 (T@Ref) Int)
(declare-fun QPMask@5 () T@PolymorphicMapType_38832)
(declare-fun wildcard@8 () Real)
(declare-fun Mask@6 () T@PolymorphicMapType_38832)
(declare-fun wildcard@9 () Real)
(declare-fun neverTriggered9 (Int) Bool)
(declare-fun qpRange9 (T@Ref) Bool)
(declare-fun invRecv9 (T@Ref) Int)
(declare-fun neverTriggered8 (Int) Bool)
(declare-fun qpRange8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref) Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_38832)
(declare-fun ExhaleHeap@3 () T@PolymorphicMapType_38811)
(declare-fun wildcard@6 () Real)
(declare-fun Mask@4 () T@PolymorphicMapType_38832)
(declare-fun ExhaleHeap@4 () T@PolymorphicMapType_38811)
(declare-fun wildcard@7 () Real)
(declare-fun neverTriggered7 (Int) Bool)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) Int)
(declare-fun wildcard@4 () Real)
(declare-fun Mask@2 () T@PolymorphicMapType_38832)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_38811)
(declare-fun wildcard@5 () Real)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_38832)
(declare-fun i_14 () Int)
(declare-fun i_4 () Int)
(declare-fun j_12 () Int)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun Mask@1 () T@PolymorphicMapType_38832)
(declare-fun i_3 () Int)
(declare-fun i_18 () Int)
(declare-fun j_14 () Int)
(declare-fun wildcard@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_38832)
(declare-fun wildcard@1 () Real)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id parallel_mergesort)
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
 (=> (= (ControlFlow 0 0) 224) (let ((anon32_correct true))
(let ((anon101_Else_correct  (=> (and (not (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_21)) (= (ControlFlow 0 205) 200)) anon32_correct)))
(let ((anon101_Then_correct  (=> (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_21) (and (=> (= (ControlFlow 0 201) (- 0 204)) (HasDirectPerm_24073_45764 QPMask@16 b_24 array_1)) (=> (HasDirectPerm_24073_45764 QPMask@16 b_24 array_1) (and (=> (= (ControlFlow 0 201) (- 0 203)) (>= i_21 0)) (=> (>= i_21 0) (and (=> (= (ControlFlow 0 201) (- 0 202)) (< i_21 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array_1)))) (=> (< i_21 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array_1))) (=> (= (ControlFlow 0 201) 200) anon32_correct))))))))))
(let ((anon100_Else_correct  (and (=> (= (ControlFlow 0 195) (- 0 199)) (forall ((i_15_1 Int) (i_15_2 Int) ) (!  (=> (and (and (and (and (not (= i_15_1 i_15_2)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_15_1)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_15_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array_1) i_15_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array_1) i_15_2))))
 :qid |stdinbpl.1046:15|
 :skolemid |80|
))) (=> (forall ((i_15_1@@0 Int) (i_15_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_15_1@@0 i_15_2@@0)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_15_1@@0)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_15_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array_1) i_15_1@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array_1) i_15_2@@0))))
 :qid |stdinbpl.1046:15|
 :skolemid |80|
)) (=> (and (and (forall ((i_15_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_15_1@@1) (< NoPerm FullPerm)) (and (qpRange4 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array_1) i_15_1@@1)) (= (invRecv4 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array_1) i_15_1@@1)) i_15_1@@1)))
 :qid |stdinbpl.1052:22|
 :skolemid |81|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array_1) i_15_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_15_1@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_15_1@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array_1) i_15_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv4 o_9)) (< NoPerm FullPerm)) (qpRange4 o_9)) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array_1) (invRecv4 o_9)) o_9))
 :qid |stdinbpl.1056:22|
 :skolemid |82|
 :pattern ( (invRecv4 o_9))
))) (and (forall ((i_15_1@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_15_1@@2) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array_1) i_15_1@@2) null)))
 :qid |stdinbpl.1062:22|
 :skolemid |83|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array_1) i_15_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_15_1@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_15_1@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array_1) i_15_1@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv4 o_9@@0)) (< NoPerm FullPerm)) (qpRange4 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array_1) (invRecv4 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@17) o_9@@0 value_1) (+ (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@16) o_9@@0 value_1) FullPerm)))) (=> (not (and (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv4 o_9@@0)) (< NoPerm FullPerm)) (qpRange4 o_9@@0))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@17) o_9@@0 value_1) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@16) o_9@@0 value_1))))
 :qid |stdinbpl.1068:22|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@17) o_9@@0 value_1))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@16) o_9@@1 f_5) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@17) o_9@@1 f_5)))
 :qid |stdinbpl.1072:29|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@16) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@17) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@16) o_9@@2 f_5@@0) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@17) o_9@@2 f_5@@0)))
 :qid |stdinbpl.1072:29|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@16) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@17) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_44956_3802) ) (!  (=> (not (= f_5@@1 value_1)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@16) o_9@@3 f_5@@1) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@17) o_9@@3 f_5@@1)))
 :qid |stdinbpl.1072:29|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@16) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@17) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@16) o_9@@4 f_5@@2) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@17) o_9@@4 f_5@@2)))
 :qid |stdinbpl.1072:29|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@16) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@17) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@16) o_9@@5 f_5@@3) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@17) o_9@@5 f_5@@3)))
 :qid |stdinbpl.1072:29|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@16) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@17) o_9@@5 f_5@@3))
))) (forall ((o_9@@6 T@Ref) (f_5@@4 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@16) o_9@@6 f_5@@4) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@17) o_9@@6 f_5@@4)))
 :qid |stdinbpl.1072:29|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@16) o_9@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@17) o_9@@6 f_5@@4))
))) (and (state PostHeap@0 QPMask@17) (state PostHeap@0 QPMask@17))) (and (=> (= (ControlFlow 0 195) (- 0 198)) (HasDirectPerm_24073_45764 QPMask@17 a_2 array_1)) (=> (HasDirectPerm_24073_45764 QPMask@17 a_2 array_1) (and (=> (= (ControlFlow 0 195) (- 0 197)) (HasDirectPerm_24073_45764 QPMask@1 a_2 array_1)) (=> (HasDirectPerm_24073_45764 QPMask@1 a_2 array_1) (=> (and (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1)) (state PostHeap@0 QPMask@17)) (and (=> (= (ControlFlow 0 195) (- 0 196)) (HasDirectPerm_24073_45764 QPMask@17 b_24 array_1)) (=> (HasDirectPerm_24073_45764 QPMask@17 b_24 array_1) (=> (= (ControlFlow 0 195) (- 0 194)) (HasDirectPerm_24073_45764 QPMask@1 b_24 array_1)))))))))))))))
(let ((anon98_Else_correct  (=> (and (forall ((i_13_1 Int) (j_7_1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_13_1) (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_7_1) (not (= i_13_1 j_7_1)))) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array_1) i_13_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array_1) j_7_1))))
 :qid |stdinbpl.1026:20|
 :skolemid |79|
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_13_1) (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_7_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_13_1) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_7_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_13_1) (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_7_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_13_1) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_7_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_13_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array_1) j_7_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_13_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array_1) j_7_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_7_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array_1) i_13_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_7_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array_1) i_13_1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array_1) i_13_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array_1) j_7_1))
)) (state PostHeap@0 QPMask@16)) (and (and (=> (= (ControlFlow 0 206) 195) anon100_Else_correct) (=> (= (ControlFlow 0 206) 201) anon101_Then_correct)) (=> (= (ControlFlow 0 206) 205) anon101_Else_correct)))))
(let ((anon28_correct true))
(let ((anon99_Else_correct  (=> (and (not (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_7) (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_4) (not (= i_7 j_4))))) (= (ControlFlow 0 193) 185)) anon28_correct)))
(let ((anon99_Then_correct  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_7) (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_4) (not (= i_7 j_4)))) (and (=> (= (ControlFlow 0 186) (- 0 192)) (HasDirectPerm_24073_45764 QPMask@16 b_24 array_1)) (=> (HasDirectPerm_24073_45764 QPMask@16 b_24 array_1) (and (=> (= (ControlFlow 0 186) (- 0 191)) (>= i_7 0)) (=> (>= i_7 0) (and (=> (= (ControlFlow 0 186) (- 0 190)) (< i_7 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array_1)))) (=> (< i_7 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array_1))) (and (=> (= (ControlFlow 0 186) (- 0 189)) (HasDirectPerm_24073_45764 QPMask@16 b_24 array_1)) (=> (HasDirectPerm_24073_45764 QPMask@16 b_24 array_1) (and (=> (= (ControlFlow 0 186) (- 0 188)) (>= j_4 0)) (=> (>= j_4 0) (and (=> (= (ControlFlow 0 186) (- 0 187)) (< j_4 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array_1)))) (=> (< j_4 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array_1))) (=> (= (ControlFlow 0 186) 185) anon28_correct))))))))))))))))
(let ((anon96_Else_correct  (and (=> (= (ControlFlow 0 207) (- 0 208)) (forall ((i_11_1 Int) (i_11_2 Int) ) (!  (=> (and (and (and (and (not (= i_11_1 i_11_2)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_11_1)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_11_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1) i_11_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1) i_11_2))))
 :qid |stdinbpl.974:15|
 :skolemid |73|
))) (=> (forall ((i_11_1@@0 Int) (i_11_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_11_1@@0 i_11_2@@0)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_11_1@@0)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_11_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1) i_11_1@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1) i_11_2@@0))))
 :qid |stdinbpl.974:15|
 :skolemid |73|
)) (=> (and (and (forall ((i_11_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_11_1@@1) (< NoPerm FullPerm)) (and (qpRange3 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1) i_11_1@@1)) (= (invRecv3 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1) i_11_1@@1)) i_11_1@@1)))
 :qid |stdinbpl.980:22|
 :skolemid |74|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1) i_11_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_11_1@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_11_1@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1) i_11_1@@1))
)) (forall ((o_9@@7 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv3 o_9@@7)) (< NoPerm FullPerm)) (qpRange3 o_9@@7)) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1) (invRecv3 o_9@@7)) o_9@@7))
 :qid |stdinbpl.984:22|
 :skolemid |75|
 :pattern ( (invRecv3 o_9@@7))
))) (and (forall ((i_11_1@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_11_1@@2) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1) i_11_1@@2) null)))
 :qid |stdinbpl.990:22|
 :skolemid |76|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1) i_11_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_11_1@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_11_1@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1) i_11_1@@2))
)) (forall ((o_9@@8 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv3 o_9@@8)) (< NoPerm FullPerm)) (qpRange3 o_9@@8)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1) (invRecv3 o_9@@8)) o_9@@8)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@16) o_9@@8 value_1) (+ (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| PostMask@1) o_9@@8 value_1) FullPerm)))) (=> (not (and (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv3 o_9@@8)) (< NoPerm FullPerm)) (qpRange3 o_9@@8))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@16) o_9@@8 value_1) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| PostMask@1) o_9@@8 value_1))))
 :qid |stdinbpl.996:22|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@16) o_9@@8 value_1))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| PostMask@1) o_9@@9 f_5@@5) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@16) o_9@@9 f_5@@5)))
 :qid |stdinbpl.1000:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| PostMask@1) o_9@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@16) o_9@@9 f_5@@5))
)) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| PostMask@1) o_9@@10 f_5@@6) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@16) o_9@@10 f_5@@6)))
 :qid |stdinbpl.1000:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| PostMask@1) o_9@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@16) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_44956_3802) ) (!  (=> (not (= f_5@@7 value_1)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| PostMask@1) o_9@@11 f_5@@7) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@16) o_9@@11 f_5@@7)))
 :qid |stdinbpl.1000:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| PostMask@1) o_9@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@16) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| PostMask@1) o_9@@12 f_5@@8) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@16) o_9@@12 f_5@@8)))
 :qid |stdinbpl.1000:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| PostMask@1) o_9@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@16) o_9@@12 f_5@@8))
))) (forall ((o_9@@13 T@Ref) (f_5@@9 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| PostMask@1) o_9@@13 f_5@@9) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@16) o_9@@13 f_5@@9)))
 :qid |stdinbpl.1000:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| PostMask@1) o_9@@13 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@16) o_9@@13 f_5@@9))
))) (forall ((o_9@@14 T@Ref) (f_5@@10 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| PostMask@1) o_9@@14 f_5@@10) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@16) o_9@@14 f_5@@10)))
 :qid |stdinbpl.1000:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| PostMask@1) o_9@@14 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@16) o_9@@14 f_5@@10))
))) (and (state PostHeap@0 QPMask@16) (state PostHeap@0 QPMask@16))) (and (and (=> (= (ControlFlow 0 207) 206) anon98_Else_correct) (=> (= (ControlFlow 0 207) 186) anon99_Then_correct)) (=> (= (ControlFlow 0 207) 193) anon99_Else_correct))))))))
(let ((anon24_correct true))
(let ((anon97_Else_correct  (=> (and (not (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_15)) (= (ControlFlow 0 184) 179)) anon24_correct)))
(let ((anon97_Then_correct  (=> (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_15) (and (=> (= (ControlFlow 0 180) (- 0 183)) (HasDirectPerm_24073_45764 PostMask@1 a_2 array_1)) (=> (HasDirectPerm_24073_45764 PostMask@1 a_2 array_1) (and (=> (= (ControlFlow 0 180) (- 0 182)) (>= i_15 0)) (=> (>= i_15 0) (and (=> (= (ControlFlow 0 180) (- 0 181)) (< i_15 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1)))) (=> (< i_15 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1))) (=> (= (ControlFlow 0 180) 179) anon24_correct))))))))))
(let ((anon94_Else_correct  (=> (and (forall ((i_9_1 Int) (j_5 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_9_1) (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_5) (not (= i_9_1 j_5)))) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1) i_9_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1) j_5))))
 :qid |stdinbpl.954:20|
 :skolemid |72|
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_9_1) (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_5))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_9_1) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_5))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_9_1) (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_5))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_9_1) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_5))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_9_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1) j_5))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_9_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1) j_5))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_5) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1) i_9_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_5) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1) i_9_1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1) i_9_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1) j_5))
)) (state PostHeap@0 PostMask@1)) (and (and (=> (= (ControlFlow 0 209) 207) anon96_Else_correct) (=> (= (ControlFlow 0 209) 180) anon97_Then_correct)) (=> (= (ControlFlow 0 209) 184) anon97_Else_correct)))))
(let ((anon20_correct true))
(let ((anon95_Else_correct  (=> (and (not (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_5) (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_2) (not (= i_5 j_2))))) (= (ControlFlow 0 178) 170)) anon20_correct)))
(let ((anon95_Then_correct  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_5) (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_2) (not (= i_5 j_2)))) (and (=> (= (ControlFlow 0 171) (- 0 177)) (HasDirectPerm_24073_45764 PostMask@1 a_2 array_1)) (=> (HasDirectPerm_24073_45764 PostMask@1 a_2 array_1) (and (=> (= (ControlFlow 0 171) (- 0 176)) (>= i_5 0)) (=> (>= i_5 0) (and (=> (= (ControlFlow 0 171) (- 0 175)) (< i_5 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1)))) (=> (< i_5 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1))) (and (=> (= (ControlFlow 0 171) (- 0 174)) (HasDirectPerm_24073_45764 PostMask@1 a_2 array_1)) (=> (HasDirectPerm_24073_45764 PostMask@1 a_2 array_1) (and (=> (= (ControlFlow 0 171) (- 0 173)) (>= j_2 0)) (=> (>= j_2 0) (and (=> (= (ControlFlow 0 171) (- 0 172)) (< j_2 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1)))) (=> (< j_2 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1))) (=> (= (ControlFlow 0 171) 170) anon20_correct))))))))))))))))
(let ((anon93_Then_correct  (=> (and (and (state PostHeap@0 ZeroMask) (> wildcard@2 NoPerm)) (and (not (= a_2 null)) (= PostMask@0 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| ZeroMask) a_2 array_1 (+ (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| ZeroMask) a_2 array_1) wildcard@2)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| ZeroMask) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| ZeroMask) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| ZeroMask) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| ZeroMask) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| ZeroMask))))) (=> (and (and (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0)) (and (> wildcard@3 NoPerm) (not (= b_24 null)))) (and (and (= PostMask@1 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| PostMask@0) b_24 array_1 (+ (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| PostMask@0) b_24 array_1) wildcard@3)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| PostMask@0) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| PostMask@0) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| PostMask@0) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| PostMask@0) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| PostMask@0))) (state PostHeap@0 PostMask@1)) (and (state PostHeap@0 PostMask@1) (>= start_1 0)))) (and (=> (= (ControlFlow 0 210) (- 0 213)) (HasDirectPerm_24073_45764 PostMask@1 a_2 array_1)) (=> (HasDirectPerm_24073_45764 PostMask@1 a_2 array_1) (=> (<= end_1 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1))) (and (=> (= (ControlFlow 0 210) (- 0 212)) (HasDirectPerm_24073_45764 PostMask@1 a_2 array_1)) (=> (HasDirectPerm_24073_45764 PostMask@1 a_2 array_1) (and (=> (= (ControlFlow 0 210) (- 0 211)) (HasDirectPerm_24073_45764 PostMask@1 b_24 array_1)) (=> (HasDirectPerm_24073_45764 PostMask@1 b_24 array_1) (=> (and (= (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array_1)) (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array_1))) (state PostHeap@0 PostMask@1)) (and (and (=> (= (ControlFlow 0 210) 209) anon94_Else_correct) (=> (= (ControlFlow 0 210) 171) anon95_Then_correct)) (=> (= (ControlFlow 0 210) 178) anon95_Else_correct))))))))))))))
(let ((anon74_correct true))
(let ((anon122_Else_correct  (=> (and (not (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_40) (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_14_2) (not (= i_40 j_14_2))))) (= (ControlFlow 0 114) 111)) anon74_correct)))
(let ((anon122_Then_correct  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_40) (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_14_2) (not (= i_40 j_14_2)))) (and (=> (= (ControlFlow 0 112) (- 0 113)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) i_40) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) j_14_2)))) (=> (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) i_40) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) j_14_2))) (=> (= (ControlFlow 0 112) 111) anon74_correct))))))
(let ((anon70_correct true))
(let ((anon120_Else_correct  (=> (and (not (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_38) (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_12_2) (not (= i_38 j_12_2))))) (= (ControlFlow 0 105) 102)) anon70_correct)))
(let ((anon120_Then_correct  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_38) (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_12_2) (not (= i_38 j_12_2)))) (and (=> (= (ControlFlow 0 103) (- 0 104)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) i_38) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) j_12_2)))) (=> (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) i_38) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) j_12_2))) (=> (= (ControlFlow 0 103) 102) anon70_correct))))))
(let ((anon66_correct true))
(let ((anon118_Else_correct  (=> (and (not (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_13)) (= (ControlFlow 0 101) 96)) anon66_correct)))
(let ((anon118_Then_correct  (=> (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_13) (and (=> (= (ControlFlow 0 97) (- 0 100)) (HasDirectPerm_24073_45764 QPMask@8 b_24 array_1)) (=> (HasDirectPerm_24073_45764 QPMask@8 b_24 array_1) (and (=> (= (ControlFlow 0 97) (- 0 99)) (>= i_13 0)) (=> (>= i_13 0) (and (=> (= (ControlFlow 0 97) (- 0 98)) (< i_13 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1)))) (=> (< i_13 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1))) (=> (= (ControlFlow 0 97) 96) anon66_correct))))))))))
(let ((anon62_correct true))
(let ((anon116_Else_correct  (=> (and (not (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_12)) (= (ControlFlow 0 95) 90)) anon62_correct)))
(let ((anon116_Then_correct  (=> (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_12) (and (=> (= (ControlFlow 0 91) (- 0 94)) (HasDirectPerm_24073_45764 Mask@9 a_2 array_1)) (=> (HasDirectPerm_24073_45764 Mask@9 a_2 array_1) (and (=> (= (ControlFlow 0 91) (- 0 93)) (>= i_12 0)) (=> (>= i_12 0) (and (=> (= (ControlFlow 0 91) (- 0 92)) (< i_12 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1)))) (=> (< i_12 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1))) (=> (= (ControlFlow 0 91) 90) anon62_correct))))))))))
(let ((anon58_correct true))
(let ((anon114_Else_correct  (=> (and (not (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_11)) (= (ControlFlow 0 89) 84)) anon58_correct)))
(let ((anon114_Then_correct  (=> (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_11) (and (=> (= (ControlFlow 0 85) (- 0 88)) (HasDirectPerm_24073_45764 QPMask@6 b_24 array_1)) (=> (HasDirectPerm_24073_45764 QPMask@6 b_24 array_1) (and (=> (= (ControlFlow 0 85) (- 0 87)) (>= i_11 0)) (=> (>= i_11 0) (and (=> (= (ControlFlow 0 85) (- 0 86)) (< i_11 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1)))) (=> (< i_11 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1))) (=> (= (ControlFlow 0 85) 84) anon58_correct))))))))))
(let ((anon54_correct true))
(let ((anon112_Else_correct  (=> (and (not (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_17)) (= (ControlFlow 0 83) 78)) anon54_correct)))
(let ((anon112_Then_correct  (=> (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_17) (and (=> (= (ControlFlow 0 79) (- 0 82)) (HasDirectPerm_24073_45764 Mask@7 a_2 array_1)) (=> (HasDirectPerm_24073_45764 Mask@7 a_2 array_1) (and (=> (= (ControlFlow 0 79) (- 0 81)) (>= i_17 0)) (=> (>= i_17 0) (and (=> (= (ControlFlow 0 79) (- 0 80)) (< i_17 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1)))) (=> (< i_17 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1))) (=> (= (ControlFlow 0 79) 78) anon54_correct))))))))))
(let ((anon50_correct true))
(let ((anon110_Else_correct  (=> (and (not (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_10)) (= (ControlFlow 0 77) 72)) anon50_correct)))
(let ((anon110_Then_correct  (=> (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_10) (and (=> (= (ControlFlow 0 73) (- 0 76)) (HasDirectPerm_24073_45764 QPMask@4 b_24 array_1)) (=> (HasDirectPerm_24073_45764 QPMask@4 b_24 array_1) (and (=> (= (ControlFlow 0 73) (- 0 75)) (>= i_10 0)) (=> (>= i_10 0) (and (=> (= (ControlFlow 0 73) (- 0 74)) (< i_10 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@6) b_24 array_1)))) (=> (< i_10 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@6) b_24 array_1))) (=> (= (ControlFlow 0 73) 72) anon50_correct))))))))))
(let ((anon46_correct true))
(let ((anon108_Else_correct  (=> (and (not (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_9)) (= (ControlFlow 0 71) 66)) anon46_correct)))
(let ((anon108_Then_correct  (=> (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_9) (and (=> (= (ControlFlow 0 67) (- 0 70)) (HasDirectPerm_24073_45764 Mask@5 a_2 array_1)) (=> (HasDirectPerm_24073_45764 Mask@5 a_2 array_1) (and (=> (= (ControlFlow 0 67) (- 0 69)) (>= i_9 0)) (=> (>= i_9 0) (and (=> (= (ControlFlow 0 67) (- 0 68)) (< i_9 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@5) a_2 array_1)))) (=> (< i_9 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@5) a_2 array_1))) (=> (= (ControlFlow 0 67) 66) anon46_correct))))))))))
(let ((anon42_correct true))
(let ((anon106_Else_correct  (=> (and (not (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_19)) (= (ControlFlow 0 65) 60)) anon42_correct)))
(let ((anon106_Then_correct  (=> (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_19) (and (=> (= (ControlFlow 0 61) (- 0 64)) (HasDirectPerm_24073_45764 QPMask@2 b_24 array_1)) (=> (HasDirectPerm_24073_45764 QPMask@2 b_24 array_1) (and (=> (= (ControlFlow 0 61) (- 0 63)) (>= i_19 0)) (=> (>= i_19 0) (and (=> (= (ControlFlow 0 61) (- 0 62)) (< i_19 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@2) b_24 array_1)))) (=> (< i_19 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@2) b_24 array_1))) (=> (= (ControlFlow 0 61) 60) anon42_correct))))))))))
(let ((anon38_correct true))
(let ((anon104_Else_correct  (=> (and (not (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_8)) (= (ControlFlow 0 59) 54)) anon38_correct)))
(let ((anon104_Then_correct  (=> (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_8) (and (=> (= (ControlFlow 0 55) (- 0 58)) (HasDirectPerm_24073_45764 Mask@3 a_2 array_1)) (=> (HasDirectPerm_24073_45764 Mask@3 a_2 array_1) (and (=> (= (ControlFlow 0 55) (- 0 57)) (>= i_8 0)) (=> (>= i_8 0) (and (=> (= (ControlFlow 0 55) (- 0 56)) (< i_8 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@1) a_2 array_1)))) (=> (< i_8 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@1) a_2 array_1))) (=> (= (ControlFlow 0 55) 54) anon38_correct))))))))))
(let ((anon83_correct true))
(let ((anon126_Else_correct  (=> (and (not (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_19_1) (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_10_2) (not (= i_19_1 j_10_2))))) (= (ControlFlow 0 43) 40)) anon83_correct)))
(let ((anon126_Then_correct  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_19_1) (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_10_2) (not (= i_19_1 j_10_2)))) (and (=> (= (ControlFlow 0 41) (- 0 42)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1) i_19_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1) j_10_2)))) (=> (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1) i_19_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1) j_10_2))) (=> (= (ControlFlow 0 41) 40) anon83_correct))))))
(let ((anon125_Else_correct  (=> (forall ((i_20_1 Int) (j_11_1_1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_20_1) (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_11_1_1) (not (= i_20_1 j_11_1_1)))) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1) i_20_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1) j_11_1_1))))
 :qid |stdinbpl.2096:20|
 :skolemid |169|
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_20_1) (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_11_1_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_20_1) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_11_1_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_20_1) (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_11_1_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_20_1) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_11_1_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_20_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1) j_11_1_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_20_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1) j_11_1_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_11_1_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1) i_20_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_11_1_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1) i_20_1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1) i_20_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1) j_11_1_1))
)) (and (=> (= (ControlFlow 0 36) (- 0 39)) (forall ((i_21_1 Int) (i_21_2 Int) ) (!  (=> (and (and (and (and (not (= i_21_1 i_21_2)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_21_1)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_21_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1) i_21_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1) i_21_2))))
 :qid |stdinbpl.2107:17|
 :skolemid |170|
 :pattern ( (neverTriggered6 i_21_1) (neverTriggered6 i_21_2))
))) (=> (forall ((i_21_1@@0 Int) (i_21_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_21_1@@0 i_21_2@@0)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_21_1@@0)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_21_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1) i_21_1@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1) i_21_2@@0))))
 :qid |stdinbpl.2107:17|
 :skolemid |170|
 :pattern ( (neverTriggered6 i_21_1@@0) (neverTriggered6 i_21_2@@0))
)) (and (=> (= (ControlFlow 0 36) (- 0 38)) (forall ((i_21_1@@1 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_21_1@@1) (>= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@14) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1) i_21_1@@1) value_1) FullPerm))
 :qid |stdinbpl.2114:17|
 :skolemid |171|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1) i_21_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_21_1@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_21_1@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1) i_21_1@@1))
))) (=> (forall ((i_21_1@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_21_1@@2) (>= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@14) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1) i_21_1@@2) value_1) FullPerm))
 :qid |stdinbpl.2114:17|
 :skolemid |171|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1) i_21_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_21_1@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_21_1@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1) i_21_1@@2))
)) (=> (forall ((i_21_1@@3 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_21_1@@3) (< NoPerm FullPerm)) (and (qpRange6 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1) i_21_1@@3)) (= (invRecv6 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1) i_21_1@@3)) i_21_1@@3)))
 :qid |stdinbpl.2120:22|
 :skolemid |172|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1) i_21_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_21_1@@3))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_21_1@@3))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1) i_21_1@@3))
)) (=> (and (forall ((o_9@@15 T@Ref) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv6 o_9@@15)) (and (< NoPerm FullPerm) (qpRange6 o_9@@15))) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1) (invRecv6 o_9@@15)) o_9@@15))
 :qid |stdinbpl.2124:22|
 :skolemid |173|
 :pattern ( (invRecv6 o_9@@15))
)) (forall ((o_9@@16 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv6 o_9@@16)) (and (< NoPerm FullPerm) (qpRange6 o_9@@16))) (and (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1) (invRecv6 o_9@@16)) o_9@@16) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@15) o_9@@16 value_1) (- (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@14) o_9@@16 value_1) FullPerm)))) (=> (not (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv6 o_9@@16)) (and (< NoPerm FullPerm) (qpRange6 o_9@@16)))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@15) o_9@@16 value_1) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@14) o_9@@16 value_1))))
 :qid |stdinbpl.2130:22|
 :skolemid |174|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@15) o_9@@16 value_1))
))) (=> (and (and (and (and (and (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@14) o_9@@17 f_5@@11) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@15) o_9@@17 f_5@@11)))
 :qid |stdinbpl.2136:29|
 :skolemid |175|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@15) o_9@@17 f_5@@11))
)) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@14) o_9@@18 f_5@@12) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@15) o_9@@18 f_5@@12)))
 :qid |stdinbpl.2136:29|
 :skolemid |175|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@15) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_44956_3802) ) (!  (=> (not (= f_5@@13 value_1)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@14) o_9@@19 f_5@@13) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@15) o_9@@19 f_5@@13)))
 :qid |stdinbpl.2136:29|
 :skolemid |175|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@15) o_9@@19 f_5@@13))
))) (forall ((o_9@@20 T@Ref) (f_5@@14 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@14) o_9@@20 f_5@@14) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@15) o_9@@20 f_5@@14)))
 :qid |stdinbpl.2136:29|
 :skolemid |175|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@15) o_9@@20 f_5@@14))
))) (forall ((o_9@@21 T@Ref) (f_5@@15 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@14) o_9@@21 f_5@@15) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@15) o_9@@21 f_5@@15)))
 :qid |stdinbpl.2136:29|
 :skolemid |175|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@15) o_9@@21 f_5@@15))
))) (forall ((o_9@@22 T@Ref) (f_5@@16 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@14) o_9@@22 f_5@@16) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@15) o_9@@22 f_5@@16)))
 :qid |stdinbpl.2136:29|
 :skolemid |175|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@15) o_9@@22 f_5@@16))
))) (and (=> (= (ControlFlow 0 36) (- 0 37)) (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1))) (=> (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1)) (=> (= (ControlFlow 0 36) (- 0 35)) (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1)))))))))))))))
(let ((anon123_Else_correct  (=> (forall ((i_17_1_1 Int) (j_9_1_1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_17_1_1) (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_9_1_1) (not (= i_17_1_1 j_9_1_1)))) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) i_17_1_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) j_9_1_1))))
 :qid |stdinbpl.2044:20|
 :skolemid |162|
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_17_1_1) (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_9_1_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_17_1_1) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_9_1_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_17_1_1) (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_9_1_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_17_1_1) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_9_1_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_17_1_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) j_9_1_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_17_1_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) j_9_1_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_9_1_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) i_17_1_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_9_1_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) i_17_1_1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) i_17_1_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) j_9_1_1))
)) (and (=> (= (ControlFlow 0 44) (- 0 46)) (forall ((i_18_1 Int) (i_18_2 Int) ) (!  (=> (and (and (and (and (not (= i_18_1 i_18_2)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_18_1)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_18_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) i_18_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) i_18_2))))
 :qid |stdinbpl.2055:17|
 :skolemid |163|
 :pattern ( (neverTriggered5 i_18_1) (neverTriggered5 i_18_2))
))) (=> (forall ((i_18_1@@0 Int) (i_18_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_18_1@@0 i_18_2@@0)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_18_1@@0)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_18_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) i_18_1@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) i_18_2@@0))))
 :qid |stdinbpl.2055:17|
 :skolemid |163|
 :pattern ( (neverTriggered5 i_18_1@@0) (neverTriggered5 i_18_2@@0))
)) (and (=> (= (ControlFlow 0 44) (- 0 45)) (forall ((i_18_1@@1 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_18_1@@1) (>= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@16) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) i_18_1@@1) value_1) FullPerm))
 :qid |stdinbpl.2062:17|
 :skolemid |164|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) i_18_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_18_1@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_18_1@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) i_18_1@@1))
))) (=> (forall ((i_18_1@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_18_1@@2) (>= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@16) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) i_18_1@@2) value_1) FullPerm))
 :qid |stdinbpl.2062:17|
 :skolemid |164|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) i_18_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_18_1@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_18_1@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) i_18_1@@2))
)) (=> (forall ((i_18_1@@3 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_18_1@@3) (< NoPerm FullPerm)) (and (qpRange5 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) i_18_1@@3)) (= (invRecv5 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) i_18_1@@3)) i_18_1@@3)))
 :qid |stdinbpl.2068:22|
 :skolemid |165|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) i_18_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_18_1@@3))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_18_1@@3))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) i_18_1@@3))
)) (=> (and (forall ((o_9@@23 T@Ref) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv5 o_9@@23)) (and (< NoPerm FullPerm) (qpRange5 o_9@@23))) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) (invRecv5 o_9@@23)) o_9@@23))
 :qid |stdinbpl.2072:22|
 :skolemid |166|
 :pattern ( (invRecv5 o_9@@23))
)) (forall ((o_9@@24 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv5 o_9@@24)) (and (< NoPerm FullPerm) (qpRange5 o_9@@24))) (and (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) (invRecv5 o_9@@24)) o_9@@24) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@14) o_9@@24 value_1) (- (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@16) o_9@@24 value_1) FullPerm)))) (=> (not (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv5 o_9@@24)) (and (< NoPerm FullPerm) (qpRange5 o_9@@24)))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@14) o_9@@24 value_1) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@16) o_9@@24 value_1))))
 :qid |stdinbpl.2078:22|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@14) o_9@@24 value_1))
))) (=> (and (and (and (and (and (forall ((o_9@@25 T@Ref) (f_5@@17 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@16) o_9@@25 f_5@@17) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@14) o_9@@25 f_5@@17)))
 :qid |stdinbpl.2084:29|
 :skolemid |168|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@14) o_9@@25 f_5@@17))
)) (forall ((o_9@@26 T@Ref) (f_5@@18 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@16) o_9@@26 f_5@@18) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@14) o_9@@26 f_5@@18)))
 :qid |stdinbpl.2084:29|
 :skolemid |168|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@14) o_9@@26 f_5@@18))
))) (forall ((o_9@@27 T@Ref) (f_5@@19 T@Field_44956_3802) ) (!  (=> (not (= f_5@@19 value_1)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@16) o_9@@27 f_5@@19) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@14) o_9@@27 f_5@@19)))
 :qid |stdinbpl.2084:29|
 :skolemid |168|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@14) o_9@@27 f_5@@19))
))) (forall ((o_9@@28 T@Ref) (f_5@@20 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@16) o_9@@28 f_5@@20) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@14) o_9@@28 f_5@@20)))
 :qid |stdinbpl.2084:29|
 :skolemid |168|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@14) o_9@@28 f_5@@20))
))) (forall ((o_9@@29 T@Ref) (f_5@@21 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@16) o_9@@29 f_5@@21) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@14) o_9@@29 f_5@@21)))
 :qid |stdinbpl.2084:29|
 :skolemid |168|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@14) o_9@@29 f_5@@21))
))) (forall ((o_9@@30 T@Ref) (f_5@@22 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@16) o_9@@30 f_5@@22) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@14) o_9@@30 f_5@@22)))
 :qid |stdinbpl.2084:29|
 :skolemid |168|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@14) o_9@@30 f_5@@22))
))) (and (and (=> (= (ControlFlow 0 44) 36) anon125_Else_correct) (=> (= (ControlFlow 0 44) 41) anon126_Then_correct)) (=> (= (ControlFlow 0 44) 43) anon126_Else_correct))))))))))))
(let ((anon79_correct true))
(let ((anon124_Else_correct  (=> (and (not (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_16_1) (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_8_2) (not (= i_16_1 j_8_2))))) (= (ControlFlow 0 34) 31)) anon79_correct)))
(let ((anon124_Then_correct  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_16_1) (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_8_2) (not (= i_16_1 j_8_2)))) (and (=> (= (ControlFlow 0 32) (- 0 33)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) i_16_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) j_8_2)))) (=> (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) i_16_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1) j_8_2))) (=> (= (ControlFlow 0 32) 31) anon79_correct))))))
(let ((anon76_correct  (=> (state Heap@0 Mask@14) (and (=> (= (ControlFlow 0 47) (- 0 52)) (> (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@14) a_2 array_1) NoPerm)) (=> (> (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@14) a_2 array_1) NoPerm) (=> (> wildcard@16 NoPerm) (=> (and (< wildcard@16 (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@14) a_2 array_1)) (= Mask@15 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@14) a_2 array_1 (- (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@14) a_2 array_1) wildcard@16)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@14) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@14) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@14) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@14) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@14)))) (and (=> (= (ControlFlow 0 47) (- 0 51)) (> (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@15) b_24 array_1) NoPerm)) (=> (> (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@15) b_24 array_1) NoPerm) (=> (> wildcard@17 NoPerm) (=> (and (< wildcard@17 (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@15) b_24 array_1)) (= Mask@16 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@15) b_24 array_1 (- (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@15) b_24 array_1) wildcard@17)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@15) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@15) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@15) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@15) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@15)))) (and (=> (= (ControlFlow 0 47) (- 0 50)) (>= start_1 0)) (=> (>= start_1 0) (and (=> (= (ControlFlow 0 47) (- 0 49)) (<= end_1 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1)))) (=> (<= end_1 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1))) (and (=> (= (ControlFlow 0 47) (- 0 48)) (= (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1)) (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1)))) (=> (= (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) a_2 array_1)) (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@0) b_24 array_1))) (and (and (=> (= (ControlFlow 0 47) 44) anon123_Else_correct) (=> (= (ControlFlow 0 47) 32) anon124_Then_correct)) (=> (= (ControlFlow 0 47) 34) anon124_Else_correct)))))))))))))))))))
(let ((anon121_Else_correct  (=> (forall ((i_41_1 Int) (j_15_1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_41_1) (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_15_1) (not (= i_41_1 j_15_1)))) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) i_41_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) j_15_1))))
 :qid |stdinbpl.1874:26|
 :skolemid |141|
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_41_1) (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_15_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_41_1) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_15_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_41_1) (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_15_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_41_1) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_15_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_41_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) j_15_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_41_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) j_15_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_15_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) i_41_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_15_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) i_41_1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) i_41_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) j_15_1))
)) (and (=> (= (ControlFlow 0 106) (- 0 110)) (forall ((l_1 Int) (l_11 Int) ) (!  (=> (and (and (and (and (not (= l_1 l_11)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) l_1)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) l_11)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) l_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) l_11))))
 :qid |stdinbpl.1885:23|
 :skolemid |142|
 :pattern ( (neverTriggered16 l_1) (neverTriggered16 l_11))
))) (=> (forall ((l_1@@0 Int) (l_11@@0 Int) ) (!  (=> (and (and (and (and (not (= l_1@@0 l_11@@0)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) l_1@@0)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) l_11@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) l_1@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) l_11@@0))))
 :qid |stdinbpl.1885:23|
 :skolemid |142|
 :pattern ( (neverTriggered16 l_1@@0) (neverTriggered16 l_11@@0))
)) (and (=> (= (ControlFlow 0 106) (- 0 109)) (forall ((l_1@@1 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) l_1@@1) (>= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@10) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) l_1@@1) value_1) FullPerm))
 :qid |stdinbpl.1892:23|
 :skolemid |143|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) l_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) l_1@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) l_1@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) l_1@@1))
))) (=> (forall ((l_1@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) l_1@@2) (>= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@10) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) l_1@@2) value_1) FullPerm))
 :qid |stdinbpl.1892:23|
 :skolemid |143|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) l_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) l_1@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) l_1@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) l_1@@2))
)) (=> (forall ((l_1@@3 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) l_1@@3) (< NoPerm FullPerm)) (and (qpRange16 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) l_1@@3)) (= (invRecv16 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) l_1@@3)) l_1@@3)))
 :qid |stdinbpl.1898:28|
 :skolemid |144|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) l_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) l_1@@3))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) l_1@@3))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) l_1@@3))
)) (=> (and (forall ((o_9@@31 T@Ref) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv16 o_9@@31)) (and (< NoPerm FullPerm) (qpRange16 o_9@@31))) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) (invRecv16 o_9@@31)) o_9@@31))
 :qid |stdinbpl.1902:28|
 :skolemid |145|
 :pattern ( (invRecv16 o_9@@31))
)) (forall ((o_9@@32 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv16 o_9@@32)) (and (< NoPerm FullPerm) (qpRange16 o_9@@32))) (and (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) (invRecv16 o_9@@32)) o_9@@32) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@11) o_9@@32 value_1) (- (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@10) o_9@@32 value_1) FullPerm)))) (=> (not (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv16 o_9@@32)) (and (< NoPerm FullPerm) (qpRange16 o_9@@32)))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@11) o_9@@32 value_1) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@10) o_9@@32 value_1))))
 :qid |stdinbpl.1908:28|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@11) o_9@@32 value_1))
))) (=> (and (and (and (and (and (and (and (forall ((o_9@@33 T@Ref) (f_5@@23 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@10) o_9@@33 f_5@@23) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@11) o_9@@33 f_5@@23)))
 :qid |stdinbpl.1914:35|
 :skolemid |147|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@11) o_9@@33 f_5@@23))
)) (forall ((o_9@@34 T@Ref) (f_5@@24 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@10) o_9@@34 f_5@@24) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@11) o_9@@34 f_5@@24)))
 :qid |stdinbpl.1914:35|
 :skolemid |147|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@11) o_9@@34 f_5@@24))
))) (forall ((o_9@@35 T@Ref) (f_5@@25 T@Field_44956_3802) ) (!  (=> (not (= f_5@@25 value_1)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@10) o_9@@35 f_5@@25) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@11) o_9@@35 f_5@@25)))
 :qid |stdinbpl.1914:35|
 :skolemid |147|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@11) o_9@@35 f_5@@25))
))) (forall ((o_9@@36 T@Ref) (f_5@@26 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@10) o_9@@36 f_5@@26) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@11) o_9@@36 f_5@@26)))
 :qid |stdinbpl.1914:35|
 :skolemid |147|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@11) o_9@@36 f_5@@26))
))) (forall ((o_9@@37 T@Ref) (f_5@@27 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@10) o_9@@37 f_5@@27) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@11) o_9@@37 f_5@@27)))
 :qid |stdinbpl.1914:35|
 :skolemid |147|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@11) o_9@@37 f_5@@27))
))) (forall ((o_9@@38 T@Ref) (f_5@@28 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@10) o_9@@38 f_5@@28) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@11) o_9@@38 f_5@@28)))
 :qid |stdinbpl.1914:35|
 :skolemid |147|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@11) o_9@@38 f_5@@28))
))) (and (and (IdenticalOnKnownLocations ExhaleHeap@7 ExhaleHeap@8 QPMask@11) (> wildcard@14 NoPerm)) (and (not (= a_2 null)) (= Mask@12 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@11) a_2 array_1 (+ (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@11) a_2 array_1) wildcard@14)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@11) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@11) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@11) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@11) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@11)))))) (and (and (and (state ExhaleHeap@8 Mask@12) (> wildcard@15 NoPerm)) (and (not (= b_24 null)) (= Mask@13 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@12) b_24 array_1 (+ (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@12) b_24 array_1) wildcard@15)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@12) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@12) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@12) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@12) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@12))))) (and (and (state ExhaleHeap@8 Mask@13) (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) a_2 array_1) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1))) (and (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) b_24 array_1) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1)) (forall ((i_42_1 Int) (j_16_1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_42_1) (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_16_1) (not (= i_42_1 j_16_1)))) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) a_2 array_1) i_42_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) a_2 array_1) j_16_1))))
 :qid |stdinbpl.1937:26|
 :skolemid |148|
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_42_1) (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_16_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_42_1) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_16_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_42_1) (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_16_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_42_1) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_16_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_42_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) a_2 array_1) j_16_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_42_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) a_2 array_1) j_16_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_16_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) a_2 array_1) i_42_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_16_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) a_2 array_1) i_42_1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) a_2 array_1) i_42_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) a_2 array_1) j_16_1))
)))))) (and (=> (= (ControlFlow 0 106) (- 0 108)) (forall ((i_43 Int) (i_43_1 Int) ) (!  (=> (and (and (and (and (not (= i_43 i_43_1)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_43)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_43_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) a_2 array_1) i_43) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) a_2 array_1) i_43_1))))
 :qid |stdinbpl.1943:21|
 :skolemid |149|
))) (=> (forall ((i_43@@0 Int) (i_43_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_43@@0 i_43_1@@0)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_43@@0)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_43_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) a_2 array_1) i_43@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) a_2 array_1) i_43_1@@0))))
 :qid |stdinbpl.1943:21|
 :skolemid |149|
)) (=> (and (and (forall ((i_43@@1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_43@@1) (< NoPerm FullPerm)) (and (qpRange17 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) a_2 array_1) i_43@@1)) (= (invRecv17 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) a_2 array_1) i_43@@1)) i_43@@1)))
 :qid |stdinbpl.1949:28|
 :skolemid |150|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) a_2 array_1) i_43@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_43@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_43@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) a_2 array_1) i_43@@1))
)) (forall ((o_9@@39 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv17 o_9@@39)) (< NoPerm FullPerm)) (qpRange17 o_9@@39)) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) a_2 array_1) (invRecv17 o_9@@39)) o_9@@39))
 :qid |stdinbpl.1953:28|
 :skolemid |151|
 :pattern ( (invRecv17 o_9@@39))
))) (and (forall ((i_43@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_43@@2) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) a_2 array_1) i_43@@2) null)))
 :qid |stdinbpl.1959:28|
 :skolemid |152|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) a_2 array_1) i_43@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_43@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_43@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) a_2 array_1) i_43@@2))
)) (forall ((o_9@@40 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv17 o_9@@40)) (< NoPerm FullPerm)) (qpRange17 o_9@@40)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) a_2 array_1) (invRecv17 o_9@@40)) o_9@@40)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@12) o_9@@40 value_1) (+ (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@13) o_9@@40 value_1) FullPerm)))) (=> (not (and (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv17 o_9@@40)) (< NoPerm FullPerm)) (qpRange17 o_9@@40))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@12) o_9@@40 value_1) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@13) o_9@@40 value_1))))
 :qid |stdinbpl.1965:28|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@12) o_9@@40 value_1))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@41 T@Ref) (f_5@@29 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@13) o_9@@41 f_5@@29) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@12) o_9@@41 f_5@@29)))
 :qid |stdinbpl.1969:35|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@13) o_9@@41 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@12) o_9@@41 f_5@@29))
)) (forall ((o_9@@42 T@Ref) (f_5@@30 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@13) o_9@@42 f_5@@30) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@12) o_9@@42 f_5@@30)))
 :qid |stdinbpl.1969:35|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@13) o_9@@42 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@12) o_9@@42 f_5@@30))
))) (forall ((o_9@@43 T@Ref) (f_5@@31 T@Field_44956_3802) ) (!  (=> (not (= f_5@@31 value_1)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@13) o_9@@43 f_5@@31) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@12) o_9@@43 f_5@@31)))
 :qid |stdinbpl.1969:35|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@13) o_9@@43 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@12) o_9@@43 f_5@@31))
))) (forall ((o_9@@44 T@Ref) (f_5@@32 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@13) o_9@@44 f_5@@32) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@12) o_9@@44 f_5@@32)))
 :qid |stdinbpl.1969:35|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@13) o_9@@44 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@12) o_9@@44 f_5@@32))
))) (forall ((o_9@@45 T@Ref) (f_5@@33 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@13) o_9@@45 f_5@@33) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@12) o_9@@45 f_5@@33)))
 :qid |stdinbpl.1969:35|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@13) o_9@@45 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@12) o_9@@45 f_5@@33))
))) (forall ((o_9@@46 T@Ref) (f_5@@34 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@13) o_9@@46 f_5@@34) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@12) o_9@@46 f_5@@34)))
 :qid |stdinbpl.1969:35|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@13) o_9@@46 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@12) o_9@@46 f_5@@34))
))) (and (state ExhaleHeap@8 QPMask@12) (forall ((i_44 Int) (j_17_2 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_44) (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_17_2) (not (= i_44 j_17_2)))) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) b_24 array_1) i_44) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) b_24 array_1) j_17_2))))
 :qid |stdinbpl.1975:26|
 :skolemid |155|
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_44) (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_17_2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_44) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_17_2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_44) (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_17_2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_44) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_17_2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_44) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) b_24 array_1) j_17_2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_44) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) b_24 array_1) j_17_2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_17_2) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) b_24 array_1) i_44))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_17_2) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) b_24 array_1) i_44))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) b_24 array_1) i_44) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) b_24 array_1) j_17_2))
)))) (and (=> (= (ControlFlow 0 106) (- 0 107)) (forall ((i_45 Int) (i_45_2 Int) ) (!  (=> (and (and (and (and (not (= i_45 i_45_2)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_45)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_45_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) b_24 array_1) i_45) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) b_24 array_1) i_45_2))))
 :qid |stdinbpl.1981:21|
 :skolemid |156|
))) (=> (forall ((i_45@@0 Int) (i_45_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_45@@0 i_45_2@@0)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_45@@0)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_45_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) b_24 array_1) i_45@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) b_24 array_1) i_45_2@@0))))
 :qid |stdinbpl.1981:21|
 :skolemid |156|
)) (=> (and (and (forall ((i_45@@1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_45@@1) (< NoPerm FullPerm)) (and (qpRange18 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) b_24 array_1) i_45@@1)) (= (invRecv18 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) b_24 array_1) i_45@@1)) i_45@@1)))
 :qid |stdinbpl.1987:28|
 :skolemid |157|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) b_24 array_1) i_45@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_45@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_45@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) b_24 array_1) i_45@@1))
)) (forall ((o_9@@47 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv18 o_9@@47)) (< NoPerm FullPerm)) (qpRange18 o_9@@47)) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) b_24 array_1) (invRecv18 o_9@@47)) o_9@@47))
 :qid |stdinbpl.1991:28|
 :skolemid |158|
 :pattern ( (invRecv18 o_9@@47))
))) (and (forall ((i_45@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_45@@2) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) b_24 array_1) i_45@@2) null)))
 :qid |stdinbpl.1997:28|
 :skolemid |159|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) b_24 array_1) i_45@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_45@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_45@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) b_24 array_1) i_45@@2))
)) (forall ((o_9@@48 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv18 o_9@@48)) (< NoPerm FullPerm)) (qpRange18 o_9@@48)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@8) b_24 array_1) (invRecv18 o_9@@48)) o_9@@48)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@13) o_9@@48 value_1) (+ (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@12) o_9@@48 value_1) FullPerm)))) (=> (not (and (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv18 o_9@@48)) (< NoPerm FullPerm)) (qpRange18 o_9@@48))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@13) o_9@@48 value_1) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@12) o_9@@48 value_1))))
 :qid |stdinbpl.2003:28|
 :skolemid |160|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@13) o_9@@48 value_1))
)))) (=> (and (and (and (and (and (and (and (forall ((o_9@@49 T@Ref) (f_5@@35 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@12) o_9@@49 f_5@@35) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@13) o_9@@49 f_5@@35)))
 :qid |stdinbpl.2007:35|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@12) o_9@@49 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@13) o_9@@49 f_5@@35))
)) (forall ((o_9@@50 T@Ref) (f_5@@36 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@12) o_9@@50 f_5@@36) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@13) o_9@@50 f_5@@36)))
 :qid |stdinbpl.2007:35|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@12) o_9@@50 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@13) o_9@@50 f_5@@36))
))) (forall ((o_9@@51 T@Ref) (f_5@@37 T@Field_44956_3802) ) (!  (=> (not (= f_5@@37 value_1)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@12) o_9@@51 f_5@@37) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@13) o_9@@51 f_5@@37)))
 :qid |stdinbpl.2007:35|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@12) o_9@@51 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@13) o_9@@51 f_5@@37))
))) (forall ((o_9@@52 T@Ref) (f_5@@38 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@12) o_9@@52 f_5@@38) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@13) o_9@@52 f_5@@38)))
 :qid |stdinbpl.2007:35|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@12) o_9@@52 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@13) o_9@@52 f_5@@38))
))) (forall ((o_9@@53 T@Ref) (f_5@@39 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@12) o_9@@53 f_5@@39) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@13) o_9@@53 f_5@@39)))
 :qid |stdinbpl.2007:35|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@12) o_9@@53 f_5@@39))
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@13) o_9@@53 f_5@@39))
))) (forall ((o_9@@54 T@Ref) (f_5@@40 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@12) o_9@@54 f_5@@40) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@13) o_9@@54 f_5@@40)))
 :qid |stdinbpl.2007:35|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@12) o_9@@54 f_5@@40))
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@13) o_9@@54 f_5@@40))
))) (and (state ExhaleHeap@8 QPMask@13) (state ExhaleHeap@8 QPMask@13))) (and (and (state ExhaleHeap@8 QPMask@13) (= Mask@14 QPMask@13)) (and (= Heap@0 ExhaleHeap@8) (= (ControlFlow 0 106) 47)))) anon76_correct))))))))))))))))))
(let ((anon119_Else_correct  (=> (forall ((i_39_1_1 Int) (j_13_1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_39_1_1) (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_13_1) (not (= i_39_1_1 j_13_1)))) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) i_39_1_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) j_13_1))))
 :qid |stdinbpl.1822:26|
 :skolemid |134|
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_39_1_1) (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_13_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_39_1_1) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_13_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_39_1_1) (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_13_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_39_1_1) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_13_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_39_1_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) j_13_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_39_1_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) j_13_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_13_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) i_39_1_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_13_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) i_39_1_1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) i_39_1_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) j_13_1))
)) (and (=> (= (ControlFlow 0 115) (- 0 117)) (forall ((k Int) (k_50 Int) ) (!  (=> (and (and (and (and (not (= k k_50)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) k)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) k_50)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) k) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) k_50))))
 :qid |stdinbpl.1833:23|
 :skolemid |135|
 :pattern ( (neverTriggered15 k) (neverTriggered15 k_50))
))) (=> (forall ((k@@0 Int) (k_50@@0 Int) ) (!  (=> (and (and (and (and (not (= k@@0 k_50@@0)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) k@@0)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) k_50@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) k@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) k_50@@0))))
 :qid |stdinbpl.1833:23|
 :skolemid |135|
 :pattern ( (neverTriggered15 k@@0) (neverTriggered15 k_50@@0))
)) (and (=> (= (ControlFlow 0 115) (- 0 116)) (forall ((k@@1 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) k@@1) (>= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@11) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) k@@1) value_1) FullPerm))
 :qid |stdinbpl.1840:23|
 :skolemid |136|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) k@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) k@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) k@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) k@@1))
))) (=> (forall ((k@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) k@@2) (>= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@11) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) k@@2) value_1) FullPerm))
 :qid |stdinbpl.1840:23|
 :skolemid |136|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) k@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) k@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) k@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) k@@2))
)) (=> (forall ((k@@3 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) k@@3) (< NoPerm FullPerm)) (and (qpRange15 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) k@@3)) (= (invRecv15 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) k@@3)) k@@3)))
 :qid |stdinbpl.1846:28|
 :skolemid |137|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) k@@3))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) k@@3))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) k@@3))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) k@@3))
)) (=> (and (forall ((o_9@@55 T@Ref) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv15 o_9@@55)) (and (< NoPerm FullPerm) (qpRange15 o_9@@55))) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) (invRecv15 o_9@@55)) o_9@@55))
 :qid |stdinbpl.1850:28|
 :skolemid |138|
 :pattern ( (invRecv15 o_9@@55))
)) (forall ((o_9@@56 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv15 o_9@@56)) (and (< NoPerm FullPerm) (qpRange15 o_9@@56))) (and (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) (invRecv15 o_9@@56)) o_9@@56) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@10) o_9@@56 value_1) (- (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@11) o_9@@56 value_1) FullPerm)))) (=> (not (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv15 o_9@@56)) (and (< NoPerm FullPerm) (qpRange15 o_9@@56)))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@10) o_9@@56 value_1) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@11) o_9@@56 value_1))))
 :qid |stdinbpl.1856:28|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@10) o_9@@56 value_1))
))) (=> (and (and (and (and (and (forall ((o_9@@57 T@Ref) (f_5@@41 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@11) o_9@@57 f_5@@41) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@10) o_9@@57 f_5@@41)))
 :qid |stdinbpl.1862:35|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@10) o_9@@57 f_5@@41))
)) (forall ((o_9@@58 T@Ref) (f_5@@42 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@11) o_9@@58 f_5@@42) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@10) o_9@@58 f_5@@42)))
 :qid |stdinbpl.1862:35|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@10) o_9@@58 f_5@@42))
))) (forall ((o_9@@59 T@Ref) (f_5@@43 T@Field_44956_3802) ) (!  (=> (not (= f_5@@43 value_1)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@11) o_9@@59 f_5@@43) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@10) o_9@@59 f_5@@43)))
 :qid |stdinbpl.1862:35|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@10) o_9@@59 f_5@@43))
))) (forall ((o_9@@60 T@Ref) (f_5@@44 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@11) o_9@@60 f_5@@44) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@10) o_9@@60 f_5@@44)))
 :qid |stdinbpl.1862:35|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@10) o_9@@60 f_5@@44))
))) (forall ((o_9@@61 T@Ref) (f_5@@45 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@11) o_9@@61 f_5@@45) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@10) o_9@@61 f_5@@45)))
 :qid |stdinbpl.1862:35|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@10) o_9@@61 f_5@@45))
))) (forall ((o_9@@62 T@Ref) (f_5@@46 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@11) o_9@@62 f_5@@46) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@10) o_9@@62 f_5@@46)))
 :qid |stdinbpl.1862:35|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@10) o_9@@62 f_5@@46))
))) (and (and (=> (= (ControlFlow 0 115) 106) anon121_Else_correct) (=> (= (ControlFlow 0 115) 112) anon122_Then_correct)) (=> (= (ControlFlow 0 115) 114) anon122_Else_correct))))))))))))
(let ((anon117_Else_correct  (and (=> (= (ControlFlow 0 118) (- 0 128)) (forall ((i_37 Int) (i_37_1 Int) ) (!  (=> (and (and (and (and (not (= i_37 i_37_1)) (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_37)) (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_37_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) i_37) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) i_37_1))))
 :qid |stdinbpl.1735:19|
 :skolemid |128|
))) (=> (forall ((i_37@@0 Int) (i_37_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_37@@0 i_37_1@@0)) (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_37@@0)) (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_37_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) i_37@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) i_37_1@@0))))
 :qid |stdinbpl.1735:19|
 :skolemid |128|
)) (=> (and (and (forall ((i_37@@1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_37@@1) (< NoPerm FullPerm)) (and (qpRange14 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) i_37@@1)) (= (invRecv14 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) i_37@@1)) i_37@@1)))
 :qid |stdinbpl.1741:26|
 :skolemid |129|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) i_37@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| middle@0 end_1) i_37@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_37@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) i_37@@1))
)) (forall ((o_9@@63 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) (invRecv14 o_9@@63)) (< NoPerm FullPerm)) (qpRange14 o_9@@63)) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) (invRecv14 o_9@@63)) o_9@@63))
 :qid |stdinbpl.1745:26|
 :skolemid |130|
 :pattern ( (invRecv14 o_9@@63))
))) (and (forall ((i_37@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_37@@2) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) i_37@@2) null)))
 :qid |stdinbpl.1751:26|
 :skolemid |131|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) i_37@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| middle@0 end_1) i_37@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_37@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) i_37@@2))
)) (forall ((o_9@@64 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) (invRecv14 o_9@@64)) (< NoPerm FullPerm)) (qpRange14 o_9@@64)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) (invRecv14 o_9@@64)) o_9@@64)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@9) o_9@@64 value_1) (+ (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@8) o_9@@64 value_1) FullPerm)))) (=> (not (and (and (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) (invRecv14 o_9@@64)) (< NoPerm FullPerm)) (qpRange14 o_9@@64))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@9) o_9@@64 value_1) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@8) o_9@@64 value_1))))
 :qid |stdinbpl.1757:26|
 :skolemid |132|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@9) o_9@@64 value_1))
)))) (=> (and (and (and (and (and (and (and (forall ((o_9@@65 T@Ref) (f_5@@47 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@8) o_9@@65 f_5@@47) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@9) o_9@@65 f_5@@47)))
 :qid |stdinbpl.1761:33|
 :skolemid |133|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@8) o_9@@65 f_5@@47))
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@9) o_9@@65 f_5@@47))
)) (forall ((o_9@@66 T@Ref) (f_5@@48 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@8) o_9@@66 f_5@@48) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@9) o_9@@66 f_5@@48)))
 :qid |stdinbpl.1761:33|
 :skolemid |133|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@8) o_9@@66 f_5@@48))
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@9) o_9@@66 f_5@@48))
))) (forall ((o_9@@67 T@Ref) (f_5@@49 T@Field_44956_3802) ) (!  (=> (not (= f_5@@49 value_1)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@8) o_9@@67 f_5@@49) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@9) o_9@@67 f_5@@49)))
 :qid |stdinbpl.1761:33|
 :skolemid |133|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@8) o_9@@67 f_5@@49))
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@9) o_9@@67 f_5@@49))
))) (forall ((o_9@@68 T@Ref) (f_5@@50 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@8) o_9@@68 f_5@@50) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@9) o_9@@68 f_5@@50)))
 :qid |stdinbpl.1761:33|
 :skolemid |133|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@8) o_9@@68 f_5@@50))
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@9) o_9@@68 f_5@@50))
))) (forall ((o_9@@69 T@Ref) (f_5@@51 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@8) o_9@@69 f_5@@51) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@9) o_9@@69 f_5@@51)))
 :qid |stdinbpl.1761:33|
 :skolemid |133|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@8) o_9@@69 f_5@@51))
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@9) o_9@@69 f_5@@51))
))) (forall ((o_9@@70 T@Ref) (f_5@@52 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@8) o_9@@70 f_5@@52) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@9) o_9@@70 f_5@@52)))
 :qid |stdinbpl.1761:33|
 :skolemid |133|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@8) o_9@@70 f_5@@52))
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@9) o_9@@70 f_5@@52))
))) (state ExhaleHeap@7 QPMask@9)) (and (state ExhaleHeap@7 QPMask@9) (state ExhaleHeap@7 QPMask@9))) (and (=> (= (ControlFlow 0 118) (- 0 127)) (HasDirectPerm_24073_45764 QPMask@9 a_2 array_1)) (=> (HasDirectPerm_24073_45764 QPMask@9 a_2 array_1) (=> (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) t2A@0) (=> (and (state ExhaleHeap@7 QPMask@9) (state ExhaleHeap@7 QPMask@9)) (and (=> (= (ControlFlow 0 118) (- 0 126)) (HasDirectPerm_24073_45764 QPMask@9 b_24 array_1)) (=> (HasDirectPerm_24073_45764 QPMask@9 b_24 array_1) (=> (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) t2B@0) (=> (and (state ExhaleHeap@7 QPMask@9) (state ExhaleHeap@7 QPMask@9)) (and (=> (= (ControlFlow 0 118) (- 0 125)) (> (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@9) a_2 array_1) NoPerm)) (=> (> (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@9) a_2 array_1) NoPerm) (=> (> wildcard@12 NoPerm) (=> (and (< wildcard@12 (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@9) a_2 array_1)) (= Mask@10 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@9) a_2 array_1 (- (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@9) a_2 array_1) wildcard@12)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@9) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@9) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@9) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@9) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@9)))) (and (=> (= (ControlFlow 0 118) (- 0 124)) (> (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@10) b_24 array_1) NoPerm)) (=> (> (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@10) b_24 array_1) NoPerm) (=> (> wildcard@13 NoPerm) (=> (and (< wildcard@13 (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@10) b_24 array_1)) (= Mask@11 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@10) b_24 array_1 (- (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@10) b_24 array_1) wildcard@13)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@10) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@10) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@10) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@10) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@10)))) (and (=> (= (ControlFlow 0 118) (- 0 123)) (<= 0 start_1)) (=> (<= 0 start_1) (and (=> (= (ControlFlow 0 118) (- 0 122)) (<= end_1 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1)))) (=> (<= end_1 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1))) (and (=> (= (ControlFlow 0 118) (- 0 121)) (= (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1)) (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1)))) (=> (= (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1)) (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1))) (and (=> (= (ControlFlow 0 118) (- 0 120)) (< start_1 middle@0)) (=> (< start_1 middle@0) (and (=> (= (ControlFlow 0 118) (- 0 119)) (< middle@0 end_1)) (=> (< middle@0 end_1) (and (and (=> (= (ControlFlow 0 118) 115) anon119_Else_correct) (=> (= (ControlFlow 0 118) 103) anon120_Then_correct)) (=> (= (ControlFlow 0 118) 105) anon120_Else_correct))))))))))))))))))))))))))))))))))
(let ((anon115_Else_correct  (and (=> (= (ControlFlow 0 129) (- 0 130)) (forall ((i_35 Int) (i_35_1 Int) ) (!  (=> (and (and (and (and (not (= i_35 i_35_1)) (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_35)) (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_35_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) i_35) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) i_35_1))))
 :qid |stdinbpl.1681:19|
 :skolemid |122|
))) (=> (forall ((i_35@@0 Int) (i_35_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_35@@0 i_35_1@@0)) (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_35@@0)) (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_35_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) i_35@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) i_35_1@@0))))
 :qid |stdinbpl.1681:19|
 :skolemid |122|
)) (=> (and (and (forall ((i_35@@1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_35@@1) (< NoPerm FullPerm)) (and (qpRange13 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) i_35@@1)) (= (invRecv13 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) i_35@@1)) i_35@@1)))
 :qid |stdinbpl.1687:26|
 :skolemid |123|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) i_35@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| middle@0 end_1) i_35@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_35@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) i_35@@1))
)) (forall ((o_9@@71 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) (invRecv13 o_9@@71)) (< NoPerm FullPerm)) (qpRange13 o_9@@71)) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) (invRecv13 o_9@@71)) o_9@@71))
 :qid |stdinbpl.1691:26|
 :skolemid |124|
 :pattern ( (invRecv13 o_9@@71))
))) (and (forall ((i_35@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_35@@2) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) i_35@@2) null)))
 :qid |stdinbpl.1697:26|
 :skolemid |125|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) i_35@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| middle@0 end_1) i_35@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_35@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) i_35@@2))
)) (forall ((o_9@@72 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) (invRecv13 o_9@@72)) (< NoPerm FullPerm)) (qpRange13 o_9@@72)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) (invRecv13 o_9@@72)) o_9@@72)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@8) o_9@@72 value_1) (+ (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@9) o_9@@72 value_1) FullPerm)))) (=> (not (and (and (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) (invRecv13 o_9@@72)) (< NoPerm FullPerm)) (qpRange13 o_9@@72))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@8) o_9@@72 value_1) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@9) o_9@@72 value_1))))
 :qid |stdinbpl.1703:26|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@8) o_9@@72 value_1))
)))) (=> (and (and (and (and (and (and (and (forall ((o_9@@73 T@Ref) (f_5@@53 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@9) o_9@@73 f_5@@53) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@8) o_9@@73 f_5@@53)))
 :qid |stdinbpl.1707:33|
 :skolemid |127|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@9) o_9@@73 f_5@@53))
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@8) o_9@@73 f_5@@53))
)) (forall ((o_9@@74 T@Ref) (f_5@@54 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@9) o_9@@74 f_5@@54) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@8) o_9@@74 f_5@@54)))
 :qid |stdinbpl.1707:33|
 :skolemid |127|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@9) o_9@@74 f_5@@54))
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@8) o_9@@74 f_5@@54))
))) (forall ((o_9@@75 T@Ref) (f_5@@55 T@Field_44956_3802) ) (!  (=> (not (= f_5@@55 value_1)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@9) o_9@@75 f_5@@55) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@8) o_9@@75 f_5@@55)))
 :qid |stdinbpl.1707:33|
 :skolemid |127|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@9) o_9@@75 f_5@@55))
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@8) o_9@@75 f_5@@55))
))) (forall ((o_9@@76 T@Ref) (f_5@@56 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@9) o_9@@76 f_5@@56) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@8) o_9@@76 f_5@@56)))
 :qid |stdinbpl.1707:33|
 :skolemid |127|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@9) o_9@@76 f_5@@56))
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@8) o_9@@76 f_5@@56))
))) (forall ((o_9@@77 T@Ref) (f_5@@57 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@9) o_9@@77 f_5@@57) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@8) o_9@@77 f_5@@57)))
 :qid |stdinbpl.1707:33|
 :skolemid |127|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@9) o_9@@77 f_5@@57))
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@8) o_9@@77 f_5@@57))
))) (forall ((o_9@@78 T@Ref) (f_5@@58 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@9) o_9@@78 f_5@@58) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@8) o_9@@78 f_5@@58)))
 :qid |stdinbpl.1707:33|
 :skolemid |127|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@9) o_9@@78 f_5@@58))
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@8) o_9@@78 f_5@@58))
))) (state ExhaleHeap@7 QPMask@8)) (and (state ExhaleHeap@7 QPMask@8) (state ExhaleHeap@7 QPMask@8))) (and (and (=> (= (ControlFlow 0 129) 118) anon117_Else_correct) (=> (= (ControlFlow 0 129) 97) anon118_Then_correct)) (=> (= (ControlFlow 0 129) 101) anon118_Else_correct))))))))
(let ((anon113_Else_correct  (and (=> (= (ControlFlow 0 131) (- 0 134)) (forall ((i_33 Int) (i_33_2 Int) ) (!  (=> (and (and (and (and (not (= i_33 i_33_2)) (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_33)) (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_33_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) i_33) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) i_33_2))))
 :qid |stdinbpl.1591:19|
 :skolemid |116|
))) (=> (forall ((i_33@@0 Int) (i_33_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_33@@0 i_33_2@@0)) (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_33@@0)) (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_33_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) i_33@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) i_33_2@@0))))
 :qid |stdinbpl.1591:19|
 :skolemid |116|
)) (=> (and (and (forall ((i_33@@1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_33@@1) (< NoPerm FullPerm)) (and (qpRange12 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) i_33@@1)) (= (invRecv12 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) i_33@@1)) i_33@@1)))
 :qid |stdinbpl.1597:26|
 :skolemid |117|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) i_33@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 middle@0) i_33@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_33@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) i_33@@1))
)) (forall ((o_9@@79 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) (invRecv12 o_9@@79)) (< NoPerm FullPerm)) (qpRange12 o_9@@79)) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) (invRecv12 o_9@@79)) o_9@@79))
 :qid |stdinbpl.1601:26|
 :skolemid |118|
 :pattern ( (invRecv12 o_9@@79))
))) (and (forall ((i_33@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_33@@2) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) i_33@@2) null)))
 :qid |stdinbpl.1607:26|
 :skolemid |119|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) i_33@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 middle@0) i_33@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_33@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) i_33@@2))
)) (forall ((o_9@@80 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) (invRecv12 o_9@@80)) (< NoPerm FullPerm)) (qpRange12 o_9@@80)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) (invRecv12 o_9@@80)) o_9@@80)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@7) o_9@@80 value_1) (+ (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@6) o_9@@80 value_1) FullPerm)))) (=> (not (and (and (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) (invRecv12 o_9@@80)) (< NoPerm FullPerm)) (qpRange12 o_9@@80))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@7) o_9@@80 value_1) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@6) o_9@@80 value_1))))
 :qid |stdinbpl.1613:26|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@7) o_9@@80 value_1))
)))) (=> (and (and (and (and (and (and (and (forall ((o_9@@81 T@Ref) (f_5@@59 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@6) o_9@@81 f_5@@59) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@7) o_9@@81 f_5@@59)))
 :qid |stdinbpl.1617:33|
 :skolemid |121|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@6) o_9@@81 f_5@@59))
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@7) o_9@@81 f_5@@59))
)) (forall ((o_9@@82 T@Ref) (f_5@@60 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@6) o_9@@82 f_5@@60) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@7) o_9@@82 f_5@@60)))
 :qid |stdinbpl.1617:33|
 :skolemid |121|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@6) o_9@@82 f_5@@60))
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@7) o_9@@82 f_5@@60))
))) (forall ((o_9@@83 T@Ref) (f_5@@61 T@Field_44956_3802) ) (!  (=> (not (= f_5@@61 value_1)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@6) o_9@@83 f_5@@61) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@7) o_9@@83 f_5@@61)))
 :qid |stdinbpl.1617:33|
 :skolemid |121|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@6) o_9@@83 f_5@@61))
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@7) o_9@@83 f_5@@61))
))) (forall ((o_9@@84 T@Ref) (f_5@@62 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@6) o_9@@84 f_5@@62) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@7) o_9@@84 f_5@@62)))
 :qid |stdinbpl.1617:33|
 :skolemid |121|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@6) o_9@@84 f_5@@62))
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@7) o_9@@84 f_5@@62))
))) (forall ((o_9@@85 T@Ref) (f_5@@63 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@6) o_9@@85 f_5@@63) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@7) o_9@@85 f_5@@63)))
 :qid |stdinbpl.1617:33|
 :skolemid |121|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@6) o_9@@85 f_5@@63))
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@7) o_9@@85 f_5@@63))
))) (forall ((o_9@@86 T@Ref) (f_5@@64 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@6) o_9@@86 f_5@@64) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@7) o_9@@86 f_5@@64)))
 :qid |stdinbpl.1617:33|
 :skolemid |121|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@6) o_9@@86 f_5@@64))
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@7) o_9@@86 f_5@@64))
))) (state ExhaleHeap@7 QPMask@7)) (and (state ExhaleHeap@7 QPMask@7) (state ExhaleHeap@7 QPMask@7))) (and (=> (= (ControlFlow 0 131) (- 0 133)) (HasDirectPerm_24073_45764 QPMask@7 a_2 array_1)) (=> (HasDirectPerm_24073_45764 QPMask@7 a_2 array_1) (=> (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) t1A@0) (=> (and (state ExhaleHeap@7 QPMask@7) (state ExhaleHeap@7 QPMask@7)) (and (=> (= (ControlFlow 0 131) (- 0 132)) (HasDirectPerm_24073_45764 QPMask@7 b_24 array_1)) (=> (HasDirectPerm_24073_45764 QPMask@7 b_24 array_1) (=> (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) b_24 array_1) t1B@0) (=> (and (state ExhaleHeap@7 QPMask@7) (state ExhaleHeap@7 QPMask@7)) (=> (and (and (> wildcard@10 NoPerm) (not (= a_2 null))) (and (= Mask@8 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@7) a_2 array_1 (+ (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@7) a_2 array_1) wildcard@10)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@7) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@7) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@7) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@7) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@7))) (state ExhaleHeap@7 Mask@8))) (=> (and (and (and (state ExhaleHeap@7 Mask@8) (state ExhaleHeap@7 Mask@8)) (and (> wildcard@11 NoPerm) (not (= b_24 null)))) (and (and (= Mask@9 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@8) b_24 array_1 (+ (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@8) b_24 array_1) wildcard@11)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@8) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@8) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@8) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@8) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@8))) (state ExhaleHeap@7 Mask@9)) (and (state ExhaleHeap@7 Mask@9) (state ExhaleHeap@7 Mask@9)))) (and (and (=> (= (ControlFlow 0 131) 129) anon115_Else_correct) (=> (= (ControlFlow 0 131) 91) anon116_Then_correct)) (=> (= (ControlFlow 0 131) 95) anon116_Else_correct))))))))))))))))))
(let ((anon111_Else_correct  (and (=> (= (ControlFlow 0 135) (- 0 136)) (forall ((i_31 Int) (i_31_2 Int) ) (!  (=> (and (and (and (and (not (= i_31 i_31_2)) (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_31)) (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_31_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) i_31) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) i_31_2))))
 :qid |stdinbpl.1537:19|
 :skolemid |110|
))) (=> (forall ((i_31@@0 Int) (i_31_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_31@@0 i_31_2@@0)) (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_31@@0)) (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_31_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) i_31@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) i_31_2@@0))))
 :qid |stdinbpl.1537:19|
 :skolemid |110|
)) (=> (and (and (forall ((i_31@@1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_31@@1) (< NoPerm FullPerm)) (and (qpRange11 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) i_31@@1)) (= (invRecv11 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) i_31@@1)) i_31@@1)))
 :qid |stdinbpl.1543:26|
 :skolemid |111|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) i_31@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 middle@0) i_31@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_31@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) i_31@@1))
)) (forall ((o_9@@87 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) (invRecv11 o_9@@87)) (< NoPerm FullPerm)) (qpRange11 o_9@@87)) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) (invRecv11 o_9@@87)) o_9@@87))
 :qid |stdinbpl.1547:26|
 :skolemid |112|
 :pattern ( (invRecv11 o_9@@87))
))) (and (forall ((i_31@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_31@@2) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) i_31@@2) null)))
 :qid |stdinbpl.1553:26|
 :skolemid |113|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) i_31@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 middle@0) i_31@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_31@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) i_31@@2))
)) (forall ((o_9@@88 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) (invRecv11 o_9@@88)) (< NoPerm FullPerm)) (qpRange11 o_9@@88)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@7) a_2 array_1) (invRecv11 o_9@@88)) o_9@@88)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@6) o_9@@88 value_1) (+ (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@7) o_9@@88 value_1) FullPerm)))) (=> (not (and (and (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) (invRecv11 o_9@@88)) (< NoPerm FullPerm)) (qpRange11 o_9@@88))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@6) o_9@@88 value_1) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@7) o_9@@88 value_1))))
 :qid |stdinbpl.1559:26|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@6) o_9@@88 value_1))
)))) (=> (and (and (and (and (and (and (and (forall ((o_9@@89 T@Ref) (f_5@@65 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@7) o_9@@89 f_5@@65) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@6) o_9@@89 f_5@@65)))
 :qid |stdinbpl.1563:33|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@7) o_9@@89 f_5@@65))
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@6) o_9@@89 f_5@@65))
)) (forall ((o_9@@90 T@Ref) (f_5@@66 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@7) o_9@@90 f_5@@66) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@6) o_9@@90 f_5@@66)))
 :qid |stdinbpl.1563:33|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@7) o_9@@90 f_5@@66))
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@6) o_9@@90 f_5@@66))
))) (forall ((o_9@@91 T@Ref) (f_5@@67 T@Field_44956_3802) ) (!  (=> (not (= f_5@@67 value_1)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@7) o_9@@91 f_5@@67) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@6) o_9@@91 f_5@@67)))
 :qid |stdinbpl.1563:33|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@7) o_9@@91 f_5@@67))
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@6) o_9@@91 f_5@@67))
))) (forall ((o_9@@92 T@Ref) (f_5@@68 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@7) o_9@@92 f_5@@68) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@6) o_9@@92 f_5@@68)))
 :qid |stdinbpl.1563:33|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@7) o_9@@92 f_5@@68))
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@6) o_9@@92 f_5@@68))
))) (forall ((o_9@@93 T@Ref) (f_5@@69 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@7) o_9@@93 f_5@@69) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@6) o_9@@93 f_5@@69)))
 :qid |stdinbpl.1563:33|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@7) o_9@@93 f_5@@69))
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@6) o_9@@93 f_5@@69))
))) (forall ((o_9@@94 T@Ref) (f_5@@70 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@7) o_9@@94 f_5@@70) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@6) o_9@@94 f_5@@70)))
 :qid |stdinbpl.1563:33|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@7) o_9@@94 f_5@@70))
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@6) o_9@@94 f_5@@70))
))) (state ExhaleHeap@7 QPMask@6)) (and (state ExhaleHeap@7 QPMask@6) (state ExhaleHeap@7 QPMask@6))) (and (and (=> (= (ControlFlow 0 135) 131) anon113_Else_correct) (=> (= (ControlFlow 0 135) 85) anon114_Then_correct)) (=> (= (ControlFlow 0 135) 89) anon114_Else_correct))))))))
(let ((anon109_Else_correct  (and (=> (= (ControlFlow 0 137) (- 0 139)) (forall ((i_29 Int) (i_29_2 Int) ) (!  (=> (and (and (and (and (not (= i_29 i_29_2)) (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_29)) (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_29_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@6) b_24 array_1) i_29) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@6) b_24 array_1) i_29_2))))
 :qid |stdinbpl.1460:21|
 :skolemid |104|
 :pattern ( (neverTriggered10 i_29) (neverTriggered10 i_29_2))
))) (=> (forall ((i_29@@0 Int) (i_29_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_29@@0 i_29_2@@0)) (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_29@@0)) (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_29_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@6) b_24 array_1) i_29@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@6) b_24 array_1) i_29_2@@0))))
 :qid |stdinbpl.1460:21|
 :skolemid |104|
 :pattern ( (neverTriggered10 i_29@@0) (neverTriggered10 i_29_2@@0))
)) (and (=> (= (ControlFlow 0 137) (- 0 138)) (forall ((i_29@@1 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_29@@1) (>= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@4) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@6) b_24 array_1) i_29@@1) value_1) FullPerm))
 :qid |stdinbpl.1467:21|
 :skolemid |105|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@6) b_24 array_1) i_29@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| middle@0 end_1) i_29@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_29@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@6) b_24 array_1) i_29@@1))
))) (=> (forall ((i_29@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_29@@2) (>= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@4) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@6) b_24 array_1) i_29@@2) value_1) FullPerm))
 :qid |stdinbpl.1467:21|
 :skolemid |105|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@6) b_24 array_1) i_29@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| middle@0 end_1) i_29@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_29@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@6) b_24 array_1) i_29@@2))
)) (=> (forall ((i_29@@3 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_29@@3) (< NoPerm FullPerm)) (and (qpRange10 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@6) b_24 array_1) i_29@@3)) (= (invRecv10 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@6) b_24 array_1) i_29@@3)) i_29@@3)))
 :qid |stdinbpl.1473:26|
 :skolemid |106|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@6) b_24 array_1) i_29@@3))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| middle@0 end_1) i_29@@3))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_29@@3))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@6) b_24 array_1) i_29@@3))
)) (=> (and (forall ((o_9@@95 T@Ref) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) (invRecv10 o_9@@95)) (and (< NoPerm FullPerm) (qpRange10 o_9@@95))) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@6) b_24 array_1) (invRecv10 o_9@@95)) o_9@@95))
 :qid |stdinbpl.1477:26|
 :skolemid |107|
 :pattern ( (invRecv10 o_9@@95))
)) (forall ((o_9@@96 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) (invRecv10 o_9@@96)) (and (< NoPerm FullPerm) (qpRange10 o_9@@96))) (and (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@6) b_24 array_1) (invRecv10 o_9@@96)) o_9@@96) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@5) o_9@@96 value_1) (- (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@4) o_9@@96 value_1) FullPerm)))) (=> (not (and (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) (invRecv10 o_9@@96)) (and (< NoPerm FullPerm) (qpRange10 o_9@@96)))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@5) o_9@@96 value_1) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@4) o_9@@96 value_1))))
 :qid |stdinbpl.1483:26|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@5) o_9@@96 value_1))
))) (=> (and (and (and (and (and (and (and (and (forall ((o_9@@97 T@Ref) (f_5@@71 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@4) o_9@@97 f_5@@71) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@5) o_9@@97 f_5@@71)))
 :qid |stdinbpl.1489:33|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@5) o_9@@97 f_5@@71))
)) (forall ((o_9@@98 T@Ref) (f_5@@72 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@4) o_9@@98 f_5@@72) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@5) o_9@@98 f_5@@72)))
 :qid |stdinbpl.1489:33|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@5) o_9@@98 f_5@@72))
))) (forall ((o_9@@99 T@Ref) (f_5@@73 T@Field_44956_3802) ) (!  (=> (not (= f_5@@73 value_1)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@4) o_9@@99 f_5@@73) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@5) o_9@@99 f_5@@73)))
 :qid |stdinbpl.1489:33|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@5) o_9@@99 f_5@@73))
))) (forall ((o_9@@100 T@Ref) (f_5@@74 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@4) o_9@@100 f_5@@74) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@5) o_9@@100 f_5@@74)))
 :qid |stdinbpl.1489:33|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@5) o_9@@100 f_5@@74))
))) (forall ((o_9@@101 T@Ref) (f_5@@75 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@4) o_9@@101 f_5@@75) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@5) o_9@@101 f_5@@75)))
 :qid |stdinbpl.1489:33|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@5) o_9@@101 f_5@@75))
))) (forall ((o_9@@102 T@Ref) (f_5@@76 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@4) o_9@@102 f_5@@76) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@5) o_9@@102 f_5@@76)))
 :qid |stdinbpl.1489:33|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@5) o_9@@102 f_5@@76))
))) (and (IdenticalOnKnownLocations ExhaleHeap@6 ExhaleHeap@7 QPMask@5) (state ExhaleHeap@7 QPMask@5))) (and (and (> wildcard@8 NoPerm) (not (= a_2 null))) (and (= Mask@6 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@5) a_2 array_1 (+ (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@5) a_2 array_1) wildcard@8)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@5) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@5) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@5) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@5) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@5))) (state ExhaleHeap@7 Mask@6)))) (and (and (and (state ExhaleHeap@7 Mask@6) (state ExhaleHeap@7 Mask@6)) (and (> wildcard@9 NoPerm) (not (= b_24 null)))) (and (and (= Mask@7 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@6) b_24 array_1 (+ (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@6) b_24 array_1) wildcard@9)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@6) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@6) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@6) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@6) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@6))) (state ExhaleHeap@7 Mask@7)) (and (state ExhaleHeap@7 Mask@7) (state ExhaleHeap@7 Mask@7))))) (and (and (=> (= (ControlFlow 0 137) 135) anon111_Else_correct) (=> (= (ControlFlow 0 137) 79) anon112_Then_correct)) (=> (= (ControlFlow 0 137) 83) anon112_Else_correct)))))))))))
(let ((anon107_Else_correct  (and (=> (= (ControlFlow 0 140) (- 0 142)) (forall ((i_27_2 Int) (i_27_3 Int) ) (!  (=> (and (and (and (and (not (= i_27_2 i_27_3)) (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_27_2)) (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_27_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@5) a_2 array_1) i_27_2) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@5) a_2 array_1) i_27_3))))
 :qid |stdinbpl.1394:21|
 :skolemid |98|
 :pattern ( (neverTriggered9 i_27_2) (neverTriggered9 i_27_3))
))) (=> (forall ((i_27_2@@0 Int) (i_27_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_27_2@@0 i_27_3@@0)) (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_27_2@@0)) (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_27_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@5) a_2 array_1) i_27_2@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@5) a_2 array_1) i_27_3@@0))))
 :qid |stdinbpl.1394:21|
 :skolemid |98|
 :pattern ( (neverTriggered9 i_27_2@@0) (neverTriggered9 i_27_3@@0))
)) (and (=> (= (ControlFlow 0 140) (- 0 141)) (forall ((i_27_2@@1 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_27_2@@1) (>= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@5) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@5) a_2 array_1) i_27_2@@1) value_1) FullPerm))
 :qid |stdinbpl.1401:21|
 :skolemid |99|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@5) a_2 array_1) i_27_2@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| middle@0 end_1) i_27_2@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_27_2@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@5) a_2 array_1) i_27_2@@1))
))) (=> (forall ((i_27_2@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_27_2@@2) (>= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@5) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@5) a_2 array_1) i_27_2@@2) value_1) FullPerm))
 :qid |stdinbpl.1401:21|
 :skolemid |99|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@5) a_2 array_1) i_27_2@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| middle@0 end_1) i_27_2@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_27_2@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@5) a_2 array_1) i_27_2@@2))
)) (=> (forall ((i_27_2@@3 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_27_2@@3) (< NoPerm FullPerm)) (and (qpRange9 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@5) a_2 array_1) i_27_2@@3)) (= (invRecv9 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@5) a_2 array_1) i_27_2@@3)) i_27_2@@3)))
 :qid |stdinbpl.1407:26|
 :skolemid |100|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@5) a_2 array_1) i_27_2@@3))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| middle@0 end_1) i_27_2@@3))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) i_27_2@@3))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@5) a_2 array_1) i_27_2@@3))
)) (=> (and (forall ((o_9@@103 T@Ref) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) (invRecv9 o_9@@103)) (and (< NoPerm FullPerm) (qpRange9 o_9@@103))) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@5) a_2 array_1) (invRecv9 o_9@@103)) o_9@@103))
 :qid |stdinbpl.1411:26|
 :skolemid |101|
 :pattern ( (invRecv9 o_9@@103))
)) (forall ((o_9@@104 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) (invRecv9 o_9@@104)) (and (< NoPerm FullPerm) (qpRange9 o_9@@104))) (and (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@5) a_2 array_1) (invRecv9 o_9@@104)) o_9@@104) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@4) o_9@@104 value_1) (- (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@5) o_9@@104 value_1) FullPerm)))) (=> (not (and (|Seq#Contains_3680| (|Seq#Range| middle@0 end_1) (invRecv9 o_9@@104)) (and (< NoPerm FullPerm) (qpRange9 o_9@@104)))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@4) o_9@@104 value_1) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@5) o_9@@104 value_1))))
 :qid |stdinbpl.1417:26|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@4) o_9@@104 value_1))
))) (=> (and (and (and (and (and (and (forall ((o_9@@105 T@Ref) (f_5@@77 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@5) o_9@@105 f_5@@77) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@4) o_9@@105 f_5@@77)))
 :qid |stdinbpl.1423:33|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@4) o_9@@105 f_5@@77))
)) (forall ((o_9@@106 T@Ref) (f_5@@78 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@5) o_9@@106 f_5@@78) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@4) o_9@@106 f_5@@78)))
 :qid |stdinbpl.1423:33|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@4) o_9@@106 f_5@@78))
))) (forall ((o_9@@107 T@Ref) (f_5@@79 T@Field_44956_3802) ) (!  (=> (not (= f_5@@79 value_1)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@5) o_9@@107 f_5@@79) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@4) o_9@@107 f_5@@79)))
 :qid |stdinbpl.1423:33|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@4) o_9@@107 f_5@@79))
))) (forall ((o_9@@108 T@Ref) (f_5@@80 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@5) o_9@@108 f_5@@80) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@4) o_9@@108 f_5@@80)))
 :qid |stdinbpl.1423:33|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@4) o_9@@108 f_5@@80))
))) (forall ((o_9@@109 T@Ref) (f_5@@81 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@5) o_9@@109 f_5@@81) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@4) o_9@@109 f_5@@81)))
 :qid |stdinbpl.1423:33|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@4) o_9@@109 f_5@@81))
))) (forall ((o_9@@110 T@Ref) (f_5@@82 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@5) o_9@@110 f_5@@82) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@4) o_9@@110 f_5@@82)))
 :qid |stdinbpl.1423:33|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@4) o_9@@110 f_5@@82))
))) (and (IdenticalOnKnownLocations ExhaleHeap@5 ExhaleHeap@6 QPMask@4) (state ExhaleHeap@6 QPMask@4))) (and (and (=> (= (ControlFlow 0 140) 137) anon109_Else_correct) (=> (= (ControlFlow 0 140) 73) anon110_Then_correct)) (=> (= (ControlFlow 0 140) 77) anon110_Else_correct)))))))))))
(let ((anon105_Else_correct  (and (=> (= (ControlFlow 0 143) (- 0 155)) (forall ((i_25_1 Int) (i_25_2 Int) ) (!  (=> (and (and (and (and (not (= i_25_1 i_25_2)) (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_25_1)) (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_25_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@2) b_24 array_1) i_25_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@2) b_24 array_1) i_25_2))))
 :qid |stdinbpl.1263:21|
 :skolemid |92|
 :pattern ( (neverTriggered8 i_25_1) (neverTriggered8 i_25_2))
))) (=> (forall ((i_25_1@@0 Int) (i_25_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_25_1@@0 i_25_2@@0)) (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_25_1@@0)) (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_25_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@2) b_24 array_1) i_25_1@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@2) b_24 array_1) i_25_2@@0))))
 :qid |stdinbpl.1263:21|
 :skolemid |92|
 :pattern ( (neverTriggered8 i_25_1@@0) (neverTriggered8 i_25_2@@0))
)) (and (=> (= (ControlFlow 0 143) (- 0 154)) (forall ((i_25_1@@1 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_25_1@@1) (>= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@2) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@2) b_24 array_1) i_25_1@@1) value_1) FullPerm))
 :qid |stdinbpl.1270:21|
 :skolemid |93|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@2) b_24 array_1) i_25_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 middle@0) i_25_1@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_25_1@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@2) b_24 array_1) i_25_1@@1))
))) (=> (forall ((i_25_1@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_25_1@@2) (>= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@2) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@2) b_24 array_1) i_25_1@@2) value_1) FullPerm))
 :qid |stdinbpl.1270:21|
 :skolemid |93|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@2) b_24 array_1) i_25_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 middle@0) i_25_1@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_25_1@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@2) b_24 array_1) i_25_1@@2))
)) (=> (forall ((i_25_1@@3 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_25_1@@3) (< NoPerm FullPerm)) (and (qpRange8 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@2) b_24 array_1) i_25_1@@3)) (= (invRecv8 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@2) b_24 array_1) i_25_1@@3)) i_25_1@@3)))
 :qid |stdinbpl.1276:26|
 :skolemid |94|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@2) b_24 array_1) i_25_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 middle@0) i_25_1@@3))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_25_1@@3))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@2) b_24 array_1) i_25_1@@3))
)) (=> (and (forall ((o_9@@111 T@Ref) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) (invRecv8 o_9@@111)) (and (< NoPerm FullPerm) (qpRange8 o_9@@111))) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@2) b_24 array_1) (invRecv8 o_9@@111)) o_9@@111))
 :qid |stdinbpl.1280:26|
 :skolemid |95|
 :pattern ( (invRecv8 o_9@@111))
)) (forall ((o_9@@112 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) (invRecv8 o_9@@112)) (and (< NoPerm FullPerm) (qpRange8 o_9@@112))) (and (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@2) b_24 array_1) (invRecv8 o_9@@112)) o_9@@112) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@3) o_9@@112 value_1) (- (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@2) o_9@@112 value_1) FullPerm)))) (=> (not (and (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) (invRecv8 o_9@@112)) (and (< NoPerm FullPerm) (qpRange8 o_9@@112)))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@3) o_9@@112 value_1) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@2) o_9@@112 value_1))))
 :qid |stdinbpl.1286:26|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@3) o_9@@112 value_1))
))) (=> (and (and (and (and (and (and (forall ((o_9@@113 T@Ref) (f_5@@83 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@2) o_9@@113 f_5@@83) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@3) o_9@@113 f_5@@83)))
 :qid |stdinbpl.1292:33|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@3) o_9@@113 f_5@@83))
)) (forall ((o_9@@114 T@Ref) (f_5@@84 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@2) o_9@@114 f_5@@84) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@3) o_9@@114 f_5@@84)))
 :qid |stdinbpl.1292:33|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@3) o_9@@114 f_5@@84))
))) (forall ((o_9@@115 T@Ref) (f_5@@85 T@Field_44956_3802) ) (!  (=> (not (= f_5@@85 value_1)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@2) o_9@@115 f_5@@85) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@3) o_9@@115 f_5@@85)))
 :qid |stdinbpl.1292:33|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@3) o_9@@115 f_5@@85))
))) (forall ((o_9@@116 T@Ref) (f_5@@86 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@2) o_9@@116 f_5@@86) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@3) o_9@@116 f_5@@86)))
 :qid |stdinbpl.1292:33|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@3) o_9@@116 f_5@@86))
))) (forall ((o_9@@117 T@Ref) (f_5@@87 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@2) o_9@@117 f_5@@87) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@3) o_9@@117 f_5@@87)))
 :qid |stdinbpl.1292:33|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@3) o_9@@117 f_5@@87))
))) (forall ((o_9@@118 T@Ref) (f_5@@88 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@2) o_9@@118 f_5@@88) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@3) o_9@@118 f_5@@88)))
 :qid |stdinbpl.1292:33|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@3) o_9@@118 f_5@@88))
))) (and (IdenticalOnKnownLocations ExhaleHeap@2 ExhaleHeap@3 QPMask@3) (state ExhaleHeap@3 QPMask@3))) (and (=> (= (ControlFlow 0 143) (- 0 153)) (HasDirectPerm_24073_45764 QPMask@3 a_2 array_1)) (=> (HasDirectPerm_24073_45764 QPMask@3 a_2 array_1) (=> (and (= t2A@0 (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@3) a_2 array_1)) (state ExhaleHeap@3 QPMask@3)) (and (=> (= (ControlFlow 0 143) (- 0 152)) (HasDirectPerm_24073_45764 QPMask@3 b_24 array_1)) (=> (HasDirectPerm_24073_45764 QPMask@3 b_24 array_1) (=> (and (= t2B@0 (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@3) b_24 array_1)) (state ExhaleHeap@3 QPMask@3)) (and (=> (= (ControlFlow 0 143) (- 0 151)) (> (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@3) a_2 array_1) NoPerm)) (=> (> (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@3) a_2 array_1) NoPerm) (=> (> wildcard@6 NoPerm) (=> (and (and (< wildcard@6 (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@3) a_2 array_1)) (= Mask@4 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@3) a_2 array_1 (- (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@3) a_2 array_1) wildcard@6)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@3) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@3) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@3) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@3) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@3)))) (and (IdenticalOnKnownLocations ExhaleHeap@3 ExhaleHeap@4 Mask@4) (state ExhaleHeap@4 Mask@4))) (and (=> (= (ControlFlow 0 143) (- 0 150)) (> (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@4) b_24 array_1) NoPerm)) (=> (> (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@4) b_24 array_1) NoPerm) (=> (> wildcard@7 NoPerm) (=> (and (and (< wildcard@7 (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@4) b_24 array_1)) (= Mask@5 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@4) b_24 array_1 (- (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@4) b_24 array_1) wildcard@7)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@4) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@4) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@4) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@4) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@4)))) (and (IdenticalOnKnownLocations ExhaleHeap@4 ExhaleHeap@5 Mask@5) (state ExhaleHeap@5 Mask@5))) (and (=> (= (ControlFlow 0 143) (- 0 149)) (>= middle@0 0)) (=> (>= middle@0 0) (and (=> (= (ControlFlow 0 143) (- 0 148)) (HasDirectPerm_24073_45764 Mask@5 a_2 array_1)) (=> (HasDirectPerm_24073_45764 Mask@5 a_2 array_1) (and (=> (= (ControlFlow 0 143) (- 0 147)) (<= end_1 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@5) a_2 array_1)))) (=> (<= end_1 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@5) a_2 array_1))) (and (=> (= (ControlFlow 0 143) (- 0 146)) (HasDirectPerm_24073_45764 Mask@5 a_2 array_1)) (=> (HasDirectPerm_24073_45764 Mask@5 a_2 array_1) (and (=> (= (ControlFlow 0 143) (- 0 145)) (HasDirectPerm_24073_45764 Mask@5 b_24 array_1)) (=> (HasDirectPerm_24073_45764 Mask@5 b_24 array_1) (and (=> (= (ControlFlow 0 143) (- 0 144)) (= (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@5) a_2 array_1)) (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@5) b_24 array_1)))) (=> (= (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@5) a_2 array_1)) (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@5) b_24 array_1))) (=> (state ExhaleHeap@5 Mask@5) (and (and (=> (= (ControlFlow 0 143) 140) anon107_Else_correct) (=> (= (ControlFlow 0 143) 67) anon108_Then_correct)) (=> (= (ControlFlow 0 143) 71) anon108_Else_correct))))))))))))))))))))))))))))))))))))))
(let ((anon103_Else_correct  (and (=> (= (ControlFlow 0 156) (- 0 158)) (forall ((i_23_1 Int) (i_23_2 Int) ) (!  (=> (and (and (and (and (not (= i_23_1 i_23_2)) (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_23_1)) (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_23_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@1) a_2 array_1) i_23_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@1) a_2 array_1) i_23_2))))
 :qid |stdinbpl.1197:21|
 :skolemid |86|
 :pattern ( (neverTriggered7 i_23_1) (neverTriggered7 i_23_2))
))) (=> (forall ((i_23_1@@0 Int) (i_23_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_23_1@@0 i_23_2@@0)) (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_23_1@@0)) (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_23_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@1) a_2 array_1) i_23_1@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@1) a_2 array_1) i_23_2@@0))))
 :qid |stdinbpl.1197:21|
 :skolemid |86|
 :pattern ( (neverTriggered7 i_23_1@@0) (neverTriggered7 i_23_2@@0))
)) (and (=> (= (ControlFlow 0 156) (- 0 157)) (forall ((i_23_1@@1 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_23_1@@1) (>= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@3) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@1) a_2 array_1) i_23_1@@1) value_1) FullPerm))
 :qid |stdinbpl.1204:21|
 :skolemid |87|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@1) a_2 array_1) i_23_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 middle@0) i_23_1@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_23_1@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@1) a_2 array_1) i_23_1@@1))
))) (=> (forall ((i_23_1@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_23_1@@2) (>= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@3) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@1) a_2 array_1) i_23_1@@2) value_1) FullPerm))
 :qid |stdinbpl.1204:21|
 :skolemid |87|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@1) a_2 array_1) i_23_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 middle@0) i_23_1@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_23_1@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@1) a_2 array_1) i_23_1@@2))
)) (=> (forall ((i_23_1@@3 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_23_1@@3) (< NoPerm FullPerm)) (and (qpRange7 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@1) a_2 array_1) i_23_1@@3)) (= (invRecv7 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@1) a_2 array_1) i_23_1@@3)) i_23_1@@3)))
 :qid |stdinbpl.1210:26|
 :skolemid |88|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@1) a_2 array_1) i_23_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 middle@0) i_23_1@@3))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) i_23_1@@3))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@1) a_2 array_1) i_23_1@@3))
)) (=> (and (forall ((o_9@@119 T@Ref) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) (invRecv7 o_9@@119)) (and (< NoPerm FullPerm) (qpRange7 o_9@@119))) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@1) a_2 array_1) (invRecv7 o_9@@119)) o_9@@119))
 :qid |stdinbpl.1214:26|
 :skolemid |89|
 :pattern ( (invRecv7 o_9@@119))
)) (forall ((o_9@@120 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) (invRecv7 o_9@@120)) (and (< NoPerm FullPerm) (qpRange7 o_9@@120))) (and (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@1) a_2 array_1) (invRecv7 o_9@@120)) o_9@@120) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@2) o_9@@120 value_1) (- (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@3) o_9@@120 value_1) FullPerm)))) (=> (not (and (|Seq#Contains_3680| (|Seq#Range| start_1 middle@0) (invRecv7 o_9@@120)) (and (< NoPerm FullPerm) (qpRange7 o_9@@120)))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@2) o_9@@120 value_1) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@3) o_9@@120 value_1))))
 :qid |stdinbpl.1220:26|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@2) o_9@@120 value_1))
))) (=> (and (and (and (and (and (and (forall ((o_9@@121 T@Ref) (f_5@@89 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@3) o_9@@121 f_5@@89) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@2) o_9@@121 f_5@@89)))
 :qid |stdinbpl.1226:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@2) o_9@@121 f_5@@89))
)) (forall ((o_9@@122 T@Ref) (f_5@@90 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@3) o_9@@122 f_5@@90) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@2) o_9@@122 f_5@@90)))
 :qid |stdinbpl.1226:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@2) o_9@@122 f_5@@90))
))) (forall ((o_9@@123 T@Ref) (f_5@@91 T@Field_44956_3802) ) (!  (=> (not (= f_5@@91 value_1)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@3) o_9@@123 f_5@@91) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@2) o_9@@123 f_5@@91)))
 :qid |stdinbpl.1226:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@2) o_9@@123 f_5@@91))
))) (forall ((o_9@@124 T@Ref) (f_5@@92 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@3) o_9@@124 f_5@@92) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@2) o_9@@124 f_5@@92)))
 :qid |stdinbpl.1226:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@2) o_9@@124 f_5@@92))
))) (forall ((o_9@@125 T@Ref) (f_5@@93 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@3) o_9@@125 f_5@@93) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@2) o_9@@125 f_5@@93)))
 :qid |stdinbpl.1226:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@2) o_9@@125 f_5@@93))
))) (forall ((o_9@@126 T@Ref) (f_5@@94 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@3) o_9@@126 f_5@@94) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@2) o_9@@126 f_5@@94)))
 :qid |stdinbpl.1226:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@2) o_9@@126 f_5@@94))
))) (and (IdenticalOnKnownLocations ExhaleHeap@1 ExhaleHeap@2 QPMask@2) (state ExhaleHeap@2 QPMask@2))) (and (and (=> (= (ControlFlow 0 156) 143) anon105_Else_correct) (=> (= (ControlFlow 0 156) 61) anon106_Then_correct)) (=> (= (ControlFlow 0 156) 65) anon106_Else_correct)))))))))))
(let ((anon102_Then_correct  (=> (> (- end_1 start_1) 1) (=> (and (= middle@0 (+ start_1 (div (- end_1 start_1) 2))) (state Heap@@19 QPMask@1)) (and (=> (= (ControlFlow 0 159) (- 0 169)) (HasDirectPerm_24073_45764 QPMask@1 a_2 array_1)) (=> (HasDirectPerm_24073_45764 QPMask@1 a_2 array_1) (=> (and (= t1A@0 (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1)) (state Heap@@19 QPMask@1)) (and (=> (= (ControlFlow 0 159) (- 0 168)) (HasDirectPerm_24073_45764 QPMask@1 b_24 array_1)) (=> (HasDirectPerm_24073_45764 QPMask@1 b_24 array_1) (=> (and (= t1B@0 (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1)) (state Heap@@19 QPMask@1)) (and (=> (= (ControlFlow 0 159) (- 0 167)) (> (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@1) a_2 array_1) NoPerm)) (=> (> (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@1) a_2 array_1) NoPerm) (=> (> wildcard@4 NoPerm) (=> (and (and (< wildcard@4 (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@1) a_2 array_1)) (= Mask@2 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@1) a_2 array_1 (- (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@1) a_2 array_1) wildcard@4)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@1) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@1) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@1) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@1) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@1)))) (and (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@0 Mask@2) (state ExhaleHeap@0 Mask@2))) (and (=> (= (ControlFlow 0 159) (- 0 166)) (> (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@2) b_24 array_1) NoPerm)) (=> (> (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@2) b_24 array_1) NoPerm) (=> (> wildcard@5 NoPerm) (=> (and (and (< wildcard@5 (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@2) b_24 array_1)) (= Mask@3 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@2) b_24 array_1 (- (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@2) b_24 array_1) wildcard@5)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@2) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@2) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@2) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@2) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@2)))) (and (IdenticalOnKnownLocations ExhaleHeap@0 ExhaleHeap@1 Mask@3) (state ExhaleHeap@1 Mask@3))) (and (=> (= (ControlFlow 0 159) (- 0 165)) (>= start_1 0)) (=> (>= start_1 0) (and (=> (= (ControlFlow 0 159) (- 0 164)) (HasDirectPerm_24073_45764 Mask@3 a_2 array_1)) (=> (HasDirectPerm_24073_45764 Mask@3 a_2 array_1) (and (=> (= (ControlFlow 0 159) (- 0 163)) (<= middle@0 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@1) a_2 array_1)))) (=> (<= middle@0 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@1) a_2 array_1))) (and (=> (= (ControlFlow 0 159) (- 0 162)) (HasDirectPerm_24073_45764 Mask@3 a_2 array_1)) (=> (HasDirectPerm_24073_45764 Mask@3 a_2 array_1) (and (=> (= (ControlFlow 0 159) (- 0 161)) (HasDirectPerm_24073_45764 Mask@3 b_24 array_1)) (=> (HasDirectPerm_24073_45764 Mask@3 b_24 array_1) (and (=> (= (ControlFlow 0 159) (- 0 160)) (= (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@1) a_2 array_1)) (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@1) b_24 array_1)))) (=> (= (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@1) a_2 array_1)) (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@1) b_24 array_1))) (=> (state ExhaleHeap@1 Mask@3) (and (and (=> (= (ControlFlow 0 159) 156) anon103_Else_correct) (=> (= (ControlFlow 0 159) 55) anon104_Then_correct)) (=> (= (ControlFlow 0 159) 59) anon104_Else_correct)))))))))))))))))))))))))))))))))
(let ((anon102_Else_correct  (=> (and (and (>= 1 (- end_1 start_1)) (= Mask@14 QPMask@1)) (and (= Heap@0 Heap@@19) (= (ControlFlow 0 53) 47))) anon76_correct)))
(let ((anon91_Else_correct  (and (=> (= (ControlFlow 0 214) (- 0 215)) (forall ((i_7_1 Int) (i_7_2 Int) ) (!  (=> (and (and (and (and (not (= i_7_1 i_7_2)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_7_1)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_7_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1) i_7_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1) i_7_2))))
 :qid |stdinbpl.865:15|
 :skolemid |66|
))) (=> (forall ((i_7_1@@0 Int) (i_7_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_7_1@@0 i_7_2@@0)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_7_1@@0)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_7_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1) i_7_1@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1) i_7_2@@0))))
 :qid |stdinbpl.865:15|
 :skolemid |66|
)) (=> (and (and (forall ((i_7_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_7_1@@1) (< NoPerm FullPerm)) (and (qpRange2 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1) i_7_1@@1)) (= (invRecv2 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1) i_7_1@@1)) i_7_1@@1)))
 :qid |stdinbpl.871:22|
 :skolemid |67|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1) i_7_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_7_1@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_7_1@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1) i_7_1@@1))
)) (forall ((o_9@@127 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv2 o_9@@127)) (< NoPerm FullPerm)) (qpRange2 o_9@@127)) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1) (invRecv2 o_9@@127)) o_9@@127))
 :qid |stdinbpl.875:22|
 :skolemid |68|
 :pattern ( (invRecv2 o_9@@127))
))) (and (forall ((i_7_1@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_7_1@@2) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1) i_7_1@@2) null)))
 :qid |stdinbpl.881:22|
 :skolemid |69|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1) i_7_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_7_1@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_7_1@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1) i_7_1@@2))
)) (forall ((o_9@@128 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv2 o_9@@128)) (< NoPerm FullPerm)) (qpRange2 o_9@@128)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1) (invRecv2 o_9@@128)) o_9@@128)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@1) o_9@@128 value_1) (+ (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@0) o_9@@128 value_1) FullPerm)))) (=> (not (and (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv2 o_9@@128)) (< NoPerm FullPerm)) (qpRange2 o_9@@128))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@1) o_9@@128 value_1) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@0) o_9@@128 value_1))))
 :qid |stdinbpl.887:22|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@1) o_9@@128 value_1))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@129 T@Ref) (f_5@@95 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@0) o_9@@129 f_5@@95) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@1) o_9@@129 f_5@@95)))
 :qid |stdinbpl.891:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@0) o_9@@129 f_5@@95))
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@1) o_9@@129 f_5@@95))
)) (forall ((o_9@@130 T@Ref) (f_5@@96 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@0) o_9@@130 f_5@@96) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@1) o_9@@130 f_5@@96)))
 :qid |stdinbpl.891:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@0) o_9@@130 f_5@@96))
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@1) o_9@@130 f_5@@96))
))) (forall ((o_9@@131 T@Ref) (f_5@@97 T@Field_44956_3802) ) (!  (=> (not (= f_5@@97 value_1)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@0) o_9@@131 f_5@@97) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@1) o_9@@131 f_5@@97)))
 :qid |stdinbpl.891:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@0) o_9@@131 f_5@@97))
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@1) o_9@@131 f_5@@97))
))) (forall ((o_9@@132 T@Ref) (f_5@@98 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@0) o_9@@132 f_5@@98) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@1) o_9@@132 f_5@@98)))
 :qid |stdinbpl.891:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@0) o_9@@132 f_5@@98))
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@1) o_9@@132 f_5@@98))
))) (forall ((o_9@@133 T@Ref) (f_5@@99 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@0) o_9@@133 f_5@@99) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@1) o_9@@133 f_5@@99)))
 :qid |stdinbpl.891:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@0) o_9@@133 f_5@@99))
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@1) o_9@@133 f_5@@99))
))) (forall ((o_9@@134 T@Ref) (f_5@@100 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@0) o_9@@134 f_5@@100) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@1) o_9@@134 f_5@@100)))
 :qid |stdinbpl.891:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@0) o_9@@134 f_5@@100))
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@1) o_9@@134 f_5@@100))
))) (and (state Heap@@19 QPMask@1) (state Heap@@19 QPMask@1))) (and (and (=> (= (ControlFlow 0 214) 210) anon93_Then_correct) (=> (= (ControlFlow 0 214) 159) anon102_Then_correct)) (=> (= (ControlFlow 0 214) 53) anon102_Else_correct))))))))
(let ((anon15_correct true))
(let ((anon92_Else_correct  (=> (and (not (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_14)) (= (ControlFlow 0 30) 25)) anon15_correct)))
(let ((anon92_Then_correct  (=> (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_14) (and (=> (= (ControlFlow 0 26) (- 0 29)) (HasDirectPerm_24073_45764 QPMask@0 b_24 array_1)) (=> (HasDirectPerm_24073_45764 QPMask@0 b_24 array_1) (and (=> (= (ControlFlow 0 26) (- 0 28)) (>= i_14 0)) (=> (>= i_14 0) (and (=> (= (ControlFlow 0 26) (- 0 27)) (< i_14 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1)))) (=> (< i_14 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1))) (=> (= (ControlFlow 0 26) 25) anon15_correct))))))))))
(let ((anon89_Else_correct  (=> (and (forall ((i_5_1 Int) (j_3 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_5_1) (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_3) (not (= i_5_1 j_3)))) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1) i_5_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1) j_3))))
 :qid |stdinbpl.845:20|
 :skolemid |65|
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_5_1) (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_3))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_5_1) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_3))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_5_1) (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_3))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_5_1) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_3))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_5_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1) j_3))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_5_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1) j_3))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_3) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1) i_5_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_3) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1) i_5_1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1) i_5_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1) j_3))
)) (state Heap@@19 QPMask@0)) (and (and (=> (= (ControlFlow 0 216) 214) anon91_Else_correct) (=> (= (ControlFlow 0 216) 26) anon92_Then_correct)) (=> (= (ControlFlow 0 216) 30) anon92_Else_correct)))))
(let ((anon11_correct true))
(let ((anon90_Else_correct  (=> (and (not (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_4) (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_12) (not (= i_4 j_12))))) (= (ControlFlow 0 24) 16)) anon11_correct)))
(let ((anon90_Then_correct  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_4) (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_12) (not (= i_4 j_12)))) (and (=> (= (ControlFlow 0 17) (- 0 23)) (HasDirectPerm_24073_45764 QPMask@0 b_24 array_1)) (=> (HasDirectPerm_24073_45764 QPMask@0 b_24 array_1) (and (=> (= (ControlFlow 0 17) (- 0 22)) (>= i_4 0)) (=> (>= i_4 0) (and (=> (= (ControlFlow 0 17) (- 0 21)) (< i_4 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1)))) (=> (< i_4 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1))) (and (=> (= (ControlFlow 0 17) (- 0 20)) (HasDirectPerm_24073_45764 QPMask@0 b_24 array_1)) (=> (HasDirectPerm_24073_45764 QPMask@0 b_24 array_1) (and (=> (= (ControlFlow 0 17) (- 0 19)) (>= j_12 0)) (=> (>= j_12 0) (and (=> (= (ControlFlow 0 17) (- 0 18)) (< j_12 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1)))) (=> (< j_12 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1))) (=> (= (ControlFlow 0 17) 16) anon11_correct))))))))))))))))
(let ((anon87_Else_correct  (and (=> (= (ControlFlow 0 217) (- 0 218)) (forall ((i_3_2 Int) (i_3_3 Int) ) (!  (=> (and (and (and (and (not (= i_3_2 i_3_3)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_3_2)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_3_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1) i_3_2) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1) i_3_3))))
 :qid |stdinbpl.793:15|
 :skolemid |59|
))) (=> (forall ((i_3_2@@0 Int) (i_3_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3_2@@0 i_3_3@@0)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_3_2@@0)) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_3_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1) i_3_2@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1) i_3_3@@0))))
 :qid |stdinbpl.793:15|
 :skolemid |59|
)) (=> (and (and (forall ((i_3_2@@1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_3_2@@1) (< NoPerm FullPerm)) (and (qpRange1 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1) i_3_2@@1)) (= (invRecv1 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1) i_3_2@@1)) i_3_2@@1)))
 :qid |stdinbpl.799:22|
 :skolemid |60|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1) i_3_2@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_3_2@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_3_2@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1) i_3_2@@1))
)) (forall ((o_9@@135 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv1 o_9@@135)) (< NoPerm FullPerm)) (qpRange1 o_9@@135)) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1) (invRecv1 o_9@@135)) o_9@@135))
 :qid |stdinbpl.803:22|
 :skolemid |61|
 :pattern ( (invRecv1 o_9@@135))
))) (and (forall ((i_3_2@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_3_2@@2) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1) i_3_2@@2) null)))
 :qid |stdinbpl.809:22|
 :skolemid |62|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1) i_3_2@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_3_2@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_3_2@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1) i_3_2@@2))
)) (forall ((o_9@@136 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv1 o_9@@136)) (< NoPerm FullPerm)) (qpRange1 o_9@@136)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1) (invRecv1 o_9@@136)) o_9@@136)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@0) o_9@@136 value_1) (+ (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@1) o_9@@136 value_1) FullPerm)))) (=> (not (and (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) (invRecv1 o_9@@136)) (< NoPerm FullPerm)) (qpRange1 o_9@@136))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@0) o_9@@136 value_1) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@1) o_9@@136 value_1))))
 :qid |stdinbpl.815:22|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@0) o_9@@136 value_1))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@137 T@Ref) (f_5@@101 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@1) o_9@@137 f_5@@101) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@0) o_9@@137 f_5@@101)))
 :qid |stdinbpl.819:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@1) o_9@@137 f_5@@101))
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@0) o_9@@137 f_5@@101))
)) (forall ((o_9@@138 T@Ref) (f_5@@102 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@1) o_9@@138 f_5@@102) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@0) o_9@@138 f_5@@102)))
 :qid |stdinbpl.819:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@1) o_9@@138 f_5@@102))
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@0) o_9@@138 f_5@@102))
))) (forall ((o_9@@139 T@Ref) (f_5@@103 T@Field_44956_3802) ) (!  (=> (not (= f_5@@103 value_1)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@1) o_9@@139 f_5@@103) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@0) o_9@@139 f_5@@103)))
 :qid |stdinbpl.819:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@1) o_9@@139 f_5@@103))
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@0) o_9@@139 f_5@@103))
))) (forall ((o_9@@140 T@Ref) (f_5@@104 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@1) o_9@@140 f_5@@104) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@0) o_9@@140 f_5@@104)))
 :qid |stdinbpl.819:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@1) o_9@@140 f_5@@104))
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@0) o_9@@140 f_5@@104))
))) (forall ((o_9@@141 T@Ref) (f_5@@105 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@1) o_9@@141 f_5@@105) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@0) o_9@@141 f_5@@105)))
 :qid |stdinbpl.819:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@1) o_9@@141 f_5@@105))
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@0) o_9@@141 f_5@@105))
))) (forall ((o_9@@142 T@Ref) (f_5@@106 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@1) o_9@@142 f_5@@106) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@0) o_9@@142 f_5@@106)))
 :qid |stdinbpl.819:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@1) o_9@@142 f_5@@106))
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@0) o_9@@142 f_5@@106))
))) (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0))) (and (and (=> (= (ControlFlow 0 217) 216) anon89_Else_correct) (=> (= (ControlFlow 0 217) 17) anon90_Then_correct)) (=> (= (ControlFlow 0 217) 24) anon90_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon88_Else_correct  (=> (and (not (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_3)) (= (ControlFlow 0 15) 10)) anon7_correct)))
(let ((anon88_Then_correct  (=> (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_3) (and (=> (= (ControlFlow 0 11) (- 0 14)) (HasDirectPerm_24073_45764 Mask@1 a_2 array_1)) (=> (HasDirectPerm_24073_45764 Mask@1 a_2 array_1) (and (=> (= (ControlFlow 0 11) (- 0 13)) (>= i_3 0)) (=> (>= i_3 0) (and (=> (= (ControlFlow 0 11) (- 0 12)) (< i_3 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1)))) (=> (< i_3 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1))) (=> (= (ControlFlow 0 11) 10) anon7_correct))))))))))
(let ((anon85_Else_correct  (=> (and (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_1) (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_1) (not (= i_1 j_1)))) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1) i_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1) j_1))))
 :qid |stdinbpl.773:20|
 :skolemid |58|
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_1) (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_1) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_1) (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_1) (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) i_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1) j_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1) j_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start_1 end_1) j_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1) i_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1) i_1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1) i_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1) j_1))
)) (state Heap@@19 Mask@1)) (and (and (=> (= (ControlFlow 0 219) 217) anon87_Else_correct) (=> (= (ControlFlow 0 219) 11) anon88_Then_correct)) (=> (= (ControlFlow 0 219) 15) anon88_Else_correct)))))
(let ((anon3_correct true))
(let ((anon86_Else_correct  (=> (and (not (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_18) (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_14) (not (= i_18 j_14))))) (= (ControlFlow 0 9) 1)) anon3_correct)))
(let ((anon86_Then_correct  (=> (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) i_18) (and (|Seq#Contains_3680| (|Seq#Range| start_1 end_1) j_14) (not (= i_18 j_14)))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (HasDirectPerm_24073_45764 Mask@1 a_2 array_1)) (=> (HasDirectPerm_24073_45764 Mask@1 a_2 array_1) (and (=> (= (ControlFlow 0 2) (- 0 7)) (>= i_18 0)) (=> (>= i_18 0) (and (=> (= (ControlFlow 0 2) (- 0 6)) (< i_18 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1)))) (=> (< i_18 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (HasDirectPerm_24073_45764 Mask@1 a_2 array_1)) (=> (HasDirectPerm_24073_45764 Mask@1 a_2 array_1) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_14 0)) (=> (>= j_14 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_14 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1)))) (=> (< j_14 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1))) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))))))
(let ((anon0_correct  (=> (state Heap@@19 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@19) a_2 $allocated)) (=> (and (and (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@19) b_24 $allocated) (> wildcard@0 NoPerm)) (and (not (= a_2 null)) (= Mask@0 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| ZeroMask) a_2 array_1 (+ (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| ZeroMask) a_2 array_1) wildcard@0)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| ZeroMask) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| ZeroMask) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| ZeroMask) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| ZeroMask) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| ZeroMask))))) (=> (and (and (and (state Heap@@19 Mask@0) (state Heap@@19 Mask@0)) (and (> wildcard@1 NoPerm) (not (= b_24 null)))) (and (and (= Mask@1 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@0) b_24 array_1 (+ (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@0) b_24 array_1) wildcard@1)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@0) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@0) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@0) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@0) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@0))) (state Heap@@19 Mask@1)) (and (state Heap@@19 Mask@1) (>= start_1 0)))) (and (=> (= (ControlFlow 0 220) (- 0 223)) (HasDirectPerm_24073_45764 Mask@1 a_2 array_1)) (=> (HasDirectPerm_24073_45764 Mask@1 a_2 array_1) (=> (<= end_1 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1))) (and (=> (= (ControlFlow 0 220) (- 0 222)) (HasDirectPerm_24073_45764 Mask@1 a_2 array_1)) (=> (HasDirectPerm_24073_45764 Mask@1 a_2 array_1) (and (=> (= (ControlFlow 0 220) (- 0 221)) (HasDirectPerm_24073_45764 Mask@1 b_24 array_1)) (=> (HasDirectPerm_24073_45764 Mask@1 b_24 array_1) (=> (and (= (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array_1)) (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array_1))) (state Heap@@19 Mask@1)) (and (and (=> (= (ControlFlow 0 220) 219) anon85_Else_correct) (=> (= (ControlFlow 0 220) 2) anon86_Then_correct)) (=> (= (ControlFlow 0 220) 9) anon86_Else_correct))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 224) 220)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
