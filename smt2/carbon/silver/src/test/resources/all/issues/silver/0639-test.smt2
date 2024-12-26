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
(declare-sort T@Field_6451_53 0)
(declare-sort T@Field_6464_6465 0)
(declare-sort T@Field_12471_3022 0)
(declare-sort T@Field_6451_16893 0)
(declare-sort T@Field_6451_16760 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6412 0)) (((PolymorphicMapType_6412 (|PolymorphicMapType_6412_4355_3022#PolymorphicMapType_6412| (Array T@Ref T@Field_12471_3022 Real)) (|PolymorphicMapType_6412_4355_53#PolymorphicMapType_6412| (Array T@Ref T@Field_6451_53 Real)) (|PolymorphicMapType_6412_4355_6465#PolymorphicMapType_6412| (Array T@Ref T@Field_6464_6465 Real)) (|PolymorphicMapType_6412_4355_16760#PolymorphicMapType_6412| (Array T@Ref T@Field_6451_16760 Real)) (|PolymorphicMapType_6412_4355_21015#PolymorphicMapType_6412| (Array T@Ref T@Field_6451_16893 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6940 0)) (((PolymorphicMapType_6940 (|PolymorphicMapType_6940_6451_53#PolymorphicMapType_6940| (Array T@Ref T@Field_6451_53 Bool)) (|PolymorphicMapType_6940_6451_6465#PolymorphicMapType_6940| (Array T@Ref T@Field_6464_6465 Bool)) (|PolymorphicMapType_6940_6451_3022#PolymorphicMapType_6940| (Array T@Ref T@Field_12471_3022 Bool)) (|PolymorphicMapType_6940_6451_16760#PolymorphicMapType_6940| (Array T@Ref T@Field_6451_16760 Bool)) (|PolymorphicMapType_6940_6451_18071#PolymorphicMapType_6940| (Array T@Ref T@Field_6451_16893 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6391 0)) (((PolymorphicMapType_6391 (|PolymorphicMapType_6391_4164_53#PolymorphicMapType_6391| (Array T@Ref T@Field_6451_53 Bool)) (|PolymorphicMapType_6391_4167_4168#PolymorphicMapType_6391| (Array T@Ref T@Field_6464_6465 T@Ref)) (|PolymorphicMapType_6391_6451_3022#PolymorphicMapType_6391| (Array T@Ref T@Field_12471_3022 Int)) (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| (Array T@Ref T@Field_6451_16893 T@PolymorphicMapType_6940)) (|PolymorphicMapType_6391_6451_16760#PolymorphicMapType_6391| (Array T@Ref T@Field_6451_16760 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_6451_53)
(declare-fun f_7 () T@Field_12471_3022)
(declare-sort T@Seq_12519 0)
(declare-fun |Seq#Length_4360| (T@Seq_12519) Int)
(declare-fun |Seq#Drop_4360| (T@Seq_12519 Int) T@Seq_12519)
(declare-sort T@Seq_12521 0)
(declare-fun |Seq#Length_12670| (T@Seq_12521) Int)
(declare-fun |Seq#Drop_12670| (T@Seq_12521 Int) T@Seq_12521)
(declare-sort T@Seq_2900 0)
(declare-fun |Seq#Length_2900| (T@Seq_2900) Int)
(declare-fun |Seq#Drop_2900| (T@Seq_2900 Int) T@Seq_2900)
(declare-fun succHeap (T@PolymorphicMapType_6391 T@PolymorphicMapType_6391) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6391 T@PolymorphicMapType_6391) Bool)
(declare-fun state (T@PolymorphicMapType_6391 T@PolymorphicMapType_6412) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6412) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6940)
(declare-fun |Seq#Index_4360| (T@Seq_12519 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_12735| (T@Seq_12521 Int) T@Seq_12519)
(declare-fun |Seq#Index_2900| (T@Seq_2900 Int) Int)
(declare-fun |Seq#Empty_4360| () T@Seq_12519)
(declare-fun |Seq#Empty_12670| () T@Seq_12521)
(declare-fun |Seq#Empty_2900| () T@Seq_2900)
(declare-fun |Seq#Update_4360| (T@Seq_12519 Int T@Ref) T@Seq_12519)
(declare-fun |Seq#Update_12670| (T@Seq_12521 Int T@Seq_12519) T@Seq_12521)
(declare-fun |Seq#Update_2900| (T@Seq_2900 Int Int) T@Seq_2900)
(declare-fun |Seq#Take_4360| (T@Seq_12519 Int) T@Seq_12519)
(declare-fun |Seq#Take_12670| (T@Seq_12521 Int) T@Seq_12521)
(declare-fun |Seq#Take_2900| (T@Seq_2900 Int) T@Seq_2900)
(declare-fun |Seq#Contains_2900| (T@Seq_2900 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2900)
(declare-fun |Seq#Contains_12521| (T@Seq_12521 T@Seq_12519) Bool)
(declare-fun |Seq#Skolem_12521| (T@Seq_12521 T@Seq_12519) Int)
(declare-fun |Seq#Contains_12519| (T@Seq_12519 T@Ref) Bool)
(declare-fun |Seq#Skolem_12519| (T@Seq_12519 T@Ref) Int)
(declare-fun |Seq#Skolem_2900| (T@Seq_2900 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6391 T@PolymorphicMapType_6391 T@PolymorphicMapType_6412) Bool)
(declare-fun IsPredicateField_6451_16851 (T@Field_6451_16760) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6451 (T@Field_6451_16760) T@Field_6451_16893)
(declare-fun HasDirectPerm_6451_16824 (T@PolymorphicMapType_6412 T@Ref T@Field_6451_16760) Bool)
(declare-fun IsWandField_6451_18598 (T@Field_6451_16760) Bool)
(declare-fun WandMaskField_6451 (T@Field_6451_16760) T@Field_6451_16893)
(declare-fun |Seq#Singleton_12670| (T@Seq_12519) T@Seq_12521)
(declare-fun |Seq#Singleton_4360| (T@Ref) T@Seq_12519)
(declare-fun |Seq#Singleton_2900| (Int) T@Seq_2900)
(declare-fun |Seq#Append_12519| (T@Seq_12519 T@Seq_12519) T@Seq_12519)
(declare-fun |Seq#Append_12521| (T@Seq_12521 T@Seq_12521) T@Seq_12521)
(declare-fun |Seq#Append_2900| (T@Seq_2900 T@Seq_2900) T@Seq_2900)
(declare-fun dummyHeap () T@PolymorphicMapType_6391)
(declare-fun ZeroMask () T@PolymorphicMapType_6412)
(declare-fun InsidePredicate_6451_6451 (T@Field_6451_16760 T@FrameType T@Field_6451_16760 T@FrameType) Bool)
(declare-fun IsPredicateField_4355_3022 (T@Field_12471_3022) Bool)
(declare-fun IsWandField_4355_3022 (T@Field_12471_3022) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4355_22144 (T@Field_6451_16893) Bool)
(declare-fun IsWandField_4355_22160 (T@Field_6451_16893) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4355_6465 (T@Field_6464_6465) Bool)
(declare-fun IsWandField_4355_6465 (T@Field_6464_6465) Bool)
(declare-fun IsPredicateField_4355_53 (T@Field_6451_53) Bool)
(declare-fun IsWandField_4355_53 (T@Field_6451_53) Bool)
(declare-fun HasDirectPerm_6451_22598 (T@PolymorphicMapType_6412 T@Ref T@Field_6451_16893) Bool)
(declare-fun HasDirectPerm_6451_3022 (T@PolymorphicMapType_6412 T@Ref T@Field_12471_3022) Bool)
(declare-fun HasDirectPerm_6451_6465 (T@PolymorphicMapType_6412 T@Ref T@Field_6464_6465) Bool)
(declare-fun HasDirectPerm_6451_53 (T@PolymorphicMapType_6412 T@Ref T@Field_6451_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6412 T@PolymorphicMapType_6412 T@PolymorphicMapType_6412) Bool)
(declare-fun |Seq#Equal_12521| (T@Seq_12521 T@Seq_12521) Bool)
(declare-fun |Seq#Equal_12519| (T@Seq_12519 T@Seq_12519) Bool)
(declare-fun |Seq#Equal_2900| (T@Seq_2900 T@Seq_2900) Bool)
(declare-fun |Seq#ContainsTrigger_4360| (T@Seq_12519 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_12670| (T@Seq_12521 T@Seq_12519) Bool)
(declare-fun |Seq#ContainsTrigger_2900| (T@Seq_2900 Int) Bool)
(declare-fun |Seq#SkolemDiff_12521| (T@Seq_12521 T@Seq_12521) Int)
(declare-fun |Seq#SkolemDiff_12519| (T@Seq_12519 T@Seq_12519) Int)
(declare-fun |Seq#SkolemDiff_2900| (T@Seq_2900 T@Seq_2900) Int)
(assert (forall ((s T@Seq_12519) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_4360| s)) (= (|Seq#Length_4360| (|Seq#Drop_4360| s n)) (- (|Seq#Length_4360| s) n))) (=> (< (|Seq#Length_4360| s) n) (= (|Seq#Length_4360| (|Seq#Drop_4360| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_4360| (|Seq#Drop_4360| s n)) (|Seq#Length_4360| s))))
 :qid |stdinbpl.289:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_4360| (|Seq#Drop_4360| s n)))
 :pattern ( (|Seq#Length_4360| s) (|Seq#Drop_4360| s n))
)))
(assert (forall ((s@@0 T@Seq_12521) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_12670| s@@0)) (= (|Seq#Length_12670| (|Seq#Drop_12670| s@@0 n@@0)) (- (|Seq#Length_12670| s@@0) n@@0))) (=> (< (|Seq#Length_12670| s@@0) n@@0) (= (|Seq#Length_12670| (|Seq#Drop_12670| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_12670| (|Seq#Drop_12670| s@@0 n@@0)) (|Seq#Length_12670| s@@0))))
 :qid |stdinbpl.289:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_12670| (|Seq#Drop_12670| s@@0 n@@0)))
 :pattern ( (|Seq#Length_12670| s@@0) (|Seq#Drop_12670| s@@0 n@@0))
)))
(assert (forall ((s@@1 T@Seq_2900) (n@@1 Int) ) (!  (and (=> (<= 0 n@@1) (and (=> (<= n@@1 (|Seq#Length_2900| s@@1)) (= (|Seq#Length_2900| (|Seq#Drop_2900| s@@1 n@@1)) (- (|Seq#Length_2900| s@@1) n@@1))) (=> (< (|Seq#Length_2900| s@@1) n@@1) (= (|Seq#Length_2900| (|Seq#Drop_2900| s@@1 n@@1)) 0)))) (=> (< n@@1 0) (= (|Seq#Length_2900| (|Seq#Drop_2900| s@@1 n@@1)) (|Seq#Length_2900| s@@1))))
 :qid |stdinbpl.289:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2900| (|Seq#Drop_2900| s@@1 n@@1)))
 :pattern ( (|Seq#Length_2900| s@@1) (|Seq#Drop_2900| s@@1 n@@1))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_6391) (Heap1 T@PolymorphicMapType_6391) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6391) (Mask T@PolymorphicMapType_6412) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6391) (Heap1@@0 T@PolymorphicMapType_6391) (Heap2 T@PolymorphicMapType_6391) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6451_16893) ) (!  (not (select (|PolymorphicMapType_6940_6451_18071#PolymorphicMapType_6940| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6940_6451_18071#PolymorphicMapType_6940| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6451_16760) ) (!  (not (select (|PolymorphicMapType_6940_6451_16760#PolymorphicMapType_6940| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6940_6451_16760#PolymorphicMapType_6940| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_12471_3022) ) (!  (not (select (|PolymorphicMapType_6940_6451_3022#PolymorphicMapType_6940| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6940_6451_3022#PolymorphicMapType_6940| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6464_6465) ) (!  (not (select (|PolymorphicMapType_6940_6451_6465#PolymorphicMapType_6940| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6940_6451_6465#PolymorphicMapType_6940| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6451_53) ) (!  (not (select (|PolymorphicMapType_6940_6451_53#PolymorphicMapType_6940| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6940_6451_53#PolymorphicMapType_6940| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@2 T@Seq_12519) (n@@2 Int) (j Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j)) (< j (- (|Seq#Length_4360| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j n@@2) n@@2) j) (= (|Seq#Index_4360| (|Seq#Drop_4360| s@@2 n@@2) j) (|Seq#Index_4360| s@@2 (|Seq#Add| j n@@2)))))
 :qid |stdinbpl.310:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_4360| (|Seq#Drop_4360| s@@2 n@@2) j))
)))
(assert (forall ((s@@3 T@Seq_12521) (n@@3 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@3) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_12670| s@@3) n@@3))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@3) n@@3) j@@0) (= (|Seq#Index_12735| (|Seq#Drop_12670| s@@3 n@@3) j@@0) (|Seq#Index_12735| s@@3 (|Seq#Add| j@@0 n@@3)))))
 :qid |stdinbpl.310:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_12735| (|Seq#Drop_12670| s@@3 n@@3) j@@0))
)))
(assert (forall ((s@@4 T@Seq_2900) (n@@4 Int) (j@@1 Int) ) (!  (=> (and (and (< 0 n@@4) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length_2900| s@@4) n@@4))) (and (= (|Seq#Sub| (|Seq#Add| j@@1 n@@4) n@@4) j@@1) (= (|Seq#Index_2900| (|Seq#Drop_2900| s@@4 n@@4) j@@1) (|Seq#Index_2900| s@@4 (|Seq#Add| j@@1 n@@4)))))
 :qid |stdinbpl.310:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2900| (|Seq#Drop_2900| s@@4 n@@4) j@@1))
)))
(assert (= (|Seq#Length_4360| |Seq#Empty_4360|) 0))
(assert (= (|Seq#Length_12670| |Seq#Empty_12670|) 0))
(assert (= (|Seq#Length_2900| |Seq#Empty_2900|) 0))
(assert (forall ((s@@5 T@Seq_12519) (i Int) (v T@Ref) (n@@5 Int) ) (!  (=> (and (<= 0 n@@5) (< n@@5 (|Seq#Length_4360| s@@5))) (and (=> (= i n@@5) (= (|Seq#Index_4360| (|Seq#Update_4360| s@@5 i v) n@@5) v)) (=> (not (= i n@@5)) (= (|Seq#Index_4360| (|Seq#Update_4360| s@@5 i v) n@@5) (|Seq#Index_4360| s@@5 n@@5)))))
 :qid |stdinbpl.265:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_4360| (|Seq#Update_4360| s@@5 i v) n@@5))
 :pattern ( (|Seq#Index_4360| s@@5 n@@5) (|Seq#Update_4360| s@@5 i v))
)))
(assert (forall ((s@@6 T@Seq_12521) (i@@0 Int) (v@@0 T@Seq_12519) (n@@6 Int) ) (!  (=> (and (<= 0 n@@6) (< n@@6 (|Seq#Length_12670| s@@6))) (and (=> (= i@@0 n@@6) (= (|Seq#Index_12735| (|Seq#Update_12670| s@@6 i@@0 v@@0) n@@6) v@@0)) (=> (not (= i@@0 n@@6)) (= (|Seq#Index_12735| (|Seq#Update_12670| s@@6 i@@0 v@@0) n@@6) (|Seq#Index_12735| s@@6 n@@6)))))
 :qid |stdinbpl.265:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_12735| (|Seq#Update_12670| s@@6 i@@0 v@@0) n@@6))
 :pattern ( (|Seq#Index_12735| s@@6 n@@6) (|Seq#Update_12670| s@@6 i@@0 v@@0))
)))
(assert (forall ((s@@7 T@Seq_2900) (i@@1 Int) (v@@1 Int) (n@@7 Int) ) (!  (=> (and (<= 0 n@@7) (< n@@7 (|Seq#Length_2900| s@@7))) (and (=> (= i@@1 n@@7) (= (|Seq#Index_2900| (|Seq#Update_2900| s@@7 i@@1 v@@1) n@@7) v@@1)) (=> (not (= i@@1 n@@7)) (= (|Seq#Index_2900| (|Seq#Update_2900| s@@7 i@@1 v@@1) n@@7) (|Seq#Index_2900| s@@7 n@@7)))))
 :qid |stdinbpl.265:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2900| (|Seq#Update_2900| s@@7 i@@1 v@@1) n@@7))
 :pattern ( (|Seq#Index_2900| s@@7 n@@7) (|Seq#Update_2900| s@@7 i@@1 v@@1))
)))
(assert (forall ((s@@8 T@Seq_12519) (n@@8 Int) ) (!  (and (=> (<= 0 n@@8) (and (=> (<= n@@8 (|Seq#Length_4360| s@@8)) (= (|Seq#Length_4360| (|Seq#Take_4360| s@@8 n@@8)) n@@8)) (=> (< (|Seq#Length_4360| s@@8) n@@8) (= (|Seq#Length_4360| (|Seq#Take_4360| s@@8 n@@8)) (|Seq#Length_4360| s@@8))))) (=> (< n@@8 0) (= (|Seq#Length_4360| (|Seq#Take_4360| s@@8 n@@8)) 0)))
 :qid |stdinbpl.276:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_4360| (|Seq#Take_4360| s@@8 n@@8)))
 :pattern ( (|Seq#Take_4360| s@@8 n@@8) (|Seq#Length_4360| s@@8))
)))
(assert (forall ((s@@9 T@Seq_12521) (n@@9 Int) ) (!  (and (=> (<= 0 n@@9) (and (=> (<= n@@9 (|Seq#Length_12670| s@@9)) (= (|Seq#Length_12670| (|Seq#Take_12670| s@@9 n@@9)) n@@9)) (=> (< (|Seq#Length_12670| s@@9) n@@9) (= (|Seq#Length_12670| (|Seq#Take_12670| s@@9 n@@9)) (|Seq#Length_12670| s@@9))))) (=> (< n@@9 0) (= (|Seq#Length_12670| (|Seq#Take_12670| s@@9 n@@9)) 0)))
 :qid |stdinbpl.276:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_12670| (|Seq#Take_12670| s@@9 n@@9)))
 :pattern ( (|Seq#Take_12670| s@@9 n@@9) (|Seq#Length_12670| s@@9))
)))
(assert (forall ((s@@10 T@Seq_2900) (n@@10 Int) ) (!  (and (=> (<= 0 n@@10) (and (=> (<= n@@10 (|Seq#Length_2900| s@@10)) (= (|Seq#Length_2900| (|Seq#Take_2900| s@@10 n@@10)) n@@10)) (=> (< (|Seq#Length_2900| s@@10) n@@10) (= (|Seq#Length_2900| (|Seq#Take_2900| s@@10 n@@10)) (|Seq#Length_2900| s@@10))))) (=> (< n@@10 0) (= (|Seq#Length_2900| (|Seq#Take_2900| s@@10 n@@10)) 0)))
 :qid |stdinbpl.276:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2900| (|Seq#Take_2900| s@@10 n@@10)))
 :pattern ( (|Seq#Take_2900| s@@10 n@@10) (|Seq#Length_2900| s@@10))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@2 Int) ) (! (= (|Seq#Contains_2900| (|Seq#Range| q@min q@max) v@@2)  (and (<= q@min v@@2) (< v@@2 q@max)))
 :qid |stdinbpl.550:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2900| (|Seq#Range| q@min q@max) v@@2))
)))
(assert (forall ((s@@11 T@Seq_12521) (x T@Seq_12519) ) (!  (=> (|Seq#Contains_12521| s@@11 x) (and (and (<= 0 (|Seq#Skolem_12521| s@@11 x)) (< (|Seq#Skolem_12521| s@@11 x) (|Seq#Length_12670| s@@11))) (= (|Seq#Index_12735| s@@11 (|Seq#Skolem_12521| s@@11 x)) x)))
 :qid |stdinbpl.408:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_12521| s@@11 x))
)))
(assert (forall ((s@@12 T@Seq_12519) (x@@0 T@Ref) ) (!  (=> (|Seq#Contains_12519| s@@12 x@@0) (and (and (<= 0 (|Seq#Skolem_12519| s@@12 x@@0)) (< (|Seq#Skolem_12519| s@@12 x@@0) (|Seq#Length_4360| s@@12))) (= (|Seq#Index_4360| s@@12 (|Seq#Skolem_12519| s@@12 x@@0)) x@@0)))
 :qid |stdinbpl.408:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_12519| s@@12 x@@0))
)))
(assert (forall ((s@@13 T@Seq_2900) (x@@1 Int) ) (!  (=> (|Seq#Contains_2900| s@@13 x@@1) (and (and (<= 0 (|Seq#Skolem_2900| s@@13 x@@1)) (< (|Seq#Skolem_2900| s@@13 x@@1) (|Seq#Length_2900| s@@13))) (= (|Seq#Index_2900| s@@13 (|Seq#Skolem_2900| s@@13 x@@1)) x@@1)))
 :qid |stdinbpl.408:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2900| s@@13 x@@1))
)))
(assert (forall ((s@@14 T@Seq_12519) (n@@11 Int) ) (!  (=> (<= n@@11 0) (= (|Seq#Drop_4360| s@@14 n@@11) s@@14))
 :qid |stdinbpl.392:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_4360| s@@14 n@@11))
)))
(assert (forall ((s@@15 T@Seq_12521) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Drop_12670| s@@15 n@@12) s@@15))
 :qid |stdinbpl.392:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_12670| s@@15 n@@12))
)))
(assert (forall ((s@@16 T@Seq_2900) (n@@13 Int) ) (!  (=> (<= n@@13 0) (= (|Seq#Drop_2900| s@@16 n@@13) s@@16))
 :qid |stdinbpl.392:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2900| s@@16 n@@13))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Sub| i@@2 j@@2) (- i@@2 j@@2))
 :qid |stdinbpl.245:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@2 j@@2))
)))
(assert (forall ((i@@3 Int) (j@@3 Int) ) (! (= (|Seq#Add| i@@3 j@@3) (+ i@@3 j@@3))
 :qid |stdinbpl.243:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@3 j@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6391) (ExhaleHeap T@PolymorphicMapType_6391) (Mask@@0 T@PolymorphicMapType_6412) (pm_f_5 T@Field_6451_16760) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6451_16824 Mask@@0 null pm_f_5) (IsPredicateField_6451_16851 pm_f_5)) (= (select (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| Heap@@0) null (PredicateMaskField_6451 pm_f_5)) (select (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| ExhaleHeap) null (PredicateMaskField_6451 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_6451_16851 pm_f_5) (select (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| ExhaleHeap) null (PredicateMaskField_6451 pm_f_5)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6391) (ExhaleHeap@@0 T@PolymorphicMapType_6391) (Mask@@1 T@PolymorphicMapType_6412) (pm_f_5@@0 T@Field_6451_16760) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6451_16824 Mask@@1 null pm_f_5@@0) (IsWandField_6451_18598 pm_f_5@@0)) (= (select (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| Heap@@1) null (WandMaskField_6451 pm_f_5@@0)) (select (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| ExhaleHeap@@0) null (WandMaskField_6451 pm_f_5@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_6451_18598 pm_f_5@@0) (select (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| ExhaleHeap@@0) null (WandMaskField_6451 pm_f_5@@0)))
)))
(assert (forall ((x@@2 T@Seq_12519) (y T@Seq_12519) ) (! (= (|Seq#Contains_12521| (|Seq#Singleton_12670| x@@2) y) (= x@@2 y))
 :qid |stdinbpl.533:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_12521| (|Seq#Singleton_12670| x@@2) y))
)))
(assert (forall ((x@@3 T@Ref) (y@@0 T@Ref) ) (! (= (|Seq#Contains_12519| (|Seq#Singleton_4360| x@@3) y@@0) (= x@@3 y@@0))
 :qid |stdinbpl.533:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_12519| (|Seq#Singleton_4360| x@@3) y@@0))
)))
(assert (forall ((x@@4 Int) (y@@1 Int) ) (! (= (|Seq#Contains_2900| (|Seq#Singleton_2900| x@@4) y@@1) (= x@@4 y@@1))
 :qid |stdinbpl.533:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2900| (|Seq#Singleton_2900| x@@4) y@@1))
)))
(assert (forall ((s@@17 T@Seq_12519) (n@@14 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@14)) (< j@@4 (|Seq#Length_4360| s@@17))) (= (|Seq#Index_4360| (|Seq#Take_4360| s@@17 n@@14) j@@4) (|Seq#Index_4360| s@@17 j@@4)))
 :qid |stdinbpl.284:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_4360| (|Seq#Take_4360| s@@17 n@@14) j@@4))
 :pattern ( (|Seq#Index_4360| s@@17 j@@4) (|Seq#Take_4360| s@@17 n@@14))
)))
(assert (forall ((s@@18 T@Seq_12521) (n@@15 Int) (j@@5 Int) ) (!  (=> (and (and (<= 0 j@@5) (< j@@5 n@@15)) (< j@@5 (|Seq#Length_12670| s@@18))) (= (|Seq#Index_12735| (|Seq#Take_12670| s@@18 n@@15) j@@5) (|Seq#Index_12735| s@@18 j@@5)))
 :qid |stdinbpl.284:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_12735| (|Seq#Take_12670| s@@18 n@@15) j@@5))
 :pattern ( (|Seq#Index_12735| s@@18 j@@5) (|Seq#Take_12670| s@@18 n@@15))
)))
(assert (forall ((s@@19 T@Seq_2900) (n@@16 Int) (j@@6 Int) ) (!  (=> (and (and (<= 0 j@@6) (< j@@6 n@@16)) (< j@@6 (|Seq#Length_2900| s@@19))) (= (|Seq#Index_2900| (|Seq#Take_2900| s@@19 n@@16) j@@6) (|Seq#Index_2900| s@@19 j@@6)))
 :qid |stdinbpl.284:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2900| (|Seq#Take_2900| s@@19 n@@16) j@@6))
 :pattern ( (|Seq#Index_2900| s@@19 j@@6) (|Seq#Take_2900| s@@19 n@@16))
)))
(assert (forall ((s@@20 T@Seq_12519) (t T@Seq_12519) (n@@17 Int) ) (!  (=> (and (and (> n@@17 0) (> n@@17 (|Seq#Length_4360| s@@20))) (< n@@17 (|Seq#Length_4360| (|Seq#Append_12519| s@@20 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@17 (|Seq#Length_4360| s@@20)) (|Seq#Length_4360| s@@20)) n@@17) (= (|Seq#Take_4360| (|Seq#Append_12519| s@@20 t) n@@17) (|Seq#Append_12519| s@@20 (|Seq#Take_4360| t (|Seq#Sub| n@@17 (|Seq#Length_4360| s@@20)))))))
 :qid |stdinbpl.369:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_4360| (|Seq#Append_12519| s@@20 t) n@@17))
)))
(assert (forall ((s@@21 T@Seq_12521) (t@@0 T@Seq_12521) (n@@18 Int) ) (!  (=> (and (and (> n@@18 0) (> n@@18 (|Seq#Length_12670| s@@21))) (< n@@18 (|Seq#Length_12670| (|Seq#Append_12521| s@@21 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@18 (|Seq#Length_12670| s@@21)) (|Seq#Length_12670| s@@21)) n@@18) (= (|Seq#Take_12670| (|Seq#Append_12521| s@@21 t@@0) n@@18) (|Seq#Append_12521| s@@21 (|Seq#Take_12670| t@@0 (|Seq#Sub| n@@18 (|Seq#Length_12670| s@@21)))))))
 :qid |stdinbpl.369:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_12670| (|Seq#Append_12521| s@@21 t@@0) n@@18))
)))
(assert (forall ((s@@22 T@Seq_2900) (t@@1 T@Seq_2900) (n@@19 Int) ) (!  (=> (and (and (> n@@19 0) (> n@@19 (|Seq#Length_2900| s@@22))) (< n@@19 (|Seq#Length_2900| (|Seq#Append_2900| s@@22 t@@1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@19 (|Seq#Length_2900| s@@22)) (|Seq#Length_2900| s@@22)) n@@19) (= (|Seq#Take_2900| (|Seq#Append_2900| s@@22 t@@1) n@@19) (|Seq#Append_2900| s@@22 (|Seq#Take_2900| t@@1 (|Seq#Sub| n@@19 (|Seq#Length_2900| s@@22)))))))
 :qid |stdinbpl.369:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2900| (|Seq#Append_2900| s@@22 t@@1) n@@19))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6391) (ExhaleHeap@@1 T@PolymorphicMapType_6391) (Mask@@2 T@PolymorphicMapType_6412) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_6391_4164_53#PolymorphicMapType_6391| Heap@@2) o_12 $allocated) (select (|PolymorphicMapType_6391_4164_53#PolymorphicMapType_6391| ExhaleHeap@@1) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_6391_4164_53#PolymorphicMapType_6391| ExhaleHeap@@1) o_12 $allocated))
)))
(assert (forall ((p T@Field_6451_16760) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6451_6451 p v_1 p w))
 :qid |stdinbpl.187:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6451_6451 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_12521) (s1 T@Seq_12521) (n@@20 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_12670|)) (not (= s1 |Seq#Empty_12670|))) (<= (|Seq#Length_12670| s0) n@@20)) (< n@@20 (|Seq#Length_12670| (|Seq#Append_12521| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@20 (|Seq#Length_12670| s0)) (|Seq#Length_12670| s0)) n@@20) (= (|Seq#Index_12735| (|Seq#Append_12521| s0 s1) n@@20) (|Seq#Index_12735| s1 (|Seq#Sub| n@@20 (|Seq#Length_12670| s0))))))
 :qid |stdinbpl.256:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_12735| (|Seq#Append_12521| s0 s1) n@@20))
)))
(assert (forall ((s0@@0 T@Seq_12519) (s1@@0 T@Seq_12519) (n@@21 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_4360|)) (not (= s1@@0 |Seq#Empty_4360|))) (<= (|Seq#Length_4360| s0@@0) n@@21)) (< n@@21 (|Seq#Length_4360| (|Seq#Append_12519| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@21 (|Seq#Length_4360| s0@@0)) (|Seq#Length_4360| s0@@0)) n@@21) (= (|Seq#Index_4360| (|Seq#Append_12519| s0@@0 s1@@0) n@@21) (|Seq#Index_4360| s1@@0 (|Seq#Sub| n@@21 (|Seq#Length_4360| s0@@0))))))
 :qid |stdinbpl.256:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_4360| (|Seq#Append_12519| s0@@0 s1@@0) n@@21))
)))
(assert (forall ((s0@@1 T@Seq_2900) (s1@@1 T@Seq_2900) (n@@22 Int) ) (!  (=> (and (and (and (not (= s0@@1 |Seq#Empty_2900|)) (not (= s1@@1 |Seq#Empty_2900|))) (<= (|Seq#Length_2900| s0@@1) n@@22)) (< n@@22 (|Seq#Length_2900| (|Seq#Append_2900| s0@@1 s1@@1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@22 (|Seq#Length_2900| s0@@1)) (|Seq#Length_2900| s0@@1)) n@@22) (= (|Seq#Index_2900| (|Seq#Append_2900| s0@@1 s1@@1) n@@22) (|Seq#Index_2900| s1@@1 (|Seq#Sub| n@@22 (|Seq#Length_2900| s0@@1))))))
 :qid |stdinbpl.256:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2900| (|Seq#Append_2900| s0@@1 s1@@1) n@@22))
)))
(assert  (not (IsPredicateField_4355_3022 f_7)))
(assert  (not (IsWandField_4355_3022 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6391) (ExhaleHeap@@2 T@PolymorphicMapType_6391) (Mask@@3 T@PolymorphicMapType_6412) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_6412) (o_2@@4 T@Ref) (f_4@@4 T@Field_6451_16893) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_6412_4355_21015#PolymorphicMapType_6412| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_4355_22144 f_4@@4))) (not (IsWandField_4355_22160 f_4@@4))) (<= (select (|PolymorphicMapType_6412_4355_21015#PolymorphicMapType_6412| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_6412_4355_21015#PolymorphicMapType_6412| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_6412) (o_2@@5 T@Ref) (f_4@@5 T@Field_6451_16760) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_6412_4355_16760#PolymorphicMapType_6412| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_6451_16851 f_4@@5))) (not (IsWandField_6451_18598 f_4@@5))) (<= (select (|PolymorphicMapType_6412_4355_16760#PolymorphicMapType_6412| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_6412_4355_16760#PolymorphicMapType_6412| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_6412) (o_2@@6 T@Ref) (f_4@@6 T@Field_6464_6465) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_6412_4355_6465#PolymorphicMapType_6412| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4355_6465 f_4@@6))) (not (IsWandField_4355_6465 f_4@@6))) (<= (select (|PolymorphicMapType_6412_4355_6465#PolymorphicMapType_6412| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_6412_4355_6465#PolymorphicMapType_6412| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_6412) (o_2@@7 T@Ref) (f_4@@7 T@Field_6451_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_6412_4355_53#PolymorphicMapType_6412| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4355_53 f_4@@7))) (not (IsWandField_4355_53 f_4@@7))) (<= (select (|PolymorphicMapType_6412_4355_53#PolymorphicMapType_6412| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_6412_4355_53#PolymorphicMapType_6412| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6412) (o_2@@8 T@Ref) (f_4@@8 T@Field_12471_3022) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6412_4355_3022#PolymorphicMapType_6412| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4355_3022 f_4@@8))) (not (IsWandField_4355_3022 f_4@@8))) (<= (select (|PolymorphicMapType_6412_4355_3022#PolymorphicMapType_6412| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6412_4355_3022#PolymorphicMapType_6412| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6412) (o_2@@9 T@Ref) (f_4@@9 T@Field_6451_16893) ) (! (= (HasDirectPerm_6451_22598 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6412_4355_21015#PolymorphicMapType_6412| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6451_22598 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6412) (o_2@@10 T@Ref) (f_4@@10 T@Field_6451_16760) ) (! (= (HasDirectPerm_6451_16824 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6412_4355_16760#PolymorphicMapType_6412| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6451_16824 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6412) (o_2@@11 T@Ref) (f_4@@11 T@Field_12471_3022) ) (! (= (HasDirectPerm_6451_3022 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_6412_4355_3022#PolymorphicMapType_6412| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6451_3022 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6412) (o_2@@12 T@Ref) (f_4@@12 T@Field_6464_6465) ) (! (= (HasDirectPerm_6451_6465 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_6412_4355_6465#PolymorphicMapType_6412| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6451_6465 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6412) (o_2@@13 T@Ref) (f_4@@13 T@Field_6451_53) ) (! (= (HasDirectPerm_6451_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_6412_4355_53#PolymorphicMapType_6412| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6451_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6391) (ExhaleHeap@@3 T@PolymorphicMapType_6391) (Mask@@14 T@PolymorphicMapType_6412) (pm_f_5@@1 T@Field_6451_16760) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_6451_16824 Mask@@14 null pm_f_5@@1) (IsPredicateField_6451_16851 pm_f_5@@1)) (and (and (and (and (forall ((o2_5 T@Ref) (f_16 T@Field_6451_53) ) (!  (=> (select (|PolymorphicMapType_6940_6451_53#PolymorphicMapType_6940| (select (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| Heap@@4) null (PredicateMaskField_6451 pm_f_5@@1))) o2_5 f_16) (= (select (|PolymorphicMapType_6391_4164_53#PolymorphicMapType_6391| Heap@@4) o2_5 f_16) (select (|PolymorphicMapType_6391_4164_53#PolymorphicMapType_6391| ExhaleHeap@@3) o2_5 f_16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6391_4164_53#PolymorphicMapType_6391| ExhaleHeap@@3) o2_5 f_16))
)) (forall ((o2_5@@0 T@Ref) (f_16@@0 T@Field_6464_6465) ) (!  (=> (select (|PolymorphicMapType_6940_6451_6465#PolymorphicMapType_6940| (select (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| Heap@@4) null (PredicateMaskField_6451 pm_f_5@@1))) o2_5@@0 f_16@@0) (= (select (|PolymorphicMapType_6391_4167_4168#PolymorphicMapType_6391| Heap@@4) o2_5@@0 f_16@@0) (select (|PolymorphicMapType_6391_4167_4168#PolymorphicMapType_6391| ExhaleHeap@@3) o2_5@@0 f_16@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6391_4167_4168#PolymorphicMapType_6391| ExhaleHeap@@3) o2_5@@0 f_16@@0))
))) (forall ((o2_5@@1 T@Ref) (f_16@@1 T@Field_12471_3022) ) (!  (=> (select (|PolymorphicMapType_6940_6451_3022#PolymorphicMapType_6940| (select (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| Heap@@4) null (PredicateMaskField_6451 pm_f_5@@1))) o2_5@@1 f_16@@1) (= (select (|PolymorphicMapType_6391_6451_3022#PolymorphicMapType_6391| Heap@@4) o2_5@@1 f_16@@1) (select (|PolymorphicMapType_6391_6451_3022#PolymorphicMapType_6391| ExhaleHeap@@3) o2_5@@1 f_16@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6391_6451_3022#PolymorphicMapType_6391| ExhaleHeap@@3) o2_5@@1 f_16@@1))
))) (forall ((o2_5@@2 T@Ref) (f_16@@2 T@Field_6451_16760) ) (!  (=> (select (|PolymorphicMapType_6940_6451_16760#PolymorphicMapType_6940| (select (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| Heap@@4) null (PredicateMaskField_6451 pm_f_5@@1))) o2_5@@2 f_16@@2) (= (select (|PolymorphicMapType_6391_6451_16760#PolymorphicMapType_6391| Heap@@4) o2_5@@2 f_16@@2) (select (|PolymorphicMapType_6391_6451_16760#PolymorphicMapType_6391| ExhaleHeap@@3) o2_5@@2 f_16@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6391_6451_16760#PolymorphicMapType_6391| ExhaleHeap@@3) o2_5@@2 f_16@@2))
))) (forall ((o2_5@@3 T@Ref) (f_16@@3 T@Field_6451_16893) ) (!  (=> (select (|PolymorphicMapType_6940_6451_18071#PolymorphicMapType_6940| (select (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| Heap@@4) null (PredicateMaskField_6451 pm_f_5@@1))) o2_5@@3 f_16@@3) (= (select (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| Heap@@4) o2_5@@3 f_16@@3) (select (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| ExhaleHeap@@3) o2_5@@3 f_16@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| ExhaleHeap@@3) o2_5@@3 f_16@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_6451_16851 pm_f_5@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6391) (ExhaleHeap@@4 T@PolymorphicMapType_6391) (Mask@@15 T@PolymorphicMapType_6412) (pm_f_5@@2 T@Field_6451_16760) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_6451_16824 Mask@@15 null pm_f_5@@2) (IsWandField_6451_18598 pm_f_5@@2)) (and (and (and (and (forall ((o2_5@@4 T@Ref) (f_16@@4 T@Field_6451_53) ) (!  (=> (select (|PolymorphicMapType_6940_6451_53#PolymorphicMapType_6940| (select (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| Heap@@5) null (WandMaskField_6451 pm_f_5@@2))) o2_5@@4 f_16@@4) (= (select (|PolymorphicMapType_6391_4164_53#PolymorphicMapType_6391| Heap@@5) o2_5@@4 f_16@@4) (select (|PolymorphicMapType_6391_4164_53#PolymorphicMapType_6391| ExhaleHeap@@4) o2_5@@4 f_16@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6391_4164_53#PolymorphicMapType_6391| ExhaleHeap@@4) o2_5@@4 f_16@@4))
)) (forall ((o2_5@@5 T@Ref) (f_16@@5 T@Field_6464_6465) ) (!  (=> (select (|PolymorphicMapType_6940_6451_6465#PolymorphicMapType_6940| (select (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| Heap@@5) null (WandMaskField_6451 pm_f_5@@2))) o2_5@@5 f_16@@5) (= (select (|PolymorphicMapType_6391_4167_4168#PolymorphicMapType_6391| Heap@@5) o2_5@@5 f_16@@5) (select (|PolymorphicMapType_6391_4167_4168#PolymorphicMapType_6391| ExhaleHeap@@4) o2_5@@5 f_16@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6391_4167_4168#PolymorphicMapType_6391| ExhaleHeap@@4) o2_5@@5 f_16@@5))
))) (forall ((o2_5@@6 T@Ref) (f_16@@6 T@Field_12471_3022) ) (!  (=> (select (|PolymorphicMapType_6940_6451_3022#PolymorphicMapType_6940| (select (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| Heap@@5) null (WandMaskField_6451 pm_f_5@@2))) o2_5@@6 f_16@@6) (= (select (|PolymorphicMapType_6391_6451_3022#PolymorphicMapType_6391| Heap@@5) o2_5@@6 f_16@@6) (select (|PolymorphicMapType_6391_6451_3022#PolymorphicMapType_6391| ExhaleHeap@@4) o2_5@@6 f_16@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6391_6451_3022#PolymorphicMapType_6391| ExhaleHeap@@4) o2_5@@6 f_16@@6))
))) (forall ((o2_5@@7 T@Ref) (f_16@@7 T@Field_6451_16760) ) (!  (=> (select (|PolymorphicMapType_6940_6451_16760#PolymorphicMapType_6940| (select (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| Heap@@5) null (WandMaskField_6451 pm_f_5@@2))) o2_5@@7 f_16@@7) (= (select (|PolymorphicMapType_6391_6451_16760#PolymorphicMapType_6391| Heap@@5) o2_5@@7 f_16@@7) (select (|PolymorphicMapType_6391_6451_16760#PolymorphicMapType_6391| ExhaleHeap@@4) o2_5@@7 f_16@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6391_6451_16760#PolymorphicMapType_6391| ExhaleHeap@@4) o2_5@@7 f_16@@7))
))) (forall ((o2_5@@8 T@Ref) (f_16@@8 T@Field_6451_16893) ) (!  (=> (select (|PolymorphicMapType_6940_6451_18071#PolymorphicMapType_6940| (select (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| Heap@@5) null (WandMaskField_6451 pm_f_5@@2))) o2_5@@8 f_16@@8) (= (select (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| Heap@@5) o2_5@@8 f_16@@8) (select (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| ExhaleHeap@@4) o2_5@@8 f_16@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| ExhaleHeap@@4) o2_5@@8 f_16@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_6451_18598 pm_f_5@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.175:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2900| (|Seq#Range| q@min@@0 q@max@@0) j@@7) (+ q@min@@0 j@@7)))
 :qid |stdinbpl.548:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2900| (|Seq#Range| q@min@@0 q@max@@0) j@@7))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6391) (ExhaleHeap@@5 T@PolymorphicMapType_6391) (Mask@@16 T@PolymorphicMapType_6412) (o_12@@0 T@Ref) (f_16@@9 T@Field_6451_16893) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_6451_22598 Mask@@16 o_12@@0 f_16@@9) (= (select (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| Heap@@6) o_12@@0 f_16@@9) (select (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| ExhaleHeap@@5) o_12@@0 f_16@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| ExhaleHeap@@5) o_12@@0 f_16@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6391) (ExhaleHeap@@6 T@PolymorphicMapType_6391) (Mask@@17 T@PolymorphicMapType_6412) (o_12@@1 T@Ref) (f_16@@10 T@Field_6451_16760) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_6451_16824 Mask@@17 o_12@@1 f_16@@10) (= (select (|PolymorphicMapType_6391_6451_16760#PolymorphicMapType_6391| Heap@@7) o_12@@1 f_16@@10) (select (|PolymorphicMapType_6391_6451_16760#PolymorphicMapType_6391| ExhaleHeap@@6) o_12@@1 f_16@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_6391_6451_16760#PolymorphicMapType_6391| ExhaleHeap@@6) o_12@@1 f_16@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6391) (ExhaleHeap@@7 T@PolymorphicMapType_6391) (Mask@@18 T@PolymorphicMapType_6412) (o_12@@2 T@Ref) (f_16@@11 T@Field_12471_3022) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_6451_3022 Mask@@18 o_12@@2 f_16@@11) (= (select (|PolymorphicMapType_6391_6451_3022#PolymorphicMapType_6391| Heap@@8) o_12@@2 f_16@@11) (select (|PolymorphicMapType_6391_6451_3022#PolymorphicMapType_6391| ExhaleHeap@@7) o_12@@2 f_16@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_6391_6451_3022#PolymorphicMapType_6391| ExhaleHeap@@7) o_12@@2 f_16@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6391) (ExhaleHeap@@8 T@PolymorphicMapType_6391) (Mask@@19 T@PolymorphicMapType_6412) (o_12@@3 T@Ref) (f_16@@12 T@Field_6464_6465) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_6451_6465 Mask@@19 o_12@@3 f_16@@12) (= (select (|PolymorphicMapType_6391_4167_4168#PolymorphicMapType_6391| Heap@@9) o_12@@3 f_16@@12) (select (|PolymorphicMapType_6391_4167_4168#PolymorphicMapType_6391| ExhaleHeap@@8) o_12@@3 f_16@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_6391_4167_4168#PolymorphicMapType_6391| ExhaleHeap@@8) o_12@@3 f_16@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6391) (ExhaleHeap@@9 T@PolymorphicMapType_6391) (Mask@@20 T@PolymorphicMapType_6412) (o_12@@4 T@Ref) (f_16@@13 T@Field_6451_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_6451_53 Mask@@20 o_12@@4 f_16@@13) (= (select (|PolymorphicMapType_6391_4164_53#PolymorphicMapType_6391| Heap@@10) o_12@@4 f_16@@13) (select (|PolymorphicMapType_6391_4164_53#PolymorphicMapType_6391| ExhaleHeap@@9) o_12@@4 f_16@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_6391_4164_53#PolymorphicMapType_6391| ExhaleHeap@@9) o_12@@4 f_16@@13))
)))
(assert (forall ((s0@@2 T@Seq_12521) (s1@@2 T@Seq_12521) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_12670|)) (not (= s1@@2 |Seq#Empty_12670|))) (= (|Seq#Length_12670| (|Seq#Append_12521| s0@@2 s1@@2)) (+ (|Seq#Length_12670| s0@@2) (|Seq#Length_12670| s1@@2))))
 :qid |stdinbpl.225:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_12670| (|Seq#Append_12521| s0@@2 s1@@2)))
)))
(assert (forall ((s0@@3 T@Seq_12519) (s1@@3 T@Seq_12519) ) (!  (=> (and (not (= s0@@3 |Seq#Empty_4360|)) (not (= s1@@3 |Seq#Empty_4360|))) (= (|Seq#Length_4360| (|Seq#Append_12519| s0@@3 s1@@3)) (+ (|Seq#Length_4360| s0@@3) (|Seq#Length_4360| s1@@3))))
 :qid |stdinbpl.225:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_4360| (|Seq#Append_12519| s0@@3 s1@@3)))
)))
(assert (forall ((s0@@4 T@Seq_2900) (s1@@4 T@Seq_2900) ) (!  (=> (and (not (= s0@@4 |Seq#Empty_2900|)) (not (= s1@@4 |Seq#Empty_2900|))) (= (|Seq#Length_2900| (|Seq#Append_2900| s0@@4 s1@@4)) (+ (|Seq#Length_2900| s0@@4) (|Seq#Length_2900| s1@@4))))
 :qid |stdinbpl.225:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2900| (|Seq#Append_2900| s0@@4 s1@@4)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6451_16893) ) (! (= (select (|PolymorphicMapType_6412_4355_21015#PolymorphicMapType_6412| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6412_4355_21015#PolymorphicMapType_6412| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_6451_16760) ) (! (= (select (|PolymorphicMapType_6412_4355_16760#PolymorphicMapType_6412| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6412_4355_16760#PolymorphicMapType_6412| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_6464_6465) ) (! (= (select (|PolymorphicMapType_6412_4355_6465#PolymorphicMapType_6412| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6412_4355_6465#PolymorphicMapType_6412| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_6451_53) ) (! (= (select (|PolymorphicMapType_6412_4355_53#PolymorphicMapType_6412| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6412_4355_53#PolymorphicMapType_6412| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_12471_3022) ) (! (= (select (|PolymorphicMapType_6412_4355_3022#PolymorphicMapType_6412| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6412_4355_3022#PolymorphicMapType_6412| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@23 T@Seq_12519) (t@@2 T@Seq_12519) (n@@23 Int) ) (!  (=> (and (> n@@23 0) (> n@@23 (|Seq#Length_4360| s@@23))) (and (= (|Seq#Add| (|Seq#Sub| n@@23 (|Seq#Length_4360| s@@23)) (|Seq#Length_4360| s@@23)) n@@23) (= (|Seq#Drop_4360| (|Seq#Append_12519| s@@23 t@@2) n@@23) (|Seq#Drop_4360| t@@2 (|Seq#Sub| n@@23 (|Seq#Length_4360| s@@23))))))
 :qid |stdinbpl.382:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_4360| (|Seq#Append_12519| s@@23 t@@2) n@@23))
)))
(assert (forall ((s@@24 T@Seq_12521) (t@@3 T@Seq_12521) (n@@24 Int) ) (!  (=> (and (> n@@24 0) (> n@@24 (|Seq#Length_12670| s@@24))) (and (= (|Seq#Add| (|Seq#Sub| n@@24 (|Seq#Length_12670| s@@24)) (|Seq#Length_12670| s@@24)) n@@24) (= (|Seq#Drop_12670| (|Seq#Append_12521| s@@24 t@@3) n@@24) (|Seq#Drop_12670| t@@3 (|Seq#Sub| n@@24 (|Seq#Length_12670| s@@24))))))
 :qid |stdinbpl.382:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_12670| (|Seq#Append_12521| s@@24 t@@3) n@@24))
)))
(assert (forall ((s@@25 T@Seq_2900) (t@@4 T@Seq_2900) (n@@25 Int) ) (!  (=> (and (> n@@25 0) (> n@@25 (|Seq#Length_2900| s@@25))) (and (= (|Seq#Add| (|Seq#Sub| n@@25 (|Seq#Length_2900| s@@25)) (|Seq#Length_2900| s@@25)) n@@25) (= (|Seq#Drop_2900| (|Seq#Append_2900| s@@25 t@@4) n@@25) (|Seq#Drop_2900| t@@4 (|Seq#Sub| n@@25 (|Seq#Length_2900| s@@25))))))
 :qid |stdinbpl.382:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2900| (|Seq#Append_2900| s@@25 t@@4) n@@25))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6412) (SummandMask1 T@PolymorphicMapType_6412) (SummandMask2 T@PolymorphicMapType_6412) (o_2@@19 T@Ref) (f_4@@19 T@Field_6451_16893) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6412_4355_21015#PolymorphicMapType_6412| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_6412_4355_21015#PolymorphicMapType_6412| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_6412_4355_21015#PolymorphicMapType_6412| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6412_4355_21015#PolymorphicMapType_6412| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6412_4355_21015#PolymorphicMapType_6412| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6412_4355_21015#PolymorphicMapType_6412| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6412) (SummandMask1@@0 T@PolymorphicMapType_6412) (SummandMask2@@0 T@PolymorphicMapType_6412) (o_2@@20 T@Ref) (f_4@@20 T@Field_6451_16760) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6412_4355_16760#PolymorphicMapType_6412| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_6412_4355_16760#PolymorphicMapType_6412| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_6412_4355_16760#PolymorphicMapType_6412| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6412_4355_16760#PolymorphicMapType_6412| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6412_4355_16760#PolymorphicMapType_6412| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6412_4355_16760#PolymorphicMapType_6412| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6412) (SummandMask1@@1 T@PolymorphicMapType_6412) (SummandMask2@@1 T@PolymorphicMapType_6412) (o_2@@21 T@Ref) (f_4@@21 T@Field_6464_6465) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6412_4355_6465#PolymorphicMapType_6412| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_6412_4355_6465#PolymorphicMapType_6412| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_6412_4355_6465#PolymorphicMapType_6412| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6412_4355_6465#PolymorphicMapType_6412| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6412_4355_6465#PolymorphicMapType_6412| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6412_4355_6465#PolymorphicMapType_6412| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6412) (SummandMask1@@2 T@PolymorphicMapType_6412) (SummandMask2@@2 T@PolymorphicMapType_6412) (o_2@@22 T@Ref) (f_4@@22 T@Field_6451_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6412_4355_53#PolymorphicMapType_6412| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_6412_4355_53#PolymorphicMapType_6412| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_6412_4355_53#PolymorphicMapType_6412| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6412_4355_53#PolymorphicMapType_6412| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6412_4355_53#PolymorphicMapType_6412| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6412_4355_53#PolymorphicMapType_6412| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6412) (SummandMask1@@3 T@PolymorphicMapType_6412) (SummandMask2@@3 T@PolymorphicMapType_6412) (o_2@@23 T@Ref) (f_4@@23 T@Field_12471_3022) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6412_4355_3022#PolymorphicMapType_6412| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_6412_4355_3022#PolymorphicMapType_6412| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_6412_4355_3022#PolymorphicMapType_6412| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6412_4355_3022#PolymorphicMapType_6412| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6412_4355_3022#PolymorphicMapType_6412| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6412_4355_3022#PolymorphicMapType_6412| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2900| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2900| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.547:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2900| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_12521) (b T@Seq_12521) ) (!  (=> (|Seq#Equal_12521| a b) (= a b))
 :qid |stdinbpl.520:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_12521| a b))
)))
(assert (forall ((a@@0 T@Seq_12519) (b@@0 T@Seq_12519) ) (!  (=> (|Seq#Equal_12519| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.520:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_12519| a@@0 b@@0))
)))
(assert (forall ((a@@1 T@Seq_2900) (b@@1 T@Seq_2900) ) (!  (=> (|Seq#Equal_2900| a@@1 b@@1) (= a@@1 b@@1))
 :qid |stdinbpl.520:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2900| a@@1 b@@1))
)))
(assert (forall ((s@@26 T@Seq_12519) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_4360| s@@26))) (|Seq#ContainsTrigger_4360| s@@26 (|Seq#Index_4360| s@@26 i@@4)))
 :qid |stdinbpl.413:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_4360| s@@26 i@@4))
)))
(assert (forall ((s@@27 T@Seq_12521) (i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_12670| s@@27))) (|Seq#ContainsTrigger_12670| s@@27 (|Seq#Index_12735| s@@27 i@@5)))
 :qid |stdinbpl.413:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_12735| s@@27 i@@5))
)))
(assert (forall ((s@@28 T@Seq_2900) (i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2900| s@@28))) (|Seq#ContainsTrigger_2900| s@@28 (|Seq#Index_2900| s@@28 i@@6)))
 :qid |stdinbpl.413:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2900| s@@28 i@@6))
)))
(assert (forall ((s0@@5 T@Seq_12521) (s1@@5 T@Seq_12521) ) (!  (and (=> (= s0@@5 |Seq#Empty_12670|) (= (|Seq#Append_12521| s0@@5 s1@@5) s1@@5)) (=> (= s1@@5 |Seq#Empty_12670|) (= (|Seq#Append_12521| s0@@5 s1@@5) s0@@5)))
 :qid |stdinbpl.231:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_12521| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_12519) (s1@@6 T@Seq_12519) ) (!  (and (=> (= s0@@6 |Seq#Empty_4360|) (= (|Seq#Append_12519| s0@@6 s1@@6) s1@@6)) (=> (= s1@@6 |Seq#Empty_4360|) (= (|Seq#Append_12519| s0@@6 s1@@6) s0@@6)))
 :qid |stdinbpl.231:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_12519| s0@@6 s1@@6))
)))
(assert (forall ((s0@@7 T@Seq_2900) (s1@@7 T@Seq_2900) ) (!  (and (=> (= s0@@7 |Seq#Empty_2900|) (= (|Seq#Append_2900| s0@@7 s1@@7) s1@@7)) (=> (= s1@@7 |Seq#Empty_2900|) (= (|Seq#Append_2900| s0@@7 s1@@7) s0@@7)))
 :qid |stdinbpl.231:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2900| s0@@7 s1@@7))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Index_4360| (|Seq#Singleton_4360| t@@5) 0) t@@5)
 :qid |stdinbpl.235:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_4360| t@@5))
)))
(assert (forall ((t@@6 T@Seq_12519) ) (! (= (|Seq#Index_12735| (|Seq#Singleton_12670| t@@6) 0) t@@6)
 :qid |stdinbpl.235:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_12670| t@@6))
)))
(assert (forall ((t@@7 Int) ) (! (= (|Seq#Index_2900| (|Seq#Singleton_2900| t@@7) 0) t@@7)
 :qid |stdinbpl.235:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2900| t@@7))
)))
(assert (forall ((s@@29 T@Seq_12519) ) (! (<= 0 (|Seq#Length_4360| s@@29))
 :qid |stdinbpl.214:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_4360| s@@29))
)))
(assert (forall ((s@@30 T@Seq_12521) ) (! (<= 0 (|Seq#Length_12670| s@@30))
 :qid |stdinbpl.214:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_12670| s@@30))
)))
(assert (forall ((s@@31 T@Seq_2900) ) (! (<= 0 (|Seq#Length_2900| s@@31))
 :qid |stdinbpl.214:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2900| s@@31))
)))
(assert (forall ((s0@@8 T@Seq_12521) (s1@@8 T@Seq_12521) ) (!  (=> (|Seq#Equal_12521| s0@@8 s1@@8) (and (= (|Seq#Length_12670| s0@@8) (|Seq#Length_12670| s1@@8)) (forall ((j@@8 Int) ) (!  (=> (and (<= 0 j@@8) (< j@@8 (|Seq#Length_12670| s0@@8))) (= (|Seq#Index_12735| s0@@8 j@@8) (|Seq#Index_12735| s1@@8 j@@8)))
 :qid |stdinbpl.510:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_12735| s0@@8 j@@8))
 :pattern ( (|Seq#Index_12735| s1@@8 j@@8))
))))
 :qid |stdinbpl.507:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_12521| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_12519) (s1@@9 T@Seq_12519) ) (!  (=> (|Seq#Equal_12519| s0@@9 s1@@9) (and (= (|Seq#Length_4360| s0@@9) (|Seq#Length_4360| s1@@9)) (forall ((j@@9 Int) ) (!  (=> (and (<= 0 j@@9) (< j@@9 (|Seq#Length_4360| s0@@9))) (= (|Seq#Index_4360| s0@@9 j@@9) (|Seq#Index_4360| s1@@9 j@@9)))
 :qid |stdinbpl.510:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_4360| s0@@9 j@@9))
 :pattern ( (|Seq#Index_4360| s1@@9 j@@9))
))))
 :qid |stdinbpl.507:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_12519| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2900) (s1@@10 T@Seq_2900) ) (!  (=> (|Seq#Equal_2900| s0@@10 s1@@10) (and (= (|Seq#Length_2900| s0@@10) (|Seq#Length_2900| s1@@10)) (forall ((j@@10 Int) ) (!  (=> (and (<= 0 j@@10) (< j@@10 (|Seq#Length_2900| s0@@10))) (= (|Seq#Index_2900| s0@@10 j@@10) (|Seq#Index_2900| s1@@10 j@@10)))
 :qid |stdinbpl.510:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2900| s0@@10 j@@10))
 :pattern ( (|Seq#Index_2900| s1@@10 j@@10))
))))
 :qid |stdinbpl.507:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2900| s0@@10 s1@@10))
)))
(assert (forall ((t@@8 T@Ref) ) (! (= (|Seq#Length_4360| (|Seq#Singleton_4360| t@@8)) 1)
 :qid |stdinbpl.222:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_4360| t@@8))
)))
(assert (forall ((t@@9 T@Seq_12519) ) (! (= (|Seq#Length_12670| (|Seq#Singleton_12670| t@@9)) 1)
 :qid |stdinbpl.222:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_12670| t@@9))
)))
(assert (forall ((t@@10 Int) ) (! (= (|Seq#Length_2900| (|Seq#Singleton_2900| t@@10)) 1)
 :qid |stdinbpl.222:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2900| t@@10))
)))
(assert (forall ((s@@32 T@Seq_12519) (t@@11 T@Seq_12519) (n@@26 Int) ) (!  (=> (and (< 0 n@@26) (<= n@@26 (|Seq#Length_4360| s@@32))) (= (|Seq#Take_4360| (|Seq#Append_12519| s@@32 t@@11) n@@26) (|Seq#Take_4360| s@@32 n@@26)))
 :qid |stdinbpl.364:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_4360| (|Seq#Append_12519| s@@32 t@@11) n@@26))
)))
(assert (forall ((s@@33 T@Seq_12521) (t@@12 T@Seq_12521) (n@@27 Int) ) (!  (=> (and (< 0 n@@27) (<= n@@27 (|Seq#Length_12670| s@@33))) (= (|Seq#Take_12670| (|Seq#Append_12521| s@@33 t@@12) n@@27) (|Seq#Take_12670| s@@33 n@@27)))
 :qid |stdinbpl.364:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_12670| (|Seq#Append_12521| s@@33 t@@12) n@@27))
)))
(assert (forall ((s@@34 T@Seq_2900) (t@@13 T@Seq_2900) (n@@28 Int) ) (!  (=> (and (< 0 n@@28) (<= n@@28 (|Seq#Length_2900| s@@34))) (= (|Seq#Take_2900| (|Seq#Append_2900| s@@34 t@@13) n@@28) (|Seq#Take_2900| s@@34 n@@28)))
 :qid |stdinbpl.364:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2900| (|Seq#Append_2900| s@@34 t@@13) n@@28))
)))
(assert (forall ((s@@35 T@Seq_12519) (i@@7 Int) (v@@3 T@Ref) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_4360| s@@35))) (= (|Seq#Length_4360| (|Seq#Update_4360| s@@35 i@@7 v@@3)) (|Seq#Length_4360| s@@35)))
 :qid |stdinbpl.263:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_4360| (|Seq#Update_4360| s@@35 i@@7 v@@3)))
 :pattern ( (|Seq#Length_4360| s@@35) (|Seq#Update_4360| s@@35 i@@7 v@@3))
)))
(assert (forall ((s@@36 T@Seq_12521) (i@@8 Int) (v@@4 T@Seq_12519) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length_12670| s@@36))) (= (|Seq#Length_12670| (|Seq#Update_12670| s@@36 i@@8 v@@4)) (|Seq#Length_12670| s@@36)))
 :qid |stdinbpl.263:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_12670| (|Seq#Update_12670| s@@36 i@@8 v@@4)))
 :pattern ( (|Seq#Length_12670| s@@36) (|Seq#Update_12670| s@@36 i@@8 v@@4))
)))
(assert (forall ((s@@37 T@Seq_2900) (i@@9 Int) (v@@5 Int) ) (!  (=> (and (<= 0 i@@9) (< i@@9 (|Seq#Length_2900| s@@37))) (= (|Seq#Length_2900| (|Seq#Update_2900| s@@37 i@@9 v@@5)) (|Seq#Length_2900| s@@37)))
 :qid |stdinbpl.263:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2900| (|Seq#Update_2900| s@@37 i@@9 v@@5)))
 :pattern ( (|Seq#Length_2900| s@@37) (|Seq#Update_2900| s@@37 i@@9 v@@5))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6391) (o_11 T@Ref) (f_17 T@Field_6451_16760) (v@@6 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_6391 (|PolymorphicMapType_6391_4164_53#PolymorphicMapType_6391| Heap@@11) (|PolymorphicMapType_6391_4167_4168#PolymorphicMapType_6391| Heap@@11) (|PolymorphicMapType_6391_6451_3022#PolymorphicMapType_6391| Heap@@11) (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| Heap@@11) (store (|PolymorphicMapType_6391_6451_16760#PolymorphicMapType_6391| Heap@@11) o_11 f_17 v@@6)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6391 (|PolymorphicMapType_6391_4164_53#PolymorphicMapType_6391| Heap@@11) (|PolymorphicMapType_6391_4167_4168#PolymorphicMapType_6391| Heap@@11) (|PolymorphicMapType_6391_6451_3022#PolymorphicMapType_6391| Heap@@11) (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| Heap@@11) (store (|PolymorphicMapType_6391_6451_16760#PolymorphicMapType_6391| Heap@@11) o_11 f_17 v@@6)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6391) (o_11@@0 T@Ref) (f_17@@0 T@Field_6451_16893) (v@@7 T@PolymorphicMapType_6940) ) (! (succHeap Heap@@12 (PolymorphicMapType_6391 (|PolymorphicMapType_6391_4164_53#PolymorphicMapType_6391| Heap@@12) (|PolymorphicMapType_6391_4167_4168#PolymorphicMapType_6391| Heap@@12) (|PolymorphicMapType_6391_6451_3022#PolymorphicMapType_6391| Heap@@12) (store (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| Heap@@12) o_11@@0 f_17@@0 v@@7) (|PolymorphicMapType_6391_6451_16760#PolymorphicMapType_6391| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6391 (|PolymorphicMapType_6391_4164_53#PolymorphicMapType_6391| Heap@@12) (|PolymorphicMapType_6391_4167_4168#PolymorphicMapType_6391| Heap@@12) (|PolymorphicMapType_6391_6451_3022#PolymorphicMapType_6391| Heap@@12) (store (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| Heap@@12) o_11@@0 f_17@@0 v@@7) (|PolymorphicMapType_6391_6451_16760#PolymorphicMapType_6391| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6391) (o_11@@1 T@Ref) (f_17@@1 T@Field_12471_3022) (v@@8 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_6391 (|PolymorphicMapType_6391_4164_53#PolymorphicMapType_6391| Heap@@13) (|PolymorphicMapType_6391_4167_4168#PolymorphicMapType_6391| Heap@@13) (store (|PolymorphicMapType_6391_6451_3022#PolymorphicMapType_6391| Heap@@13) o_11@@1 f_17@@1 v@@8) (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| Heap@@13) (|PolymorphicMapType_6391_6451_16760#PolymorphicMapType_6391| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6391 (|PolymorphicMapType_6391_4164_53#PolymorphicMapType_6391| Heap@@13) (|PolymorphicMapType_6391_4167_4168#PolymorphicMapType_6391| Heap@@13) (store (|PolymorphicMapType_6391_6451_3022#PolymorphicMapType_6391| Heap@@13) o_11@@1 f_17@@1 v@@8) (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| Heap@@13) (|PolymorphicMapType_6391_6451_16760#PolymorphicMapType_6391| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6391) (o_11@@2 T@Ref) (f_17@@2 T@Field_6464_6465) (v@@9 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_6391 (|PolymorphicMapType_6391_4164_53#PolymorphicMapType_6391| Heap@@14) (store (|PolymorphicMapType_6391_4167_4168#PolymorphicMapType_6391| Heap@@14) o_11@@2 f_17@@2 v@@9) (|PolymorphicMapType_6391_6451_3022#PolymorphicMapType_6391| Heap@@14) (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| Heap@@14) (|PolymorphicMapType_6391_6451_16760#PolymorphicMapType_6391| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6391 (|PolymorphicMapType_6391_4164_53#PolymorphicMapType_6391| Heap@@14) (store (|PolymorphicMapType_6391_4167_4168#PolymorphicMapType_6391| Heap@@14) o_11@@2 f_17@@2 v@@9) (|PolymorphicMapType_6391_6451_3022#PolymorphicMapType_6391| Heap@@14) (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| Heap@@14) (|PolymorphicMapType_6391_6451_16760#PolymorphicMapType_6391| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6391) (o_11@@3 T@Ref) (f_17@@3 T@Field_6451_53) (v@@10 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_6391 (store (|PolymorphicMapType_6391_4164_53#PolymorphicMapType_6391| Heap@@15) o_11@@3 f_17@@3 v@@10) (|PolymorphicMapType_6391_4167_4168#PolymorphicMapType_6391| Heap@@15) (|PolymorphicMapType_6391_6451_3022#PolymorphicMapType_6391| Heap@@15) (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| Heap@@15) (|PolymorphicMapType_6391_6451_16760#PolymorphicMapType_6391| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6391 (store (|PolymorphicMapType_6391_4164_53#PolymorphicMapType_6391| Heap@@15) o_11@@3 f_17@@3 v@@10) (|PolymorphicMapType_6391_4167_4168#PolymorphicMapType_6391| Heap@@15) (|PolymorphicMapType_6391_6451_3022#PolymorphicMapType_6391| Heap@@15) (|PolymorphicMapType_6391_6451_16937#PolymorphicMapType_6391| Heap@@15) (|PolymorphicMapType_6391_6451_16760#PolymorphicMapType_6391| Heap@@15)))
)))
(assert (forall ((s@@38 T@Seq_12519) (t@@14 T@Seq_12519) (n@@29 Int) ) (!  (=> (and (< 0 n@@29) (<= n@@29 (|Seq#Length_4360| s@@38))) (= (|Seq#Drop_4360| (|Seq#Append_12519| s@@38 t@@14) n@@29) (|Seq#Append_12519| (|Seq#Drop_4360| s@@38 n@@29) t@@14)))
 :qid |stdinbpl.378:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_4360| (|Seq#Append_12519| s@@38 t@@14) n@@29))
)))
(assert (forall ((s@@39 T@Seq_12521) (t@@15 T@Seq_12521) (n@@30 Int) ) (!  (=> (and (< 0 n@@30) (<= n@@30 (|Seq#Length_12670| s@@39))) (= (|Seq#Drop_12670| (|Seq#Append_12521| s@@39 t@@15) n@@30) (|Seq#Append_12521| (|Seq#Drop_12670| s@@39 n@@30) t@@15)))
 :qid |stdinbpl.378:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_12670| (|Seq#Append_12521| s@@39 t@@15) n@@30))
)))
(assert (forall ((s@@40 T@Seq_2900) (t@@16 T@Seq_2900) (n@@31 Int) ) (!  (=> (and (< 0 n@@31) (<= n@@31 (|Seq#Length_2900| s@@40))) (= (|Seq#Drop_2900| (|Seq#Append_2900| s@@40 t@@16) n@@31) (|Seq#Append_2900| (|Seq#Drop_2900| s@@40 n@@31) t@@16)))
 :qid |stdinbpl.378:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2900| (|Seq#Append_2900| s@@40 t@@16) n@@31))
)))
(assert (forall ((s@@41 T@Seq_12519) (n@@32 Int) (i@@10 Int) ) (!  (=> (and (and (< 0 n@@32) (<= n@@32 i@@10)) (< i@@10 (|Seq#Length_4360| s@@41))) (and (= (|Seq#Add| (|Seq#Sub| i@@10 n@@32) n@@32) i@@10) (= (|Seq#Index_4360| (|Seq#Drop_4360| s@@41 n@@32) (|Seq#Sub| i@@10 n@@32)) (|Seq#Index_4360| s@@41 i@@10))))
 :qid |stdinbpl.314:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_4360| s@@41 n@@32) (|Seq#Index_4360| s@@41 i@@10))
)))
(assert (forall ((s@@42 T@Seq_12521) (n@@33 Int) (i@@11 Int) ) (!  (=> (and (and (< 0 n@@33) (<= n@@33 i@@11)) (< i@@11 (|Seq#Length_12670| s@@42))) (and (= (|Seq#Add| (|Seq#Sub| i@@11 n@@33) n@@33) i@@11) (= (|Seq#Index_12735| (|Seq#Drop_12670| s@@42 n@@33) (|Seq#Sub| i@@11 n@@33)) (|Seq#Index_12735| s@@42 i@@11))))
 :qid |stdinbpl.314:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_12670| s@@42 n@@33) (|Seq#Index_12735| s@@42 i@@11))
)))
(assert (forall ((s@@43 T@Seq_2900) (n@@34 Int) (i@@12 Int) ) (!  (=> (and (and (< 0 n@@34) (<= n@@34 i@@12)) (< i@@12 (|Seq#Length_2900| s@@43))) (and (= (|Seq#Add| (|Seq#Sub| i@@12 n@@34) n@@34) i@@12) (= (|Seq#Index_2900| (|Seq#Drop_2900| s@@43 n@@34) (|Seq#Sub| i@@12 n@@34)) (|Seq#Index_2900| s@@43 i@@12))))
 :qid |stdinbpl.314:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2900| s@@43 n@@34) (|Seq#Index_2900| s@@43 i@@12))
)))
(assert (forall ((s0@@11 T@Seq_12521) (s1@@11 T@Seq_12521) (n@@35 Int) ) (!  (=> (and (and (and (not (= s0@@11 |Seq#Empty_12670|)) (not (= s1@@11 |Seq#Empty_12670|))) (<= 0 n@@35)) (< n@@35 (|Seq#Length_12670| s0@@11))) (= (|Seq#Index_12735| (|Seq#Append_12521| s0@@11 s1@@11) n@@35) (|Seq#Index_12735| s0@@11 n@@35)))
 :qid |stdinbpl.254:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_12735| (|Seq#Append_12521| s0@@11 s1@@11) n@@35))
 :pattern ( (|Seq#Index_12735| s0@@11 n@@35) (|Seq#Append_12521| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_12519) (s1@@12 T@Seq_12519) (n@@36 Int) ) (!  (=> (and (and (and (not (= s0@@12 |Seq#Empty_4360|)) (not (= s1@@12 |Seq#Empty_4360|))) (<= 0 n@@36)) (< n@@36 (|Seq#Length_4360| s0@@12))) (= (|Seq#Index_4360| (|Seq#Append_12519| s0@@12 s1@@12) n@@36) (|Seq#Index_4360| s0@@12 n@@36)))
 :qid |stdinbpl.254:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_4360| (|Seq#Append_12519| s0@@12 s1@@12) n@@36))
 :pattern ( (|Seq#Index_4360| s0@@12 n@@36) (|Seq#Append_12519| s0@@12 s1@@12))
)))
(assert (forall ((s0@@13 T@Seq_2900) (s1@@13 T@Seq_2900) (n@@37 Int) ) (!  (=> (and (and (and (not (= s0@@13 |Seq#Empty_2900|)) (not (= s1@@13 |Seq#Empty_2900|))) (<= 0 n@@37)) (< n@@37 (|Seq#Length_2900| s0@@13))) (= (|Seq#Index_2900| (|Seq#Append_2900| s0@@13 s1@@13) n@@37) (|Seq#Index_2900| s0@@13 n@@37)))
 :qid |stdinbpl.254:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2900| (|Seq#Append_2900| s0@@13 s1@@13) n@@37))
 :pattern ( (|Seq#Index_2900| s0@@13 n@@37) (|Seq#Append_2900| s0@@13 s1@@13))
)))
(assert (forall ((s0@@14 T@Seq_12521) (s1@@14 T@Seq_12521) (m Int) ) (!  (=> (and (and (and (not (= s0@@14 |Seq#Empty_12670|)) (not (= s1@@14 |Seq#Empty_12670|))) (<= 0 m)) (< m (|Seq#Length_12670| s1@@14))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_12670| s0@@14)) (|Seq#Length_12670| s0@@14)) m) (= (|Seq#Index_12735| (|Seq#Append_12521| s0@@14 s1@@14) (|Seq#Add| m (|Seq#Length_12670| s0@@14))) (|Seq#Index_12735| s1@@14 m))))
 :qid |stdinbpl.259:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_12735| s1@@14 m) (|Seq#Append_12521| s0@@14 s1@@14))
)))
(assert (forall ((s0@@15 T@Seq_12519) (s1@@15 T@Seq_12519) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@15 |Seq#Empty_4360|)) (not (= s1@@15 |Seq#Empty_4360|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_4360| s1@@15))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_4360| s0@@15)) (|Seq#Length_4360| s0@@15)) m@@0) (= (|Seq#Index_4360| (|Seq#Append_12519| s0@@15 s1@@15) (|Seq#Add| m@@0 (|Seq#Length_4360| s0@@15))) (|Seq#Index_4360| s1@@15 m@@0))))
 :qid |stdinbpl.259:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_4360| s1@@15 m@@0) (|Seq#Append_12519| s0@@15 s1@@15))
)))
(assert (forall ((s0@@16 T@Seq_2900) (s1@@16 T@Seq_2900) (m@@1 Int) ) (!  (=> (and (and (and (not (= s0@@16 |Seq#Empty_2900|)) (not (= s1@@16 |Seq#Empty_2900|))) (<= 0 m@@1)) (< m@@1 (|Seq#Length_2900| s1@@16))) (and (= (|Seq#Sub| (|Seq#Add| m@@1 (|Seq#Length_2900| s0@@16)) (|Seq#Length_2900| s0@@16)) m@@1) (= (|Seq#Index_2900| (|Seq#Append_2900| s0@@16 s1@@16) (|Seq#Add| m@@1 (|Seq#Length_2900| s0@@16))) (|Seq#Index_2900| s1@@16 m@@1))))
 :qid |stdinbpl.259:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2900| s1@@16 m@@1) (|Seq#Append_2900| s0@@16 s1@@16))
)))
(assert (forall ((o_11@@4 T@Ref) (f_10 T@Field_6464_6465) (Heap@@16 T@PolymorphicMapType_6391) ) (!  (=> (select (|PolymorphicMapType_6391_4164_53#PolymorphicMapType_6391| Heap@@16) o_11@@4 $allocated) (select (|PolymorphicMapType_6391_4164_53#PolymorphicMapType_6391| Heap@@16) (select (|PolymorphicMapType_6391_4167_4168#PolymorphicMapType_6391| Heap@@16) o_11@@4 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6391_4167_4168#PolymorphicMapType_6391| Heap@@16) o_11@@4 f_10))
)))
(assert (forall ((s@@44 T@Seq_12519) (x@@5 T@Ref) (i@@13 Int) ) (!  (=> (and (and (<= 0 i@@13) (< i@@13 (|Seq#Length_4360| s@@44))) (= (|Seq#Index_4360| s@@44 i@@13) x@@5)) (|Seq#Contains_12519| s@@44 x@@5))
 :qid |stdinbpl.411:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_12519| s@@44 x@@5) (|Seq#Index_4360| s@@44 i@@13))
)))
(assert (forall ((s@@45 T@Seq_12521) (x@@6 T@Seq_12519) (i@@14 Int) ) (!  (=> (and (and (<= 0 i@@14) (< i@@14 (|Seq#Length_12670| s@@45))) (= (|Seq#Index_12735| s@@45 i@@14) x@@6)) (|Seq#Contains_12521| s@@45 x@@6))
 :qid |stdinbpl.411:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_12521| s@@45 x@@6) (|Seq#Index_12735| s@@45 i@@14))
)))
(assert (forall ((s@@46 T@Seq_2900) (x@@7 Int) (i@@15 Int) ) (!  (=> (and (and (<= 0 i@@15) (< i@@15 (|Seq#Length_2900| s@@46))) (= (|Seq#Index_2900| s@@46 i@@15) x@@7)) (|Seq#Contains_2900| s@@46 x@@7))
 :qid |stdinbpl.411:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2900| s@@46 x@@7) (|Seq#Index_2900| s@@46 i@@15))
)))
(assert (forall ((s0@@17 T@Seq_12521) (s1@@17 T@Seq_12521) ) (!  (or (or (and (= s0@@17 s1@@17) (|Seq#Equal_12521| s0@@17 s1@@17)) (and (and (not (= s0@@17 s1@@17)) (not (|Seq#Equal_12521| s0@@17 s1@@17))) (not (= (|Seq#Length_12670| s0@@17) (|Seq#Length_12670| s1@@17))))) (and (and (and (and (and (and (not (= s0@@17 s1@@17)) (not (|Seq#Equal_12521| s0@@17 s1@@17))) (= (|Seq#Length_12670| s0@@17) (|Seq#Length_12670| s1@@17))) (= (|Seq#SkolemDiff_12521| s0@@17 s1@@17) (|Seq#SkolemDiff_12521| s1@@17 s0@@17))) (<= 0 (|Seq#SkolemDiff_12521| s0@@17 s1@@17))) (< (|Seq#SkolemDiff_12521| s0@@17 s1@@17) (|Seq#Length_12670| s0@@17))) (not (= (|Seq#Index_12735| s0@@17 (|Seq#SkolemDiff_12521| s0@@17 s1@@17)) (|Seq#Index_12735| s1@@17 (|Seq#SkolemDiff_12521| s0@@17 s1@@17))))))
 :qid |stdinbpl.515:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_12521| s0@@17 s1@@17))
)))
(assert (forall ((s0@@18 T@Seq_12519) (s1@@18 T@Seq_12519) ) (!  (or (or (and (= s0@@18 s1@@18) (|Seq#Equal_12519| s0@@18 s1@@18)) (and (and (not (= s0@@18 s1@@18)) (not (|Seq#Equal_12519| s0@@18 s1@@18))) (not (= (|Seq#Length_4360| s0@@18) (|Seq#Length_4360| s1@@18))))) (and (and (and (and (and (and (not (= s0@@18 s1@@18)) (not (|Seq#Equal_12519| s0@@18 s1@@18))) (= (|Seq#Length_4360| s0@@18) (|Seq#Length_4360| s1@@18))) (= (|Seq#SkolemDiff_12519| s0@@18 s1@@18) (|Seq#SkolemDiff_12519| s1@@18 s0@@18))) (<= 0 (|Seq#SkolemDiff_12519| s0@@18 s1@@18))) (< (|Seq#SkolemDiff_12519| s0@@18 s1@@18) (|Seq#Length_4360| s0@@18))) (not (= (|Seq#Index_4360| s0@@18 (|Seq#SkolemDiff_12519| s0@@18 s1@@18)) (|Seq#Index_4360| s1@@18 (|Seq#SkolemDiff_12519| s0@@18 s1@@18))))))
 :qid |stdinbpl.515:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_12519| s0@@18 s1@@18))
)))
(assert (forall ((s0@@19 T@Seq_2900) (s1@@19 T@Seq_2900) ) (!  (or (or (and (= s0@@19 s1@@19) (|Seq#Equal_2900| s0@@19 s1@@19)) (and (and (not (= s0@@19 s1@@19)) (not (|Seq#Equal_2900| s0@@19 s1@@19))) (not (= (|Seq#Length_2900| s0@@19) (|Seq#Length_2900| s1@@19))))) (and (and (and (and (and (and (not (= s0@@19 s1@@19)) (not (|Seq#Equal_2900| s0@@19 s1@@19))) (= (|Seq#Length_2900| s0@@19) (|Seq#Length_2900| s1@@19))) (= (|Seq#SkolemDiff_2900| s0@@19 s1@@19) (|Seq#SkolemDiff_2900| s1@@19 s0@@19))) (<= 0 (|Seq#SkolemDiff_2900| s0@@19 s1@@19))) (< (|Seq#SkolemDiff_2900| s0@@19 s1@@19) (|Seq#Length_2900| s0@@19))) (not (= (|Seq#Index_2900| s0@@19 (|Seq#SkolemDiff_2900| s0@@19 s1@@19)) (|Seq#Index_2900| s1@@19 (|Seq#SkolemDiff_2900| s0@@19 s1@@19))))))
 :qid |stdinbpl.515:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2900| s0@@19 s1@@19))
)))
(assert (forall ((p@@1 T@Field_6451_16760) (v_1@@0 T@FrameType) (q T@Field_6451_16760) (w@@0 T@FrameType) (r T@Field_6451_16760) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6451_6451 p@@1 v_1@@0 q w@@0) (InsidePredicate_6451_6451 q w@@0 r u)) (InsidePredicate_6451_6451 p@@1 v_1@@0 r u))
 :qid |stdinbpl.182:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6451_6451 p@@1 v_1@@0 q w@@0) (InsidePredicate_6451_6451 q w@@0 r u))
)))
(assert (forall ((s@@47 T@Seq_12519) ) (!  (=> (= (|Seq#Length_4360| s@@47) 0) (= s@@47 |Seq#Empty_4360|))
 :qid |stdinbpl.218:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_4360| s@@47))
)))
(assert (forall ((s@@48 T@Seq_12521) ) (!  (=> (= (|Seq#Length_12670| s@@48) 0) (= s@@48 |Seq#Empty_12670|))
 :qid |stdinbpl.218:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_12670| s@@48))
)))
(assert (forall ((s@@49 T@Seq_2900) ) (!  (=> (= (|Seq#Length_2900| s@@49) 0) (= s@@49 |Seq#Empty_2900|))
 :qid |stdinbpl.218:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2900| s@@49))
)))
(assert (forall ((s@@50 T@Seq_12519) (n@@38 Int) ) (!  (=> (<= n@@38 0) (= (|Seq#Take_4360| s@@50 n@@38) |Seq#Empty_4360|))
 :qid |stdinbpl.394:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_4360| s@@50 n@@38))
)))
(assert (forall ((s@@51 T@Seq_12521) (n@@39 Int) ) (!  (=> (<= n@@39 0) (= (|Seq#Take_12670| s@@51 n@@39) |Seq#Empty_12670|))
 :qid |stdinbpl.394:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_12670| s@@51 n@@39))
)))
(assert (forall ((s@@52 T@Seq_2900) (n@@40 Int) ) (!  (=> (<= n@@40 0) (= (|Seq#Take_2900| s@@52 n@@40) |Seq#Empty_2900|))
 :qid |stdinbpl.394:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2900| s@@52 n@@40))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i_2 () Int)
(declare-fun xs () T@Seq_12521)
(declare-fun j@@11 () Int)
(declare-fun xs_i@0 () T@Seq_12519)
(declare-fun Heap@@17 () T@PolymorphicMapType_6391)
(declare-fun i_14 () Int)
(declare-fun j_5 () Int)
(declare-fun i0_3 () Int)
(declare-fun j0 () Int)
(set-info :boogie-vc-id test)
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
 (=> (= (ControlFlow 0 0) 45) (let ((anon17_correct true))
(let ((anon30_Else_correct  (=> (and (not (and (and (<= 0 i_2) (< i_2 (|Seq#Length_12670| xs))) (and (<= 0 j@@11) (< j@@11 (|Seq#Length_4360| (|Seq#Index_12735| xs i_2)))))) (= (ControlFlow 0 38) 32)) anon17_correct)))
(let ((anon30_Then_correct  (=> (and (and (<= 0 i_2) (< i_2 (|Seq#Length_12670| xs))) (and (<= 0 j@@11) (< j@@11 (|Seq#Length_4360| (|Seq#Index_12735| xs i_2))))) (and (=> (= (ControlFlow 0 33) (- 0 37)) (>= i_2 0)) (=> (>= i_2 0) (and (=> (= (ControlFlow 0 33) (- 0 36)) (< i_2 (|Seq#Length_12670| xs))) (=> (< i_2 (|Seq#Length_12670| xs)) (and (=> (= (ControlFlow 0 33) (- 0 35)) (>= j@@11 0)) (=> (>= j@@11 0) (and (=> (= (ControlFlow 0 33) (- 0 34)) (< j@@11 (|Seq#Length_4360| (|Seq#Index_12735| xs i_2)))) (=> (< j@@11 (|Seq#Length_4360| (|Seq#Index_12735| xs i_2))) (=> (= (ControlFlow 0 33) 32) anon17_correct))))))))))))
(let ((anon29_Else_correct  (=> (not (and (<= 0 i_2) (< i_2 (|Seq#Length_12670| xs)))) (and (=> (= (ControlFlow 0 42) 33) anon30_Then_correct) (=> (= (ControlFlow 0 42) 38) anon30_Else_correct)))))
(let ((anon29_Then_correct  (=> (and (<= 0 i_2) (< i_2 (|Seq#Length_12670| xs))) (and (=> (= (ControlFlow 0 39) (- 0 41)) (>= i_2 0)) (=> (>= i_2 0) (and (=> (= (ControlFlow 0 39) (- 0 40)) (< i_2 (|Seq#Length_12670| xs))) (=> (< i_2 (|Seq#Length_12670| xs)) (=> (= xs_i@0 (|Seq#Index_12735| xs i_2)) (and (=> (= (ControlFlow 0 39) 33) anon30_Then_correct) (=> (= (ControlFlow 0 39) 38) anon30_Else_correct))))))))))
(let ((anon28_Else_correct  (=> (= (ControlFlow 0 31) (- 0 30)) (forall ((i_3 Int) (j_3_1 Int) (i_3_1 Int) (j_3_2 Int) ) (!  (=> (and (and (and (and (and (not (= i_3 i_3_1)) (not (= j_3_1 j_3_2))) (and (and (<= 0 i_3) (< i_3 (|Seq#Length_12670| xs))) (and (<= 0 j_3_1) (< j_3_1 (|Seq#Length_4360| (|Seq#Index_12735| xs i_3)))))) (and (and (<= 0 i_3_1) (< i_3_1 (|Seq#Length_12670| xs))) (and (<= 0 j_3_2) (< j_3_2 (|Seq#Length_4360| (|Seq#Index_12735| xs i_3_1)))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_4360| (|Seq#Index_12735| xs i_3) j_3_1) (|Seq#Index_4360| (|Seq#Index_12735| xs i_3_1) j_3_2))))
 :qid |stdinbpl.662:15|
 :skolemid |59|
)))))
(let ((anon19_Else_correct  (=> (and (forall ((i_1 Int) (j_1 Int) (i0_1_1 Int) (j0_1 Int) ) (!  (=> (and (<= 0 i_1) (and (< i_1 (|Seq#Length_12670| xs)) (and (<= 0 j_1) (and (< j_1 (|Seq#Length_4360| (|Seq#Index_12735| xs i_1))) (and (<= 0 i0_1_1) (and (< i0_1_1 (|Seq#Length_12670| xs)) (and (<= 0 j0_1) (and (< j0_1 (|Seq#Length_4360| (|Seq#Index_12735| xs i0_1_1))) (or (not (= i_1 i0_1_1)) (not (= j_1 j0_1))))))))))) (not (= (|Seq#Index_4360| (|Seq#Index_12735| xs i_1) j_1) (|Seq#Index_4360| (|Seq#Index_12735| xs i0_1_1) j0_1))))
 :qid |stdinbpl.633:20|
 :skolemid |58|
 :pattern ( (|Seq#Length_4360| (|Seq#Index_12735| xs i_1)) (|Seq#Length_4360| (|Seq#Index_12735| xs i0_1_1)) (|Seq#Index_4360| (|Seq#Index_12735| xs i_1) j_1) (|Seq#Index_4360| (|Seq#Index_12735| xs i0_1_1) j0_1))
 :pattern ( (|Seq#Length_4360| (|Seq#Index_12735| xs i_1)) (|Seq#Index_4360| (|Seq#Index_12735| xs i_1) j_1) (|Seq#Index_4360| (|Seq#Index_12735| xs i0_1_1) j0_1))
 :pattern ( (|Seq#Length_4360| (|Seq#Index_12735| xs i0_1_1)) (|Seq#Index_4360| (|Seq#Index_12735| xs i_1) j_1) (|Seq#Index_4360| (|Seq#Index_12735| xs i0_1_1) j0_1))
 :pattern ( (|Seq#Index_4360| (|Seq#Index_12735| xs i_1) j_1) (|Seq#Index_4360| (|Seq#Index_12735| xs i0_1_1) j0_1))
)) (state Heap@@17 ZeroMask)) (and (and (=> (= (ControlFlow 0 43) 31) anon28_Else_correct) (=> (= (ControlFlow 0 43) 39) anon29_Then_correct)) (=> (= (ControlFlow 0 43) 42) anon29_Else_correct)))))
(let ((anon11_correct true))
(let ((anon27_Else_correct  (=> (and (not (and (<= 0 i_14) (and (< i_14 (|Seq#Length_12670| xs)) (and (<= 0 j_5) (and (< j_5 (|Seq#Length_4360| (|Seq#Index_12735| xs i_14))) (and (<= 0 i0_3) (and (< i0_3 (|Seq#Length_12670| xs)) (and (<= 0 j0) (and (< j0 (|Seq#Length_4360| (|Seq#Index_12735| xs i0_3))) (or (not (= i_14 i0_3)) (not (= j_5 j0)))))))))))) (= (ControlFlow 0 11) 1)) anon11_correct)))
(let ((anon27_Then_correct  (=> (and (<= 0 i_14) (and (< i_14 (|Seq#Length_12670| xs)) (and (<= 0 j_5) (and (< j_5 (|Seq#Length_4360| (|Seq#Index_12735| xs i_14))) (and (<= 0 i0_3) (and (< i0_3 (|Seq#Length_12670| xs)) (and (<= 0 j0) (and (< j0 (|Seq#Length_4360| (|Seq#Index_12735| xs i0_3))) (or (not (= i_14 i0_3)) (not (= j_5 j0))))))))))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (>= i_14 0)) (=> (>= i_14 0) (and (=> (= (ControlFlow 0 2) (- 0 9)) (< i_14 (|Seq#Length_12670| xs))) (=> (< i_14 (|Seq#Length_12670| xs)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (>= j_5 0)) (=> (>= j_5 0) (and (=> (= (ControlFlow 0 2) (- 0 7)) (< j_5 (|Seq#Length_4360| (|Seq#Index_12735| xs i_14)))) (=> (< j_5 (|Seq#Length_4360| (|Seq#Index_12735| xs i_14))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i0_3 0)) (=> (>= i0_3 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i0_3 (|Seq#Length_12670| xs))) (=> (< i0_3 (|Seq#Length_12670| xs)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j0 0)) (=> (>= j0 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j0 (|Seq#Length_4360| (|Seq#Index_12735| xs i0_3)))) (=> (< j0 (|Seq#Length_4360| (|Seq#Index_12735| xs i0_3))) (=> (= (ControlFlow 0 2) 1) anon11_correct))))))))))))))))))))
(let ((anon26_Else_correct  (=> (< j0 0) (and (=> (= (ControlFlow 0 21) 2) anon27_Then_correct) (=> (= (ControlFlow 0 21) 11) anon27_Else_correct)))))
(let ((anon26_Then_correct  (=> (<= 0 j0) (and (=> (= (ControlFlow 0 18) (- 0 20)) (>= i0_3 0)) (=> (>= i0_3 0) (and (=> (= (ControlFlow 0 18) (- 0 19)) (< i0_3 (|Seq#Length_12670| xs))) (=> (< i0_3 (|Seq#Length_12670| xs)) (and (=> (= (ControlFlow 0 18) 2) anon27_Then_correct) (=> (= (ControlFlow 0 18) 11) anon27_Else_correct)))))))))
(let ((anon25_Then_correct  (=> (< i0_3 (|Seq#Length_12670| xs)) (and (=> (= (ControlFlow 0 22) 18) anon26_Then_correct) (=> (= (ControlFlow 0 22) 21) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (<= (|Seq#Length_12670| xs) i0_3) (and (=> (= (ControlFlow 0 17) 2) anon27_Then_correct) (=> (= (ControlFlow 0 17) 11) anon27_Else_correct)))))
(let ((anon24_Then_correct  (=> (<= 0 i0_3) (and (=> (= (ControlFlow 0 23) 22) anon25_Then_correct) (=> (= (ControlFlow 0 23) 17) anon25_Else_correct)))))
(let ((anon24_Else_correct  (=> (< i0_3 0) (and (=> (= (ControlFlow 0 16) 2) anon27_Then_correct) (=> (= (ControlFlow 0 16) 11) anon27_Else_correct)))))
(let ((anon23_Then_correct  (=> (< j_5 (|Seq#Length_4360| (|Seq#Index_12735| xs i_14))) (and (=> (= (ControlFlow 0 24) 23) anon24_Then_correct) (=> (= (ControlFlow 0 24) 16) anon24_Else_correct)))))
(let ((anon23_Else_correct  (=> (<= (|Seq#Length_4360| (|Seq#Index_12735| xs i_14)) j_5) (and (=> (= (ControlFlow 0 15) 2) anon27_Then_correct) (=> (= (ControlFlow 0 15) 11) anon27_Else_correct)))))
(let ((anon22_Then_correct  (=> (<= 0 j_5) (and (=> (= (ControlFlow 0 25) (- 0 27)) (>= i_14 0)) (=> (>= i_14 0) (and (=> (= (ControlFlow 0 25) (- 0 26)) (< i_14 (|Seq#Length_12670| xs))) (=> (< i_14 (|Seq#Length_12670| xs)) (and (=> (= (ControlFlow 0 25) 24) anon23_Then_correct) (=> (= (ControlFlow 0 25) 15) anon23_Else_correct)))))))))
(let ((anon22_Else_correct  (=> (< j_5 0) (and (=> (= (ControlFlow 0 14) 2) anon27_Then_correct) (=> (= (ControlFlow 0 14) 11) anon27_Else_correct)))))
(let ((anon21_Then_correct  (=> (< i_14 (|Seq#Length_12670| xs)) (and (=> (= (ControlFlow 0 28) 25) anon22_Then_correct) (=> (= (ControlFlow 0 28) 14) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (<= (|Seq#Length_12670| xs) i_14) (and (=> (= (ControlFlow 0 13) 2) anon27_Then_correct) (=> (= (ControlFlow 0 13) 11) anon27_Else_correct)))))
(let ((anon20_Then_correct  (=> (<= 0 i_14) (and (=> (= (ControlFlow 0 29) 28) anon21_Then_correct) (=> (= (ControlFlow 0 29) 13) anon21_Else_correct)))))
(let ((anon20_Else_correct  (=> (< i_14 0) (and (=> (= (ControlFlow 0 12) 2) anon27_Then_correct) (=> (= (ControlFlow 0 12) 11) anon27_Else_correct)))))
(let ((anon0_correct  (=> (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (and (=> (= (ControlFlow 0 44) 43) anon19_Else_correct) (=> (= (ControlFlow 0 44) 29) anon20_Then_correct)) (=> (= (ControlFlow 0 44) 12) anon20_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 45) 44) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
