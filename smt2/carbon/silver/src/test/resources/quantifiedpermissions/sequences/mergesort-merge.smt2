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
(declare-fun value () T@Field_44956_3802)
(declare-fun array () T@Field_45003_45008)
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
(assert (forall ((Heap@@0 T@PolymorphicMapType_38811) (ExhaleHeap T@PolymorphicMapType_38811) (Mask@@0 T@PolymorphicMapType_38832) (pm_f_19 T@Field_24073_128031) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_24073_128095 Mask@@0 null pm_f_19) (IsPredicateField_24073_128122 pm_f_19)) (= (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@0) null (PredicateMaskField_24073 pm_f_19)) (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| ExhaleHeap) null (PredicateMaskField_24073 pm_f_19)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_24073_128122 pm_f_19) (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| ExhaleHeap) null (PredicateMaskField_24073 pm_f_19)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_38811) (ExhaleHeap@@0 T@PolymorphicMapType_38811) (Mask@@1 T@PolymorphicMapType_38832) (pm_f_19@@0 T@Field_24073_128031) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_24073_128095 Mask@@1 null pm_f_19@@0) (IsWandField_24073_130073 pm_f_19@@0)) (= (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@1) null (WandMaskField_24073 pm_f_19@@0)) (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| ExhaleHeap@@0) null (WandMaskField_24073 pm_f_19@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_24073_130073 pm_f_19@@0) (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| ExhaleHeap@@0) null (WandMaskField_24073 pm_f_19@@0)))
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
(assert (forall ((Heap@@2 T@PolymorphicMapType_38811) (ExhaleHeap@@1 T@PolymorphicMapType_38811) (Mask@@2 T@PolymorphicMapType_38832) (o_44 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@2) o_44 $allocated) (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| ExhaleHeap@@1) o_44 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| ExhaleHeap@@1) o_44 $allocated))
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
(assert  (not (IsPredicateField_24071_3802 value)))
(assert  (not (IsWandField_24071_3802 value)))
(assert  (not (IsPredicateField_24073_45030 array)))
(assert  (not (IsWandField_24073_45056 array)))
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
(assert (forall ((Heap@@4 T@PolymorphicMapType_38811) (ExhaleHeap@@3 T@PolymorphicMapType_38811) (Mask@@16 T@PolymorphicMapType_38832) (o_44@@0 T@Ref) (f_47 T@Field_24073_128164) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (=> (HasDirectPerm_24073_134744 Mask@@16 o_44@@0 f_47) (= (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@4) o_44@@0 f_47) (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| ExhaleHeap@@3) o_44@@0 f_47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| ExhaleHeap@@3) o_44@@0 f_47))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_38811) (ExhaleHeap@@4 T@PolymorphicMapType_38811) (Mask@@17 T@PolymorphicMapType_38832) (o_44@@1 T@Ref) (f_47@@0 T@Field_24073_128031) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (=> (HasDirectPerm_24073_128095 Mask@@17 o_44@@1 f_47@@0) (= (select (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@5) o_44@@1 f_47@@0) (select (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| ExhaleHeap@@4) o_44@@1 f_47@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (select (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| ExhaleHeap@@4) o_44@@1 f_47@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_38811) (ExhaleHeap@@5 T@PolymorphicMapType_38811) (Mask@@18 T@PolymorphicMapType_38832) (o_44@@2 T@Ref) (f_47@@1 T@Field_38884_38885) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_24073_38885 Mask@@18 o_44@@2 f_47@@1) (= (select (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@6) o_44@@2 f_47@@1) (select (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| ExhaleHeap@@5) o_44@@2 f_47@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| ExhaleHeap@@5) o_44@@2 f_47@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_38811) (ExhaleHeap@@6 T@PolymorphicMapType_38811) (Mask@@19 T@PolymorphicMapType_38832) (o_44@@3 T@Ref) (f_47@@2 T@Field_38871_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_24073_53 Mask@@19 o_44@@3 f_47@@2) (= (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@7) o_44@@3 f_47@@2) (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| ExhaleHeap@@6) o_44@@3 f_47@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| ExhaleHeap@@6) o_44@@3 f_47@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_38811) (ExhaleHeap@@7 T@PolymorphicMapType_38811) (Mask@@20 T@PolymorphicMapType_38832) (o_44@@4 T@Ref) (f_47@@3 T@Field_44956_3802) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_24071_3802 Mask@@20 o_44@@4 f_47@@3) (= (select (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@8) o_44@@4 f_47@@3) (select (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| ExhaleHeap@@7) o_44@@4 f_47@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| ExhaleHeap@@7) o_44@@4 f_47@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_38811) (ExhaleHeap@@8 T@PolymorphicMapType_38811) (Mask@@21 T@PolymorphicMapType_38832) (o_44@@5 T@Ref) (f_47@@4 T@Field_45003_45008) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_24073_45764 Mask@@21 o_44@@5 f_47@@4) (= (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@9) o_44@@5 f_47@@4) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@@8) o_44@@5 f_47@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@@8) o_44@@5 f_47@@4))
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
(assert (forall ((Heap@@10 T@PolymorphicMapType_38811) (ExhaleHeap@@9 T@PolymorphicMapType_38811) (Mask@@22 T@PolymorphicMapType_38832) (pm_f_19@@1 T@Field_24073_128031) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (=> (and (HasDirectPerm_24073_128095 Mask@@22 null pm_f_19@@1) (IsPredicateField_24073_128122 pm_f_19@@1)) (and (and (and (and (and (forall ((o2_19 T@Ref) (f_47@@5 T@Field_38871_53) ) (!  (=> (select (|PolymorphicMapType_39360_38871_53#PolymorphicMapType_39360| (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@10) null (PredicateMaskField_24073 pm_f_19@@1))) o2_19 f_47@@5) (= (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@10) o2_19 f_47@@5) (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| ExhaleHeap@@9) o2_19 f_47@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| ExhaleHeap@@9) o2_19 f_47@@5))
)) (forall ((o2_19@@0 T@Ref) (f_47@@6 T@Field_38884_38885) ) (!  (=> (select (|PolymorphicMapType_39360_38871_38885#PolymorphicMapType_39360| (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@10) null (PredicateMaskField_24073 pm_f_19@@1))) o2_19@@0 f_47@@6) (= (select (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@10) o2_19@@0 f_47@@6) (select (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| ExhaleHeap@@9) o2_19@@0 f_47@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| ExhaleHeap@@9) o2_19@@0 f_47@@6))
))) (forall ((o2_19@@1 T@Ref) (f_47@@7 T@Field_44956_3802) ) (!  (=> (select (|PolymorphicMapType_39360_38871_3802#PolymorphicMapType_39360| (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@10) null (PredicateMaskField_24073 pm_f_19@@1))) o2_19@@1 f_47@@7) (= (select (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@10) o2_19@@1 f_47@@7) (select (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| ExhaleHeap@@9) o2_19@@1 f_47@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| ExhaleHeap@@9) o2_19@@1 f_47@@7))
))) (forall ((o2_19@@2 T@Ref) (f_47@@8 T@Field_45003_45008) ) (!  (=> (select (|PolymorphicMapType_39360_38871_45008#PolymorphicMapType_39360| (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@10) null (PredicateMaskField_24073 pm_f_19@@1))) o2_19@@2 f_47@@8) (= (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@10) o2_19@@2 f_47@@8) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@@9) o2_19@@2 f_47@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@@9) o2_19@@2 f_47@@8))
))) (forall ((o2_19@@3 T@Ref) (f_47@@9 T@Field_24073_128031) ) (!  (=> (select (|PolymorphicMapType_39360_38871_128031#PolymorphicMapType_39360| (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@10) null (PredicateMaskField_24073 pm_f_19@@1))) o2_19@@3 f_47@@9) (= (select (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@10) o2_19@@3 f_47@@9) (select (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| ExhaleHeap@@9) o2_19@@3 f_47@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| ExhaleHeap@@9) o2_19@@3 f_47@@9))
))) (forall ((o2_19@@4 T@Ref) (f_47@@10 T@Field_24073_128164) ) (!  (=> (select (|PolymorphicMapType_39360_38871_129546#PolymorphicMapType_39360| (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@10) null (PredicateMaskField_24073 pm_f_19@@1))) o2_19@@4 f_47@@10) (= (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@10) o2_19@@4 f_47@@10) (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| ExhaleHeap@@9) o2_19@@4 f_47@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| ExhaleHeap@@9) o2_19@@4 f_47@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (IsPredicateField_24073_128122 pm_f_19@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_38811) (ExhaleHeap@@10 T@PolymorphicMapType_38811) (Mask@@23 T@PolymorphicMapType_38832) (pm_f_19@@2 T@Field_24073_128031) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (=> (and (HasDirectPerm_24073_128095 Mask@@23 null pm_f_19@@2) (IsWandField_24073_130073 pm_f_19@@2)) (and (and (and (and (and (forall ((o2_19@@5 T@Ref) (f_47@@11 T@Field_38871_53) ) (!  (=> (select (|PolymorphicMapType_39360_38871_53#PolymorphicMapType_39360| (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@11) null (WandMaskField_24073 pm_f_19@@2))) o2_19@@5 f_47@@11) (= (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@11) o2_19@@5 f_47@@11) (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| ExhaleHeap@@10) o2_19@@5 f_47@@11)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| ExhaleHeap@@10) o2_19@@5 f_47@@11))
)) (forall ((o2_19@@6 T@Ref) (f_47@@12 T@Field_38884_38885) ) (!  (=> (select (|PolymorphicMapType_39360_38871_38885#PolymorphicMapType_39360| (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@11) null (WandMaskField_24073 pm_f_19@@2))) o2_19@@6 f_47@@12) (= (select (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@11) o2_19@@6 f_47@@12) (select (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| ExhaleHeap@@10) o2_19@@6 f_47@@12)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| ExhaleHeap@@10) o2_19@@6 f_47@@12))
))) (forall ((o2_19@@7 T@Ref) (f_47@@13 T@Field_44956_3802) ) (!  (=> (select (|PolymorphicMapType_39360_38871_3802#PolymorphicMapType_39360| (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@11) null (WandMaskField_24073 pm_f_19@@2))) o2_19@@7 f_47@@13) (= (select (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@11) o2_19@@7 f_47@@13) (select (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| ExhaleHeap@@10) o2_19@@7 f_47@@13)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| ExhaleHeap@@10) o2_19@@7 f_47@@13))
))) (forall ((o2_19@@8 T@Ref) (f_47@@14 T@Field_45003_45008) ) (!  (=> (select (|PolymorphicMapType_39360_38871_45008#PolymorphicMapType_39360| (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@11) null (WandMaskField_24073 pm_f_19@@2))) o2_19@@8 f_47@@14) (= (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@11) o2_19@@8 f_47@@14) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@@10) o2_19@@8 f_47@@14)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@@10) o2_19@@8 f_47@@14))
))) (forall ((o2_19@@9 T@Ref) (f_47@@15 T@Field_24073_128031) ) (!  (=> (select (|PolymorphicMapType_39360_38871_128031#PolymorphicMapType_39360| (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@11) null (WandMaskField_24073 pm_f_19@@2))) o2_19@@9 f_47@@15) (= (select (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@11) o2_19@@9 f_47@@15) (select (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| ExhaleHeap@@10) o2_19@@9 f_47@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| ExhaleHeap@@10) o2_19@@9 f_47@@15))
))) (forall ((o2_19@@10 T@Ref) (f_47@@16 T@Field_24073_128164) ) (!  (=> (select (|PolymorphicMapType_39360_38871_129546#PolymorphicMapType_39360| (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@11) null (WandMaskField_24073 pm_f_19@@2))) o2_19@@10 f_47@@16) (= (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@11) o2_19@@10 f_47@@16) (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| ExhaleHeap@@10) o2_19@@10 f_47@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| ExhaleHeap@@10) o2_19@@10 f_47@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (IsWandField_24073_130073 pm_f_19@@2))
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
(assert (forall ((Heap@@12 T@PolymorphicMapType_38811) (o_43 T@Ref) (f_41 T@Field_24073_128031) (v@@4 T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_38811 (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@12) (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@12) (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@12) (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@12) (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@12) (store (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@12) o_43 f_41 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38811 (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@12) (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@12) (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@12) (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@12) (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@12) (store (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@12) o_43 f_41 v@@4)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_38811) (o_43@@0 T@Ref) (f_41@@0 T@Field_24073_128164) (v@@5 T@PolymorphicMapType_39360) ) (! (succHeap Heap@@13 (PolymorphicMapType_38811 (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@13) (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@13) (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@13) (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@13) (store (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@13) o_43@@0 f_41@@0 v@@5) (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38811 (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@13) (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@13) (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@13) (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@13) (store (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@13) o_43@@0 f_41@@0 v@@5) (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_38811) (o_43@@1 T@Ref) (f_41@@1 T@Field_44956_3802) (v@@6 Int) ) (! (succHeap Heap@@14 (PolymorphicMapType_38811 (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@14) (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@14) (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@14) (store (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@14) o_43@@1 f_41@@1 v@@6) (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@14) (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38811 (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@14) (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@14) (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@14) (store (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@14) o_43@@1 f_41@@1 v@@6) (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@14) (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_38811) (o_43@@2 T@Ref) (f_41@@2 T@Field_45003_45008) (v@@7 T@Seq_45006) ) (! (succHeap Heap@@15 (PolymorphicMapType_38811 (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@15) (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@15) (store (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@15) o_43@@2 f_41@@2 v@@7) (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@15) (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@15) (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38811 (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@15) (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@15) (store (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@15) o_43@@2 f_41@@2 v@@7) (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@15) (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@15) (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_38811) (o_43@@3 T@Ref) (f_41@@3 T@Field_38884_38885) (v@@8 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_38811 (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@16) (store (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@16) o_43@@3 f_41@@3 v@@8) (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@16) (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@16) (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@16) (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38811 (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@16) (store (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@16) o_43@@3 f_41@@3 v@@8) (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@16) (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@16) (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@16) (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_38811) (o_43@@4 T@Ref) (f_41@@4 T@Field_38871_53) (v@@9 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_38811 (store (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@17) o_43@@4 f_41@@4 v@@9) (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@17) (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@17) (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@17) (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@17) (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38811 (store (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@17) o_43@@4 f_41@@4 v@@9) (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@17) (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@17) (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| Heap@@17) (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| Heap@@17) (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| Heap@@17)))
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
(assert (forall ((o_43@@5 T@Ref) (f_15 T@Field_38884_38885) (Heap@@18 T@PolymorphicMapType_38811) ) (!  (=> (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@18) o_43@@5 $allocated) (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@18) (select (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@18) o_43@@5 f_15) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| Heap@@18) o_43@@5 f_15))
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
(declare-fun start () Int)
(declare-fun end () Int)
(declare-fun i_36 () Int)
(declare-fun QPMask@14 () T@PolymorphicMapType_38832)
(declare-fun b_24 () T@Ref)
(declare-fun PostHeap@0 () T@PolymorphicMapType_38811)
(declare-fun i_35 () Int)
(declare-fun j_20 () Int)
(declare-fun a_2 () T@Ref)
(declare-fun qpRange21 (T@Ref) Bool)
(declare-fun invRecv21 (T@Ref) Int)
(declare-fun PostMask@1 () T@PolymorphicMapType_38832)
(declare-fun i_34 () Int)
(declare-fun i_33 () Int)
(declare-fun j_17 () Int)
(declare-fun wildcard@2 () Real)
(declare-fun PostMask@0 () T@PolymorphicMapType_38832)
(declare-fun wildcard@3 () Real)
(declare-fun QPMask@1 () T@PolymorphicMapType_38832)
(declare-fun Heap@@19 () T@PolymorphicMapType_38811)
(declare-fun i_43 () Int)
(declare-fun QPMask@12 () T@PolymorphicMapType_38832)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_38811)
(declare-fun qpRange27 (T@Ref) Bool)
(declare-fun invRecv27 (T@Ref) Int)
(declare-fun Mask@5 () T@PolymorphicMapType_38832)
(declare-fun i_41 () Int)
(declare-fun wildcard@6 () Real)
(declare-fun Mask@4 () T@PolymorphicMapType_38832)
(declare-fun QPMask@3 () T@PolymorphicMapType_38832)
(declare-fun wildcard@7 () Real)
(declare-fun N@0 () Int)
(declare-fun I@0 () Int)
(declare-fun J@0 () Int)
(declare-fun middle () Int)
(declare-fun Heap@2 () T@PolymorphicMapType_38811)
(declare-fun QPMask@5 () T@PolymorphicMapType_38832)
(declare-fun N@1 () Int)
(declare-fun wildcard@14 () Real)
(declare-fun Mask@12 () T@PolymorphicMapType_38832)
(declare-fun wildcard@15 () Real)
(declare-fun Mask@13 () T@PolymorphicMapType_38832)
(declare-fun I@2 () Int)
(declare-fun J@2 () Int)
(declare-fun neverTriggered31 (Int) Bool)
(declare-fun qpRange31 (T@Ref) Bool)
(declare-fun invRecv31 (T@Ref) Int)
(declare-fun QPMask@10 () T@PolymorphicMapType_38832)
(declare-fun neverTriggered32 (Int) Bool)
(declare-fun Heap@1 () T@PolymorphicMapType_38811)
(declare-fun J@1 () Int)
(declare-fun Heap@0 () T@PolymorphicMapType_38811)
(declare-fun I@1 () Int)
(declare-fun wildcard@8 () Real)
(declare-fun Mask@6 () T@PolymorphicMapType_38832)
(declare-fun wildcard@9 () Real)
(declare-fun Mask@7 () T@PolymorphicMapType_38832)
(declare-fun qpRange29 (T@Ref) Bool)
(declare-fun invRecv29 (T@Ref) Int)
(declare-fun QPMask@4 () T@PolymorphicMapType_38832)
(declare-fun qpRange30 (T@Ref) Bool)
(declare-fun invRecv30 (T@Ref) Int)
(declare-fun i_15 () Int)
(declare-fun j_10_2 () Int)
(declare-fun neverTriggered24 (Int) Bool)
(declare-fun QPMask@8 () T@PolymorphicMapType_38832)
(declare-fun neverTriggered23 (Int) Bool)
(declare-fun Mask@11 () T@PolymorphicMapType_38832)
(declare-fun qpRange23 (T@Ref) Bool)
(declare-fun invRecv23 (T@Ref) Int)
(declare-fun i_12_1 () Int)
(declare-fun j_8 () Int)
(declare-fun wildcard@10 () Real)
(declare-fun Mask@8 () T@PolymorphicMapType_38832)
(declare-fun wildcard@11 () Real)
(declare-fun Mask@9 () T@PolymorphicMapType_38832)
(declare-fun qpRange33 (T@Ref) Bool)
(declare-fun invRecv33 (T@Ref) Int)
(declare-fun QPMask@6 () T@PolymorphicMapType_38832)
(declare-fun qpRange34 (T@Ref) Bool)
(declare-fun invRecv34 (T@Ref) Int)
(declare-fun QPMask@7 () T@PolymorphicMapType_38832)
(declare-fun wildcard@12 () Real)
(declare-fun Mask@10 () T@PolymorphicMapType_38832)
(declare-fun wildcard@13 () Real)
(declare-fun wildcard@4 () Real)
(declare-fun Mask@2 () T@PolymorphicMapType_38832)
(declare-fun wildcard@5 () Real)
(declare-fun Mask@3 () T@PolymorphicMapType_38832)
(declare-fun neverTriggered25 (Int) Bool)
(declare-fun qpRange25 (T@Ref) Bool)
(declare-fun invRecv25 (T@Ref) Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_38832)
(declare-fun neverTriggered26 (Int) Bool)
(declare-fun qpRange26 (T@Ref) Bool)
(declare-fun invRecv26 (T@Ref) Int)
(declare-fun qpRange20 (T@Ref) Bool)
(declare-fun invRecv20 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_38832)
(declare-fun l_4 () Int)
(declare-fun i_31 () Int)
(declare-fun j_19 () Int)
(declare-fun qpRange19 (T@Ref) Bool)
(declare-fun invRecv19 (T@Ref) Int)
(declare-fun Mask@1 () T@PolymorphicMapType_38832)
(declare-fun k_23 () Int)
(declare-fun i_29 () Int)
(declare-fun j_16 () Int)
(declare-fun wildcard@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_38832)
(declare-fun wildcard@1 () Real)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id merge)
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
 (=> (= (ControlFlow 0 0) 192) (let ((anon32_correct true))
(let ((anon76_Else_correct  (=> (and (not (|Seq#Contains_3680| (|Seq#Range| start end) i_36)) (= (ControlFlow 0 172) 167)) anon32_correct)))
(let ((anon76_Then_correct  (=> (|Seq#Contains_3680| (|Seq#Range| start end) i_36) (and (=> (= (ControlFlow 0 168) (- 0 171)) (HasDirectPerm_24073_45764 QPMask@14 b_24 array)) (=> (HasDirectPerm_24073_45764 QPMask@14 b_24 array) (and (=> (= (ControlFlow 0 168) (- 0 170)) (>= i_36 0)) (=> (>= i_36 0) (and (=> (= (ControlFlow 0 168) (- 0 169)) (< i_36 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array)))) (=> (< i_36 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array))) (=> (= (ControlFlow 0 168) 167) anon32_correct))))))))))
(let ((anon75_Else_correct  (=> (= (ControlFlow 0 166) (- 0 165)) (forall ((i_11_1 Int) (i_11_2 Int) ) (!  (=> (and (and (and (and (not (= i_11_1 i_11_2)) (|Seq#Contains_3680| (|Seq#Range| start end) i_11_1)) (|Seq#Contains_3680| (|Seq#Range| start end) i_11_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array) i_11_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array) i_11_2))))
 :qid |stdinbpl.2524:15|
 :skolemid |198|
)))))
(let ((anon73_Else_correct  (=> (and (forall ((i_9_1 Int) (j_7_1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) i_9_1) (and (|Seq#Contains_3680| (|Seq#Range| start end) j_7_1) (not (= i_9_1 j_7_1)))) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array) i_9_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array) j_7_1))))
 :qid |stdinbpl.2504:20|
 :skolemid |197|
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_9_1) (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) j_7_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_9_1) (|Seq#Contains_3680| (|Seq#Range| start end) j_7_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_9_1) (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) j_7_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_9_1) (|Seq#Contains_3680| (|Seq#Range| start end) j_7_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_9_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array) j_7_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_9_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array) j_7_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) j_7_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array) i_9_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) j_7_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array) i_9_1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array) i_9_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array) j_7_1))
)) (state PostHeap@0 QPMask@14)) (and (and (=> (= (ControlFlow 0 173) 166) anon75_Else_correct) (=> (= (ControlFlow 0 173) 168) anon76_Then_correct)) (=> (= (ControlFlow 0 173) 172) anon76_Else_correct)))))
(let ((anon28_correct true))
(let ((anon74_Else_correct  (=> (and (not (and (|Seq#Contains_3680| (|Seq#Range| start end) i_35) (and (|Seq#Contains_3680| (|Seq#Range| start end) j_20) (not (= i_35 j_20))))) (= (ControlFlow 0 164) 156)) anon28_correct)))
(let ((anon74_Then_correct  (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) i_35) (and (|Seq#Contains_3680| (|Seq#Range| start end) j_20) (not (= i_35 j_20)))) (and (=> (= (ControlFlow 0 157) (- 0 163)) (HasDirectPerm_24073_45764 QPMask@14 b_24 array)) (=> (HasDirectPerm_24073_45764 QPMask@14 b_24 array) (and (=> (= (ControlFlow 0 157) (- 0 162)) (>= i_35 0)) (=> (>= i_35 0) (and (=> (= (ControlFlow 0 157) (- 0 161)) (< i_35 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array)))) (=> (< i_35 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array))) (and (=> (= (ControlFlow 0 157) (- 0 160)) (HasDirectPerm_24073_45764 QPMask@14 b_24 array)) (=> (HasDirectPerm_24073_45764 QPMask@14 b_24 array) (and (=> (= (ControlFlow 0 157) (- 0 159)) (>= j_20 0)) (=> (>= j_20 0) (and (=> (= (ControlFlow 0 157) (- 0 158)) (< j_20 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array)))) (=> (< j_20 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array))) (=> (= (ControlFlow 0 157) 156) anon28_correct))))))))))))))))
(let ((anon71_Else_correct  (and (=> (= (ControlFlow 0 174) (- 0 175)) (forall ((i_7_1 Int) (i_7_2 Int) ) (!  (=> (and (and (and (and (not (= i_7_1 i_7_2)) (|Seq#Contains_3680| (|Seq#Range| start end) i_7_1)) (|Seq#Contains_3680| (|Seq#Range| start end) i_7_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array) i_7_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array) i_7_2))))
 :qid |stdinbpl.2452:15|
 :skolemid |191|
))) (=> (forall ((i_7_1@@0 Int) (i_7_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_7_1@@0 i_7_2@@0)) (|Seq#Contains_3680| (|Seq#Range| start end) i_7_1@@0)) (|Seq#Contains_3680| (|Seq#Range| start end) i_7_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array) i_7_1@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array) i_7_2@@0))))
 :qid |stdinbpl.2452:15|
 :skolemid |191|
)) (=> (and (and (forall ((i_7_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) i_7_1@@1) (< NoPerm FullPerm)) (and (qpRange21 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array) i_7_1@@1)) (= (invRecv21 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array) i_7_1@@1)) i_7_1@@1)))
 :qid |stdinbpl.2458:22|
 :skolemid |192|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array) i_7_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_7_1@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_7_1@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array) i_7_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv21 o_4)) (< NoPerm FullPerm)) (qpRange21 o_4)) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array) (invRecv21 o_4)) o_4))
 :qid |stdinbpl.2462:22|
 :skolemid |193|
 :pattern ( (invRecv21 o_4))
))) (and (forall ((i_7_1@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start end) i_7_1@@2) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array) i_7_1@@2) null)))
 :qid |stdinbpl.2468:22|
 :skolemid |194|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array) i_7_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_7_1@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_7_1@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array) i_7_1@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv21 o_4@@0)) (< NoPerm FullPerm)) (qpRange21 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array) (invRecv21 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@14) o_4@@0 value) (+ (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| PostMask@1) o_4@@0 value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv21 o_4@@0)) (< NoPerm FullPerm)) (qpRange21 o_4@@0))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@14) o_4@@0 value) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| PostMask@1) o_4@@0 value))))
 :qid |stdinbpl.2474:22|
 :skolemid |195|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@14) o_4@@0 value))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| PostMask@1) o_4@@1 f_5) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@14) o_4@@1 f_5)))
 :qid |stdinbpl.2478:29|
 :skolemid |196|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| PostMask@1) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@14) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| PostMask@1) o_4@@2 f_5@@0) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@14) o_4@@2 f_5@@0)))
 :qid |stdinbpl.2478:29|
 :skolemid |196|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| PostMask@1) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@14) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_44956_3802) ) (!  (=> (not (= f_5@@1 value)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| PostMask@1) o_4@@3 f_5@@1) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@14) o_4@@3 f_5@@1)))
 :qid |stdinbpl.2478:29|
 :skolemid |196|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| PostMask@1) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@14) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| PostMask@1) o_4@@4 f_5@@2) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@14) o_4@@4 f_5@@2)))
 :qid |stdinbpl.2478:29|
 :skolemid |196|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| PostMask@1) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@14) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| PostMask@1) o_4@@5 f_5@@3) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@14) o_4@@5 f_5@@3)))
 :qid |stdinbpl.2478:29|
 :skolemid |196|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| PostMask@1) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@14) o_4@@5 f_5@@3))
))) (forall ((o_4@@6 T@Ref) (f_5@@4 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| PostMask@1) o_4@@6 f_5@@4) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@14) o_4@@6 f_5@@4)))
 :qid |stdinbpl.2478:29|
 :skolemid |196|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| PostMask@1) o_4@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@14) o_4@@6 f_5@@4))
))) (and (state PostHeap@0 QPMask@14) (state PostHeap@0 QPMask@14))) (and (and (=> (= (ControlFlow 0 174) 173) anon73_Else_correct) (=> (= (ControlFlow 0 174) 157) anon74_Then_correct)) (=> (= (ControlFlow 0 174) 164) anon74_Else_correct))))))))
(let ((anon24_correct true))
(let ((anon72_Else_correct  (=> (and (not (|Seq#Contains_3680| (|Seq#Range| start end) i_34)) (= (ControlFlow 0 155) 150)) anon24_correct)))
(let ((anon72_Then_correct  (=> (|Seq#Contains_3680| (|Seq#Range| start end) i_34) (and (=> (= (ControlFlow 0 151) (- 0 154)) (HasDirectPerm_24073_45764 PostMask@1 a_2 array)) (=> (HasDirectPerm_24073_45764 PostMask@1 a_2 array) (and (=> (= (ControlFlow 0 151) (- 0 153)) (>= i_34 0)) (=> (>= i_34 0) (and (=> (= (ControlFlow 0 151) (- 0 152)) (< i_34 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array)))) (=> (< i_34 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array))) (=> (= (ControlFlow 0 151) 150) anon24_correct))))))))))
(let ((anon69_Else_correct  (=> (and (forall ((i_5 Int) (j_5_1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) i_5) (and (|Seq#Contains_3680| (|Seq#Range| start end) j_5_1) (not (= i_5 j_5_1)))) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array) i_5) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array) j_5_1))))
 :qid |stdinbpl.2432:20|
 :skolemid |190|
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_5) (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) j_5_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_5) (|Seq#Contains_3680| (|Seq#Range| start end) j_5_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_5) (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) j_5_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_5) (|Seq#Contains_3680| (|Seq#Range| start end) j_5_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_5) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array) j_5_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_5) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array) j_5_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) j_5_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array) i_5))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) j_5_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array) i_5))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array) i_5) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array) j_5_1))
)) (state PostHeap@0 PostMask@1)) (and (and (=> (= (ControlFlow 0 176) 174) anon71_Else_correct) (=> (= (ControlFlow 0 176) 151) anon72_Then_correct)) (=> (= (ControlFlow 0 176) 155) anon72_Else_correct)))))
(let ((anon20_correct true))
(let ((anon70_Else_correct  (=> (and (not (and (|Seq#Contains_3680| (|Seq#Range| start end) i_33) (and (|Seq#Contains_3680| (|Seq#Range| start end) j_17) (not (= i_33 j_17))))) (= (ControlFlow 0 149) 141)) anon20_correct)))
(let ((anon70_Then_correct  (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) i_33) (and (|Seq#Contains_3680| (|Seq#Range| start end) j_17) (not (= i_33 j_17)))) (and (=> (= (ControlFlow 0 142) (- 0 148)) (HasDirectPerm_24073_45764 PostMask@1 a_2 array)) (=> (HasDirectPerm_24073_45764 PostMask@1 a_2 array) (and (=> (= (ControlFlow 0 142) (- 0 147)) (>= i_33 0)) (=> (>= i_33 0) (and (=> (= (ControlFlow 0 142) (- 0 146)) (< i_33 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array)))) (=> (< i_33 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array))) (and (=> (= (ControlFlow 0 142) (- 0 145)) (HasDirectPerm_24073_45764 PostMask@1 a_2 array)) (=> (HasDirectPerm_24073_45764 PostMask@1 a_2 array) (and (=> (= (ControlFlow 0 142) (- 0 144)) (>= j_17 0)) (=> (>= j_17 0) (and (=> (= (ControlFlow 0 142) (- 0 143)) (< j_17 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array)))) (=> (< j_17 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array))) (=> (= (ControlFlow 0 142) 141) anon20_correct))))))))))))))))
(let ((anon68_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (> wildcard@2 NoPerm) (not (= a_2 null))) (=> (and (and (and (= PostMask@0 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| ZeroMask) a_2 array (+ (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| ZeroMask) a_2 array) wildcard@2)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| ZeroMask) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| ZeroMask) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| ZeroMask) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| ZeroMask) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| ZeroMask))) (state PostHeap@0 PostMask@0)) (and (state PostHeap@0 PostMask@0) (> wildcard@3 NoPerm))) (and (and (not (= b_24 null)) (= PostMask@1 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| PostMask@0) b_24 array (+ (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| PostMask@0) b_24 array) wildcard@3)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| PostMask@0) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| PostMask@0) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| PostMask@0) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| PostMask@0) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| PostMask@0)))) (and (state PostHeap@0 PostMask@1) (state PostHeap@0 PostMask@1)))) (and (=> (= (ControlFlow 0 177) (- 0 181)) (HasDirectPerm_24073_45764 PostMask@1 a_2 array)) (=> (HasDirectPerm_24073_45764 PostMask@1 a_2 array) (and (=> (= (ControlFlow 0 177) (- 0 180)) (HasDirectPerm_24073_45764 QPMask@1 a_2 array)) (=> (HasDirectPerm_24073_45764 QPMask@1 a_2 array) (=> (and (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) a_2 array) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array)) (state PostHeap@0 PostMask@1)) (and (=> (= (ControlFlow 0 177) (- 0 179)) (HasDirectPerm_24073_45764 PostMask@1 b_24 array)) (=> (HasDirectPerm_24073_45764 PostMask@1 b_24 array) (and (=> (= (ControlFlow 0 177) (- 0 178)) (HasDirectPerm_24073_45764 QPMask@1 b_24 array)) (=> (HasDirectPerm_24073_45764 QPMask@1 b_24 array) (=> (and (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| PostHeap@0) b_24 array) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array)) (state PostHeap@0 PostMask@1)) (and (and (=> (= (ControlFlow 0 177) 176) anon69_Else_correct) (=> (= (ControlFlow 0 177) 142) anon70_Then_correct)) (=> (= (ControlFlow 0 177) 149) anon70_Else_correct)))))))))))))))))
(let ((anon42_correct true))
(let ((anon81_Else_correct  (=> (and (not (|Seq#Contains_3680| (|Seq#Range| start end) i_43)) (= (ControlFlow 0 113) 108)) anon42_correct)))
(let ((anon81_Then_correct  (=> (|Seq#Contains_3680| (|Seq#Range| start end) i_43) (and (=> (= (ControlFlow 0 109) (- 0 112)) (HasDirectPerm_24073_45764 QPMask@12 b_24 array)) (=> (HasDirectPerm_24073_45764 QPMask@12 b_24 array) (and (=> (= (ControlFlow 0 109) (- 0 111)) (>= i_43 0)) (=> (>= i_43 0) (and (=> (= (ControlFlow 0 109) (- 0 110)) (< i_43 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array)))) (=> (< i_43 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array))) (=> (= (ControlFlow 0 109) 108) anon42_correct))))))))))
(let ((anon80_Else_correct  (=> (= (ControlFlow 0 107) (- 0 106)) (forall ((i_23 Int) (i_23_1 Int) ) (!  (=> (and (and (and (and (not (= i_23 i_23_1)) (|Seq#Contains_3680| (|Seq#Range| start end) i_23)) (|Seq#Contains_3680| (|Seq#Range| start end) i_23_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_23) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_23_1))))
 :qid |stdinbpl.2817:19|
 :skolemid |222|
)))))
(let ((anon78_Else_correct  (and (=> (= (ControlFlow 0 114) (- 0 115)) (forall ((i_21 Int) (i_21_1 Int) ) (!  (=> (and (and (and (and (not (= i_21 i_21_1)) (|Seq#Contains_3680| (|Seq#Range| start end) i_21)) (|Seq#Contains_3680| (|Seq#Range| start end) i_21_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_21) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_21_1))))
 :qid |stdinbpl.2769:19|
 :skolemid |216|
))) (=> (forall ((i_21@@0 Int) (i_21_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_21@@0 i_21_1@@0)) (|Seq#Contains_3680| (|Seq#Range| start end) i_21@@0)) (|Seq#Contains_3680| (|Seq#Range| start end) i_21_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_21@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_21_1@@0))))
 :qid |stdinbpl.2769:19|
 :skolemid |216|
)) (=> (and (and (forall ((i_21@@1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) i_21@@1) (< NoPerm FullPerm)) (and (qpRange27 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_21@@1)) (= (invRecv27 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_21@@1)) i_21@@1)))
 :qid |stdinbpl.2775:26|
 :skolemid |217|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_21@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_21@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_21@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_21@@1))
)) (forall ((o_4@@7 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv27 o_4@@7)) (< NoPerm FullPerm)) (qpRange27 o_4@@7)) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) (invRecv27 o_4@@7)) o_4@@7))
 :qid |stdinbpl.2779:26|
 :skolemid |218|
 :pattern ( (invRecv27 o_4@@7))
))) (and (forall ((i_21@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start end) i_21@@2) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_21@@2) null)))
 :qid |stdinbpl.2785:26|
 :skolemid |219|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_21@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_21@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_21@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_21@@2))
)) (forall ((o_4@@8 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv27 o_4@@8)) (< NoPerm FullPerm)) (qpRange27 o_4@@8)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) (invRecv27 o_4@@8)) o_4@@8)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@12) o_4@@8 value) (+ (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@5) o_4@@8 value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv27 o_4@@8)) (< NoPerm FullPerm)) (qpRange27 o_4@@8))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@12) o_4@@8 value) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@5) o_4@@8 value))))
 :qid |stdinbpl.2791:26|
 :skolemid |220|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@12) o_4@@8 value))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@5) o_4@@9 f_5@@5) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@12) o_4@@9 f_5@@5)))
 :qid |stdinbpl.2795:33|
 :skolemid |221|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@5) o_4@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@12) o_4@@9 f_5@@5))
)) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@5) o_4@@10 f_5@@6) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@12) o_4@@10 f_5@@6)))
 :qid |stdinbpl.2795:33|
 :skolemid |221|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@5) o_4@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@12) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_44956_3802) ) (!  (=> (not (= f_5@@7 value)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@5) o_4@@11 f_5@@7) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@12) o_4@@11 f_5@@7)))
 :qid |stdinbpl.2795:33|
 :skolemid |221|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@5) o_4@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@12) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@5) o_4@@12 f_5@@8) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@12) o_4@@12 f_5@@8)))
 :qid |stdinbpl.2795:33|
 :skolemid |221|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@5) o_4@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@12) o_4@@12 f_5@@8))
))) (forall ((o_4@@13 T@Ref) (f_5@@9 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@5) o_4@@13 f_5@@9) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@12) o_4@@13 f_5@@9)))
 :qid |stdinbpl.2795:33|
 :skolemid |221|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@5) o_4@@13 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@12) o_4@@13 f_5@@9))
))) (forall ((o_4@@14 T@Ref) (f_5@@10 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@5) o_4@@14 f_5@@10) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@12) o_4@@14 f_5@@10)))
 :qid |stdinbpl.2795:33|
 :skolemid |221|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@5) o_4@@14 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@12) o_4@@14 f_5@@10))
))) (and (state ExhaleHeap@0 QPMask@12) (state ExhaleHeap@0 QPMask@12))) (and (and (=> (= (ControlFlow 0 114) 107) anon80_Else_correct) (=> (= (ControlFlow 0 114) 109) anon81_Then_correct)) (=> (= (ControlFlow 0 114) 113) anon81_Else_correct))))))))
(let ((anon38_correct true))
(let ((anon79_Else_correct  (=> (and (not (|Seq#Contains_3680| (|Seq#Range| start end) i_41)) (= (ControlFlow 0 105) 100)) anon38_correct)))
(let ((anon79_Then_correct  (=> (|Seq#Contains_3680| (|Seq#Range| start end) i_41) (and (=> (= (ControlFlow 0 101) (- 0 104)) (HasDirectPerm_24073_45764 Mask@5 a_2 array)) (=> (HasDirectPerm_24073_45764 Mask@5 a_2 array) (and (=> (= (ControlFlow 0 101) (- 0 103)) (>= i_41 0)) (=> (>= i_41 0) (and (=> (= (ControlFlow 0 101) (- 0 102)) (< i_41 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array)))) (=> (< i_41 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array))) (=> (= (ControlFlow 0 101) 100) anon38_correct))))))))))
(let ((anon77_Then_correct  (=> (> wildcard@6 NoPerm) (=> (and (not (= a_2 null)) (= Mask@4 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@3) a_2 array (+ (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@3) a_2 array) wildcard@6)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@3) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@3) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@3) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@3) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@3)))) (=> (and (and (and (state ExhaleHeap@0 Mask@4) (state ExhaleHeap@0 Mask@4)) (and (> wildcard@7 NoPerm) (not (= b_24 null)))) (and (and (= Mask@5 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@4) b_24 array (+ (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@4) b_24 array) wildcard@7)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@4) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@4) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@4) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@4) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@4))) (state ExhaleHeap@0 Mask@5)) (and (state ExhaleHeap@0 Mask@5) (<= 0 start)))) (and (=> (= (ControlFlow 0 116) (- 0 123)) (HasDirectPerm_24073_45764 Mask@5 a_2 array)) (=> (HasDirectPerm_24073_45764 Mask@5 a_2 array) (=> (<= end (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array))) (=> (and (state ExhaleHeap@0 Mask@5) (= N@0 (- (+ I@0 J@0) middle))) (=> (and (and (and (<= 0 start) (state ExhaleHeap@0 Mask@5)) (and (<= start I@0) (state ExhaleHeap@0 Mask@5))) (and (and (<= middle J@0) (state ExhaleHeap@0 Mask@5)) (and (<= J@0 end) (state ExhaleHeap@0 Mask@5)))) (and (=> (= (ControlFlow 0 116) (- 0 122)) (HasDirectPerm_24073_45764 Mask@5 a_2 array)) (=> (HasDirectPerm_24073_45764 Mask@5 a_2 array) (and (=> (= (ControlFlow 0 116) (- 0 121)) (HasDirectPerm_24073_45764 Mask@5 b_24 array)) (=> (HasDirectPerm_24073_45764 Mask@5 b_24 array) (=> (and (= (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array)) (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array))) (state ExhaleHeap@0 Mask@5)) (and (=> (= (ControlFlow 0 116) (- 0 120)) (HasDirectPerm_24073_45764 Mask@5 a_2 array)) (=> (HasDirectPerm_24073_45764 Mask@5 a_2 array) (and (=> (= (ControlFlow 0 116) (- 0 119)) (HasDirectPerm_24073_45764 QPMask@1 a_2 array)) (=> (HasDirectPerm_24073_45764 QPMask@1 a_2 array) (=> (and (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array)) (state ExhaleHeap@0 Mask@5)) (and (=> (= (ControlFlow 0 116) (- 0 118)) (HasDirectPerm_24073_45764 Mask@5 b_24 array)) (=> (HasDirectPerm_24073_45764 Mask@5 b_24 array) (and (=> (= (ControlFlow 0 116) (- 0 117)) (HasDirectPerm_24073_45764 QPMask@1 b_24 array)) (=> (HasDirectPerm_24073_45764 QPMask@1 b_24 array) (=> (and (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array)) (state ExhaleHeap@0 Mask@5)) (and (and (=> (= (ControlFlow 0 116) 114) anon78_Else_correct) (=> (= (ControlFlow 0 116) 101) anon79_Then_correct)) (=> (= (ControlFlow 0 116) 105) anon79_Else_correct)))))))))))))))))))))))))))
(let ((anon50_correct  (=> (state Heap@2 QPMask@5) (=> (and (= N@1 (+ N@0 1)) (state Heap@2 QPMask@5)) (and (=> (= (ControlFlow 0 53) (- 0 68)) (> (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@5) a_2 array) NoPerm)) (=> (> (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@5) a_2 array) NoPerm) (=> (> wildcard@14 NoPerm) (=> (and (< wildcard@14 (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@5) a_2 array)) (= Mask@12 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@5) a_2 array (- (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@5) a_2 array) wildcard@14)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@5) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@5) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@5) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@5) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@5)))) (and (=> (= (ControlFlow 0 53) (- 0 67)) (> (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@12) b_24 array) NoPerm)) (=> (> (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@12) b_24 array) NoPerm) (=> (> wildcard@15 NoPerm) (=> (and (< wildcard@15 (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@12) b_24 array)) (= Mask@13 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@12) b_24 array (- (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@12) b_24 array) wildcard@15)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@12) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@12) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@12) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@12) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@12)))) (and (=> (= (ControlFlow 0 53) (- 0 66)) (<= 0 start)) (=> (<= 0 start) (and (=> (= (ControlFlow 0 53) (- 0 65)) (<= end (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) a_2 array)))) (=> (<= end (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) a_2 array))) (and (=> (= (ControlFlow 0 53) (- 0 64)) (= N@1 (- (+ I@2 J@2) middle))) (=> (= N@1 (- (+ I@2 J@2) middle)) (and (=> (= (ControlFlow 0 53) (- 0 63)) (<= 0 start)) (=> (<= 0 start) (and (=> (= (ControlFlow 0 53) (- 0 62)) (<= start I@2)) (=> (<= start I@2) (and (=> (= (ControlFlow 0 53) (- 0 61)) (<= middle J@2)) (=> (<= middle J@2) (and (=> (= (ControlFlow 0 53) (- 0 60)) (<= J@2 end)) (=> (<= J@2 end) (and (=> (= (ControlFlow 0 53) (- 0 59)) (= (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) a_2 array)) (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) b_24 array)))) (=> (= (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) a_2 array)) (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) b_24 array))) (and (=> (= (ControlFlow 0 53) (- 0 58)) (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) a_2 array) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array))) (=> (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) a_2 array) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array)) (and (=> (= (ControlFlow 0 53) (- 0 57)) (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) b_24 array) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array))) (=> (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) b_24 array) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array)) (and (=> (= (ControlFlow 0 53) (- 0 56)) (forall ((i_26 Int) (i_26_1 Int) ) (!  (=> (and (and (and (and (not (= i_26 i_26_1)) (|Seq#Contains_3680| (|Seq#Range| start end) i_26)) (|Seq#Contains_3680| (|Seq#Range| start end) i_26_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) a_2 array) i_26) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) a_2 array) i_26_1))))
 :qid |stdinbpl.3081:21|
 :skolemid |240|
 :pattern ( (neverTriggered31 i_26) (neverTriggered31 i_26_1))
))) (=> (forall ((i_26@@0 Int) (i_26_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_26@@0 i_26_1@@0)) (|Seq#Contains_3680| (|Seq#Range| start end) i_26@@0)) (|Seq#Contains_3680| (|Seq#Range| start end) i_26_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) a_2 array) i_26@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) a_2 array) i_26_1@@0))))
 :qid |stdinbpl.3081:21|
 :skolemid |240|
 :pattern ( (neverTriggered31 i_26@@0) (neverTriggered31 i_26_1@@0))
)) (and (=> (= (ControlFlow 0 53) (- 0 55)) (forall ((i_26@@1 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start end) i_26@@1) (>= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@13) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) a_2 array) i_26@@1) value) FullPerm))
 :qid |stdinbpl.3088:21|
 :skolemid |241|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) a_2 array) i_26@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_26@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_26@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) a_2 array) i_26@@1))
))) (=> (forall ((i_26@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start end) i_26@@2) (>= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@13) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) a_2 array) i_26@@2) value) FullPerm))
 :qid |stdinbpl.3088:21|
 :skolemid |241|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) a_2 array) i_26@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_26@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_26@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) a_2 array) i_26@@2))
)) (=> (forall ((i_26@@3 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) i_26@@3) (< NoPerm FullPerm)) (and (qpRange31 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) a_2 array) i_26@@3)) (= (invRecv31 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) a_2 array) i_26@@3)) i_26@@3)))
 :qid |stdinbpl.3094:26|
 :skolemid |242|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) a_2 array) i_26@@3))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_26@@3))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_26@@3))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) a_2 array) i_26@@3))
)) (=> (and (forall ((o_4@@15 T@Ref) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv31 o_4@@15)) (and (< NoPerm FullPerm) (qpRange31 o_4@@15))) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) a_2 array) (invRecv31 o_4@@15)) o_4@@15))
 :qid |stdinbpl.3098:26|
 :skolemid |243|
 :pattern ( (invRecv31 o_4@@15))
)) (forall ((o_4@@16 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv31 o_4@@16)) (and (< NoPerm FullPerm) (qpRange31 o_4@@16))) (and (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) a_2 array) (invRecv31 o_4@@16)) o_4@@16) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@10) o_4@@16 value) (- (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@13) o_4@@16 value) FullPerm)))) (=> (not (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv31 o_4@@16)) (and (< NoPerm FullPerm) (qpRange31 o_4@@16)))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@10) o_4@@16 value) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@13) o_4@@16 value))))
 :qid |stdinbpl.3104:26|
 :skolemid |244|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@10) o_4@@16 value))
))) (=> (and (and (and (and (and (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@13) o_4@@17 f_5@@11) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@10) o_4@@17 f_5@@11)))
 :qid |stdinbpl.3110:33|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@10) o_4@@17 f_5@@11))
)) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@13) o_4@@18 f_5@@12) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@10) o_4@@18 f_5@@12)))
 :qid |stdinbpl.3110:33|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@10) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_44956_3802) ) (!  (=> (not (= f_5@@13 value)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@13) o_4@@19 f_5@@13) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@10) o_4@@19 f_5@@13)))
 :qid |stdinbpl.3110:33|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@10) o_4@@19 f_5@@13))
))) (forall ((o_4@@20 T@Ref) (f_5@@14 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@13) o_4@@20 f_5@@14) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@10) o_4@@20 f_5@@14)))
 :qid |stdinbpl.3110:33|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@10) o_4@@20 f_5@@14))
))) (forall ((o_4@@21 T@Ref) (f_5@@15 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@13) o_4@@21 f_5@@15) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@10) o_4@@21 f_5@@15)))
 :qid |stdinbpl.3110:33|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@10) o_4@@21 f_5@@15))
))) (forall ((o_4@@22 T@Ref) (f_5@@16 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@13) o_4@@22 f_5@@16) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@10) o_4@@22 f_5@@16)))
 :qid |stdinbpl.3110:33|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@10) o_4@@22 f_5@@16))
))) (and (=> (= (ControlFlow 0 53) (- 0 54)) (forall ((i_27 Int) (i_27_1 Int) ) (!  (=> (and (and (and (and (not (= i_27 i_27_1)) (|Seq#Contains_3680| (|Seq#Range| start end) i_27)) (|Seq#Contains_3680| (|Seq#Range| start end) i_27_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) b_24 array) i_27) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) b_24 array) i_27_1))))
 :qid |stdinbpl.3122:21|
 :skolemid |246|
 :pattern ( (neverTriggered32 i_27) (neverTriggered32 i_27_1))
))) (=> (forall ((i_27@@0 Int) (i_27_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_27@@0 i_27_1@@0)) (|Seq#Contains_3680| (|Seq#Range| start end) i_27@@0)) (|Seq#Contains_3680| (|Seq#Range| start end) i_27_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) b_24 array) i_27@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) b_24 array) i_27_1@@0))))
 :qid |stdinbpl.3122:21|
 :skolemid |246|
 :pattern ( (neverTriggered32 i_27@@0) (neverTriggered32 i_27_1@@0))
)) (=> (= (ControlFlow 0 53) (- 0 52)) (forall ((i_27@@1 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start end) i_27@@1) (>= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@10) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) b_24 array) i_27@@1) value) FullPerm))
 :qid |stdinbpl.3129:21|
 :skolemid |247|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) b_24 array) i_27@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_27@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_27@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@2) b_24 array) i_27@@1))
))))))))))))))))))))))))))))))))))))))))))))
(let ((anon84_Else_correct  (=> (not (or (= J@0 end) (< (select (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| ExhaleHeap@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) I@0) value) (select (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| ExhaleHeap@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) J@0) value)))) (and (=> (= (ControlFlow 0 78) (- 0 86)) (HasDirectPerm_24073_45764 QPMask@5 b_24 array)) (=> (HasDirectPerm_24073_45764 QPMask@5 b_24 array) (and (=> (= (ControlFlow 0 78) (- 0 85)) (>= N@0 0)) (=> (>= N@0 0) (and (=> (= (ControlFlow 0 78) (- 0 84)) (< N@0 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array)))) (=> (< N@0 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array))) (and (=> (= (ControlFlow 0 78) (- 0 83)) (HasDirectPerm_24073_45764 QPMask@5 a_2 array)) (=> (HasDirectPerm_24073_45764 QPMask@5 a_2 array) (and (=> (= (ControlFlow 0 78) (- 0 82)) (>= J@0 0)) (=> (>= J@0 0) (and (=> (= (ControlFlow 0 78) (- 0 81)) (< J@0 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array)))) (=> (< J@0 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array))) (and (=> (= (ControlFlow 0 78) (- 0 80)) (HasDirectPerm_24071_3802 QPMask@5 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) J@0) value)) (=> (HasDirectPerm_24071_3802 QPMask@5 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) J@0) value) (and (=> (= (ControlFlow 0 78) (- 0 79)) (= FullPerm (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@5) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) N@0) value))) (=> (= FullPerm (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@5) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) N@0) value)) (=> (and (and (and (= Heap@1 (PolymorphicMapType_38811 (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| ExhaleHeap@0) (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| ExhaleHeap@0) (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) (store (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| ExhaleHeap@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) N@0) value (select (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| ExhaleHeap@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) J@0) value)) (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| ExhaleHeap@0) (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| ExhaleHeap@0))) (state Heap@1 QPMask@5)) (and (= J@1 (+ J@0 1)) (state Heap@1 QPMask@5))) (and (and (= I@2 I@0) (= J@2 J@1)) (and (= Heap@2 Heap@1) (= (ControlFlow 0 78) 53)))) anon50_correct))))))))))))))))))))
(let ((anon84_Then_correct  (=> (or (= J@0 end) (< (select (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| ExhaleHeap@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) I@0) value) (select (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| ExhaleHeap@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) J@0) value))) (and (=> (= (ControlFlow 0 69) (- 0 77)) (HasDirectPerm_24073_45764 QPMask@5 b_24 array)) (=> (HasDirectPerm_24073_45764 QPMask@5 b_24 array) (and (=> (= (ControlFlow 0 69) (- 0 76)) (>= N@0 0)) (=> (>= N@0 0) (and (=> (= (ControlFlow 0 69) (- 0 75)) (< N@0 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array)))) (=> (< N@0 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array))) (and (=> (= (ControlFlow 0 69) (- 0 74)) (HasDirectPerm_24073_45764 QPMask@5 a_2 array)) (=> (HasDirectPerm_24073_45764 QPMask@5 a_2 array) (and (=> (= (ControlFlow 0 69) (- 0 73)) (>= I@0 0)) (=> (>= I@0 0) (and (=> (= (ControlFlow 0 69) (- 0 72)) (< I@0 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array)))) (=> (< I@0 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array))) (and (=> (= (ControlFlow 0 69) (- 0 71)) (HasDirectPerm_24071_3802 QPMask@5 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) I@0) value)) (=> (HasDirectPerm_24071_3802 QPMask@5 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) I@0) value) (and (=> (= (ControlFlow 0 69) (- 0 70)) (= FullPerm (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@5) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) N@0) value))) (=> (= FullPerm (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@5) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) N@0) value)) (=> (and (and (and (= Heap@0 (PolymorphicMapType_38811 (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| ExhaleHeap@0) (|PolymorphicMapType_38811_23818_23819#PolymorphicMapType_38811| ExhaleHeap@0) (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) (store (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| ExhaleHeap@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) N@0) value (select (|PolymorphicMapType_38811_24071_3802#PolymorphicMapType_38811| ExhaleHeap@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) I@0) value)) (|PolymorphicMapType_38811_24073_128208#PolymorphicMapType_38811| ExhaleHeap@0) (|PolymorphicMapType_38811_38871_128031#PolymorphicMapType_38811| ExhaleHeap@0))) (state Heap@0 QPMask@5)) (and (= I@1 (+ I@0 1)) (state Heap@0 QPMask@5))) (and (and (= I@2 I@1) (= J@2 J@0)) (and (= Heap@2 Heap@0) (= (ControlFlow 0 69) 53)))) anon50_correct))))))))))))))))))))
(let ((anon83_Else_correct  (=> (= J@0 end) (and (=> (= (ControlFlow 0 96) 69) anon84_Then_correct) (=> (= (ControlFlow 0 96) 78) anon84_Else_correct)))))
(let ((anon83_Then_correct  (=> (not (= J@0 end)) (and (=> (= (ControlFlow 0 87) (- 0 95)) (HasDirectPerm_24073_45764 QPMask@5 a_2 array)) (=> (HasDirectPerm_24073_45764 QPMask@5 a_2 array) (and (=> (= (ControlFlow 0 87) (- 0 94)) (>= I@0 0)) (=> (>= I@0 0) (and (=> (= (ControlFlow 0 87) (- 0 93)) (< I@0 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array)))) (=> (< I@0 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array))) (and (=> (= (ControlFlow 0 87) (- 0 92)) (HasDirectPerm_24071_3802 QPMask@5 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) I@0) value)) (=> (HasDirectPerm_24071_3802 QPMask@5 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) I@0) value) (and (=> (= (ControlFlow 0 87) (- 0 91)) (HasDirectPerm_24073_45764 QPMask@5 a_2 array)) (=> (HasDirectPerm_24073_45764 QPMask@5 a_2 array) (and (=> (= (ControlFlow 0 87) (- 0 90)) (>= J@0 0)) (=> (>= J@0 0) (and (=> (= (ControlFlow 0 87) (- 0 89)) (< J@0 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array)))) (=> (< J@0 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array))) (and (=> (= (ControlFlow 0 87) (- 0 88)) (HasDirectPerm_24071_3802 QPMask@5 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) J@0) value)) (=> (HasDirectPerm_24071_3802 QPMask@5 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) J@0) value) (and (=> (= (ControlFlow 0 87) 69) anon84_Then_correct) (=> (= (ControlFlow 0 87) 78) anon84_Else_correct)))))))))))))))))))))
(let ((anon82_Then_correct  (=> (state ExhaleHeap@0 ZeroMask) (=> (and (> wildcard@8 NoPerm) (not (= a_2 null))) (=> (and (and (and (and (= Mask@6 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| ZeroMask) a_2 array (+ (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| ZeroMask) a_2 array) wildcard@8)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| ZeroMask) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| ZeroMask) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| ZeroMask) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| ZeroMask) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| ZeroMask))) (state ExhaleHeap@0 Mask@6)) (and (> wildcard@9 NoPerm) (not (= b_24 null)))) (and (and (= Mask@7 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@6) b_24 array (+ (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@6) b_24 array) wildcard@9)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@6) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@6) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@6) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@6) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@6))) (state ExhaleHeap@0 Mask@7)) (and (<= 0 start) (<= end (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array)))))) (and (and (and (= N@0 (- (+ I@0 J@0) middle)) (<= 0 start)) (and (<= start I@0) (<= middle J@0))) (and (and (<= J@0 end) (= (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array)) (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array)))) (and (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array)) (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array)))))) (and (=> (= (ControlFlow 0 97) (- 0 99)) (forall ((i_24_1 Int) (i_24_2 Int) ) (!  (=> (and (and (and (and (not (= i_24_1 i_24_2)) (|Seq#Contains_3680| (|Seq#Range| start end) i_24_1)) (|Seq#Contains_3680| (|Seq#Range| start end) i_24_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_24_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_24_2))))
 :qid |stdinbpl.2883:19|
 :skolemid |228|
))) (=> (forall ((i_24_1@@0 Int) (i_24_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_24_1@@0 i_24_2@@0)) (|Seq#Contains_3680| (|Seq#Range| start end) i_24_1@@0)) (|Seq#Contains_3680| (|Seq#Range| start end) i_24_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_24_1@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_24_2@@0))))
 :qid |stdinbpl.2883:19|
 :skolemid |228|
)) (=> (and (and (forall ((i_24_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) i_24_1@@1) (< NoPerm FullPerm)) (and (qpRange29 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_24_1@@1)) (= (invRecv29 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_24_1@@1)) i_24_1@@1)))
 :qid |stdinbpl.2889:26|
 :skolemid |229|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_24_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_24_1@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_24_1@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_24_1@@1))
)) (forall ((o_4@@23 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv29 o_4@@23)) (< NoPerm FullPerm)) (qpRange29 o_4@@23)) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) (invRecv29 o_4@@23)) o_4@@23))
 :qid |stdinbpl.2893:26|
 :skolemid |230|
 :pattern ( (invRecv29 o_4@@23))
))) (and (forall ((i_24_1@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start end) i_24_1@@2) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_24_1@@2) null)))
 :qid |stdinbpl.2899:26|
 :skolemid |231|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_24_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_24_1@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_24_1@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_24_1@@2))
)) (forall ((o_4@@24 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv29 o_4@@24)) (< NoPerm FullPerm)) (qpRange29 o_4@@24)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) (invRecv29 o_4@@24)) o_4@@24)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@4) o_4@@24 value) (+ (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@7) o_4@@24 value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv29 o_4@@24)) (< NoPerm FullPerm)) (qpRange29 o_4@@24))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@4) o_4@@24 value) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@7) o_4@@24 value))))
 :qid |stdinbpl.2905:26|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@4) o_4@@24 value))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@25 T@Ref) (f_5@@17 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@7) o_4@@25 f_5@@17) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@4) o_4@@25 f_5@@17)))
 :qid |stdinbpl.2909:33|
 :skolemid |233|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@7) o_4@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@4) o_4@@25 f_5@@17))
)) (forall ((o_4@@26 T@Ref) (f_5@@18 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@7) o_4@@26 f_5@@18) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@4) o_4@@26 f_5@@18)))
 :qid |stdinbpl.2909:33|
 :skolemid |233|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@7) o_4@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@4) o_4@@26 f_5@@18))
))) (forall ((o_4@@27 T@Ref) (f_5@@19 T@Field_44956_3802) ) (!  (=> (not (= f_5@@19 value)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@7) o_4@@27 f_5@@19) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@4) o_4@@27 f_5@@19)))
 :qid |stdinbpl.2909:33|
 :skolemid |233|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@7) o_4@@27 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@4) o_4@@27 f_5@@19))
))) (forall ((o_4@@28 T@Ref) (f_5@@20 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@7) o_4@@28 f_5@@20) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@4) o_4@@28 f_5@@20)))
 :qid |stdinbpl.2909:33|
 :skolemid |233|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@7) o_4@@28 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@4) o_4@@28 f_5@@20))
))) (forall ((o_4@@29 T@Ref) (f_5@@21 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@7) o_4@@29 f_5@@21) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@4) o_4@@29 f_5@@21)))
 :qid |stdinbpl.2909:33|
 :skolemid |233|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@7) o_4@@29 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@4) o_4@@29 f_5@@21))
))) (forall ((o_4@@30 T@Ref) (f_5@@22 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@7) o_4@@30 f_5@@22) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@4) o_4@@30 f_5@@22)))
 :qid |stdinbpl.2909:33|
 :skolemid |233|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@7) o_4@@30 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@4) o_4@@30 f_5@@22))
))) (state ExhaleHeap@0 QPMask@4)) (and (=> (= (ControlFlow 0 97) (- 0 98)) (forall ((i_25 Int) (i_25_2 Int) ) (!  (=> (and (and (and (and (not (= i_25 i_25_2)) (|Seq#Contains_3680| (|Seq#Range| start end) i_25)) (|Seq#Contains_3680| (|Seq#Range| start end) i_25_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_25) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_25_2))))
 :qid |stdinbpl.2917:19|
 :skolemid |234|
))) (=> (forall ((i_25@@0 Int) (i_25_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_25@@0 i_25_2@@0)) (|Seq#Contains_3680| (|Seq#Range| start end) i_25@@0)) (|Seq#Contains_3680| (|Seq#Range| start end) i_25_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_25@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_25_2@@0))))
 :qid |stdinbpl.2917:19|
 :skolemid |234|
)) (=> (and (and (forall ((i_25@@1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) i_25@@1) (< NoPerm FullPerm)) (and (qpRange30 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_25@@1)) (= (invRecv30 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_25@@1)) i_25@@1)))
 :qid |stdinbpl.2923:26|
 :skolemid |235|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_25@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_25@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_25@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_25@@1))
)) (forall ((o_4@@31 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv30 o_4@@31)) (< NoPerm FullPerm)) (qpRange30 o_4@@31)) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) (invRecv30 o_4@@31)) o_4@@31))
 :qid |stdinbpl.2927:26|
 :skolemid |236|
 :pattern ( (invRecv30 o_4@@31))
))) (and (forall ((i_25@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start end) i_25@@2) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_25@@2) null)))
 :qid |stdinbpl.2933:26|
 :skolemid |237|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_25@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_25@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_25@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_25@@2))
)) (forall ((o_4@@32 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv30 o_4@@32)) (< NoPerm FullPerm)) (qpRange30 o_4@@32)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) (invRecv30 o_4@@32)) o_4@@32)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@5) o_4@@32 value) (+ (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@4) o_4@@32 value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv30 o_4@@32)) (< NoPerm FullPerm)) (qpRange30 o_4@@32))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@5) o_4@@32 value) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@4) o_4@@32 value))))
 :qid |stdinbpl.2939:26|
 :skolemid |238|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@5) o_4@@32 value))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@33 T@Ref) (f_5@@23 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@4) o_4@@33 f_5@@23) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@5) o_4@@33 f_5@@23)))
 :qid |stdinbpl.2943:33|
 :skolemid |239|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@4) o_4@@33 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@5) o_4@@33 f_5@@23))
)) (forall ((o_4@@34 T@Ref) (f_5@@24 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@4) o_4@@34 f_5@@24) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@5) o_4@@34 f_5@@24)))
 :qid |stdinbpl.2943:33|
 :skolemid |239|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@4) o_4@@34 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@5) o_4@@34 f_5@@24))
))) (forall ((o_4@@35 T@Ref) (f_5@@25 T@Field_44956_3802) ) (!  (=> (not (= f_5@@25 value)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@4) o_4@@35 f_5@@25) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@5) o_4@@35 f_5@@25)))
 :qid |stdinbpl.2943:33|
 :skolemid |239|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@4) o_4@@35 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@5) o_4@@35 f_5@@25))
))) (forall ((o_4@@36 T@Ref) (f_5@@26 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@4) o_4@@36 f_5@@26) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@5) o_4@@36 f_5@@26)))
 :qid |stdinbpl.2943:33|
 :skolemid |239|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@4) o_4@@36 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@5) o_4@@36 f_5@@26))
))) (forall ((o_4@@37 T@Ref) (f_5@@27 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@4) o_4@@37 f_5@@27) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@5) o_4@@37 f_5@@27)))
 :qid |stdinbpl.2943:33|
 :skolemid |239|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@4) o_4@@37 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@5) o_4@@37 f_5@@27))
))) (forall ((o_4@@38 T@Ref) (f_5@@28 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@4) o_4@@38 f_5@@28) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@5) o_4@@38 f_5@@28)))
 :qid |stdinbpl.2943:33|
 :skolemid |239|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@4) o_4@@38 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@5) o_4@@38 f_5@@28))
))) (and (and (state ExhaleHeap@0 QPMask@5) (state ExhaleHeap@0 QPMask@5)) (and (< N@0 end) (state ExhaleHeap@0 QPMask@5)))) (and (=> (= (ControlFlow 0 97) 87) anon83_Then_correct) (=> (= (ControlFlow 0 97) 96) anon83_Else_correct)))))))))))))))
(let ((anon58_correct true))
(let ((anon88_Else_correct  (=> (and (not (and (|Seq#Contains_3680| (|Seq#Range| start end) i_15) (and (|Seq#Contains_3680| (|Seq#Range| start end) j_10_2) (not (= i_15 j_10_2))))) (= (ControlFlow 0 41) 38)) anon58_correct)))
(let ((anon88_Then_correct  (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) i_15) (and (|Seq#Contains_3680| (|Seq#Range| start end) j_10_2) (not (= i_15 j_10_2)))) (and (=> (= (ControlFlow 0 39) (- 0 40)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_15) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) j_10_2)))) (=> (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_15) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) j_10_2))) (=> (= (ControlFlow 0 39) 38) anon58_correct))))))
(let ((anon87_Else_correct  (=> (forall ((i_16_1_1 Int) (j_11_1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) i_16_1_1) (and (|Seq#Contains_3680| (|Seq#Range| start end) j_11_1) (not (= i_16_1_1 j_11_1)))) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_16_1_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) j_11_1))))
 :qid |stdinbpl.3334:20|
 :skolemid |271|
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_16_1_1) (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) j_11_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_16_1_1) (|Seq#Contains_3680| (|Seq#Range| start end) j_11_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_16_1_1) (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) j_11_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_16_1_1) (|Seq#Contains_3680| (|Seq#Range| start end) j_11_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_16_1_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) j_11_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_16_1_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) j_11_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) j_11_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_16_1_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) j_11_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_16_1_1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_16_1_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) j_11_1))
)) (and (=> (= (ControlFlow 0 36) (- 0 37)) (forall ((i_17 Int) (i_17_1 Int) ) (!  (=> (and (and (and (and (not (= i_17 i_17_1)) (|Seq#Contains_3680| (|Seq#Range| start end) i_17)) (|Seq#Contains_3680| (|Seq#Range| start end) i_17_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_17) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_17_1))))
 :qid |stdinbpl.3345:17|
 :skolemid |272|
 :pattern ( (neverTriggered24 i_17) (neverTriggered24 i_17_1))
))) (=> (forall ((i_17@@0 Int) (i_17_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_17@@0 i_17_1@@0)) (|Seq#Contains_3680| (|Seq#Range| start end) i_17@@0)) (|Seq#Contains_3680| (|Seq#Range| start end) i_17_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_17@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_17_1@@0))))
 :qid |stdinbpl.3345:17|
 :skolemid |272|
 :pattern ( (neverTriggered24 i_17@@0) (neverTriggered24 i_17_1@@0))
)) (=> (= (ControlFlow 0 36) (- 0 35)) (forall ((i_17@@1 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start end) i_17@@1) (>= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@8) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_17@@1) value) FullPerm))
 :qid |stdinbpl.3352:17|
 :skolemid |273|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_17@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_17@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_17@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_17@@1))
))))))))
(let ((anon85_Else_correct  (=> (forall ((i_13_1_1 Int) (j_9_1_1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) i_13_1_1) (and (|Seq#Contains_3680| (|Seq#Range| start end) j_9_1_1) (not (= i_13_1_1 j_9_1_1)))) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_13_1_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) j_9_1_1))))
 :qid |stdinbpl.3282:20|
 :skolemid |264|
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_13_1_1) (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) j_9_1_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_13_1_1) (|Seq#Contains_3680| (|Seq#Range| start end) j_9_1_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_13_1_1) (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) j_9_1_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_13_1_1) (|Seq#Contains_3680| (|Seq#Range| start end) j_9_1_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_13_1_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) j_9_1_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_13_1_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) j_9_1_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) j_9_1_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_13_1_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) j_9_1_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_13_1_1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_13_1_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) j_9_1_1))
)) (and (=> (= (ControlFlow 0 42) (- 0 44)) (forall ((i_14_1 Int) (i_14_2 Int) ) (!  (=> (and (and (and (and (not (= i_14_1 i_14_2)) (|Seq#Contains_3680| (|Seq#Range| start end) i_14_1)) (|Seq#Contains_3680| (|Seq#Range| start end) i_14_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_14_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_14_2))))
 :qid |stdinbpl.3293:17|
 :skolemid |265|
 :pattern ( (neverTriggered23 i_14_1) (neverTriggered23 i_14_2))
))) (=> (forall ((i_14_1@@0 Int) (i_14_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_14_1@@0 i_14_2@@0)) (|Seq#Contains_3680| (|Seq#Range| start end) i_14_1@@0)) (|Seq#Contains_3680| (|Seq#Range| start end) i_14_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_14_1@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_14_2@@0))))
 :qid |stdinbpl.3293:17|
 :skolemid |265|
 :pattern ( (neverTriggered23 i_14_1@@0) (neverTriggered23 i_14_2@@0))
)) (and (=> (= (ControlFlow 0 42) (- 0 43)) (forall ((i_14_1@@1 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start end) i_14_1@@1) (>= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@11) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_14_1@@1) value) FullPerm))
 :qid |stdinbpl.3300:17|
 :skolemid |266|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_14_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_14_1@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_14_1@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_14_1@@1))
))) (=> (forall ((i_14_1@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start end) i_14_1@@2) (>= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@11) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_14_1@@2) value) FullPerm))
 :qid |stdinbpl.3300:17|
 :skolemid |266|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_14_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_14_1@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_14_1@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_14_1@@2))
)) (=> (forall ((i_14_1@@3 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) i_14_1@@3) (< NoPerm FullPerm)) (and (qpRange23 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_14_1@@3)) (= (invRecv23 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_14_1@@3)) i_14_1@@3)))
 :qid |stdinbpl.3306:22|
 :skolemid |267|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_14_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_14_1@@3))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_14_1@@3))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_14_1@@3))
)) (=> (and (forall ((o_4@@39 T@Ref) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv23 o_4@@39)) (and (< NoPerm FullPerm) (qpRange23 o_4@@39))) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) (invRecv23 o_4@@39)) o_4@@39))
 :qid |stdinbpl.3310:22|
 :skolemid |268|
 :pattern ( (invRecv23 o_4@@39))
)) (forall ((o_4@@40 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv23 o_4@@40)) (and (< NoPerm FullPerm) (qpRange23 o_4@@40))) (and (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) (invRecv23 o_4@@40)) o_4@@40) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@8) o_4@@40 value) (- (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@11) o_4@@40 value) FullPerm)))) (=> (not (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv23 o_4@@40)) (and (< NoPerm FullPerm) (qpRange23 o_4@@40)))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@8) o_4@@40 value) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@11) o_4@@40 value))))
 :qid |stdinbpl.3316:22|
 :skolemid |269|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@8) o_4@@40 value))
))) (=> (and (and (and (and (and (forall ((o_4@@41 T@Ref) (f_5@@29 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@11) o_4@@41 f_5@@29) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@8) o_4@@41 f_5@@29)))
 :qid |stdinbpl.3322:29|
 :skolemid |270|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@8) o_4@@41 f_5@@29))
)) (forall ((o_4@@42 T@Ref) (f_5@@30 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@11) o_4@@42 f_5@@30) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@8) o_4@@42 f_5@@30)))
 :qid |stdinbpl.3322:29|
 :skolemid |270|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@8) o_4@@42 f_5@@30))
))) (forall ((o_4@@43 T@Ref) (f_5@@31 T@Field_44956_3802) ) (!  (=> (not (= f_5@@31 value)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@11) o_4@@43 f_5@@31) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@8) o_4@@43 f_5@@31)))
 :qid |stdinbpl.3322:29|
 :skolemid |270|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@8) o_4@@43 f_5@@31))
))) (forall ((o_4@@44 T@Ref) (f_5@@32 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@11) o_4@@44 f_5@@32) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@8) o_4@@44 f_5@@32)))
 :qid |stdinbpl.3322:29|
 :skolemid |270|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@8) o_4@@44 f_5@@32))
))) (forall ((o_4@@45 T@Ref) (f_5@@33 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@11) o_4@@45 f_5@@33) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@8) o_4@@45 f_5@@33)))
 :qid |stdinbpl.3322:29|
 :skolemid |270|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@8) o_4@@45 f_5@@33))
))) (forall ((o_4@@46 T@Ref) (f_5@@34 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@11) o_4@@46 f_5@@34) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@8) o_4@@46 f_5@@34)))
 :qid |stdinbpl.3322:29|
 :skolemid |270|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@8) o_4@@46 f_5@@34))
))) (and (and (=> (= (ControlFlow 0 42) 36) anon87_Else_correct) (=> (= (ControlFlow 0 42) 39) anon88_Then_correct)) (=> (= (ControlFlow 0 42) 41) anon88_Else_correct))))))))))))
(let ((anon54_correct true))
(let ((anon86_Else_correct  (=> (and (not (and (|Seq#Contains_3680| (|Seq#Range| start end) i_12_1) (and (|Seq#Contains_3680| (|Seq#Range| start end) j_8) (not (= i_12_1 j_8))))) (= (ControlFlow 0 34) 31)) anon54_correct)))
(let ((anon86_Then_correct  (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) i_12_1) (and (|Seq#Contains_3680| (|Seq#Range| start end) j_8) (not (= i_12_1 j_8)))) (and (=> (= (ControlFlow 0 32) (- 0 33)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_12_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) j_8)))) (=> (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_12_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) j_8))) (=> (= (ControlFlow 0 32) 31) anon54_correct))))))
(let ((anon82_Else_correct  (=> (and (and (not (< N@0 end)) (state ExhaleHeap@0 QPMask@3)) (and (> wildcard@10 NoPerm) (not (= a_2 null)))) (=> (and (and (and (and (= Mask@8 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@3) a_2 array (+ (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@3) a_2 array) wildcard@10)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@3) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@3) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@3) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@3) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@3))) (state ExhaleHeap@0 Mask@8)) (and (> wildcard@11 NoPerm) (not (= b_24 null)))) (and (and (= Mask@9 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@8) b_24 array (+ (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@8) b_24 array) wildcard@11)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@8) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@8) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@8) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@8) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@8))) (state ExhaleHeap@0 Mask@9)) (and (<= 0 start) (<= end (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array)))))) (and (and (and (= N@0 (- (+ I@0 J@0) middle)) (<= 0 start)) (and (<= start I@0) (<= middle J@0))) (and (and (<= J@0 end) (= (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array)) (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array)))) (and (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array)) (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array)))))) (and (=> (= (ControlFlow 0 45) (- 0 51)) (forall ((i_28 Int) (i_28_1 Int) ) (!  (=> (and (and (and (and (not (= i_28 i_28_1)) (|Seq#Contains_3680| (|Seq#Range| start end) i_28)) (|Seq#Contains_3680| (|Seq#Range| start end) i_28_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_28) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_28_1))))
 :qid |stdinbpl.3189:17|
 :skolemid |252|
))) (=> (forall ((i_28@@0 Int) (i_28_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_28@@0 i_28_1@@0)) (|Seq#Contains_3680| (|Seq#Range| start end) i_28@@0)) (|Seq#Contains_3680| (|Seq#Range| start end) i_28_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_28@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_28_1@@0))))
 :qid |stdinbpl.3189:17|
 :skolemid |252|
)) (=> (and (and (forall ((i_28@@1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) i_28@@1) (< NoPerm FullPerm)) (and (qpRange33 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_28@@1)) (= (invRecv33 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_28@@1)) i_28@@1)))
 :qid |stdinbpl.3195:24|
 :skolemid |253|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_28@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_28@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_28@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_28@@1))
)) (forall ((o_4@@47 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv33 o_4@@47)) (< NoPerm FullPerm)) (qpRange33 o_4@@47)) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) (invRecv33 o_4@@47)) o_4@@47))
 :qid |stdinbpl.3199:24|
 :skolemid |254|
 :pattern ( (invRecv33 o_4@@47))
))) (and (forall ((i_28@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start end) i_28@@2) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_28@@2) null)))
 :qid |stdinbpl.3205:24|
 :skolemid |255|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_28@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_28@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_28@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) i_28@@2))
)) (forall ((o_4@@48 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv33 o_4@@48)) (< NoPerm FullPerm)) (qpRange33 o_4@@48)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) (invRecv33 o_4@@48)) o_4@@48)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@6) o_4@@48 value) (+ (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@9) o_4@@48 value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv33 o_4@@48)) (< NoPerm FullPerm)) (qpRange33 o_4@@48))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@6) o_4@@48 value) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@9) o_4@@48 value))))
 :qid |stdinbpl.3211:24|
 :skolemid |256|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@6) o_4@@48 value))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@49 T@Ref) (f_5@@35 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@9) o_4@@49 f_5@@35) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@6) o_4@@49 f_5@@35)))
 :qid |stdinbpl.3215:31|
 :skolemid |257|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@9) o_4@@49 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@6) o_4@@49 f_5@@35))
)) (forall ((o_4@@50 T@Ref) (f_5@@36 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@9) o_4@@50 f_5@@36) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@6) o_4@@50 f_5@@36)))
 :qid |stdinbpl.3215:31|
 :skolemid |257|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@9) o_4@@50 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@6) o_4@@50 f_5@@36))
))) (forall ((o_4@@51 T@Ref) (f_5@@37 T@Field_44956_3802) ) (!  (=> (not (= f_5@@37 value)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@9) o_4@@51 f_5@@37) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@6) o_4@@51 f_5@@37)))
 :qid |stdinbpl.3215:31|
 :skolemid |257|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@9) o_4@@51 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@6) o_4@@51 f_5@@37))
))) (forall ((o_4@@52 T@Ref) (f_5@@38 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@9) o_4@@52 f_5@@38) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@6) o_4@@52 f_5@@38)))
 :qid |stdinbpl.3215:31|
 :skolemid |257|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@9) o_4@@52 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@6) o_4@@52 f_5@@38))
))) (forall ((o_4@@53 T@Ref) (f_5@@39 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@9) o_4@@53 f_5@@39) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@6) o_4@@53 f_5@@39)))
 :qid |stdinbpl.3215:31|
 :skolemid |257|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@9) o_4@@53 f_5@@39))
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@6) o_4@@53 f_5@@39))
))) (forall ((o_4@@54 T@Ref) (f_5@@40 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@9) o_4@@54 f_5@@40) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@6) o_4@@54 f_5@@40)))
 :qid |stdinbpl.3215:31|
 :skolemid |257|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@9) o_4@@54 f_5@@40))
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@6) o_4@@54 f_5@@40))
))) (state ExhaleHeap@0 QPMask@6)) (and (=> (= (ControlFlow 0 45) (- 0 50)) (forall ((i_29_1 Int) (i_29_2 Int) ) (!  (=> (and (and (and (and (not (= i_29_1 i_29_2)) (|Seq#Contains_3680| (|Seq#Range| start end) i_29_1)) (|Seq#Contains_3680| (|Seq#Range| start end) i_29_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_29_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_29_2))))
 :qid |stdinbpl.3223:17|
 :skolemid |258|
))) (=> (forall ((i_29_1@@0 Int) (i_29_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_29_1@@0 i_29_2@@0)) (|Seq#Contains_3680| (|Seq#Range| start end) i_29_1@@0)) (|Seq#Contains_3680| (|Seq#Range| start end) i_29_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_29_1@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_29_2@@0))))
 :qid |stdinbpl.3223:17|
 :skolemid |258|
)) (=> (and (and (forall ((i_29_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) i_29_1@@1) (< NoPerm FullPerm)) (and (qpRange34 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_29_1@@1)) (= (invRecv34 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_29_1@@1)) i_29_1@@1)))
 :qid |stdinbpl.3229:24|
 :skolemid |259|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_29_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_29_1@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_29_1@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_29_1@@1))
)) (forall ((o_4@@55 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv34 o_4@@55)) (< NoPerm FullPerm)) (qpRange34 o_4@@55)) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) (invRecv34 o_4@@55)) o_4@@55))
 :qid |stdinbpl.3233:24|
 :skolemid |260|
 :pattern ( (invRecv34 o_4@@55))
))) (and (forall ((i_29_1@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start end) i_29_1@@2) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_29_1@@2) null)))
 :qid |stdinbpl.3239:24|
 :skolemid |261|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_29_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_29_1@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_29_1@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) i_29_1@@2))
)) (forall ((o_4@@56 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv34 o_4@@56)) (< NoPerm FullPerm)) (qpRange34 o_4@@56)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) (invRecv34 o_4@@56)) o_4@@56)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@7) o_4@@56 value) (+ (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@6) o_4@@56 value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv34 o_4@@56)) (< NoPerm FullPerm)) (qpRange34 o_4@@56))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@7) o_4@@56 value) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@6) o_4@@56 value))))
 :qid |stdinbpl.3245:24|
 :skolemid |262|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@7) o_4@@56 value))
)))) (=> (and (and (and (and (and (and (and (forall ((o_4@@57 T@Ref) (f_5@@41 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@6) o_4@@57 f_5@@41) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@7) o_4@@57 f_5@@41)))
 :qid |stdinbpl.3249:31|
 :skolemid |263|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@6) o_4@@57 f_5@@41))
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@7) o_4@@57 f_5@@41))
)) (forall ((o_4@@58 T@Ref) (f_5@@42 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@6) o_4@@58 f_5@@42) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@7) o_4@@58 f_5@@42)))
 :qid |stdinbpl.3249:31|
 :skolemid |263|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@6) o_4@@58 f_5@@42))
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@7) o_4@@58 f_5@@42))
))) (forall ((o_4@@59 T@Ref) (f_5@@43 T@Field_44956_3802) ) (!  (=> (not (= f_5@@43 value)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@6) o_4@@59 f_5@@43) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@7) o_4@@59 f_5@@43)))
 :qid |stdinbpl.3249:31|
 :skolemid |263|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@6) o_4@@59 f_5@@43))
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@7) o_4@@59 f_5@@43))
))) (forall ((o_4@@60 T@Ref) (f_5@@44 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@6) o_4@@60 f_5@@44) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@7) o_4@@60 f_5@@44)))
 :qid |stdinbpl.3249:31|
 :skolemid |263|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@6) o_4@@60 f_5@@44))
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@7) o_4@@60 f_5@@44))
))) (forall ((o_4@@61 T@Ref) (f_5@@45 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@6) o_4@@61 f_5@@45) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@7) o_4@@61 f_5@@45)))
 :qid |stdinbpl.3249:31|
 :skolemid |263|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@6) o_4@@61 f_5@@45))
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@7) o_4@@61 f_5@@45))
))) (forall ((o_4@@62 T@Ref) (f_5@@46 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@6) o_4@@62 f_5@@46) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@7) o_4@@62 f_5@@46)))
 :qid |stdinbpl.3249:31|
 :skolemid |263|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@6) o_4@@62 f_5@@46))
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@7) o_4@@62 f_5@@46))
))) (state ExhaleHeap@0 QPMask@7)) (and (state ExhaleHeap@0 QPMask@7) (state ExhaleHeap@0 QPMask@7))) (and (=> (= (ControlFlow 0 45) (- 0 49)) (> (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@7) a_2 array) NoPerm)) (=> (> (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@7) a_2 array) NoPerm) (=> (> wildcard@12 NoPerm) (=> (and (< wildcard@12 (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@7) a_2 array)) (= Mask@10 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@7) a_2 array (- (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@7) a_2 array) wildcard@12)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@7) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@7) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@7) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@7) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@7)))) (and (=> (= (ControlFlow 0 45) (- 0 48)) (> (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@10) b_24 array) NoPerm)) (=> (> (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@10) b_24 array) NoPerm) (=> (> wildcard@13 NoPerm) (=> (and (< wildcard@13 (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@10) b_24 array)) (= Mask@11 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@10) b_24 array (- (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@10) b_24 array) wildcard@13)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@10) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@10) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@10) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@10) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@10)))) (and (=> (= (ControlFlow 0 45) (- 0 47)) (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array))) (=> (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) a_2 array) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array)) (and (=> (= (ControlFlow 0 45) (- 0 46)) (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array))) (=> (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| ExhaleHeap@0) b_24 array) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array)) (and (and (=> (= (ControlFlow 0 45) 42) anon85_Else_correct) (=> (= (ControlFlow 0 45) 32) anon86_Then_correct)) (=> (= (ControlFlow 0 45) 34) anon86_Else_correct))))))))))))))))))))))))))
(let ((anon68_Else_correct  (=> (state Heap@@19 QPMask@1) (=> (and (state Heap@@19 QPMask@1) (state Heap@@19 QPMask@1)) (and (=> (= (ControlFlow 0 124) (- 0 140)) (> (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@1) a_2 array) NoPerm)) (=> (> (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@1) a_2 array) NoPerm) (=> (> wildcard@4 NoPerm) (=> (and (< wildcard@4 (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@1) a_2 array)) (= Mask@2 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@1) a_2 array (- (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@1) a_2 array) wildcard@4)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@1) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@1) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@1) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@1) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@1)))) (and (=> (= (ControlFlow 0 124) (- 0 139)) (> (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@2) b_24 array) NoPerm)) (=> (> (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@2) b_24 array) NoPerm) (=> (> wildcard@5 NoPerm) (=> (and (< wildcard@5 (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@2) b_24 array)) (= Mask@3 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@2) b_24 array (- (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@2) b_24 array) wildcard@5)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@2) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@2) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@2) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@2) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@2)))) (and (=> (= (ControlFlow 0 124) (- 0 138)) (<= 0 start)) (=> (<= 0 start) (and (=> (= (ControlFlow 0 124) (- 0 137)) (<= end (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array)))) (=> (<= end (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array))) (and (=> (= (ControlFlow 0 124) (- 0 136)) (= start (- (+ start middle) middle))) (=> (= start (- (+ start middle) middle)) (and (=> (= (ControlFlow 0 124) (- 0 135)) (<= 0 start)) (=> (<= 0 start) (and (=> (= (ControlFlow 0 124) (- 0 134)) (<= start start)) (=> (<= start start) (and (=> (= (ControlFlow 0 124) (- 0 133)) (<= middle middle)) (=> (<= middle middle) (and (=> (= (ControlFlow 0 124) (- 0 132)) (<= middle end)) (=> (<= middle end) (and (=> (= (ControlFlow 0 124) (- 0 131)) (= (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array)) (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array)))) (=> (= (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array)) (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array))) (and (=> (= (ControlFlow 0 124) (- 0 130)) (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array))) (=> (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array)) (and (=> (= (ControlFlow 0 124) (- 0 129)) (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array))) (=> (|Seq#Equal_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array)) (and (=> (= (ControlFlow 0 124) (- 0 128)) (forall ((i_18_1 Int) (i_18_2 Int) ) (!  (=> (and (and (and (and (not (= i_18_1 i_18_2)) (|Seq#Contains_3680| (|Seq#Range| start end) i_18_1)) (|Seq#Contains_3680| (|Seq#Range| start end) i_18_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) i_18_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) i_18_2))))
 :qid |stdinbpl.2617:21|
 :skolemid |204|
 :pattern ( (neverTriggered25 i_18_1) (neverTriggered25 i_18_2))
))) (=> (forall ((i_18_1@@0 Int) (i_18_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_18_1@@0 i_18_2@@0)) (|Seq#Contains_3680| (|Seq#Range| start end) i_18_1@@0)) (|Seq#Contains_3680| (|Seq#Range| start end) i_18_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) i_18_1@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) i_18_2@@0))))
 :qid |stdinbpl.2617:21|
 :skolemid |204|
 :pattern ( (neverTriggered25 i_18_1@@0) (neverTriggered25 i_18_2@@0))
)) (and (=> (= (ControlFlow 0 124) (- 0 127)) (forall ((i_18_1@@1 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start end) i_18_1@@1) (>= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@3) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) i_18_1@@1) value) FullPerm))
 :qid |stdinbpl.2624:21|
 :skolemid |205|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) i_18_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_18_1@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_18_1@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) i_18_1@@1))
))) (=> (forall ((i_18_1@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start end) i_18_1@@2) (>= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@3) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) i_18_1@@2) value) FullPerm))
 :qid |stdinbpl.2624:21|
 :skolemid |205|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) i_18_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_18_1@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_18_1@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) i_18_1@@2))
)) (=> (forall ((i_18_1@@3 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) i_18_1@@3) (< NoPerm FullPerm)) (and (qpRange25 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) i_18_1@@3)) (= (invRecv25 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) i_18_1@@3)) i_18_1@@3)))
 :qid |stdinbpl.2630:26|
 :skolemid |206|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) i_18_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_18_1@@3))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_18_1@@3))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) i_18_1@@3))
)) (=> (and (forall ((o_4@@63 T@Ref) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv25 o_4@@63)) (and (< NoPerm FullPerm) (qpRange25 o_4@@63))) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) (invRecv25 o_4@@63)) o_4@@63))
 :qid |stdinbpl.2634:26|
 :skolemid |207|
 :pattern ( (invRecv25 o_4@@63))
)) (forall ((o_4@@64 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv25 o_4@@64)) (and (< NoPerm FullPerm) (qpRange25 o_4@@64))) (and (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) (invRecv25 o_4@@64)) o_4@@64) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@2) o_4@@64 value) (- (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@3) o_4@@64 value) FullPerm)))) (=> (not (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv25 o_4@@64)) (and (< NoPerm FullPerm) (qpRange25 o_4@@64)))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@2) o_4@@64 value) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@3) o_4@@64 value))))
 :qid |stdinbpl.2640:26|
 :skolemid |208|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@2) o_4@@64 value))
))) (=> (and (and (and (and (and (forall ((o_4@@65 T@Ref) (f_5@@47 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@3) o_4@@65 f_5@@47) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@2) o_4@@65 f_5@@47)))
 :qid |stdinbpl.2646:33|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@2) o_4@@65 f_5@@47))
)) (forall ((o_4@@66 T@Ref) (f_5@@48 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@3) o_4@@66 f_5@@48) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@2) o_4@@66 f_5@@48)))
 :qid |stdinbpl.2646:33|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@2) o_4@@66 f_5@@48))
))) (forall ((o_4@@67 T@Ref) (f_5@@49 T@Field_44956_3802) ) (!  (=> (not (= f_5@@49 value)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@3) o_4@@67 f_5@@49) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@2) o_4@@67 f_5@@49)))
 :qid |stdinbpl.2646:33|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@2) o_4@@67 f_5@@49))
))) (forall ((o_4@@68 T@Ref) (f_5@@50 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@3) o_4@@68 f_5@@50) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@2) o_4@@68 f_5@@50)))
 :qid |stdinbpl.2646:33|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@2) o_4@@68 f_5@@50))
))) (forall ((o_4@@69 T@Ref) (f_5@@51 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@3) o_4@@69 f_5@@51) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@2) o_4@@69 f_5@@51)))
 :qid |stdinbpl.2646:33|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@2) o_4@@69 f_5@@51))
))) (forall ((o_4@@70 T@Ref) (f_5@@52 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@3) o_4@@70 f_5@@52) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@2) o_4@@70 f_5@@52)))
 :qid |stdinbpl.2646:33|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@2) o_4@@70 f_5@@52))
))) (and (=> (= (ControlFlow 0 124) (- 0 126)) (forall ((i_19 Int) (i_19_1 Int) ) (!  (=> (and (and (and (and (not (= i_19 i_19_1)) (|Seq#Contains_3680| (|Seq#Range| start end) i_19)) (|Seq#Contains_3680| (|Seq#Range| start end) i_19_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) i_19) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) i_19_1))))
 :qid |stdinbpl.2658:21|
 :skolemid |210|
 :pattern ( (neverTriggered26 i_19) (neverTriggered26 i_19_1))
))) (=> (forall ((i_19@@0 Int) (i_19_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_19@@0 i_19_1@@0)) (|Seq#Contains_3680| (|Seq#Range| start end) i_19@@0)) (|Seq#Contains_3680| (|Seq#Range| start end) i_19_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) i_19@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) i_19_1@@0))))
 :qid |stdinbpl.2658:21|
 :skolemid |210|
 :pattern ( (neverTriggered26 i_19@@0) (neverTriggered26 i_19_1@@0))
)) (and (=> (= (ControlFlow 0 124) (- 0 125)) (forall ((i_19@@1 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start end) i_19@@1) (>= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@2) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) i_19@@1) value) FullPerm))
 :qid |stdinbpl.2665:21|
 :skolemid |211|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) i_19@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_19@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_19@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) i_19@@1))
))) (=> (forall ((i_19@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start end) i_19@@2) (>= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@2) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) i_19@@2) value) FullPerm))
 :qid |stdinbpl.2665:21|
 :skolemid |211|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) i_19@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_19@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_19@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) i_19@@2))
)) (=> (forall ((i_19@@3 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) i_19@@3) (< NoPerm FullPerm)) (and (qpRange26 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) i_19@@3)) (= (invRecv26 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) i_19@@3)) i_19@@3)))
 :qid |stdinbpl.2671:26|
 :skolemid |212|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) i_19@@3))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_19@@3))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_19@@3))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) i_19@@3))
)) (=> (and (forall ((o_4@@71 T@Ref) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv26 o_4@@71)) (and (< NoPerm FullPerm) (qpRange26 o_4@@71))) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) (invRecv26 o_4@@71)) o_4@@71))
 :qid |stdinbpl.2675:26|
 :skolemid |213|
 :pattern ( (invRecv26 o_4@@71))
)) (forall ((o_4@@72 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv26 o_4@@72)) (and (< NoPerm FullPerm) (qpRange26 o_4@@72))) (and (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) (invRecv26 o_4@@72)) o_4@@72) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@3) o_4@@72 value) (- (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@2) o_4@@72 value) FullPerm)))) (=> (not (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv26 o_4@@72)) (and (< NoPerm FullPerm) (qpRange26 o_4@@72)))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@3) o_4@@72 value) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@2) o_4@@72 value))))
 :qid |stdinbpl.2681:26|
 :skolemid |214|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@3) o_4@@72 value))
))) (=> (and (and (and (and (and (and (forall ((o_4@@73 T@Ref) (f_5@@53 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@2) o_4@@73 f_5@@53) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@3) o_4@@73 f_5@@53)))
 :qid |stdinbpl.2687:33|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@3) o_4@@73 f_5@@53))
)) (forall ((o_4@@74 T@Ref) (f_5@@54 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@2) o_4@@74 f_5@@54) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@3) o_4@@74 f_5@@54)))
 :qid |stdinbpl.2687:33|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@3) o_4@@74 f_5@@54))
))) (forall ((o_4@@75 T@Ref) (f_5@@55 T@Field_44956_3802) ) (!  (=> (not (= f_5@@55 value)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@2) o_4@@75 f_5@@55) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@3) o_4@@75 f_5@@55)))
 :qid |stdinbpl.2687:33|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@3) o_4@@75 f_5@@55))
))) (forall ((o_4@@76 T@Ref) (f_5@@56 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@2) o_4@@76 f_5@@56) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@3) o_4@@76 f_5@@56)))
 :qid |stdinbpl.2687:33|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@3) o_4@@76 f_5@@56))
))) (forall ((o_4@@77 T@Ref) (f_5@@57 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@2) o_4@@77 f_5@@57) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@3) o_4@@77 f_5@@57)))
 :qid |stdinbpl.2687:33|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@3) o_4@@77 f_5@@57))
))) (forall ((o_4@@78 T@Ref) (f_5@@58 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@2) o_4@@78 f_5@@58) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@3) o_4@@78 f_5@@58)))
 :qid |stdinbpl.2687:33|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@3) o_4@@78 f_5@@58))
))) (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@0 QPMask@3)) (and (and (=> (= (ControlFlow 0 124) 116) anon77_Then_correct) (=> (= (ControlFlow 0 124) 97) anon82_Then_correct)) (=> (= (ControlFlow 0 124) 45) anon82_Else_correct))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon66_Else_correct  (and (=> (= (ControlFlow 0 182) (- 0 183)) (forall ((l_1 Int) (l_1_2 Int) ) (!  (=> (and (and (and (and (not (= l_1 l_1_2)) (|Seq#Contains_3680| (|Seq#Range| start end) l_1)) (|Seq#Contains_3680| (|Seq#Range| start end) l_1_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) l_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) l_1_2))))
 :qid |stdinbpl.2341:15|
 :skolemid |184|
))) (=> (forall ((l_1@@0 Int) (l_1_2@@0 Int) ) (!  (=> (and (and (and (and (not (= l_1@@0 l_1_2@@0)) (|Seq#Contains_3680| (|Seq#Range| start end) l_1@@0)) (|Seq#Contains_3680| (|Seq#Range| start end) l_1_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) l_1@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) l_1_2@@0))))
 :qid |stdinbpl.2341:15|
 :skolemid |184|
)) (=> (and (and (forall ((l_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) l_1@@1) (< NoPerm FullPerm)) (and (qpRange20 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) l_1@@1)) (= (invRecv20 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) l_1@@1)) l_1@@1)))
 :qid |stdinbpl.2347:22|
 :skolemid |185|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) l_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) l_1@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) l_1@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) l_1@@1))
)) (forall ((o_4@@79 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv20 o_4@@79)) (< NoPerm FullPerm)) (qpRange20 o_4@@79)) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) (invRecv20 o_4@@79)) o_4@@79))
 :qid |stdinbpl.2351:22|
 :skolemid |186|
 :pattern ( (invRecv20 o_4@@79))
))) (and (forall ((l_1@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start end) l_1@@2) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) l_1@@2) null)))
 :qid |stdinbpl.2357:22|
 :skolemid |187|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) l_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) l_1@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) l_1@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) l_1@@2))
)) (forall ((o_4@@80 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv20 o_4@@80)) (< NoPerm FullPerm)) (qpRange20 o_4@@80)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) (invRecv20 o_4@@80)) o_4@@80)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@1) o_4@@80 value) (+ (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@0) o_4@@80 value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv20 o_4@@80)) (< NoPerm FullPerm)) (qpRange20 o_4@@80))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@1) o_4@@80 value) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@0) o_4@@80 value))))
 :qid |stdinbpl.2363:22|
 :skolemid |188|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@1) o_4@@80 value))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@81 T@Ref) (f_5@@59 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@0) o_4@@81 f_5@@59) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@1) o_4@@81 f_5@@59)))
 :qid |stdinbpl.2367:29|
 :skolemid |189|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@0) o_4@@81 f_5@@59))
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@1) o_4@@81 f_5@@59))
)) (forall ((o_4@@82 T@Ref) (f_5@@60 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@0) o_4@@82 f_5@@60) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@1) o_4@@82 f_5@@60)))
 :qid |stdinbpl.2367:29|
 :skolemid |189|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@0) o_4@@82 f_5@@60))
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@1) o_4@@82 f_5@@60))
))) (forall ((o_4@@83 T@Ref) (f_5@@61 T@Field_44956_3802) ) (!  (=> (not (= f_5@@61 value)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@0) o_4@@83 f_5@@61) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@1) o_4@@83 f_5@@61)))
 :qid |stdinbpl.2367:29|
 :skolemid |189|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@0) o_4@@83 f_5@@61))
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@1) o_4@@83 f_5@@61))
))) (forall ((o_4@@84 T@Ref) (f_5@@62 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@0) o_4@@84 f_5@@62) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@1) o_4@@84 f_5@@62)))
 :qid |stdinbpl.2367:29|
 :skolemid |189|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@0) o_4@@84 f_5@@62))
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@1) o_4@@84 f_5@@62))
))) (forall ((o_4@@85 T@Ref) (f_5@@63 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@0) o_4@@85 f_5@@63) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@1) o_4@@85 f_5@@63)))
 :qid |stdinbpl.2367:29|
 :skolemid |189|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@0) o_4@@85 f_5@@63))
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@1) o_4@@85 f_5@@63))
))) (forall ((o_4@@86 T@Ref) (f_5@@64 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@0) o_4@@86 f_5@@64) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@1) o_4@@86 f_5@@64)))
 :qid |stdinbpl.2367:29|
 :skolemid |189|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@0) o_4@@86 f_5@@64))
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@1) o_4@@86 f_5@@64))
))) (and (state Heap@@19 QPMask@1) (state Heap@@19 QPMask@1))) (and (=> (= (ControlFlow 0 182) 177) anon68_Then_correct) (=> (= (ControlFlow 0 182) 124) anon68_Else_correct))))))))
(let ((anon15_correct true))
(let ((anon67_Else_correct  (=> (and (not (|Seq#Contains_3680| (|Seq#Range| start end) l_4)) (= (ControlFlow 0 30) 25)) anon15_correct)))
(let ((anon67_Then_correct  (=> (|Seq#Contains_3680| (|Seq#Range| start end) l_4) (and (=> (= (ControlFlow 0 26) (- 0 29)) (HasDirectPerm_24073_45764 QPMask@0 b_24 array)) (=> (HasDirectPerm_24073_45764 QPMask@0 b_24 array) (and (=> (= (ControlFlow 0 26) (- 0 28)) (>= l_4 0)) (=> (>= l_4 0) (and (=> (= (ControlFlow 0 26) (- 0 27)) (< l_4 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array)))) (=> (< l_4 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array))) (=> (= (ControlFlow 0 26) 25) anon15_correct))))))))))
(let ((anon64_Else_correct  (=> (and (forall ((i_3 Int) (j_3_1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) i_3) (and (|Seq#Contains_3680| (|Seq#Range| start end) j_3_1) (not (= i_3 j_3_1)))) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) i_3) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) j_3_1))))
 :qid |stdinbpl.2321:20|
 :skolemid |183|
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_3) (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) j_3_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_3) (|Seq#Contains_3680| (|Seq#Range| start end) j_3_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_3) (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) j_3_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_3) (|Seq#Contains_3680| (|Seq#Range| start end) j_3_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_3) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) j_3_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_3) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) j_3_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) j_3_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) i_3))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) j_3_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) i_3))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) i_3) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array) j_3_1))
)) (state Heap@@19 QPMask@0)) (and (and (=> (= (ControlFlow 0 184) 182) anon66_Else_correct) (=> (= (ControlFlow 0 184) 26) anon67_Then_correct)) (=> (= (ControlFlow 0 184) 30) anon67_Else_correct)))))
(let ((anon11_correct true))
(let ((anon65_Else_correct  (=> (and (not (and (|Seq#Contains_3680| (|Seq#Range| start end) i_31) (and (|Seq#Contains_3680| (|Seq#Range| start end) j_19) (not (= i_31 j_19))))) (= (ControlFlow 0 24) 16)) anon11_correct)))
(let ((anon65_Then_correct  (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) i_31) (and (|Seq#Contains_3680| (|Seq#Range| start end) j_19) (not (= i_31 j_19)))) (and (=> (= (ControlFlow 0 17) (- 0 23)) (HasDirectPerm_24073_45764 QPMask@0 b_24 array)) (=> (HasDirectPerm_24073_45764 QPMask@0 b_24 array) (and (=> (= (ControlFlow 0 17) (- 0 22)) (>= i_31 0)) (=> (>= i_31 0) (and (=> (= (ControlFlow 0 17) (- 0 21)) (< i_31 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array)))) (=> (< i_31 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array))) (and (=> (= (ControlFlow 0 17) (- 0 20)) (HasDirectPerm_24073_45764 QPMask@0 b_24 array)) (=> (HasDirectPerm_24073_45764 QPMask@0 b_24 array) (and (=> (= (ControlFlow 0 17) (- 0 19)) (>= j_19 0)) (=> (>= j_19 0) (and (=> (= (ControlFlow 0 17) (- 0 18)) (< j_19 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array)))) (=> (< j_19 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array))) (=> (= (ControlFlow 0 17) 16) anon11_correct))))))))))))))))
(let ((anon62_Else_correct  (and (=> (= (ControlFlow 0 185) (- 0 186)) (forall ((k_1_1 Int) (k_1_2 Int) ) (!  (=> (and (and (and (and (not (= k_1_1 k_1_2)) (|Seq#Contains_3680| (|Seq#Range| start end) k_1_1)) (|Seq#Contains_3680| (|Seq#Range| start end) k_1_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) k_1_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) k_1_2))))
 :qid |stdinbpl.2269:15|
 :skolemid |177|
))) (=> (forall ((k_1_1@@0 Int) (k_1_2@@0 Int) ) (!  (=> (and (and (and (and (not (= k_1_1@@0 k_1_2@@0)) (|Seq#Contains_3680| (|Seq#Range| start end) k_1_1@@0)) (|Seq#Contains_3680| (|Seq#Range| start end) k_1_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) k_1_1@@0) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) k_1_2@@0))))
 :qid |stdinbpl.2269:15|
 :skolemid |177|
)) (=> (and (and (forall ((k_1_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) k_1_1@@1) (< NoPerm FullPerm)) (and (qpRange19 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) k_1_1@@1)) (= (invRecv19 (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) k_1_1@@1)) k_1_1@@1)))
 :qid |stdinbpl.2275:22|
 :skolemid |178|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) k_1_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) k_1_1@@1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) k_1_1@@1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) k_1_1@@1))
)) (forall ((o_4@@87 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv19 o_4@@87)) (< NoPerm FullPerm)) (qpRange19 o_4@@87)) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) (invRecv19 o_4@@87)) o_4@@87))
 :qid |stdinbpl.2279:22|
 :skolemid |179|
 :pattern ( (invRecv19 o_4@@87))
))) (and (forall ((k_1_1@@2 Int) ) (!  (=> (|Seq#Contains_3680| (|Seq#Range| start end) k_1_1@@2) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) k_1_1@@2) null)))
 :qid |stdinbpl.2285:22|
 :skolemid |180|
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) k_1_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) k_1_1@@2))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) k_1_1@@2))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) k_1_1@@2))
)) (forall ((o_4@@88 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv19 o_4@@88)) (< NoPerm FullPerm)) (qpRange19 o_4@@88)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) (invRecv19 o_4@@88)) o_4@@88)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@0) o_4@@88 value) (+ (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@1) o_4@@88 value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3680| (|Seq#Range| start end) (invRecv19 o_4@@88)) (< NoPerm FullPerm)) (qpRange19 o_4@@88))) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@0) o_4@@88 value) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@1) o_4@@88 value))))
 :qid |stdinbpl.2291:22|
 :skolemid |181|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@0) o_4@@88 value))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@89 T@Ref) (f_5@@65 T@Field_38871_53) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@1) o_4@@89 f_5@@65) (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@0) o_4@@89 f_5@@65)))
 :qid |stdinbpl.2295:29|
 :skolemid |182|
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@1) o_4@@89 f_5@@65))
 :pattern ( (select (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| QPMask@0) o_4@@89 f_5@@65))
)) (forall ((o_4@@90 T@Ref) (f_5@@66 T@Field_38884_38885) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@1) o_4@@90 f_5@@66) (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@0) o_4@@90 f_5@@66)))
 :qid |stdinbpl.2295:29|
 :skolemid |182|
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@1) o_4@@90 f_5@@66))
 :pattern ( (select (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| QPMask@0) o_4@@90 f_5@@66))
))) (forall ((o_4@@91 T@Ref) (f_5@@67 T@Field_44956_3802) ) (!  (=> (not (= f_5@@67 value)) (= (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@1) o_4@@91 f_5@@67) (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@0) o_4@@91 f_5@@67)))
 :qid |stdinbpl.2295:29|
 :skolemid |182|
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@1) o_4@@91 f_5@@67))
 :pattern ( (select (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| QPMask@0) o_4@@91 f_5@@67))
))) (forall ((o_4@@92 T@Ref) (f_5@@68 T@Field_45003_45008) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@1) o_4@@92 f_5@@68) (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@0) o_4@@92 f_5@@68)))
 :qid |stdinbpl.2295:29|
 :skolemid |182|
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@1) o_4@@92 f_5@@68))
 :pattern ( (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| QPMask@0) o_4@@92 f_5@@68))
))) (forall ((o_4@@93 T@Ref) (f_5@@69 T@Field_24073_128031) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@1) o_4@@93 f_5@@69) (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@0) o_4@@93 f_5@@69)))
 :qid |stdinbpl.2295:29|
 :skolemid |182|
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@1) o_4@@93 f_5@@69))
 :pattern ( (select (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| QPMask@0) o_4@@93 f_5@@69))
))) (forall ((o_4@@94 T@Ref) (f_5@@70 T@Field_24073_128164) ) (!  (=> true (= (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@1) o_4@@94 f_5@@70) (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@0) o_4@@94 f_5@@70)))
 :qid |stdinbpl.2295:29|
 :skolemid |182|
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@1) o_4@@94 f_5@@70))
 :pattern ( (select (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| QPMask@0) o_4@@94 f_5@@70))
))) (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0))) (and (and (=> (= (ControlFlow 0 185) 184) anon64_Else_correct) (=> (= (ControlFlow 0 185) 17) anon65_Then_correct)) (=> (= (ControlFlow 0 185) 24) anon65_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon63_Else_correct  (=> (and (not (|Seq#Contains_3680| (|Seq#Range| start end) k_23)) (= (ControlFlow 0 15) 10)) anon7_correct)))
(let ((anon63_Then_correct  (=> (|Seq#Contains_3680| (|Seq#Range| start end) k_23) (and (=> (= (ControlFlow 0 11) (- 0 14)) (HasDirectPerm_24073_45764 Mask@1 a_2 array)) (=> (HasDirectPerm_24073_45764 Mask@1 a_2 array) (and (=> (= (ControlFlow 0 11) (- 0 13)) (>= k_23 0)) (=> (>= k_23 0) (and (=> (= (ControlFlow 0 11) (- 0 12)) (< k_23 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array)))) (=> (< k_23 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array))) (=> (= (ControlFlow 0 11) 10) anon7_correct))))))))))
(let ((anon60_Else_correct  (=> (and (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) i_1) (and (|Seq#Contains_3680| (|Seq#Range| start end) j_1) (not (= i_1 j_1)))) (not (= (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) i_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) j_1))))
 :qid |stdinbpl.2249:20|
 :skolemid |176|
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_1) (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) j_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_1) (|Seq#Contains_3680| (|Seq#Range| start end) j_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_1) (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) j_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_1) (|Seq#Contains_3680| (|Seq#Range| start end) j_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) i_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) j_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) i_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) j_1))
 :pattern ( (|Seq#ContainsTrigger_3680| (|Seq#Range| start end) j_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) i_1))
 :pattern ( (|Seq#Contains_3680| (|Seq#Range| start end) j_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) i_1))
 :pattern ( (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) i_1) (|Seq#Index_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array) j_1))
)) (state Heap@@19 Mask@1)) (and (and (=> (= (ControlFlow 0 187) 185) anon62_Else_correct) (=> (= (ControlFlow 0 187) 11) anon63_Then_correct)) (=> (= (ControlFlow 0 187) 15) anon63_Else_correct)))))
(let ((anon3_correct true))
(let ((anon61_Else_correct  (=> (and (not (and (|Seq#Contains_3680| (|Seq#Range| start end) i_29) (and (|Seq#Contains_3680| (|Seq#Range| start end) j_16) (not (= i_29 j_16))))) (= (ControlFlow 0 9) 1)) anon3_correct)))
(let ((anon61_Then_correct  (=> (and (|Seq#Contains_3680| (|Seq#Range| start end) i_29) (and (|Seq#Contains_3680| (|Seq#Range| start end) j_16) (not (= i_29 j_16)))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (HasDirectPerm_24073_45764 Mask@1 a_2 array)) (=> (HasDirectPerm_24073_45764 Mask@1 a_2 array) (and (=> (= (ControlFlow 0 2) (- 0 7)) (>= i_29 0)) (=> (>= i_29 0) (and (=> (= (ControlFlow 0 2) (- 0 6)) (< i_29 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array)))) (=> (< i_29 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (HasDirectPerm_24073_45764 Mask@1 a_2 array)) (=> (HasDirectPerm_24073_45764 Mask@1 a_2 array) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_16 0)) (=> (>= j_16 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_16 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array)))) (=> (< j_16 (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array))) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))))))
(let ((anon0_correct  (=> (state Heap@@19 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@19) a_2 $allocated)) (=> (and (and (select (|PolymorphicMapType_38811_23815_53#PolymorphicMapType_38811| Heap@@19) b_24 $allocated) (> wildcard@0 NoPerm)) (and (not (= a_2 null)) (= Mask@0 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| ZeroMask) a_2 array (+ (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| ZeroMask) a_2 array) wildcard@0)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| ZeroMask) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| ZeroMask) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| ZeroMask) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| ZeroMask) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| ZeroMask))))) (=> (and (and (and (state Heap@@19 Mask@0) (state Heap@@19 Mask@0)) (and (> wildcard@1 NoPerm) (not (= b_24 null)))) (and (and (= Mask@1 (PolymorphicMapType_38832 (store (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@0) b_24 array (+ (select (|PolymorphicMapType_38832_24073_45396#PolymorphicMapType_38832| Mask@0) b_24 array) wildcard@1)) (|PolymorphicMapType_38832_24071_3802#PolymorphicMapType_38832| Mask@0) (|PolymorphicMapType_38832_24073_53#PolymorphicMapType_38832| Mask@0) (|PolymorphicMapType_38832_24073_38885#PolymorphicMapType_38832| Mask@0) (|PolymorphicMapType_38832_24073_128031#PolymorphicMapType_38832| Mask@0) (|PolymorphicMapType_38832_24073_132858#PolymorphicMapType_38832| Mask@0))) (state Heap@@19 Mask@1)) (and (state Heap@@19 Mask@1) (<= 0 start)))) (and (=> (= (ControlFlow 0 188) (- 0 191)) (HasDirectPerm_24073_45764 Mask@1 a_2 array)) (=> (HasDirectPerm_24073_45764 Mask@1 a_2 array) (=> (<= end (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array))) (and (=> (= (ControlFlow 0 188) (- 0 190)) (HasDirectPerm_24073_45764 Mask@1 b_24 array)) (=> (HasDirectPerm_24073_45764 Mask@1 b_24 array) (and (=> (= (ControlFlow 0 188) (- 0 189)) (HasDirectPerm_24073_45764 Mask@1 a_2 array)) (=> (HasDirectPerm_24073_45764 Mask@1 a_2 array) (=> (and (and (= (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) b_24 array)) (|Seq#Length_24074| (select (|PolymorphicMapType_38811_24073_45833#PolymorphicMapType_38811| Heap@@19) a_2 array))) (< start middle)) (and (< middle end) (state Heap@@19 Mask@1))) (and (and (=> (= (ControlFlow 0 188) 187) anon60_Else_correct) (=> (= (ControlFlow 0 188) 2) anon61_Then_correct)) (=> (= (ControlFlow 0 188) 9) anon61_Else_correct))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 192) 188)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
