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
(declare-sort T@Field_12721_53 0)
(declare-sort T@Field_12734_12735 0)
(declare-sort T@Field_19821_19822 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_18751_3133 0)
(declare-sort T@Field_12721_19822 0)
(declare-sort T@Field_12721_26421 0)
(declare-sort T@Field_19821_53 0)
(declare-sort T@Field_19821_12735 0)
(declare-sort T@Field_19821_3133 0)
(declare-sort T@Field_26416_26421 0)
(declare-datatypes ((T@PolymorphicMapType_12682 0)) (((PolymorphicMapType_12682 (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| (Array T@Ref T@Field_19821_19822 Real)) (|PolymorphicMapType_12682_8321_3133#PolymorphicMapType_12682| (Array T@Ref T@Field_18751_3133 Real)) (|PolymorphicMapType_12682_8459_3133#PolymorphicMapType_12682| (Array T@Ref T@Field_19821_3133 Real)) (|PolymorphicMapType_12682_8459_53#PolymorphicMapType_12682| (Array T@Ref T@Field_19821_53 Real)) (|PolymorphicMapType_12682_8459_12735#PolymorphicMapType_12682| (Array T@Ref T@Field_19821_12735 Real)) (|PolymorphicMapType_12682_8459_44174#PolymorphicMapType_12682| (Array T@Ref T@Field_26416_26421 Real)) (|PolymorphicMapType_12682_8321_8460#PolymorphicMapType_12682| (Array T@Ref T@Field_12721_19822 Real)) (|PolymorphicMapType_12682_8321_53#PolymorphicMapType_12682| (Array T@Ref T@Field_12721_53 Real)) (|PolymorphicMapType_12682_8321_12735#PolymorphicMapType_12682| (Array T@Ref T@Field_12734_12735 Real)) (|PolymorphicMapType_12682_8321_44588#PolymorphicMapType_12682| (Array T@Ref T@Field_12721_26421 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13210 0)) (((PolymorphicMapType_13210 (|PolymorphicMapType_13210_12721_53#PolymorphicMapType_13210| (Array T@Ref T@Field_12721_53 Bool)) (|PolymorphicMapType_13210_12721_12735#PolymorphicMapType_13210| (Array T@Ref T@Field_12734_12735 Bool)) (|PolymorphicMapType_13210_12721_3133#PolymorphicMapType_13210| (Array T@Ref T@Field_18751_3133 Bool)) (|PolymorphicMapType_13210_12721_19822#PolymorphicMapType_13210| (Array T@Ref T@Field_12721_19822 Bool)) (|PolymorphicMapType_13210_12721_37735#PolymorphicMapType_13210| (Array T@Ref T@Field_12721_26421 Bool)) (|PolymorphicMapType_13210_19821_53#PolymorphicMapType_13210| (Array T@Ref T@Field_19821_53 Bool)) (|PolymorphicMapType_13210_19821_12735#PolymorphicMapType_13210| (Array T@Ref T@Field_19821_12735 Bool)) (|PolymorphicMapType_13210_19821_3133#PolymorphicMapType_13210| (Array T@Ref T@Field_19821_3133 Bool)) (|PolymorphicMapType_13210_19821_19822#PolymorphicMapType_13210| (Array T@Ref T@Field_19821_19822 Bool)) (|PolymorphicMapType_13210_19821_38783#PolymorphicMapType_13210| (Array T@Ref T@Field_26416_26421 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12661 0)) (((PolymorphicMapType_12661 (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| (Array T@Ref T@Field_12721_53 Bool)) (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| (Array T@Ref T@Field_12734_12735 T@Ref)) (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| (Array T@Ref T@Field_19821_19822 T@FrameType)) (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| (Array T@Ref T@Field_18751_3133 Int)) (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| (Array T@Ref T@Field_12721_19822 T@FrameType)) (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| (Array T@Ref T@Field_12721_26421 T@PolymorphicMapType_13210)) (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| (Array T@Ref T@Field_19821_53 Bool)) (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| (Array T@Ref T@Field_19821_12735 T@Ref)) (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| (Array T@Ref T@Field_19821_3133 Int)) (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| (Array T@Ref T@Field_26416_26421 T@PolymorphicMapType_13210)) ) ) ))
(declare-fun $allocated () T@Field_12721_53)
(declare-fun f_7 () T@Field_18751_3133)
(declare-sort T@Seq_18798 0)
(declare-fun |Seq#Length_8337| (T@Seq_18798) Int)
(declare-fun |Seq#Drop_8337| (T@Seq_18798 Int) T@Seq_18798)
(declare-sort T@Seq_3011 0)
(declare-fun |Seq#Length_3011| (T@Seq_3011) Int)
(declare-fun |Seq#Drop_3011| (T@Seq_3011 Int) T@Seq_3011)
(declare-fun succHeap (T@PolymorphicMapType_12661 T@PolymorphicMapType_12661) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_12661 T@PolymorphicMapType_12661) Bool)
(declare-fun state (T@PolymorphicMapType_12661 T@PolymorphicMapType_12682) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_12682) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_13210)
(declare-fun |fun_P'| (T@PolymorphicMapType_12661 T@Seq_18798 Int) Int)
(declare-fun dummyFunction_3658 (Int) Bool)
(declare-fun |fun_P#triggerStateless| (T@Seq_18798 Int) Int)
(declare-fun |fun_f'| (T@PolymorphicMapType_12661 T@Seq_18798 Int) Int)
(declare-fun |fun_f#triggerStateless| (T@Seq_18798 Int) Int)
(declare-fun |Seq#Index_8337| (T@Seq_18798 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3011| (T@Seq_3011 Int) Int)
(declare-fun |Seq#Empty_8337| () T@Seq_18798)
(declare-fun |Seq#Empty_3011| () T@Seq_3011)
(declare-fun P (T@Ref) T@Field_19821_19822)
(declare-fun IsPredicateField_8459_8460 (T@Field_19821_19822) Bool)
(declare-fun |get_P'| (T@PolymorphicMapType_12661 T@Ref) Int)
(declare-fun |get_P#triggerStateless| (T@Ref) Int)
(declare-fun |get_f'| (T@PolymorphicMapType_12661 T@Ref) Int)
(declare-fun |get_f#triggerStateless| (T@Ref) Int)
(declare-fun |P#trigger_8459| (T@PolymorphicMapType_12661 T@Field_19821_19822) Bool)
(declare-fun |P#everUsed_8459| (T@Field_19821_19822) Bool)
(declare-fun |Seq#Update_8337| (T@Seq_18798 Int T@Ref) T@Seq_18798)
(declare-fun |Seq#Update_3011| (T@Seq_3011 Int Int) T@Seq_3011)
(declare-fun |Seq#Take_8337| (T@Seq_18798 Int) T@Seq_18798)
(declare-fun |Seq#Take_3011| (T@Seq_3011 Int) T@Seq_3011)
(declare-fun |Seq#Contains_3011| (T@Seq_3011 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3011)
(declare-fun |Seq#Contains_18798| (T@Seq_18798 T@Ref) Bool)
(declare-fun |Seq#Skolem_18798| (T@Seq_18798 T@Ref) Int)
(declare-fun |Seq#Skolem_3011| (T@Seq_3011 Int) Int)
(declare-fun get_P (T@PolymorphicMapType_12661 T@Ref) Int)
(declare-fun get_f (T@PolymorphicMapType_12661 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_12661 T@PolymorphicMapType_12661 T@PolymorphicMapType_12682) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_8459 (T@Field_19821_19822) T@Field_26416_26421)
(declare-fun HasDirectPerm_19821_19822 (T@PolymorphicMapType_12682 T@Ref T@Field_19821_19822) Bool)
(declare-fun IsPredicateField_12721_36251 (T@Field_12721_19822) Bool)
(declare-fun PredicateMaskField_12721 (T@Field_12721_19822) T@Field_12721_26421)
(declare-fun HasDirectPerm_12721_19822 (T@PolymorphicMapType_12682 T@Ref T@Field_12721_19822) Bool)
(declare-fun IsWandField_19821_39948 (T@Field_19821_19822) Bool)
(declare-fun WandMaskField_19821 (T@Field_19821_19822) T@Field_26416_26421)
(declare-fun IsWandField_12721_39591 (T@Field_12721_19822) Bool)
(declare-fun WandMaskField_12721 (T@Field_12721_19822) T@Field_12721_26421)
(declare-fun |Seq#Singleton_8337| (T@Ref) T@Seq_18798)
(declare-fun |Seq#Singleton_3011| (Int) T@Seq_3011)
(declare-fun |P#sm| (T@Ref) T@Field_26416_26421)
(declare-fun |Seq#Append_18798| (T@Seq_18798 T@Seq_18798) T@Seq_18798)
(declare-fun |Seq#Append_3011| (T@Seq_3011 T@Seq_3011) T@Seq_3011)
(declare-fun dummyHeap () T@PolymorphicMapType_12661)
(declare-fun ZeroMask () T@PolymorphicMapType_12682)
(declare-fun InsidePredicate_19821_19821 (T@Field_19821_19822 T@FrameType T@Field_19821_19822 T@FrameType) Bool)
(declare-fun InsidePredicate_12721_12721 (T@Field_12721_19822 T@FrameType T@Field_12721_19822 T@FrameType) Bool)
(declare-fun IsPredicateField_8321_3133 (T@Field_18751_3133) Bool)
(declare-fun IsWandField_8321_3133 (T@Field_18751_3133) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8321_46880 (T@Field_12721_26421) Bool)
(declare-fun IsWandField_8321_46896 (T@Field_12721_26421) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8321_12735 (T@Field_12734_12735) Bool)
(declare-fun IsWandField_8321_12735 (T@Field_12734_12735) Bool)
(declare-fun IsPredicateField_8321_53 (T@Field_12721_53) Bool)
(declare-fun IsWandField_8321_53 (T@Field_12721_53) Bool)
(declare-fun IsPredicateField_8459_46063 (T@Field_26416_26421) Bool)
(declare-fun IsWandField_8459_46079 (T@Field_26416_26421) Bool)
(declare-fun IsPredicateField_8459_12735 (T@Field_19821_12735) Bool)
(declare-fun IsWandField_8459_12735 (T@Field_19821_12735) Bool)
(declare-fun IsPredicateField_8459_53 (T@Field_19821_53) Bool)
(declare-fun IsWandField_8459_53 (T@Field_19821_53) Bool)
(declare-fun IsPredicateField_8459_3133 (T@Field_19821_3133) Bool)
(declare-fun IsWandField_8459_3133 (T@Field_19821_3133) Bool)
(declare-fun HasDirectPerm_19821_35963 (T@PolymorphicMapType_12682 T@Ref T@Field_26416_26421) Bool)
(declare-fun HasDirectPerm_19821_3133 (T@PolymorphicMapType_12682 T@Ref T@Field_19821_3133) Bool)
(declare-fun HasDirectPerm_19821_12735 (T@PolymorphicMapType_12682 T@Ref T@Field_19821_12735) Bool)
(declare-fun HasDirectPerm_19821_53 (T@PolymorphicMapType_12682 T@Ref T@Field_19821_53) Bool)
(declare-fun HasDirectPerm_12721_34802 (T@PolymorphicMapType_12682 T@Ref T@Field_12721_26421) Bool)
(declare-fun HasDirectPerm_12721_3133 (T@PolymorphicMapType_12682 T@Ref T@Field_18751_3133) Bool)
(declare-fun HasDirectPerm_12721_12735 (T@PolymorphicMapType_12682 T@Ref T@Field_12734_12735) Bool)
(declare-fun HasDirectPerm_12721_53 (T@PolymorphicMapType_12682 T@Ref T@Field_12721_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun fun_P (T@PolymorphicMapType_12661 T@Seq_18798 Int) Int)
(declare-fun fun_f (T@PolymorphicMapType_12661 T@Seq_18798 Int) Int)
(declare-fun |fun_P#frame| (T@FrameType T@Seq_18798 Int) Int)
(declare-fun FrameFragment_3425 (Int) T@FrameType)
(declare-fun |fun_P#condqp1| (T@PolymorphicMapType_12661 T@Seq_18798 Int) Int)
(declare-fun |fun_f#frame| (T@FrameType T@Seq_18798 Int) Int)
(declare-fun |fun_f#condqp2| (T@PolymorphicMapType_12661 T@Seq_18798 Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun sumMask (T@PolymorphicMapType_12682 T@PolymorphicMapType_12682 T@PolymorphicMapType_12682) Bool)
(declare-fun |Seq#Equal_18798| (T@Seq_18798 T@Seq_18798) Bool)
(declare-fun |Seq#Equal_3011| (T@Seq_3011 T@Seq_3011) Bool)
(declare-fun |Seq#ContainsTrigger_8337| (T@Seq_18798 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3011| (T@Seq_3011 Int) Bool)
(declare-fun |get_P#frame| (T@FrameType T@Ref) Int)
(declare-fun |get_f#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_8459_8460 (T@Field_19821_19822) Int)
(declare-fun |sk_fun_P#condqp1| (Int Int) Int)
(declare-fun |Seq#SkolemDiff_18798| (T@Seq_18798 T@Seq_18798) Int)
(declare-fun |Seq#SkolemDiff_3011| (T@Seq_3011 T@Seq_3011) Int)
(declare-fun InsidePredicate_19821_12721 (T@Field_19821_19822 T@FrameType T@Field_12721_19822 T@FrameType) Bool)
(declare-fun InsidePredicate_12721_19821 (T@Field_12721_19822 T@FrameType T@Field_19821_19822 T@FrameType) Bool)
(declare-fun |sk_fun_f#condqp2| (Int Int) Int)
(assert (forall ((s T@Seq_18798) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_8337| s)) (= (|Seq#Length_8337| (|Seq#Drop_8337| s n)) (- (|Seq#Length_8337| s) n))) (=> (< (|Seq#Length_8337| s) n) (= (|Seq#Length_8337| (|Seq#Drop_8337| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_8337| (|Seq#Drop_8337| s n)) (|Seq#Length_8337| s))))
 :qid |stdinbpl.309:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_8337| (|Seq#Drop_8337| s n)))
 :pattern ( (|Seq#Length_8337| s) (|Seq#Drop_8337| s n))
)))
(assert (forall ((s@@0 T@Seq_3011) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3011| s@@0)) (= (|Seq#Length_3011| (|Seq#Drop_3011| s@@0 n@@0)) (- (|Seq#Length_3011| s@@0) n@@0))) (=> (< (|Seq#Length_3011| s@@0) n@@0) (= (|Seq#Length_3011| (|Seq#Drop_3011| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3011| (|Seq#Drop_3011| s@@0 n@@0)) (|Seq#Length_3011| s@@0))))
 :qid |stdinbpl.309:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3011| (|Seq#Drop_3011| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3011| s@@0) (|Seq#Drop_3011| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_12661) (Heap1 T@PolymorphicMapType_12661) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_12661) (Mask T@PolymorphicMapType_12682) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_12661) (Heap1@@0 T@PolymorphicMapType_12661) (Heap2 T@PolymorphicMapType_12661) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_26416_26421) ) (!  (not (select (|PolymorphicMapType_13210_19821_38783#PolymorphicMapType_13210| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13210_19821_38783#PolymorphicMapType_13210| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_19821_19822) ) (!  (not (select (|PolymorphicMapType_13210_19821_19822#PolymorphicMapType_13210| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13210_19821_19822#PolymorphicMapType_13210| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_19821_3133) ) (!  (not (select (|PolymorphicMapType_13210_19821_3133#PolymorphicMapType_13210| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13210_19821_3133#PolymorphicMapType_13210| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_19821_12735) ) (!  (not (select (|PolymorphicMapType_13210_19821_12735#PolymorphicMapType_13210| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13210_19821_12735#PolymorphicMapType_13210| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_19821_53) ) (!  (not (select (|PolymorphicMapType_13210_19821_53#PolymorphicMapType_13210| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13210_19821_53#PolymorphicMapType_13210| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_12721_26421) ) (!  (not (select (|PolymorphicMapType_13210_12721_37735#PolymorphicMapType_13210| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13210_12721_37735#PolymorphicMapType_13210| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_12721_19822) ) (!  (not (select (|PolymorphicMapType_13210_12721_19822#PolymorphicMapType_13210| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13210_12721_19822#PolymorphicMapType_13210| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_18751_3133) ) (!  (not (select (|PolymorphicMapType_13210_12721_3133#PolymorphicMapType_13210| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13210_12721_3133#PolymorphicMapType_13210| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_12734_12735) ) (!  (not (select (|PolymorphicMapType_13210_12721_12735#PolymorphicMapType_13210| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13210_12721_12735#PolymorphicMapType_13210| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_12721_53) ) (!  (not (select (|PolymorphicMapType_13210_12721_53#PolymorphicMapType_13210| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13210_12721_53#PolymorphicMapType_13210| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_12661) (xs T@Seq_18798) (j Int) ) (! (dummyFunction_3658 (|fun_P#triggerStateless| xs j))
 :qid |stdinbpl.595:15|
 :skolemid |59|
 :pattern ( (|fun_P'| Heap@@0 xs j))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_12661) (xs@@0 T@Seq_18798) (j@@0 Int) ) (! (dummyFunction_3658 (|fun_f#triggerStateless| xs@@0 j@@0))
 :qid |stdinbpl.810:15|
 :skolemid |75|
 :pattern ( (|fun_f'| Heap@@1 xs@@0 j@@0))
)))
(assert (forall ((s@@1 T@Seq_18798) (n@@1 Int) (j@@1 Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length_8337| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j@@1 n@@1) n@@1) j@@1) (= (|Seq#Index_8337| (|Seq#Drop_8337| s@@1 n@@1) j@@1) (|Seq#Index_8337| s@@1 (|Seq#Add| j@@1 n@@1)))))
 :qid |stdinbpl.330:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_8337| (|Seq#Drop_8337| s@@1 n@@1) j@@1))
)))
(assert (forall ((s@@2 T@Seq_3011) (n@@2 Int) (j@@2 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@2)) (< j@@2 (- (|Seq#Length_3011| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@2 n@@2) n@@2) j@@2) (= (|Seq#Index_3011| (|Seq#Drop_3011| s@@2 n@@2) j@@2) (|Seq#Index_3011| s@@2 (|Seq#Add| j@@2 n@@2)))))
 :qid |stdinbpl.330:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3011| (|Seq#Drop_3011| s@@2 n@@2) j@@2))
)))
(assert (= (|Seq#Length_8337| |Seq#Empty_8337|) 0))
(assert (= (|Seq#Length_3011| |Seq#Empty_3011|) 0))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_8459_8460 (P x))
 :qid |stdinbpl.1024:15|
 :skolemid |91|
 :pattern ( (P x))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12661) (x@@0 T@Ref) ) (! (dummyFunction_3658 (|get_P#triggerStateless| x@@0))
 :qid |stdinbpl.761:15|
 :skolemid |72|
 :pattern ( (|get_P'| Heap@@2 x@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12661) (x@@1 T@Ref) ) (! (dummyFunction_3658 (|get_f#triggerStateless| x@@1))
 :qid |stdinbpl.974:15|
 :skolemid |88|
 :pattern ( (|get_f'| Heap@@3 x@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12661) (x@@2 T@Ref) ) (! (|P#everUsed_8459| (P x@@2))
 :qid |stdinbpl.1043:15|
 :skolemid |95|
 :pattern ( (|P#trigger_8459| Heap@@4 (P x@@2)))
)))
(assert (forall ((s@@3 T@Seq_18798) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_8337| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_8337| (|Seq#Update_8337| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_8337| (|Seq#Update_8337| s@@3 i v) n@@3) (|Seq#Index_8337| s@@3 n@@3)))))
 :qid |stdinbpl.285:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_8337| (|Seq#Update_8337| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_8337| s@@3 n@@3) (|Seq#Update_8337| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3011) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3011| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3011| (|Seq#Update_3011| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3011| (|Seq#Update_3011| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3011| s@@4 n@@4)))))
 :qid |stdinbpl.285:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3011| (|Seq#Update_3011| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3011| s@@4 n@@4) (|Seq#Update_3011| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_18798) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_8337| s@@5)) (= (|Seq#Length_8337| (|Seq#Take_8337| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_8337| s@@5) n@@5) (= (|Seq#Length_8337| (|Seq#Take_8337| s@@5 n@@5)) (|Seq#Length_8337| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_8337| (|Seq#Take_8337| s@@5 n@@5)) 0)))
 :qid |stdinbpl.296:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_8337| (|Seq#Take_8337| s@@5 n@@5)))
 :pattern ( (|Seq#Take_8337| s@@5 n@@5) (|Seq#Length_8337| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3011) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3011| s@@6)) (= (|Seq#Length_3011| (|Seq#Take_3011| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3011| s@@6) n@@6) (= (|Seq#Length_3011| (|Seq#Take_3011| s@@6 n@@6)) (|Seq#Length_3011| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3011| (|Seq#Take_3011| s@@6 n@@6)) 0)))
 :qid |stdinbpl.296:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3011| (|Seq#Take_3011| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3011| s@@6 n@@6) (|Seq#Length_3011| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3011| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.570:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_18798) (x@@3 T@Ref) ) (!  (=> (|Seq#Contains_18798| s@@7 x@@3) (and (and (<= 0 (|Seq#Skolem_18798| s@@7 x@@3)) (< (|Seq#Skolem_18798| s@@7 x@@3) (|Seq#Length_8337| s@@7))) (= (|Seq#Index_8337| s@@7 (|Seq#Skolem_18798| s@@7 x@@3)) x@@3)))
 :qid |stdinbpl.428:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_18798| s@@7 x@@3))
)))
(assert (forall ((s@@8 T@Seq_3011) (x@@4 Int) ) (!  (=> (|Seq#Contains_3011| s@@8 x@@4) (and (and (<= 0 (|Seq#Skolem_3011| s@@8 x@@4)) (< (|Seq#Skolem_3011| s@@8 x@@4) (|Seq#Length_3011| s@@8))) (= (|Seq#Index_3011| s@@8 (|Seq#Skolem_3011| s@@8 x@@4)) x@@4)))
 :qid |stdinbpl.428:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3011| s@@8 x@@4))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12661) (x@@5 T@Ref) ) (!  (and (= (get_P Heap@@5 x@@5) (|get_P'| Heap@@5 x@@5)) (dummyFunction_3658 (|get_P#triggerStateless| x@@5)))
 :qid |stdinbpl.757:15|
 :skolemid |71|
 :pattern ( (get_P Heap@@5 x@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_12661) (x@@6 T@Ref) ) (!  (and (= (get_f Heap@@6 x@@6) (|get_f'| Heap@@6 x@@6)) (dummyFunction_3658 (|get_f#triggerStateless| x@@6)))
 :qid |stdinbpl.970:15|
 :skolemid |87|
 :pattern ( (get_f Heap@@6 x@@6))
)))
(assert (forall ((s@@9 T@Seq_18798) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_8337| s@@9 n@@7) s@@9))
 :qid |stdinbpl.412:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_8337| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3011) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3011| s@@10 n@@8) s@@10))
 :qid |stdinbpl.412:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3011| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@3 Int) ) (! (= (|Seq#Sub| i@@1 j@@3) (- i@@1 j@@3))
 :qid |stdinbpl.265:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@3))
)))
(assert (forall ((i@@2 Int) (j@@4 Int) ) (! (= (|Seq#Add| i@@2 j@@4) (+ i@@2 j@@4))
 :qid |stdinbpl.263:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12661) (ExhaleHeap T@PolymorphicMapType_12661) (Mask@@0 T@PolymorphicMapType_12682) (pm_f_20 T@Field_19821_19822) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_19821_19822 Mask@@0 null pm_f_20) (IsPredicateField_8459_8460 pm_f_20)) (= (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@7) null (PredicateMaskField_8459 pm_f_20)) (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| ExhaleHeap) null (PredicateMaskField_8459 pm_f_20)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap Mask@@0) (IsPredicateField_8459_8460 pm_f_20) (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| ExhaleHeap) null (PredicateMaskField_8459 pm_f_20)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12661) (ExhaleHeap@@0 T@PolymorphicMapType_12661) (Mask@@1 T@PolymorphicMapType_12682) (pm_f_20@@0 T@Field_12721_19822) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_12721_19822 Mask@@1 null pm_f_20@@0) (IsPredicateField_12721_36251 pm_f_20@@0)) (= (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@8) null (PredicateMaskField_12721 pm_f_20@@0)) (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| ExhaleHeap@@0) null (PredicateMaskField_12721 pm_f_20@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@0 Mask@@1) (IsPredicateField_12721_36251 pm_f_20@@0) (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| ExhaleHeap@@0) null (PredicateMaskField_12721 pm_f_20@@0)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12661) (ExhaleHeap@@1 T@PolymorphicMapType_12661) (Mask@@2 T@PolymorphicMapType_12682) (pm_f_20@@1 T@Field_19821_19822) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_19821_19822 Mask@@2 null pm_f_20@@1) (IsWandField_19821_39948 pm_f_20@@1)) (= (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@9) null (WandMaskField_19821 pm_f_20@@1)) (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| ExhaleHeap@@1) null (WandMaskField_19821 pm_f_20@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@2) (IsWandField_19821_39948 pm_f_20@@1) (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| ExhaleHeap@@1) null (WandMaskField_19821 pm_f_20@@1)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12661) (ExhaleHeap@@2 T@PolymorphicMapType_12661) (Mask@@3 T@PolymorphicMapType_12682) (pm_f_20@@2 T@Field_12721_19822) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_12721_19822 Mask@@3 null pm_f_20@@2) (IsWandField_12721_39591 pm_f_20@@2)) (= (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@10) null (WandMaskField_12721 pm_f_20@@2)) (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| ExhaleHeap@@2) null (WandMaskField_12721 pm_f_20@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@3) (IsWandField_12721_39591 pm_f_20@@2) (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| ExhaleHeap@@2) null (WandMaskField_12721 pm_f_20@@2)))
)))
(assert (forall ((x@@7 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_18798| (|Seq#Singleton_8337| x@@7) y) (= x@@7 y))
 :qid |stdinbpl.553:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_18798| (|Seq#Singleton_8337| x@@7) y))
)))
(assert (forall ((x@@8 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3011| (|Seq#Singleton_3011| x@@8) y@@0) (= x@@8 y@@0))
 :qid |stdinbpl.553:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3011| (|Seq#Singleton_3011| x@@8) y@@0))
)))
(assert (forall ((s@@11 T@Seq_18798) (n@@9 Int) (j@@5 Int) ) (!  (=> (and (and (<= 0 j@@5) (< j@@5 n@@9)) (< j@@5 (|Seq#Length_8337| s@@11))) (= (|Seq#Index_8337| (|Seq#Take_8337| s@@11 n@@9) j@@5) (|Seq#Index_8337| s@@11 j@@5)))
 :qid |stdinbpl.304:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_8337| (|Seq#Take_8337| s@@11 n@@9) j@@5))
 :pattern ( (|Seq#Index_8337| s@@11 j@@5) (|Seq#Take_8337| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3011) (n@@10 Int) (j@@6 Int) ) (!  (=> (and (and (<= 0 j@@6) (< j@@6 n@@10)) (< j@@6 (|Seq#Length_3011| s@@12))) (= (|Seq#Index_3011| (|Seq#Take_3011| s@@12 n@@10) j@@6) (|Seq#Index_3011| s@@12 j@@6)))
 :qid |stdinbpl.304:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3011| (|Seq#Take_3011| s@@12 n@@10) j@@6))
 :pattern ( (|Seq#Index_3011| s@@12 j@@6) (|Seq#Take_3011| s@@12 n@@10))
)))
(assert (forall ((x@@9 T@Ref) (x2 T@Ref) ) (!  (=> (= (P x@@9) (P x2)) (= x@@9 x2))
 :qid |stdinbpl.1034:15|
 :skolemid |93|
 :pattern ( (P x@@9) (P x2))
)))
(assert (forall ((x@@10 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|P#sm| x@@10) (|P#sm| x2@@0)) (= x@@10 x2@@0))
 :qid |stdinbpl.1038:15|
 :skolemid |94|
 :pattern ( (|P#sm| x@@10) (|P#sm| x2@@0))
)))
(assert (forall ((s@@13 T@Seq_18798) (t T@Seq_18798) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_8337| s@@13))) (< n@@11 (|Seq#Length_8337| (|Seq#Append_18798| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_8337| s@@13)) (|Seq#Length_8337| s@@13)) n@@11) (= (|Seq#Take_8337| (|Seq#Append_18798| s@@13 t) n@@11) (|Seq#Append_18798| s@@13 (|Seq#Take_8337| t (|Seq#Sub| n@@11 (|Seq#Length_8337| s@@13)))))))
 :qid |stdinbpl.389:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_8337| (|Seq#Append_18798| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3011) (t@@0 T@Seq_3011) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3011| s@@14))) (< n@@12 (|Seq#Length_3011| (|Seq#Append_3011| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3011| s@@14)) (|Seq#Length_3011| s@@14)) n@@12) (= (|Seq#Take_3011| (|Seq#Append_3011| s@@14 t@@0) n@@12) (|Seq#Append_3011| s@@14 (|Seq#Take_3011| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3011| s@@14)))))))
 :qid |stdinbpl.389:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3011| (|Seq#Append_3011| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12661) (ExhaleHeap@@3 T@PolymorphicMapType_12661) (Mask@@4 T@PolymorphicMapType_12682) (pm_f_20@@3 T@Field_19821_19822) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_19821_19822 Mask@@4 null pm_f_20@@3) (IsPredicateField_8459_8460 pm_f_20@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_20 T@Ref) (f_53 T@Field_12721_53) ) (!  (=> (select (|PolymorphicMapType_13210_12721_53#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@11) null (PredicateMaskField_8459 pm_f_20@@3))) o2_20 f_53) (= (select (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| Heap@@11) o2_20 f_53) (select (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| ExhaleHeap@@3) o2_20 f_53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| ExhaleHeap@@3) o2_20 f_53))
)) (forall ((o2_20@@0 T@Ref) (f_53@@0 T@Field_12734_12735) ) (!  (=> (select (|PolymorphicMapType_13210_12721_12735#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@11) null (PredicateMaskField_8459 pm_f_20@@3))) o2_20@@0 f_53@@0) (= (select (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| Heap@@11) o2_20@@0 f_53@@0) (select (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| ExhaleHeap@@3) o2_20@@0 f_53@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| ExhaleHeap@@3) o2_20@@0 f_53@@0))
))) (forall ((o2_20@@1 T@Ref) (f_53@@1 T@Field_18751_3133) ) (!  (=> (select (|PolymorphicMapType_13210_12721_3133#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@11) null (PredicateMaskField_8459 pm_f_20@@3))) o2_20@@1 f_53@@1) (= (select (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| Heap@@11) o2_20@@1 f_53@@1) (select (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| ExhaleHeap@@3) o2_20@@1 f_53@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| ExhaleHeap@@3) o2_20@@1 f_53@@1))
))) (forall ((o2_20@@2 T@Ref) (f_53@@2 T@Field_12721_19822) ) (!  (=> (select (|PolymorphicMapType_13210_12721_19822#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@11) null (PredicateMaskField_8459 pm_f_20@@3))) o2_20@@2 f_53@@2) (= (select (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| Heap@@11) o2_20@@2 f_53@@2) (select (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| ExhaleHeap@@3) o2_20@@2 f_53@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| ExhaleHeap@@3) o2_20@@2 f_53@@2))
))) (forall ((o2_20@@3 T@Ref) (f_53@@3 T@Field_12721_26421) ) (!  (=> (select (|PolymorphicMapType_13210_12721_37735#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@11) null (PredicateMaskField_8459 pm_f_20@@3))) o2_20@@3 f_53@@3) (= (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@11) o2_20@@3 f_53@@3) (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| ExhaleHeap@@3) o2_20@@3 f_53@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| ExhaleHeap@@3) o2_20@@3 f_53@@3))
))) (forall ((o2_20@@4 T@Ref) (f_53@@4 T@Field_19821_53) ) (!  (=> (select (|PolymorphicMapType_13210_19821_53#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@11) null (PredicateMaskField_8459 pm_f_20@@3))) o2_20@@4 f_53@@4) (= (select (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| Heap@@11) o2_20@@4 f_53@@4) (select (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| ExhaleHeap@@3) o2_20@@4 f_53@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| ExhaleHeap@@3) o2_20@@4 f_53@@4))
))) (forall ((o2_20@@5 T@Ref) (f_53@@5 T@Field_19821_12735) ) (!  (=> (select (|PolymorphicMapType_13210_19821_12735#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@11) null (PredicateMaskField_8459 pm_f_20@@3))) o2_20@@5 f_53@@5) (= (select (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| Heap@@11) o2_20@@5 f_53@@5) (select (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| ExhaleHeap@@3) o2_20@@5 f_53@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| ExhaleHeap@@3) o2_20@@5 f_53@@5))
))) (forall ((o2_20@@6 T@Ref) (f_53@@6 T@Field_19821_3133) ) (!  (=> (select (|PolymorphicMapType_13210_19821_3133#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@11) null (PredicateMaskField_8459 pm_f_20@@3))) o2_20@@6 f_53@@6) (= (select (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| Heap@@11) o2_20@@6 f_53@@6) (select (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| ExhaleHeap@@3) o2_20@@6 f_53@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| ExhaleHeap@@3) o2_20@@6 f_53@@6))
))) (forall ((o2_20@@7 T@Ref) (f_53@@7 T@Field_19821_19822) ) (!  (=> (select (|PolymorphicMapType_13210_19821_19822#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@11) null (PredicateMaskField_8459 pm_f_20@@3))) o2_20@@7 f_53@@7) (= (select (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@11) o2_20@@7 f_53@@7) (select (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| ExhaleHeap@@3) o2_20@@7 f_53@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| ExhaleHeap@@3) o2_20@@7 f_53@@7))
))) (forall ((o2_20@@8 T@Ref) (f_53@@8 T@Field_26416_26421) ) (!  (=> (select (|PolymorphicMapType_13210_19821_38783#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@11) null (PredicateMaskField_8459 pm_f_20@@3))) o2_20@@8 f_53@@8) (= (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@11) o2_20@@8 f_53@@8) (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| ExhaleHeap@@3) o2_20@@8 f_53@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| ExhaleHeap@@3) o2_20@@8 f_53@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@4) (IsPredicateField_8459_8460 pm_f_20@@3))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_12661) (ExhaleHeap@@4 T@PolymorphicMapType_12661) (Mask@@5 T@PolymorphicMapType_12682) (pm_f_20@@4 T@Field_12721_19822) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_12721_19822 Mask@@5 null pm_f_20@@4) (IsPredicateField_12721_36251 pm_f_20@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_20@@9 T@Ref) (f_53@@9 T@Field_12721_53) ) (!  (=> (select (|PolymorphicMapType_13210_12721_53#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@12) null (PredicateMaskField_12721 pm_f_20@@4))) o2_20@@9 f_53@@9) (= (select (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| Heap@@12) o2_20@@9 f_53@@9) (select (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| ExhaleHeap@@4) o2_20@@9 f_53@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| ExhaleHeap@@4) o2_20@@9 f_53@@9))
)) (forall ((o2_20@@10 T@Ref) (f_53@@10 T@Field_12734_12735) ) (!  (=> (select (|PolymorphicMapType_13210_12721_12735#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@12) null (PredicateMaskField_12721 pm_f_20@@4))) o2_20@@10 f_53@@10) (= (select (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| Heap@@12) o2_20@@10 f_53@@10) (select (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| ExhaleHeap@@4) o2_20@@10 f_53@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| ExhaleHeap@@4) o2_20@@10 f_53@@10))
))) (forall ((o2_20@@11 T@Ref) (f_53@@11 T@Field_18751_3133) ) (!  (=> (select (|PolymorphicMapType_13210_12721_3133#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@12) null (PredicateMaskField_12721 pm_f_20@@4))) o2_20@@11 f_53@@11) (= (select (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| Heap@@12) o2_20@@11 f_53@@11) (select (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| ExhaleHeap@@4) o2_20@@11 f_53@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| ExhaleHeap@@4) o2_20@@11 f_53@@11))
))) (forall ((o2_20@@12 T@Ref) (f_53@@12 T@Field_12721_19822) ) (!  (=> (select (|PolymorphicMapType_13210_12721_19822#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@12) null (PredicateMaskField_12721 pm_f_20@@4))) o2_20@@12 f_53@@12) (= (select (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| Heap@@12) o2_20@@12 f_53@@12) (select (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| ExhaleHeap@@4) o2_20@@12 f_53@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| ExhaleHeap@@4) o2_20@@12 f_53@@12))
))) (forall ((o2_20@@13 T@Ref) (f_53@@13 T@Field_12721_26421) ) (!  (=> (select (|PolymorphicMapType_13210_12721_37735#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@12) null (PredicateMaskField_12721 pm_f_20@@4))) o2_20@@13 f_53@@13) (= (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@12) o2_20@@13 f_53@@13) (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| ExhaleHeap@@4) o2_20@@13 f_53@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| ExhaleHeap@@4) o2_20@@13 f_53@@13))
))) (forall ((o2_20@@14 T@Ref) (f_53@@14 T@Field_19821_53) ) (!  (=> (select (|PolymorphicMapType_13210_19821_53#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@12) null (PredicateMaskField_12721 pm_f_20@@4))) o2_20@@14 f_53@@14) (= (select (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| Heap@@12) o2_20@@14 f_53@@14) (select (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| ExhaleHeap@@4) o2_20@@14 f_53@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| ExhaleHeap@@4) o2_20@@14 f_53@@14))
))) (forall ((o2_20@@15 T@Ref) (f_53@@15 T@Field_19821_12735) ) (!  (=> (select (|PolymorphicMapType_13210_19821_12735#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@12) null (PredicateMaskField_12721 pm_f_20@@4))) o2_20@@15 f_53@@15) (= (select (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| Heap@@12) o2_20@@15 f_53@@15) (select (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| ExhaleHeap@@4) o2_20@@15 f_53@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| ExhaleHeap@@4) o2_20@@15 f_53@@15))
))) (forall ((o2_20@@16 T@Ref) (f_53@@16 T@Field_19821_3133) ) (!  (=> (select (|PolymorphicMapType_13210_19821_3133#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@12) null (PredicateMaskField_12721 pm_f_20@@4))) o2_20@@16 f_53@@16) (= (select (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| Heap@@12) o2_20@@16 f_53@@16) (select (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| ExhaleHeap@@4) o2_20@@16 f_53@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| ExhaleHeap@@4) o2_20@@16 f_53@@16))
))) (forall ((o2_20@@17 T@Ref) (f_53@@17 T@Field_19821_19822) ) (!  (=> (select (|PolymorphicMapType_13210_19821_19822#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@12) null (PredicateMaskField_12721 pm_f_20@@4))) o2_20@@17 f_53@@17) (= (select (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@12) o2_20@@17 f_53@@17) (select (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| ExhaleHeap@@4) o2_20@@17 f_53@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| ExhaleHeap@@4) o2_20@@17 f_53@@17))
))) (forall ((o2_20@@18 T@Ref) (f_53@@18 T@Field_26416_26421) ) (!  (=> (select (|PolymorphicMapType_13210_19821_38783#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@12) null (PredicateMaskField_12721 pm_f_20@@4))) o2_20@@18 f_53@@18) (= (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@12) o2_20@@18 f_53@@18) (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| ExhaleHeap@@4) o2_20@@18 f_53@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| ExhaleHeap@@4) o2_20@@18 f_53@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@5) (IsPredicateField_12721_36251 pm_f_20@@4))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_12661) (ExhaleHeap@@5 T@PolymorphicMapType_12661) (Mask@@6 T@PolymorphicMapType_12682) (pm_f_20@@5 T@Field_19821_19822) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_19821_19822 Mask@@6 null pm_f_20@@5) (IsWandField_19821_39948 pm_f_20@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_20@@19 T@Ref) (f_53@@19 T@Field_12721_53) ) (!  (=> (select (|PolymorphicMapType_13210_12721_53#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@13) null (WandMaskField_19821 pm_f_20@@5))) o2_20@@19 f_53@@19) (= (select (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| Heap@@13) o2_20@@19 f_53@@19) (select (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| ExhaleHeap@@5) o2_20@@19 f_53@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| ExhaleHeap@@5) o2_20@@19 f_53@@19))
)) (forall ((o2_20@@20 T@Ref) (f_53@@20 T@Field_12734_12735) ) (!  (=> (select (|PolymorphicMapType_13210_12721_12735#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@13) null (WandMaskField_19821 pm_f_20@@5))) o2_20@@20 f_53@@20) (= (select (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| Heap@@13) o2_20@@20 f_53@@20) (select (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| ExhaleHeap@@5) o2_20@@20 f_53@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| ExhaleHeap@@5) o2_20@@20 f_53@@20))
))) (forall ((o2_20@@21 T@Ref) (f_53@@21 T@Field_18751_3133) ) (!  (=> (select (|PolymorphicMapType_13210_12721_3133#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@13) null (WandMaskField_19821 pm_f_20@@5))) o2_20@@21 f_53@@21) (= (select (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| Heap@@13) o2_20@@21 f_53@@21) (select (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| ExhaleHeap@@5) o2_20@@21 f_53@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| ExhaleHeap@@5) o2_20@@21 f_53@@21))
))) (forall ((o2_20@@22 T@Ref) (f_53@@22 T@Field_12721_19822) ) (!  (=> (select (|PolymorphicMapType_13210_12721_19822#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@13) null (WandMaskField_19821 pm_f_20@@5))) o2_20@@22 f_53@@22) (= (select (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| Heap@@13) o2_20@@22 f_53@@22) (select (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| ExhaleHeap@@5) o2_20@@22 f_53@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| ExhaleHeap@@5) o2_20@@22 f_53@@22))
))) (forall ((o2_20@@23 T@Ref) (f_53@@23 T@Field_12721_26421) ) (!  (=> (select (|PolymorphicMapType_13210_12721_37735#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@13) null (WandMaskField_19821 pm_f_20@@5))) o2_20@@23 f_53@@23) (= (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@13) o2_20@@23 f_53@@23) (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| ExhaleHeap@@5) o2_20@@23 f_53@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| ExhaleHeap@@5) o2_20@@23 f_53@@23))
))) (forall ((o2_20@@24 T@Ref) (f_53@@24 T@Field_19821_53) ) (!  (=> (select (|PolymorphicMapType_13210_19821_53#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@13) null (WandMaskField_19821 pm_f_20@@5))) o2_20@@24 f_53@@24) (= (select (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| Heap@@13) o2_20@@24 f_53@@24) (select (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| ExhaleHeap@@5) o2_20@@24 f_53@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| ExhaleHeap@@5) o2_20@@24 f_53@@24))
))) (forall ((o2_20@@25 T@Ref) (f_53@@25 T@Field_19821_12735) ) (!  (=> (select (|PolymorphicMapType_13210_19821_12735#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@13) null (WandMaskField_19821 pm_f_20@@5))) o2_20@@25 f_53@@25) (= (select (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| Heap@@13) o2_20@@25 f_53@@25) (select (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| ExhaleHeap@@5) o2_20@@25 f_53@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| ExhaleHeap@@5) o2_20@@25 f_53@@25))
))) (forall ((o2_20@@26 T@Ref) (f_53@@26 T@Field_19821_3133) ) (!  (=> (select (|PolymorphicMapType_13210_19821_3133#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@13) null (WandMaskField_19821 pm_f_20@@5))) o2_20@@26 f_53@@26) (= (select (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| Heap@@13) o2_20@@26 f_53@@26) (select (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| ExhaleHeap@@5) o2_20@@26 f_53@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| ExhaleHeap@@5) o2_20@@26 f_53@@26))
))) (forall ((o2_20@@27 T@Ref) (f_53@@27 T@Field_19821_19822) ) (!  (=> (select (|PolymorphicMapType_13210_19821_19822#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@13) null (WandMaskField_19821 pm_f_20@@5))) o2_20@@27 f_53@@27) (= (select (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@13) o2_20@@27 f_53@@27) (select (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| ExhaleHeap@@5) o2_20@@27 f_53@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| ExhaleHeap@@5) o2_20@@27 f_53@@27))
))) (forall ((o2_20@@28 T@Ref) (f_53@@28 T@Field_26416_26421) ) (!  (=> (select (|PolymorphicMapType_13210_19821_38783#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@13) null (WandMaskField_19821 pm_f_20@@5))) o2_20@@28 f_53@@28) (= (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@13) o2_20@@28 f_53@@28) (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| ExhaleHeap@@5) o2_20@@28 f_53@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| ExhaleHeap@@5) o2_20@@28 f_53@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@6) (IsWandField_19821_39948 pm_f_20@@5))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_12661) (ExhaleHeap@@6 T@PolymorphicMapType_12661) (Mask@@7 T@PolymorphicMapType_12682) (pm_f_20@@6 T@Field_12721_19822) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_12721_19822 Mask@@7 null pm_f_20@@6) (IsWandField_12721_39591 pm_f_20@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_20@@29 T@Ref) (f_53@@29 T@Field_12721_53) ) (!  (=> (select (|PolymorphicMapType_13210_12721_53#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@14) null (WandMaskField_12721 pm_f_20@@6))) o2_20@@29 f_53@@29) (= (select (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| Heap@@14) o2_20@@29 f_53@@29) (select (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| ExhaleHeap@@6) o2_20@@29 f_53@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| ExhaleHeap@@6) o2_20@@29 f_53@@29))
)) (forall ((o2_20@@30 T@Ref) (f_53@@30 T@Field_12734_12735) ) (!  (=> (select (|PolymorphicMapType_13210_12721_12735#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@14) null (WandMaskField_12721 pm_f_20@@6))) o2_20@@30 f_53@@30) (= (select (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| Heap@@14) o2_20@@30 f_53@@30) (select (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| ExhaleHeap@@6) o2_20@@30 f_53@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| ExhaleHeap@@6) o2_20@@30 f_53@@30))
))) (forall ((o2_20@@31 T@Ref) (f_53@@31 T@Field_18751_3133) ) (!  (=> (select (|PolymorphicMapType_13210_12721_3133#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@14) null (WandMaskField_12721 pm_f_20@@6))) o2_20@@31 f_53@@31) (= (select (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| Heap@@14) o2_20@@31 f_53@@31) (select (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| ExhaleHeap@@6) o2_20@@31 f_53@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| ExhaleHeap@@6) o2_20@@31 f_53@@31))
))) (forall ((o2_20@@32 T@Ref) (f_53@@32 T@Field_12721_19822) ) (!  (=> (select (|PolymorphicMapType_13210_12721_19822#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@14) null (WandMaskField_12721 pm_f_20@@6))) o2_20@@32 f_53@@32) (= (select (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| Heap@@14) o2_20@@32 f_53@@32) (select (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| ExhaleHeap@@6) o2_20@@32 f_53@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| ExhaleHeap@@6) o2_20@@32 f_53@@32))
))) (forall ((o2_20@@33 T@Ref) (f_53@@33 T@Field_12721_26421) ) (!  (=> (select (|PolymorphicMapType_13210_12721_37735#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@14) null (WandMaskField_12721 pm_f_20@@6))) o2_20@@33 f_53@@33) (= (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@14) o2_20@@33 f_53@@33) (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| ExhaleHeap@@6) o2_20@@33 f_53@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| ExhaleHeap@@6) o2_20@@33 f_53@@33))
))) (forall ((o2_20@@34 T@Ref) (f_53@@34 T@Field_19821_53) ) (!  (=> (select (|PolymorphicMapType_13210_19821_53#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@14) null (WandMaskField_12721 pm_f_20@@6))) o2_20@@34 f_53@@34) (= (select (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| Heap@@14) o2_20@@34 f_53@@34) (select (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| ExhaleHeap@@6) o2_20@@34 f_53@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| ExhaleHeap@@6) o2_20@@34 f_53@@34))
))) (forall ((o2_20@@35 T@Ref) (f_53@@35 T@Field_19821_12735) ) (!  (=> (select (|PolymorphicMapType_13210_19821_12735#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@14) null (WandMaskField_12721 pm_f_20@@6))) o2_20@@35 f_53@@35) (= (select (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| Heap@@14) o2_20@@35 f_53@@35) (select (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| ExhaleHeap@@6) o2_20@@35 f_53@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| ExhaleHeap@@6) o2_20@@35 f_53@@35))
))) (forall ((o2_20@@36 T@Ref) (f_53@@36 T@Field_19821_3133) ) (!  (=> (select (|PolymorphicMapType_13210_19821_3133#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@14) null (WandMaskField_12721 pm_f_20@@6))) o2_20@@36 f_53@@36) (= (select (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| Heap@@14) o2_20@@36 f_53@@36) (select (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| ExhaleHeap@@6) o2_20@@36 f_53@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| ExhaleHeap@@6) o2_20@@36 f_53@@36))
))) (forall ((o2_20@@37 T@Ref) (f_53@@37 T@Field_19821_19822) ) (!  (=> (select (|PolymorphicMapType_13210_19821_19822#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@14) null (WandMaskField_12721 pm_f_20@@6))) o2_20@@37 f_53@@37) (= (select (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@14) o2_20@@37 f_53@@37) (select (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| ExhaleHeap@@6) o2_20@@37 f_53@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| ExhaleHeap@@6) o2_20@@37 f_53@@37))
))) (forall ((o2_20@@38 T@Ref) (f_53@@38 T@Field_26416_26421) ) (!  (=> (select (|PolymorphicMapType_13210_19821_38783#PolymorphicMapType_13210| (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@14) null (WandMaskField_12721 pm_f_20@@6))) o2_20@@38 f_53@@38) (= (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@14) o2_20@@38 f_53@@38) (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| ExhaleHeap@@6) o2_20@@38 f_53@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| ExhaleHeap@@6) o2_20@@38 f_53@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@7) (IsWandField_12721_39591 pm_f_20@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@15 T@PolymorphicMapType_12661) (ExhaleHeap@@7 T@PolymorphicMapType_12661) (Mask@@8 T@PolymorphicMapType_12682) (o_41 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| Heap@@15) o_41 $allocated) (select (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| ExhaleHeap@@7) o_41 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| ExhaleHeap@@7) o_41 $allocated))
)))
(assert (forall ((p T@Field_19821_19822) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_19821_19821 p v_1 p w))
 :qid |stdinbpl.207:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_19821_19821 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_12721_19822) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_12721_12721 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.207:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12721_12721 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_18798) (s1 T@Seq_18798) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_8337|)) (not (= s1 |Seq#Empty_8337|))) (<= (|Seq#Length_8337| s0) n@@13)) (< n@@13 (|Seq#Length_8337| (|Seq#Append_18798| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_8337| s0)) (|Seq#Length_8337| s0)) n@@13) (= (|Seq#Index_8337| (|Seq#Append_18798| s0 s1) n@@13) (|Seq#Index_8337| s1 (|Seq#Sub| n@@13 (|Seq#Length_8337| s0))))))
 :qid |stdinbpl.276:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_8337| (|Seq#Append_18798| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3011) (s1@@0 T@Seq_3011) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3011|)) (not (= s1@@0 |Seq#Empty_3011|))) (<= (|Seq#Length_3011| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3011| (|Seq#Append_3011| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3011| s0@@0)) (|Seq#Length_3011| s0@@0)) n@@14) (= (|Seq#Index_3011| (|Seq#Append_3011| s0@@0 s1@@0) n@@14) (|Seq#Index_3011| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3011| s0@@0))))))
 :qid |stdinbpl.276:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3011| (|Seq#Append_3011| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_8321_3133 f_7)))
(assert  (not (IsWandField_8321_3133 f_7)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_12661) (ExhaleHeap@@8 T@PolymorphicMapType_12661) (Mask@@9 T@PolymorphicMapType_12682) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@16 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_12682) (o_2@@9 T@Ref) (f_4@@9 T@Field_12721_26421) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_12682_8321_44588#PolymorphicMapType_12682| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_8321_46880 f_4@@9))) (not (IsWandField_8321_46896 f_4@@9))) (<= (select (|PolymorphicMapType_12682_8321_44588#PolymorphicMapType_12682| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_12682_8321_44588#PolymorphicMapType_12682| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_12682) (o_2@@10 T@Ref) (f_4@@10 T@Field_12734_12735) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_12682_8321_12735#PolymorphicMapType_12682| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_8321_12735 f_4@@10))) (not (IsWandField_8321_12735 f_4@@10))) (<= (select (|PolymorphicMapType_12682_8321_12735#PolymorphicMapType_12682| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_12682_8321_12735#PolymorphicMapType_12682| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_12682) (o_2@@11 T@Ref) (f_4@@11 T@Field_12721_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_12682_8321_53#PolymorphicMapType_12682| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_8321_53 f_4@@11))) (not (IsWandField_8321_53 f_4@@11))) (<= (select (|PolymorphicMapType_12682_8321_53#PolymorphicMapType_12682| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_12682_8321_53#PolymorphicMapType_12682| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_12682) (o_2@@12 T@Ref) (f_4@@12 T@Field_18751_3133) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_12682_8321_3133#PolymorphicMapType_12682| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_8321_3133 f_4@@12))) (not (IsWandField_8321_3133 f_4@@12))) (<= (select (|PolymorphicMapType_12682_8321_3133#PolymorphicMapType_12682| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_12682_8321_3133#PolymorphicMapType_12682| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_12682) (o_2@@13 T@Ref) (f_4@@13 T@Field_12721_19822) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_12682_8321_8460#PolymorphicMapType_12682| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_12721_36251 f_4@@13))) (not (IsWandField_12721_39591 f_4@@13))) (<= (select (|PolymorphicMapType_12682_8321_8460#PolymorphicMapType_12682| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_12682_8321_8460#PolymorphicMapType_12682| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_12682) (o_2@@14 T@Ref) (f_4@@14 T@Field_26416_26421) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_12682_8459_44174#PolymorphicMapType_12682| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_8459_46063 f_4@@14))) (not (IsWandField_8459_46079 f_4@@14))) (<= (select (|PolymorphicMapType_12682_8459_44174#PolymorphicMapType_12682| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_12682_8459_44174#PolymorphicMapType_12682| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_12682) (o_2@@15 T@Ref) (f_4@@15 T@Field_19821_12735) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_12682_8459_12735#PolymorphicMapType_12682| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_8459_12735 f_4@@15))) (not (IsWandField_8459_12735 f_4@@15))) (<= (select (|PolymorphicMapType_12682_8459_12735#PolymorphicMapType_12682| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_12682_8459_12735#PolymorphicMapType_12682| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_12682) (o_2@@16 T@Ref) (f_4@@16 T@Field_19821_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_12682_8459_53#PolymorphicMapType_12682| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_8459_53 f_4@@16))) (not (IsWandField_8459_53 f_4@@16))) (<= (select (|PolymorphicMapType_12682_8459_53#PolymorphicMapType_12682| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_12682_8459_53#PolymorphicMapType_12682| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_12682) (o_2@@17 T@Ref) (f_4@@17 T@Field_19821_3133) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_12682_8459_3133#PolymorphicMapType_12682| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_8459_3133 f_4@@17))) (not (IsWandField_8459_3133 f_4@@17))) (<= (select (|PolymorphicMapType_12682_8459_3133#PolymorphicMapType_12682| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_12682_8459_3133#PolymorphicMapType_12682| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_12682) (o_2@@18 T@Ref) (f_4@@18 T@Field_19821_19822) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_8459_8460 f_4@@18))) (not (IsWandField_19821_39948 f_4@@18))) (<= (select (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_12682) (o_2@@19 T@Ref) (f_4@@19 T@Field_26416_26421) ) (! (= (HasDirectPerm_19821_35963 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_12682_8459_44174#PolymorphicMapType_12682| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19821_35963 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_12682) (o_2@@20 T@Ref) (f_4@@20 T@Field_19821_19822) ) (! (= (HasDirectPerm_19821_19822 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19821_19822 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_12682) (o_2@@21 T@Ref) (f_4@@21 T@Field_19821_3133) ) (! (= (HasDirectPerm_19821_3133 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_12682_8459_3133#PolymorphicMapType_12682| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19821_3133 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_12682) (o_2@@22 T@Ref) (f_4@@22 T@Field_19821_12735) ) (! (= (HasDirectPerm_19821_12735 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_12682_8459_12735#PolymorphicMapType_12682| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19821_12735 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_12682) (o_2@@23 T@Ref) (f_4@@23 T@Field_19821_53) ) (! (= (HasDirectPerm_19821_53 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_12682_8459_53#PolymorphicMapType_12682| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19821_53 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_12682) (o_2@@24 T@Ref) (f_4@@24 T@Field_12721_26421) ) (! (= (HasDirectPerm_12721_34802 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_12682_8321_44588#PolymorphicMapType_12682| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12721_34802 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_12682) (o_2@@25 T@Ref) (f_4@@25 T@Field_12721_19822) ) (! (= (HasDirectPerm_12721_19822 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_12682_8321_8460#PolymorphicMapType_12682| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12721_19822 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_12682) (o_2@@26 T@Ref) (f_4@@26 T@Field_18751_3133) ) (! (= (HasDirectPerm_12721_3133 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_12682_8321_3133#PolymorphicMapType_12682| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12721_3133 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_12682) (o_2@@27 T@Ref) (f_4@@27 T@Field_12734_12735) ) (! (= (HasDirectPerm_12721_12735 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_12682_8321_12735#PolymorphicMapType_12682| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12721_12735 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_12682) (o_2@@28 T@Ref) (f_4@@28 T@Field_12721_53) ) (! (= (HasDirectPerm_12721_53 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_12682_8321_53#PolymorphicMapType_12682| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12721_53 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.195:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3011| (|Seq#Range| q@min@@0 q@max@@0) j@@7) (+ q@min@@0 j@@7)))
 :qid |stdinbpl.568:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3011| (|Seq#Range| q@min@@0 q@max@@0) j@@7))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_12661) (ExhaleHeap@@9 T@PolymorphicMapType_12661) (Mask@@30 T@PolymorphicMapType_12682) (o_41@@0 T@Ref) (f_53@@39 T@Field_26416_26421) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_19821_35963 Mask@@30 o_41@@0 f_53@@39) (= (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@17) o_41@@0 f_53@@39) (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| ExhaleHeap@@9) o_41@@0 f_53@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| ExhaleHeap@@9) o_41@@0 f_53@@39))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_12661) (ExhaleHeap@@10 T@PolymorphicMapType_12661) (Mask@@31 T@PolymorphicMapType_12682) (o_41@@1 T@Ref) (f_53@@40 T@Field_19821_19822) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_19821_19822 Mask@@31 o_41@@1 f_53@@40) (= (select (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@18) o_41@@1 f_53@@40) (select (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| ExhaleHeap@@10) o_41@@1 f_53@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| ExhaleHeap@@10) o_41@@1 f_53@@40))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_12661) (ExhaleHeap@@11 T@PolymorphicMapType_12661) (Mask@@32 T@PolymorphicMapType_12682) (o_41@@2 T@Ref) (f_53@@41 T@Field_19821_3133) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_19821_3133 Mask@@32 o_41@@2 f_53@@41) (= (select (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| Heap@@19) o_41@@2 f_53@@41) (select (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| ExhaleHeap@@11) o_41@@2 f_53@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| ExhaleHeap@@11) o_41@@2 f_53@@41))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_12661) (ExhaleHeap@@12 T@PolymorphicMapType_12661) (Mask@@33 T@PolymorphicMapType_12682) (o_41@@3 T@Ref) (f_53@@42 T@Field_19821_12735) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_19821_12735 Mask@@33 o_41@@3 f_53@@42) (= (select (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| Heap@@20) o_41@@3 f_53@@42) (select (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| ExhaleHeap@@12) o_41@@3 f_53@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| ExhaleHeap@@12) o_41@@3 f_53@@42))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_12661) (ExhaleHeap@@13 T@PolymorphicMapType_12661) (Mask@@34 T@PolymorphicMapType_12682) (o_41@@4 T@Ref) (f_53@@43 T@Field_19821_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_19821_53 Mask@@34 o_41@@4 f_53@@43) (= (select (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| Heap@@21) o_41@@4 f_53@@43) (select (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| ExhaleHeap@@13) o_41@@4 f_53@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| ExhaleHeap@@13) o_41@@4 f_53@@43))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_12661) (ExhaleHeap@@14 T@PolymorphicMapType_12661) (Mask@@35 T@PolymorphicMapType_12682) (o_41@@5 T@Ref) (f_53@@44 T@Field_12721_26421) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_12721_34802 Mask@@35 o_41@@5 f_53@@44) (= (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@22) o_41@@5 f_53@@44) (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| ExhaleHeap@@14) o_41@@5 f_53@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| ExhaleHeap@@14) o_41@@5 f_53@@44))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_12661) (ExhaleHeap@@15 T@PolymorphicMapType_12661) (Mask@@36 T@PolymorphicMapType_12682) (o_41@@6 T@Ref) (f_53@@45 T@Field_12721_19822) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_12721_19822 Mask@@36 o_41@@6 f_53@@45) (= (select (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| Heap@@23) o_41@@6 f_53@@45) (select (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| ExhaleHeap@@15) o_41@@6 f_53@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| ExhaleHeap@@15) o_41@@6 f_53@@45))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_12661) (ExhaleHeap@@16 T@PolymorphicMapType_12661) (Mask@@37 T@PolymorphicMapType_12682) (o_41@@7 T@Ref) (f_53@@46 T@Field_18751_3133) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_12721_3133 Mask@@37 o_41@@7 f_53@@46) (= (select (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| Heap@@24) o_41@@7 f_53@@46) (select (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| ExhaleHeap@@16) o_41@@7 f_53@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| ExhaleHeap@@16) o_41@@7 f_53@@46))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_12661) (ExhaleHeap@@17 T@PolymorphicMapType_12661) (Mask@@38 T@PolymorphicMapType_12682) (o_41@@8 T@Ref) (f_53@@47 T@Field_12734_12735) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_12721_12735 Mask@@38 o_41@@8 f_53@@47) (= (select (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| Heap@@25) o_41@@8 f_53@@47) (select (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| ExhaleHeap@@17) o_41@@8 f_53@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| ExhaleHeap@@17) o_41@@8 f_53@@47))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_12661) (ExhaleHeap@@18 T@PolymorphicMapType_12661) (Mask@@39 T@PolymorphicMapType_12682) (o_41@@9 T@Ref) (f_53@@48 T@Field_12721_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_12721_53 Mask@@39 o_41@@9 f_53@@48) (= (select (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| Heap@@26) o_41@@9 f_53@@48) (select (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| ExhaleHeap@@18) o_41@@9 f_53@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| ExhaleHeap@@18) o_41@@9 f_53@@48))
)))
(assert (forall ((s0@@1 T@Seq_18798) (s1@@1 T@Seq_18798) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_8337|)) (not (= s1@@1 |Seq#Empty_8337|))) (= (|Seq#Length_8337| (|Seq#Append_18798| s0@@1 s1@@1)) (+ (|Seq#Length_8337| s0@@1) (|Seq#Length_8337| s1@@1))))
 :qid |stdinbpl.245:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_8337| (|Seq#Append_18798| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3011) (s1@@2 T@Seq_3011) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3011|)) (not (= s1@@2 |Seq#Empty_3011|))) (= (|Seq#Length_3011| (|Seq#Append_3011| s0@@2 s1@@2)) (+ (|Seq#Length_3011| s0@@2) (|Seq#Length_3011| s1@@2))))
 :qid |stdinbpl.245:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3011| (|Seq#Append_3011| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_12721_26421) ) (! (= (select (|PolymorphicMapType_12682_8321_44588#PolymorphicMapType_12682| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12682_8321_44588#PolymorphicMapType_12682| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_12734_12735) ) (! (= (select (|PolymorphicMapType_12682_8321_12735#PolymorphicMapType_12682| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12682_8321_12735#PolymorphicMapType_12682| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_12721_53) ) (! (= (select (|PolymorphicMapType_12682_8321_53#PolymorphicMapType_12682| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12682_8321_53#PolymorphicMapType_12682| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_18751_3133) ) (! (= (select (|PolymorphicMapType_12682_8321_3133#PolymorphicMapType_12682| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12682_8321_3133#PolymorphicMapType_12682| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_12721_19822) ) (! (= (select (|PolymorphicMapType_12682_8321_8460#PolymorphicMapType_12682| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12682_8321_8460#PolymorphicMapType_12682| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_26416_26421) ) (! (= (select (|PolymorphicMapType_12682_8459_44174#PolymorphicMapType_12682| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12682_8459_44174#PolymorphicMapType_12682| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_19821_12735) ) (! (= (select (|PolymorphicMapType_12682_8459_12735#PolymorphicMapType_12682| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12682_8459_12735#PolymorphicMapType_12682| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_19821_53) ) (! (= (select (|PolymorphicMapType_12682_8459_53#PolymorphicMapType_12682| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12682_8459_53#PolymorphicMapType_12682| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_19821_3133) ) (! (= (select (|PolymorphicMapType_12682_8459_3133#PolymorphicMapType_12682| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12682_8459_3133#PolymorphicMapType_12682| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_19821_19822) ) (! (= (select (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((s@@15 T@Seq_18798) (t@@1 T@Seq_18798) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_8337| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_8337| s@@15)) (|Seq#Length_8337| s@@15)) n@@15) (= (|Seq#Drop_8337| (|Seq#Append_18798| s@@15 t@@1) n@@15) (|Seq#Drop_8337| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_8337| s@@15))))))
 :qid |stdinbpl.402:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_8337| (|Seq#Append_18798| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3011) (t@@2 T@Seq_3011) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3011| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3011| s@@16)) (|Seq#Length_3011| s@@16)) n@@16) (= (|Seq#Drop_3011| (|Seq#Append_3011| s@@16 t@@2) n@@16) (|Seq#Drop_3011| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3011| s@@16))))))
 :qid |stdinbpl.402:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3011| (|Seq#Append_3011| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_12661) (xs@@1 T@Seq_18798) (j@@8 Int) ) (!  (and (= (fun_P Heap@@27 xs@@1 j@@8) (|fun_P'| Heap@@27 xs@@1 j@@8)) (dummyFunction_3658 (|fun_P#triggerStateless| xs@@1 j@@8)))
 :qid |stdinbpl.591:15|
 :skolemid |58|
 :pattern ( (fun_P Heap@@27 xs@@1 j@@8))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_12661) (xs@@2 T@Seq_18798) (j@@9 Int) ) (!  (and (= (fun_f Heap@@28 xs@@2 j@@9) (|fun_f'| Heap@@28 xs@@2 j@@9)) (dummyFunction_3658 (|fun_f#triggerStateless| xs@@2 j@@9)))
 :qid |stdinbpl.806:15|
 :skolemid |74|
 :pattern ( (fun_f Heap@@28 xs@@2 j@@9))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_12661) (Mask@@40 T@PolymorphicMapType_12682) (xs@@3 T@Seq_18798) (j@@10 Int) ) (!  (=> (state Heap@@29 Mask@@40) (= (|fun_P'| Heap@@29 xs@@3 j@@10) (|fun_P#frame| (FrameFragment_3425 (|fun_P#condqp1| Heap@@29 xs@@3 j@@10)) xs@@3 j@@10)))
 :qid |stdinbpl.611:15|
 :skolemid |62|
 :pattern ( (state Heap@@29 Mask@@40) (|fun_P'| Heap@@29 xs@@3 j@@10))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_12661) (Mask@@41 T@PolymorphicMapType_12682) (xs@@4 T@Seq_18798) (j@@11 Int) ) (!  (=> (state Heap@@30 Mask@@41) (= (|fun_f'| Heap@@30 xs@@4 j@@11) (|fun_f#frame| (FrameFragment_3425 (|fun_f#condqp2| Heap@@30 xs@@4 j@@11)) xs@@4 j@@11)))
 :qid |stdinbpl.826:15|
 :skolemid |78|
 :pattern ( (state Heap@@30 Mask@@41) (|fun_f'| Heap@@30 xs@@4 j@@11))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_12661) (Mask@@42 T@PolymorphicMapType_12682) (xs@@5 T@Seq_18798) (j@@12 Int) ) (!  (=> (and (state Heap@@31 Mask@@42) (< AssumeFunctionsAbove 0)) (=> (and (forall ((ix_8 Int) (jx_8 Int) ) (!  (=> (and (>= ix_8 0) (and (< ix_8 (|Seq#Length_8337| xs@@5)) (and (>= jx_8 0) (and (< jx_8 (|Seq#Length_8337| xs@@5)) (not (= ix_8 jx_8)))))) (not (= (|Seq#Index_8337| xs@@5 ix_8) (|Seq#Index_8337| xs@@5 jx_8))))
 :qid |stdinbpl.603:61|
 :skolemid |60|
 :pattern ( (|Seq#Index_8337| xs@@5 ix_8) (|Seq#Index_8337| xs@@5 jx_8))
)) (and (<= 0 j@@12) (< j@@12 (|Seq#Length_8337| xs@@5)))) (= (fun_P Heap@@31 xs@@5 j@@12) (get_P Heap@@31 (|Seq#Index_8337| xs@@5 j@@12)))))
 :qid |stdinbpl.601:15|
 :skolemid |61|
 :pattern ( (state Heap@@31 Mask@@42) (fun_P Heap@@31 xs@@5 j@@12))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_12661) (Mask@@43 T@PolymorphicMapType_12682) (xs@@6 T@Seq_18798) (j@@13 Int) ) (!  (=> (and (state Heap@@32 Mask@@43) (< AssumeFunctionsAbove 1)) (=> (and (forall ((ix_8@@0 Int) (jx_8@@0 Int) ) (!  (=> (and (>= ix_8@@0 0) (and (< ix_8@@0 (|Seq#Length_8337| xs@@6)) (and (>= jx_8@@0 0) (and (< jx_8@@0 (|Seq#Length_8337| xs@@6)) (not (= ix_8@@0 jx_8@@0)))))) (not (= (|Seq#Index_8337| xs@@6 ix_8@@0) (|Seq#Index_8337| xs@@6 jx_8@@0))))
 :qid |stdinbpl.818:61|
 :skolemid |76|
 :pattern ( (|Seq#Index_8337| xs@@6 ix_8@@0) (|Seq#Index_8337| xs@@6 jx_8@@0))
)) (and (<= 0 j@@13) (< j@@13 (|Seq#Length_8337| xs@@6)))) (= (fun_f Heap@@32 xs@@6 j@@13) (get_f Heap@@32 (|Seq#Index_8337| xs@@6 j@@13)))))
 :qid |stdinbpl.816:15|
 :skolemid |77|
 :pattern ( (state Heap@@32 Mask@@43) (fun_f Heap@@32 xs@@6 j@@13))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12682) (SummandMask1 T@PolymorphicMapType_12682) (SummandMask2 T@PolymorphicMapType_12682) (o_2@@39 T@Ref) (f_4@@39 T@Field_12721_26421) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12682_8321_44588#PolymorphicMapType_12682| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_12682_8321_44588#PolymorphicMapType_12682| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_12682_8321_44588#PolymorphicMapType_12682| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12682_8321_44588#PolymorphicMapType_12682| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12682_8321_44588#PolymorphicMapType_12682| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12682_8321_44588#PolymorphicMapType_12682| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12682) (SummandMask1@@0 T@PolymorphicMapType_12682) (SummandMask2@@0 T@PolymorphicMapType_12682) (o_2@@40 T@Ref) (f_4@@40 T@Field_12734_12735) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12682_8321_12735#PolymorphicMapType_12682| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_12682_8321_12735#PolymorphicMapType_12682| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_12682_8321_12735#PolymorphicMapType_12682| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12682_8321_12735#PolymorphicMapType_12682| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12682_8321_12735#PolymorphicMapType_12682| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12682_8321_12735#PolymorphicMapType_12682| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12682) (SummandMask1@@1 T@PolymorphicMapType_12682) (SummandMask2@@1 T@PolymorphicMapType_12682) (o_2@@41 T@Ref) (f_4@@41 T@Field_12721_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12682_8321_53#PolymorphicMapType_12682| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_12682_8321_53#PolymorphicMapType_12682| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_12682_8321_53#PolymorphicMapType_12682| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12682_8321_53#PolymorphicMapType_12682| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12682_8321_53#PolymorphicMapType_12682| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12682_8321_53#PolymorphicMapType_12682| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12682) (SummandMask1@@2 T@PolymorphicMapType_12682) (SummandMask2@@2 T@PolymorphicMapType_12682) (o_2@@42 T@Ref) (f_4@@42 T@Field_18751_3133) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12682_8321_3133#PolymorphicMapType_12682| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_12682_8321_3133#PolymorphicMapType_12682| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_12682_8321_3133#PolymorphicMapType_12682| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12682_8321_3133#PolymorphicMapType_12682| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12682_8321_3133#PolymorphicMapType_12682| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12682_8321_3133#PolymorphicMapType_12682| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_12682) (SummandMask1@@3 T@PolymorphicMapType_12682) (SummandMask2@@3 T@PolymorphicMapType_12682) (o_2@@43 T@Ref) (f_4@@43 T@Field_12721_19822) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_12682_8321_8460#PolymorphicMapType_12682| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_12682_8321_8460#PolymorphicMapType_12682| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_12682_8321_8460#PolymorphicMapType_12682| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12682_8321_8460#PolymorphicMapType_12682| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12682_8321_8460#PolymorphicMapType_12682| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12682_8321_8460#PolymorphicMapType_12682| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_12682) (SummandMask1@@4 T@PolymorphicMapType_12682) (SummandMask2@@4 T@PolymorphicMapType_12682) (o_2@@44 T@Ref) (f_4@@44 T@Field_26416_26421) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_12682_8459_44174#PolymorphicMapType_12682| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_12682_8459_44174#PolymorphicMapType_12682| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_12682_8459_44174#PolymorphicMapType_12682| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12682_8459_44174#PolymorphicMapType_12682| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12682_8459_44174#PolymorphicMapType_12682| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12682_8459_44174#PolymorphicMapType_12682| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_12682) (SummandMask1@@5 T@PolymorphicMapType_12682) (SummandMask2@@5 T@PolymorphicMapType_12682) (o_2@@45 T@Ref) (f_4@@45 T@Field_19821_12735) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_12682_8459_12735#PolymorphicMapType_12682| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_12682_8459_12735#PolymorphicMapType_12682| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_12682_8459_12735#PolymorphicMapType_12682| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12682_8459_12735#PolymorphicMapType_12682| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12682_8459_12735#PolymorphicMapType_12682| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12682_8459_12735#PolymorphicMapType_12682| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_12682) (SummandMask1@@6 T@PolymorphicMapType_12682) (SummandMask2@@6 T@PolymorphicMapType_12682) (o_2@@46 T@Ref) (f_4@@46 T@Field_19821_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_12682_8459_53#PolymorphicMapType_12682| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_12682_8459_53#PolymorphicMapType_12682| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_12682_8459_53#PolymorphicMapType_12682| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12682_8459_53#PolymorphicMapType_12682| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12682_8459_53#PolymorphicMapType_12682| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12682_8459_53#PolymorphicMapType_12682| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_12682) (SummandMask1@@7 T@PolymorphicMapType_12682) (SummandMask2@@7 T@PolymorphicMapType_12682) (o_2@@47 T@Ref) (f_4@@47 T@Field_19821_3133) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_12682_8459_3133#PolymorphicMapType_12682| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_12682_8459_3133#PolymorphicMapType_12682| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_12682_8459_3133#PolymorphicMapType_12682| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12682_8459_3133#PolymorphicMapType_12682| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12682_8459_3133#PolymorphicMapType_12682| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12682_8459_3133#PolymorphicMapType_12682| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_12682) (SummandMask1@@8 T@PolymorphicMapType_12682) (SummandMask2@@8 T@PolymorphicMapType_12682) (o_2@@48 T@Ref) (f_4@@48 T@Field_19821_19822) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3011| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3011| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.567:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3011| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_18798) (b T@Seq_18798) ) (!  (=> (|Seq#Equal_18798| a b) (= a b))
 :qid |stdinbpl.540:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_18798| a b))
)))
(assert (forall ((a@@0 T@Seq_3011) (b@@0 T@Seq_3011) ) (!  (=> (|Seq#Equal_3011| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.540:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3011| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_18798) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_8337| s@@17))) (|Seq#ContainsTrigger_8337| s@@17 (|Seq#Index_8337| s@@17 i@@3)))
 :qid |stdinbpl.433:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_8337| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3011) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3011| s@@18))) (|Seq#ContainsTrigger_3011| s@@18 (|Seq#Index_3011| s@@18 i@@4)))
 :qid |stdinbpl.433:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3011| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_18798) (s1@@3 T@Seq_18798) ) (!  (and (=> (= s0@@3 |Seq#Empty_8337|) (= (|Seq#Append_18798| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_8337|) (= (|Seq#Append_18798| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.251:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_18798| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3011) (s1@@4 T@Seq_3011) ) (!  (and (=> (= s0@@4 |Seq#Empty_3011|) (= (|Seq#Append_3011| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3011|) (= (|Seq#Append_3011| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.251:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3011| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_8337| (|Seq#Singleton_8337| t@@3) 0) t@@3)
 :qid |stdinbpl.255:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_8337| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3011| (|Seq#Singleton_3011| t@@4) 0) t@@4)
 :qid |stdinbpl.255:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3011| t@@4))
)))
(assert (forall ((s@@19 T@Seq_18798) ) (! (<= 0 (|Seq#Length_8337| s@@19))
 :qid |stdinbpl.234:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_8337| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3011) ) (! (<= 0 (|Seq#Length_3011| s@@20))
 :qid |stdinbpl.234:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3011| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_18798) (s1@@5 T@Seq_18798) ) (!  (=> (|Seq#Equal_18798| s0@@5 s1@@5) (and (= (|Seq#Length_8337| s0@@5) (|Seq#Length_8337| s1@@5)) (forall ((j@@14 Int) ) (!  (=> (and (<= 0 j@@14) (< j@@14 (|Seq#Length_8337| s0@@5))) (= (|Seq#Index_8337| s0@@5 j@@14) (|Seq#Index_8337| s1@@5 j@@14)))
 :qid |stdinbpl.530:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_8337| s0@@5 j@@14))
 :pattern ( (|Seq#Index_8337| s1@@5 j@@14))
))))
 :qid |stdinbpl.527:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_18798| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3011) (s1@@6 T@Seq_3011) ) (!  (=> (|Seq#Equal_3011| s0@@6 s1@@6) (and (= (|Seq#Length_3011| s0@@6) (|Seq#Length_3011| s1@@6)) (forall ((j@@15 Int) ) (!  (=> (and (<= 0 j@@15) (< j@@15 (|Seq#Length_3011| s0@@6))) (= (|Seq#Index_3011| s0@@6 j@@15) (|Seq#Index_3011| s1@@6 j@@15)))
 :qid |stdinbpl.530:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3011| s0@@6 j@@15))
 :pattern ( (|Seq#Index_3011| s1@@6 j@@15))
))))
 :qid |stdinbpl.527:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3011| s0@@6 s1@@6))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_12661) (Mask@@44 T@PolymorphicMapType_12682) (x@@11 T@Ref) ) (!  (=> (state Heap@@33 Mask@@44) (= (|get_P'| Heap@@33 x@@11) (|get_P#frame| (select (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@33) null (P x@@11)) x@@11)))
 :qid |stdinbpl.768:15|
 :skolemid |73|
 :pattern ( (state Heap@@33 Mask@@44) (|get_P'| Heap@@33 x@@11))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_12661) (Mask@@45 T@PolymorphicMapType_12682) (x@@12 T@Ref) ) (!  (=> (state Heap@@34 Mask@@45) (= (|get_f'| Heap@@34 x@@12) (|get_f#frame| (FrameFragment_3425 (select (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| Heap@@34) x@@12 f_7)) x@@12)))
 :qid |stdinbpl.981:15|
 :skolemid |89|
 :pattern ( (state Heap@@34 Mask@@45) (|get_f'| Heap@@34 x@@12))
)))
(assert (forall ((x@@13 T@Ref) ) (! (= (getPredWandId_8459_8460 (P x@@13)) 0)
 :qid |stdinbpl.1028:15|
 :skolemid |92|
 :pattern ( (P x@@13))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_8337| (|Seq#Singleton_8337| t@@5)) 1)
 :qid |stdinbpl.242:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_8337| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3011| (|Seq#Singleton_3011| t@@6)) 1)
 :qid |stdinbpl.242:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3011| t@@6))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_12661) (Heap1Heap T@PolymorphicMapType_12661) (xs@@7 T@Seq_18798) (j@@16 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun_P#condqp1| (|fun_P#condqp1| Heap2Heap xs@@7 j@@16) (|fun_P#condqp1| Heap1Heap xs@@7 j@@16))) (< (|sk_fun_P#condqp1| (|fun_P#condqp1| Heap2Heap xs@@7 j@@16) (|fun_P#condqp1| Heap1Heap xs@@7 j@@16)) (|Seq#Length_8337| xs@@7))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun_P#condqp1| (|fun_P#condqp1| Heap2Heap xs@@7 j@@16) (|fun_P#condqp1| Heap1Heap xs@@7 j@@16))) (< (|sk_fun_P#condqp1| (|fun_P#condqp1| Heap2Heap xs@@7 j@@16) (|fun_P#condqp1| Heap1Heap xs@@7 j@@16)) (|Seq#Length_8337| xs@@7))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun_P#condqp1| (|fun_P#condqp1| Heap2Heap xs@@7 j@@16) (|fun_P#condqp1| Heap1Heap xs@@7 j@@16))) (< (|sk_fun_P#condqp1| (|fun_P#condqp1| Heap2Heap xs@@7 j@@16) (|fun_P#condqp1| Heap1Heap xs@@7 j@@16)) (|Seq#Length_8337| xs@@7))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap2Heap) null (P (|Seq#Index_8337| xs@@7 (|sk_fun_P#condqp1| (|fun_P#condqp1| Heap2Heap xs@@7 j@@16) (|fun_P#condqp1| Heap1Heap xs@@7 j@@16))))) (select (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap1Heap) null (P (|Seq#Index_8337| xs@@7 (|sk_fun_P#condqp1| (|fun_P#condqp1| Heap2Heap xs@@7 j@@16) (|fun_P#condqp1| Heap1Heap xs@@7 j@@16)))))))) (= (|fun_P#condqp1| Heap2Heap xs@@7 j@@16) (|fun_P#condqp1| Heap1Heap xs@@7 j@@16)))
 :qid |stdinbpl.621:15|
 :skolemid |63|
 :pattern ( (|fun_P#condqp1| Heap2Heap xs@@7 j@@16) (|fun_P#condqp1| Heap1Heap xs@@7 j@@16) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((s@@21 T@Seq_18798) (t@@7 T@Seq_18798) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_8337| s@@21))) (= (|Seq#Take_8337| (|Seq#Append_18798| s@@21 t@@7) n@@17) (|Seq#Take_8337| s@@21 n@@17)))
 :qid |stdinbpl.384:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_8337| (|Seq#Append_18798| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3011) (t@@8 T@Seq_3011) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3011| s@@22))) (= (|Seq#Take_3011| (|Seq#Append_3011| s@@22 t@@8) n@@18) (|Seq#Take_3011| s@@22 n@@18)))
 :qid |stdinbpl.384:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3011| (|Seq#Append_3011| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_18798) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_8337| s@@23))) (= (|Seq#Length_8337| (|Seq#Update_8337| s@@23 i@@5 v@@2)) (|Seq#Length_8337| s@@23)))
 :qid |stdinbpl.283:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_8337| (|Seq#Update_8337| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_8337| s@@23) (|Seq#Update_8337| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3011) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3011| s@@24))) (= (|Seq#Length_3011| (|Seq#Update_3011| s@@24 i@@6 v@@3)) (|Seq#Length_3011| s@@24)))
 :qid |stdinbpl.283:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3011| (|Seq#Update_3011| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3011| s@@24) (|Seq#Update_3011| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_12661) (o_15 T@Ref) (f_54 T@Field_26416_26421) (v@@4 T@PolymorphicMapType_13210) ) (! (succHeap Heap@@35 (PolymorphicMapType_12661 (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| Heap@@35) (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| Heap@@35) (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@35) (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| Heap@@35) (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| Heap@@35) (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@35) (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| Heap@@35) (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| Heap@@35) (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| Heap@@35) (store (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@35) o_15 f_54 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12661 (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| Heap@@35) (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| Heap@@35) (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@35) (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| Heap@@35) (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| Heap@@35) (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@35) (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| Heap@@35) (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| Heap@@35) (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| Heap@@35) (store (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@35) o_15 f_54 v@@4)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_12661) (o_15@@0 T@Ref) (f_54@@0 T@Field_19821_3133) (v@@5 Int) ) (! (succHeap Heap@@36 (PolymorphicMapType_12661 (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| Heap@@36) (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| Heap@@36) (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@36) (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| Heap@@36) (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| Heap@@36) (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@36) (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| Heap@@36) (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| Heap@@36) (store (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| Heap@@36) o_15@@0 f_54@@0 v@@5) (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12661 (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| Heap@@36) (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| Heap@@36) (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@36) (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| Heap@@36) (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| Heap@@36) (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@36) (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| Heap@@36) (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| Heap@@36) (store (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| Heap@@36) o_15@@0 f_54@@0 v@@5) (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_12661) (o_15@@1 T@Ref) (f_54@@1 T@Field_19821_19822) (v@@6 T@FrameType) ) (! (succHeap Heap@@37 (PolymorphicMapType_12661 (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| Heap@@37) (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| Heap@@37) (store (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@37) o_15@@1 f_54@@1 v@@6) (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| Heap@@37) (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| Heap@@37) (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@37) (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| Heap@@37) (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| Heap@@37) (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| Heap@@37) (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12661 (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| Heap@@37) (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| Heap@@37) (store (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@37) o_15@@1 f_54@@1 v@@6) (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| Heap@@37) (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| Heap@@37) (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@37) (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| Heap@@37) (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| Heap@@37) (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| Heap@@37) (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_12661) (o_15@@2 T@Ref) (f_54@@2 T@Field_19821_12735) (v@@7 T@Ref) ) (! (succHeap Heap@@38 (PolymorphicMapType_12661 (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| Heap@@38) (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| Heap@@38) (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@38) (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| Heap@@38) (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| Heap@@38) (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@38) (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| Heap@@38) (store (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| Heap@@38) o_15@@2 f_54@@2 v@@7) (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| Heap@@38) (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12661 (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| Heap@@38) (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| Heap@@38) (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@38) (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| Heap@@38) (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| Heap@@38) (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@38) (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| Heap@@38) (store (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| Heap@@38) o_15@@2 f_54@@2 v@@7) (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| Heap@@38) (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_12661) (o_15@@3 T@Ref) (f_54@@3 T@Field_19821_53) (v@@8 Bool) ) (! (succHeap Heap@@39 (PolymorphicMapType_12661 (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| Heap@@39) (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| Heap@@39) (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@39) (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| Heap@@39) (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| Heap@@39) (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@39) (store (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| Heap@@39) o_15@@3 f_54@@3 v@@8) (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| Heap@@39) (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| Heap@@39) (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12661 (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| Heap@@39) (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| Heap@@39) (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@39) (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| Heap@@39) (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| Heap@@39) (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@39) (store (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| Heap@@39) o_15@@3 f_54@@3 v@@8) (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| Heap@@39) (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| Heap@@39) (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_12661) (o_15@@4 T@Ref) (f_54@@4 T@Field_12721_26421) (v@@9 T@PolymorphicMapType_13210) ) (! (succHeap Heap@@40 (PolymorphicMapType_12661 (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| Heap@@40) (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| Heap@@40) (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@40) (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| Heap@@40) (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| Heap@@40) (store (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@40) o_15@@4 f_54@@4 v@@9) (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| Heap@@40) (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| Heap@@40) (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| Heap@@40) (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12661 (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| Heap@@40) (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| Heap@@40) (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@40) (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| Heap@@40) (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| Heap@@40) (store (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@40) o_15@@4 f_54@@4 v@@9) (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| Heap@@40) (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| Heap@@40) (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| Heap@@40) (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_12661) (o_15@@5 T@Ref) (f_54@@5 T@Field_18751_3133) (v@@10 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_12661 (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| Heap@@41) (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| Heap@@41) (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@41) (store (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| Heap@@41) o_15@@5 f_54@@5 v@@10) (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| Heap@@41) (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@41) (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| Heap@@41) (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| Heap@@41) (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| Heap@@41) (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12661 (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| Heap@@41) (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| Heap@@41) (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@41) (store (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| Heap@@41) o_15@@5 f_54@@5 v@@10) (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| Heap@@41) (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@41) (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| Heap@@41) (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| Heap@@41) (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| Heap@@41) (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_12661) (o_15@@6 T@Ref) (f_54@@6 T@Field_12721_19822) (v@@11 T@FrameType) ) (! (succHeap Heap@@42 (PolymorphicMapType_12661 (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| Heap@@42) (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| Heap@@42) (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@42) (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| Heap@@42) (store (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| Heap@@42) o_15@@6 f_54@@6 v@@11) (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@42) (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| Heap@@42) (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| Heap@@42) (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| Heap@@42) (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12661 (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| Heap@@42) (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| Heap@@42) (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@42) (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| Heap@@42) (store (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| Heap@@42) o_15@@6 f_54@@6 v@@11) (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@42) (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| Heap@@42) (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| Heap@@42) (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| Heap@@42) (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_12661) (o_15@@7 T@Ref) (f_54@@7 T@Field_12734_12735) (v@@12 T@Ref) ) (! (succHeap Heap@@43 (PolymorphicMapType_12661 (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| Heap@@43) (store (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| Heap@@43) o_15@@7 f_54@@7 v@@12) (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@43) (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| Heap@@43) (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| Heap@@43) (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@43) (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| Heap@@43) (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| Heap@@43) (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| Heap@@43) (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12661 (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| Heap@@43) (store (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| Heap@@43) o_15@@7 f_54@@7 v@@12) (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@43) (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| Heap@@43) (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| Heap@@43) (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@43) (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| Heap@@43) (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| Heap@@43) (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| Heap@@43) (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_12661) (o_15@@8 T@Ref) (f_54@@8 T@Field_12721_53) (v@@13 Bool) ) (! (succHeap Heap@@44 (PolymorphicMapType_12661 (store (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| Heap@@44) o_15@@8 f_54@@8 v@@13) (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| Heap@@44) (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@44) (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| Heap@@44) (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| Heap@@44) (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@44) (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| Heap@@44) (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| Heap@@44) (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| Heap@@44) (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12661 (store (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| Heap@@44) o_15@@8 f_54@@8 v@@13) (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| Heap@@44) (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@44) (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| Heap@@44) (|PolymorphicMapType_12661_12721_19822#PolymorphicMapType_12661| Heap@@44) (|PolymorphicMapType_12661_12721_34844#PolymorphicMapType_12661| Heap@@44) (|PolymorphicMapType_12661_19821_53#PolymorphicMapType_12661| Heap@@44) (|PolymorphicMapType_12661_19821_12735#PolymorphicMapType_12661| Heap@@44) (|PolymorphicMapType_12661_19821_3133#PolymorphicMapType_12661| Heap@@44) (|PolymorphicMapType_12661_19821_36005#PolymorphicMapType_12661| Heap@@44)))
)))
(assert (forall ((x@@14 T@Ref) ) (! (= (PredicateMaskField_8459 (P x@@14)) (|P#sm| x@@14))
 :qid |stdinbpl.1020:15|
 :skolemid |90|
 :pattern ( (PredicateMaskField_8459 (P x@@14)))
)))
(assert (forall ((s@@25 T@Seq_18798) (t@@9 T@Seq_18798) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_8337| s@@25))) (= (|Seq#Drop_8337| (|Seq#Append_18798| s@@25 t@@9) n@@19) (|Seq#Append_18798| (|Seq#Drop_8337| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.398:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_8337| (|Seq#Append_18798| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3011) (t@@10 T@Seq_3011) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3011| s@@26))) (= (|Seq#Drop_3011| (|Seq#Append_3011| s@@26 t@@10) n@@20) (|Seq#Append_3011| (|Seq#Drop_3011| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.398:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3011| (|Seq#Append_3011| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_18798) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_8337| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_8337| (|Seq#Drop_8337| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_8337| s@@27 i@@7))))
 :qid |stdinbpl.334:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_8337| s@@27 n@@21) (|Seq#Index_8337| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3011) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3011| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3011| (|Seq#Drop_3011| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3011| s@@28 i@@8))))
 :qid |stdinbpl.334:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3011| s@@28 n@@22) (|Seq#Index_3011| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_18798) (s1@@7 T@Seq_18798) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_8337|)) (not (= s1@@7 |Seq#Empty_8337|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_8337| s0@@7))) (= (|Seq#Index_8337| (|Seq#Append_18798| s0@@7 s1@@7) n@@23) (|Seq#Index_8337| s0@@7 n@@23)))
 :qid |stdinbpl.274:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_8337| (|Seq#Append_18798| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_8337| s0@@7 n@@23) (|Seq#Append_18798| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3011) (s1@@8 T@Seq_3011) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3011|)) (not (= s1@@8 |Seq#Empty_3011|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3011| s0@@8))) (= (|Seq#Index_3011| (|Seq#Append_3011| s0@@8 s1@@8) n@@24) (|Seq#Index_3011| s0@@8 n@@24)))
 :qid |stdinbpl.274:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3011| (|Seq#Append_3011| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3011| s0@@8 n@@24) (|Seq#Append_3011| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_18798) (s1@@9 T@Seq_18798) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_8337|)) (not (= s1@@9 |Seq#Empty_8337|))) (<= 0 m)) (< m (|Seq#Length_8337| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_8337| s0@@9)) (|Seq#Length_8337| s0@@9)) m) (= (|Seq#Index_8337| (|Seq#Append_18798| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_8337| s0@@9))) (|Seq#Index_8337| s1@@9 m))))
 :qid |stdinbpl.279:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_8337| s1@@9 m) (|Seq#Append_18798| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3011) (s1@@10 T@Seq_3011) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3011|)) (not (= s1@@10 |Seq#Empty_3011|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3011| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3011| s0@@10)) (|Seq#Length_3011| s0@@10)) m@@0) (= (|Seq#Index_3011| (|Seq#Append_3011| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3011| s0@@10))) (|Seq#Index_3011| s1@@10 m@@0))))
 :qid |stdinbpl.279:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3011| s1@@10 m@@0) (|Seq#Append_3011| s0@@10 s1@@10))
)))
(assert (forall ((o_15@@9 T@Ref) (f_23 T@Field_12734_12735) (Heap@@45 T@PolymorphicMapType_12661) ) (!  (=> (select (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| Heap@@45) o_15@@9 $allocated) (select (|PolymorphicMapType_12661_8121_53#PolymorphicMapType_12661| Heap@@45) (select (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| Heap@@45) o_15@@9 f_23) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12661_8124_8125#PolymorphicMapType_12661| Heap@@45) o_15@@9 f_23))
)))
(assert (forall ((s@@29 T@Seq_18798) (x@@15 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_8337| s@@29))) (= (|Seq#Index_8337| s@@29 i@@9) x@@15)) (|Seq#Contains_18798| s@@29 x@@15))
 :qid |stdinbpl.431:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_18798| s@@29 x@@15) (|Seq#Index_8337| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3011) (x@@16 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3011| s@@30))) (= (|Seq#Index_3011| s@@30 i@@10) x@@16)) (|Seq#Contains_3011| s@@30 x@@16))
 :qid |stdinbpl.431:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3011| s@@30 x@@16) (|Seq#Index_3011| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_18798) (s1@@11 T@Seq_18798) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_18798| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_18798| s0@@11 s1@@11))) (not (= (|Seq#Length_8337| s0@@11) (|Seq#Length_8337| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_18798| s0@@11 s1@@11))) (= (|Seq#Length_8337| s0@@11) (|Seq#Length_8337| s1@@11))) (= (|Seq#SkolemDiff_18798| s0@@11 s1@@11) (|Seq#SkolemDiff_18798| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_18798| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_18798| s0@@11 s1@@11) (|Seq#Length_8337| s0@@11))) (not (= (|Seq#Index_8337| s0@@11 (|Seq#SkolemDiff_18798| s0@@11 s1@@11)) (|Seq#Index_8337| s1@@11 (|Seq#SkolemDiff_18798| s0@@11 s1@@11))))))
 :qid |stdinbpl.535:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_18798| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3011) (s1@@12 T@Seq_3011) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3011| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3011| s0@@12 s1@@12))) (not (= (|Seq#Length_3011| s0@@12) (|Seq#Length_3011| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3011| s0@@12 s1@@12))) (= (|Seq#Length_3011| s0@@12) (|Seq#Length_3011| s1@@12))) (= (|Seq#SkolemDiff_3011| s0@@12 s1@@12) (|Seq#SkolemDiff_3011| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3011| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3011| s0@@12 s1@@12) (|Seq#Length_3011| s0@@12))) (not (= (|Seq#Index_3011| s0@@12 (|Seq#SkolemDiff_3011| s0@@12 s1@@12)) (|Seq#Index_3011| s1@@12 (|Seq#SkolemDiff_3011| s0@@12 s1@@12))))))
 :qid |stdinbpl.535:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3011| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_19821_19822) (v_1@@1 T@FrameType) (q T@Field_19821_19822) (w@@1 T@FrameType) (r T@Field_19821_19822) (u T@FrameType) ) (!  (=> (and (InsidePredicate_19821_19821 p@@2 v_1@@1 q w@@1) (InsidePredicate_19821_19821 q w@@1 r u)) (InsidePredicate_19821_19821 p@@2 v_1@@1 r u))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19821_19821 p@@2 v_1@@1 q w@@1) (InsidePredicate_19821_19821 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_19821_19822) (v_1@@2 T@FrameType) (q@@0 T@Field_19821_19822) (w@@2 T@FrameType) (r@@0 T@Field_12721_19822) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_19821_19821 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_19821_12721 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_19821_12721 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19821_19821 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_19821_12721 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_19821_19822) (v_1@@3 T@FrameType) (q@@1 T@Field_12721_19822) (w@@3 T@FrameType) (r@@1 T@Field_19821_19822) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_19821_12721 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_12721_19821 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_19821_19821 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19821_12721 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_12721_19821 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_19821_19822) (v_1@@4 T@FrameType) (q@@2 T@Field_12721_19822) (w@@4 T@FrameType) (r@@2 T@Field_12721_19822) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_19821_12721 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_12721_12721 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_19821_12721 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19821_12721 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_12721_12721 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_12721_19822) (v_1@@5 T@FrameType) (q@@3 T@Field_19821_19822) (w@@5 T@FrameType) (r@@3 T@Field_19821_19822) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_12721_19821 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_19821_19821 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_12721_19821 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12721_19821 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_19821_19821 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_12721_19822) (v_1@@6 T@FrameType) (q@@4 T@Field_19821_19822) (w@@6 T@FrameType) (r@@4 T@Field_12721_19822) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_12721_19821 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_19821_12721 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_12721_12721 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12721_19821 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_19821_12721 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_12721_19822) (v_1@@7 T@FrameType) (q@@5 T@Field_12721_19822) (w@@7 T@FrameType) (r@@5 T@Field_19821_19822) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_12721_12721 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_12721_19821 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_12721_19821 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12721_12721 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_12721_19821 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_12721_19822) (v_1@@8 T@FrameType) (q@@6 T@Field_12721_19822) (w@@8 T@FrameType) (r@@6 T@Field_12721_19822) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_12721_12721 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_12721_12721 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_12721_12721 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12721_12721 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_12721_12721 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_12661) (Heap1Heap@@0 T@PolymorphicMapType_12661) (xs@@8 T@Seq_18798) (j@@17 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun_f#condqp2| (|fun_f#condqp2| Heap2Heap@@0 xs@@8 j@@17) (|fun_f#condqp2| Heap1Heap@@0 xs@@8 j@@17))) (< (|sk_fun_f#condqp2| (|fun_f#condqp2| Heap2Heap@@0 xs@@8 j@@17) (|fun_f#condqp2| Heap1Heap@@0 xs@@8 j@@17)) (|Seq#Length_8337| xs@@8))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun_f#condqp2| (|fun_f#condqp2| Heap2Heap@@0 xs@@8 j@@17) (|fun_f#condqp2| Heap1Heap@@0 xs@@8 j@@17))) (< (|sk_fun_f#condqp2| (|fun_f#condqp2| Heap2Heap@@0 xs@@8 j@@17) (|fun_f#condqp2| Heap1Heap@@0 xs@@8 j@@17)) (|Seq#Length_8337| xs@@8))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun_f#condqp2| (|fun_f#condqp2| Heap2Heap@@0 xs@@8 j@@17) (|fun_f#condqp2| Heap1Heap@@0 xs@@8 j@@17))) (< (|sk_fun_f#condqp2| (|fun_f#condqp2| Heap2Heap@@0 xs@@8 j@@17) (|fun_f#condqp2| Heap1Heap@@0 xs@@8 j@@17)) (|Seq#Length_8337| xs@@8))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| Heap2Heap@@0) (|Seq#Index_8337| xs@@8 (|sk_fun_f#condqp2| (|fun_f#condqp2| Heap2Heap@@0 xs@@8 j@@17) (|fun_f#condqp2| Heap1Heap@@0 xs@@8 j@@17))) f_7) (select (|PolymorphicMapType_12661_8321_3133#PolymorphicMapType_12661| Heap1Heap@@0) (|Seq#Index_8337| xs@@8 (|sk_fun_f#condqp2| (|fun_f#condqp2| Heap2Heap@@0 xs@@8 j@@17) (|fun_f#condqp2| Heap1Heap@@0 xs@@8 j@@17))) f_7)))) (= (|fun_f#condqp2| Heap2Heap@@0 xs@@8 j@@17) (|fun_f#condqp2| Heap1Heap@@0 xs@@8 j@@17)))
 :qid |stdinbpl.836:15|
 :skolemid |79|
 :pattern ( (|fun_f#condqp2| Heap2Heap@@0 xs@@8 j@@17) (|fun_f#condqp2| Heap1Heap@@0 xs@@8 j@@17) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((s@@31 T@Seq_18798) ) (!  (=> (= (|Seq#Length_8337| s@@31) 0) (= s@@31 |Seq#Empty_8337|))
 :qid |stdinbpl.238:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_8337| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3011) ) (!  (=> (= (|Seq#Length_3011| s@@32) 0) (= s@@32 |Seq#Empty_3011|))
 :qid |stdinbpl.238:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3011| s@@32))
)))
(assert (forall ((s@@33 T@Seq_18798) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_8337| s@@33 n@@25) |Seq#Empty_8337|))
 :qid |stdinbpl.414:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_8337| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3011) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3011| s@@34 n@@26) |Seq#Empty_3011|))
 :qid |stdinbpl.414:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3011| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@46 () T@PolymorphicMapType_12661)
(declare-fun ys () T@Seq_18798)
(declare-fun k () Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_12682)
(declare-fun ix_2_1 () Int)
(declare-fun jx_2_1 () Int)
(declare-fun neverTriggered4 (Int) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun neverTriggered3 (Int) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun getPredWandId_8321_3133 (T@Field_18751_3133) Int)
(declare-fun getPredWandId_8321_8460 (T@Field_12721_19822) Int)
(declare-fun getPredWandId_8321_53 (T@Field_12721_53) Int)
(declare-fun getPredWandId_8321_12735 (T@Field_12734_12735) Int)
(declare-fun getPredWandId_8321_58185 (T@Field_12721_26421) Int)
(declare-fun getPredWandId_8459_3133 (T@Field_19821_3133) Int)
(declare-fun getPredWandId_8459_53 (T@Field_19821_53) Int)
(declare-fun getPredWandId_8459_12735 (T@Field_19821_12735) Int)
(declare-fun getPredWandId_8459_58994 (T@Field_26416_26421) Int)
(declare-fun i_15 () Int)
(declare-fun ix_11 () Int)
(declare-fun jx_11 () Int)
(set-info :boogie-vc-id test_P)
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
 (=> (= (ControlFlow 0 0) 33) (let ((anon24_Else_correct  (=> (= (ControlFlow 0 25) (- 0 24)) (= (get_P Heap@@46 (|Seq#Index_8337| ys k)) 0))))
(let ((anon24_Then_correct  (=> (= (ControlFlow 0 23) (- 0 22)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| QPMask@0) null (P (|Seq#Index_8337| ys k))))))))
(let ((anon21_Else_correct  (=> (= (fun_P Heap@@46 ys k) 0) (=> (and (state Heap@@46 QPMask@0) (state Heap@@46 QPMask@0)) (and (=> (= (ControlFlow 0 26) (- 0 28)) (>= k 0)) (=> (>= k 0) (and (=> (= (ControlFlow 0 26) (- 0 27)) (< k (|Seq#Length_8337| ys))) (=> (< k (|Seq#Length_8337| ys)) (and (=> (= (ControlFlow 0 26) 23) anon24_Then_correct) (=> (= (ControlFlow 0 26) 25) anon24_Else_correct))))))))))
(let ((anon12_correct true))
(let ((anon23_Else_correct  (=> (and (not (and (>= ix_2_1 0) (and (< ix_2_1 (|Seq#Length_8337| ys)) (and (>= jx_2_1 0) (and (< jx_2_1 (|Seq#Length_8337| ys)) (not (= ix_2_1 jx_2_1))))))) (= (ControlFlow 0 21) 18)) anon12_correct)))
(let ((anon23_Then_correct  (=> (and (>= ix_2_1 0) (and (< ix_2_1 (|Seq#Length_8337| ys)) (and (>= jx_2_1 0) (and (< jx_2_1 (|Seq#Length_8337| ys)) (not (= ix_2_1 jx_2_1)))))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (not (= (|Seq#Index_8337| ys ix_2_1) (|Seq#Index_8337| ys jx_2_1)))) (=> (not (= (|Seq#Index_8337| ys ix_2_1) (|Seq#Index_8337| ys jx_2_1))) (=> (= (ControlFlow 0 19) 18) anon12_correct))))))
(let ((anon22_Else_correct  (=> (forall ((ix_3_1 Int) (jx_3_1 Int) ) (!  (=> (and (>= ix_3_1 0) (and (< ix_3_1 (|Seq#Length_8337| ys)) (and (>= jx_3_1 0) (and (< jx_3_1 (|Seq#Length_8337| ys)) (not (= ix_3_1 jx_3_1)))))) (not (= (|Seq#Index_8337| ys ix_3_1) (|Seq#Index_8337| ys jx_3_1))))
 :qid |stdinbpl.1188:24|
 :skolemid |103|
 :pattern ( (|Seq#Index_8337| ys ix_3_1) (|Seq#Index_8337| ys jx_3_1))
)) (and (=> (= (ControlFlow 0 14) (- 0 17)) (forall ((i_3_2 Int) (i_3_3 Int) ) (!  (=> (and (and (and (and (not (= i_3_2 i_3_3)) (and (<= 0 i_3_2) (< i_3_2 (|Seq#Length_8337| ys)))) (and (<= 0 i_3_3) (< i_3_3 (|Seq#Length_8337| ys)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8337| ys i_3_2) (|Seq#Index_8337| ys i_3_3))))
 :qid |stdinbpl.1199:21|
 :skolemid |104|
 :pattern ( (neverTriggered4 i_3_2) (neverTriggered4 i_3_3))
))) (=> (forall ((i_3_2@@0 Int) (i_3_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3_2@@0 i_3_3@@0)) (and (<= 0 i_3_2@@0) (< i_3_2@@0 (|Seq#Length_8337| ys)))) (and (<= 0 i_3_3@@0) (< i_3_3@@0 (|Seq#Length_8337| ys)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8337| ys i_3_2@@0) (|Seq#Index_8337| ys i_3_3@@0))))
 :qid |stdinbpl.1199:21|
 :skolemid |104|
 :pattern ( (neverTriggered4 i_3_2@@0) (neverTriggered4 i_3_3@@0))
)) (and (=> (= (ControlFlow 0 14) (- 0 16)) (forall ((i_3_2@@1 Int) ) (!  (=> (and (<= 0 i_3_2@@1) (< i_3_2@@1 (|Seq#Length_8337| ys))) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| QPMask@0) null (P (|Seq#Index_8337| ys i_3_2@@1))) NoPerm)))
 :qid |stdinbpl.1206:21|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@46) null (P (|Seq#Index_8337| ys i_3_2@@1))))
 :pattern ( (select (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| QPMask@0) null (P (|Seq#Index_8337| ys i_3_2@@1))))
 :pattern ( (|Seq#Index_8337| ys i_3_2@@1))
))) (=> (forall ((i_3_2@@2 Int) ) (!  (=> (and (<= 0 i_3_2@@2) (< i_3_2@@2 (|Seq#Length_8337| ys))) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| QPMask@0) null (P (|Seq#Index_8337| ys i_3_2@@2))) NoPerm)))
 :qid |stdinbpl.1206:21|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@46) null (P (|Seq#Index_8337| ys i_3_2@@2))))
 :pattern ( (select (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| QPMask@0) null (P (|Seq#Index_8337| ys i_3_2@@2))))
 :pattern ( (|Seq#Index_8337| ys i_3_2@@2))
)) (=> (and (forall ((i_3_2@@3 Int) ) (!  (=> (and (and (<= 0 i_3_2@@3) (< i_3_2@@3 (|Seq#Length_8337| ys))) (< NoPerm FullPerm)) (and (= (invRecv4 (|Seq#Index_8337| ys i_3_2@@3)) i_3_2@@3) (qpRange4 (|Seq#Index_8337| ys i_3_2@@3))))
 :qid |stdinbpl.1212:26|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@46) null (P (|Seq#Index_8337| ys i_3_2@@3))))
 :pattern ( (select (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| QPMask@0) null (P (|Seq#Index_8337| ys i_3_2@@3))))
 :pattern ( (|Seq#Index_8337| ys i_3_2@@3))
)) (forall ((x_1 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv4 x_1)) (< (invRecv4 x_1) (|Seq#Length_8337| ys))) (< NoPerm FullPerm)) (qpRange4 x_1)) (= (|Seq#Index_8337| ys (invRecv4 x_1)) x_1))
 :qid |stdinbpl.1216:26|
 :skolemid |107|
 :pattern ( (invRecv4 x_1))
))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (<= 0 k)) (=> (<= 0 k) (=> (= (ControlFlow 0 14) (- 0 13)) (< k (|Seq#Length_8337| ys)))))))))))))
(let ((anon19_Else_correct  (and (=> (= (ControlFlow 0 29) (- 0 30)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (and (<= 0 i_1) (< i_1 (|Seq#Length_8337| ys)))) (and (<= 0 i_1_1) (< i_1_1 (|Seq#Length_8337| ys)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8337| ys i_1) (|Seq#Index_8337| ys i_1_1))))
 :qid |stdinbpl.1138:17|
 :skolemid |97|
 :pattern ( (neverTriggered3 i_1) (neverTriggered3 i_1_1))
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (and (<= 0 i_1@@0) (< i_1@@0 (|Seq#Length_8337| ys)))) (and (<= 0 i_1_1@@0) (< i_1_1@@0 (|Seq#Length_8337| ys)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8337| ys i_1@@0) (|Seq#Index_8337| ys i_1_1@@0))))
 :qid |stdinbpl.1138:17|
 :skolemid |97|
 :pattern ( (neverTriggered3 i_1@@0) (neverTriggered3 i_1_1@@0))
)) (=> (forall ((i_1@@1 Int) ) (!  (=> (and (and (<= 0 i_1@@1) (< i_1@@1 (|Seq#Length_8337| ys))) (< NoPerm FullPerm)) (and (= (invRecv3 (|Seq#Index_8337| ys i_1@@1)) i_1@@1) (qpRange3 (|Seq#Index_8337| ys i_1@@1))))
 :qid |stdinbpl.1144:22|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_12661_8459_8460#PolymorphicMapType_12661| Heap@@46) null (P (|Seq#Index_8337| ys i_1@@1))))
 :pattern ( (select (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| ZeroMask) null (P (|Seq#Index_8337| ys i_1@@1))))
 :pattern ( (|Seq#Index_8337| ys i_1@@1))
)) (=> (and (forall ((x@@17 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv3 x@@17)) (< (invRecv3 x@@17) (|Seq#Length_8337| ys))) (< NoPerm FullPerm)) (qpRange3 x@@17)) (= (|Seq#Index_8337| ys (invRecv3 x@@17)) x@@17))
 :qid |stdinbpl.1148:22|
 :skolemid |99|
 :pattern ( (invRecv3 x@@17))
)) (forall ((x@@18 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv3 x@@18)) (< (invRecv3 x@@18) (|Seq#Length_8337| ys))) (< NoPerm FullPerm)) (qpRange3 x@@18)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_8337| ys (invRecv3 x@@18)) x@@18)) (= (select (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| QPMask@0) null (P x@@18)) (+ (select (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| ZeroMask) null (P x@@18)) FullPerm))))
 :qid |stdinbpl.1154:22|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| QPMask@0) null (P x@@18)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9 T@Ref) (f_5 T@Field_18751_3133) ) (!  (=> (or (or (not (= o_9 null)) (not (IsPredicateField_8321_3133 f_5))) (not (= (getPredWandId_8321_3133 f_5) 0))) (= (select (|PolymorphicMapType_12682_8321_3133#PolymorphicMapType_12682| ZeroMask) o_9 f_5) (select (|PolymorphicMapType_12682_8321_3133#PolymorphicMapType_12682| QPMask@0) o_9 f_5)))
 :qid |stdinbpl.1160:29|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_12682_8321_3133#PolymorphicMapType_12682| ZeroMask) o_9 f_5))
 :pattern ( (select (|PolymorphicMapType_12682_8321_3133#PolymorphicMapType_12682| QPMask@0) o_9 f_5))
)) (forall ((o_9@@0 T@Ref) (f_5@@0 T@Field_12721_19822) ) (!  (=> (or (or (not (= o_9@@0 null)) (not (IsPredicateField_12721_36251 f_5@@0))) (not (= (getPredWandId_8321_8460 f_5@@0) 0))) (= (select (|PolymorphicMapType_12682_8321_8460#PolymorphicMapType_12682| ZeroMask) o_9@@0 f_5@@0) (select (|PolymorphicMapType_12682_8321_8460#PolymorphicMapType_12682| QPMask@0) o_9@@0 f_5@@0)))
 :qid |stdinbpl.1160:29|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_12682_8321_8460#PolymorphicMapType_12682| ZeroMask) o_9@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_12682_8321_8460#PolymorphicMapType_12682| QPMask@0) o_9@@0 f_5@@0))
))) (forall ((o_9@@1 T@Ref) (f_5@@1 T@Field_12721_53) ) (!  (=> (or (or (not (= o_9@@1 null)) (not (IsPredicateField_8321_53 f_5@@1))) (not (= (getPredWandId_8321_53 f_5@@1) 0))) (= (select (|PolymorphicMapType_12682_8321_53#PolymorphicMapType_12682| ZeroMask) o_9@@1 f_5@@1) (select (|PolymorphicMapType_12682_8321_53#PolymorphicMapType_12682| QPMask@0) o_9@@1 f_5@@1)))
 :qid |stdinbpl.1160:29|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_12682_8321_53#PolymorphicMapType_12682| ZeroMask) o_9@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_12682_8321_53#PolymorphicMapType_12682| QPMask@0) o_9@@1 f_5@@1))
))) (forall ((o_9@@2 T@Ref) (f_5@@2 T@Field_12734_12735) ) (!  (=> (or (or (not (= o_9@@2 null)) (not (IsPredicateField_8321_12735 f_5@@2))) (not (= (getPredWandId_8321_12735 f_5@@2) 0))) (= (select (|PolymorphicMapType_12682_8321_12735#PolymorphicMapType_12682| ZeroMask) o_9@@2 f_5@@2) (select (|PolymorphicMapType_12682_8321_12735#PolymorphicMapType_12682| QPMask@0) o_9@@2 f_5@@2)))
 :qid |stdinbpl.1160:29|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_12682_8321_12735#PolymorphicMapType_12682| ZeroMask) o_9@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_12682_8321_12735#PolymorphicMapType_12682| QPMask@0) o_9@@2 f_5@@2))
))) (forall ((o_9@@3 T@Ref) (f_5@@3 T@Field_12721_26421) ) (!  (=> (or (or (not (= o_9@@3 null)) (not (IsPredicateField_8321_46880 f_5@@3))) (not (= (getPredWandId_8321_58185 f_5@@3) 0))) (= (select (|PolymorphicMapType_12682_8321_44588#PolymorphicMapType_12682| ZeroMask) o_9@@3 f_5@@3) (select (|PolymorphicMapType_12682_8321_44588#PolymorphicMapType_12682| QPMask@0) o_9@@3 f_5@@3)))
 :qid |stdinbpl.1160:29|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_12682_8321_44588#PolymorphicMapType_12682| ZeroMask) o_9@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_12682_8321_44588#PolymorphicMapType_12682| QPMask@0) o_9@@3 f_5@@3))
))) (forall ((o_9@@4 T@Ref) (f_5@@4 T@Field_19821_3133) ) (!  (=> (or (or (not (= o_9@@4 null)) (not (IsPredicateField_8459_3133 f_5@@4))) (not (= (getPredWandId_8459_3133 f_5@@4) 0))) (= (select (|PolymorphicMapType_12682_8459_3133#PolymorphicMapType_12682| ZeroMask) o_9@@4 f_5@@4) (select (|PolymorphicMapType_12682_8459_3133#PolymorphicMapType_12682| QPMask@0) o_9@@4 f_5@@4)))
 :qid |stdinbpl.1160:29|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_12682_8459_3133#PolymorphicMapType_12682| ZeroMask) o_9@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_12682_8459_3133#PolymorphicMapType_12682| QPMask@0) o_9@@4 f_5@@4))
))) (forall ((o_9@@5 T@Ref) (f_5@@5 T@Field_19821_19822) ) (!  (=> (or (or (not (= o_9@@5 null)) (not (IsPredicateField_8459_8460 f_5@@5))) (not (= (getPredWandId_8459_8460 f_5@@5) 0))) (= (select (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| ZeroMask) o_9@@5 f_5@@5) (select (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| QPMask@0) o_9@@5 f_5@@5)))
 :qid |stdinbpl.1160:29|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| ZeroMask) o_9@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| QPMask@0) o_9@@5 f_5@@5))
))) (forall ((o_9@@6 T@Ref) (f_5@@6 T@Field_19821_53) ) (!  (=> (or (or (not (= o_9@@6 null)) (not (IsPredicateField_8459_53 f_5@@6))) (not (= (getPredWandId_8459_53 f_5@@6) 0))) (= (select (|PolymorphicMapType_12682_8459_53#PolymorphicMapType_12682| ZeroMask) o_9@@6 f_5@@6) (select (|PolymorphicMapType_12682_8459_53#PolymorphicMapType_12682| QPMask@0) o_9@@6 f_5@@6)))
 :qid |stdinbpl.1160:29|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_12682_8459_53#PolymorphicMapType_12682| ZeroMask) o_9@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_12682_8459_53#PolymorphicMapType_12682| QPMask@0) o_9@@6 f_5@@6))
))) (forall ((o_9@@7 T@Ref) (f_5@@7 T@Field_19821_12735) ) (!  (=> (or (or (not (= o_9@@7 null)) (not (IsPredicateField_8459_12735 f_5@@7))) (not (= (getPredWandId_8459_12735 f_5@@7) 0))) (= (select (|PolymorphicMapType_12682_8459_12735#PolymorphicMapType_12682| ZeroMask) o_9@@7 f_5@@7) (select (|PolymorphicMapType_12682_8459_12735#PolymorphicMapType_12682| QPMask@0) o_9@@7 f_5@@7)))
 :qid |stdinbpl.1160:29|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_12682_8459_12735#PolymorphicMapType_12682| ZeroMask) o_9@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_12682_8459_12735#PolymorphicMapType_12682| QPMask@0) o_9@@7 f_5@@7))
))) (forall ((o_9@@8 T@Ref) (f_5@@8 T@Field_26416_26421) ) (!  (=> (or (or (not (= o_9@@8 null)) (not (IsPredicateField_8459_46063 f_5@@8))) (not (= (getPredWandId_8459_58994 f_5@@8) 0))) (= (select (|PolymorphicMapType_12682_8459_44174#PolymorphicMapType_12682| ZeroMask) o_9@@8 f_5@@8) (select (|PolymorphicMapType_12682_8459_44174#PolymorphicMapType_12682| QPMask@0) o_9@@8 f_5@@8)))
 :qid |stdinbpl.1160:29|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_12682_8459_44174#PolymorphicMapType_12682| ZeroMask) o_9@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_12682_8459_44174#PolymorphicMapType_12682| QPMask@0) o_9@@8 f_5@@8))
))) (forall ((x@@19 T@Ref) ) (!  (=> (not (and (and (and (<= 0 (invRecv3 x@@19)) (< (invRecv3 x@@19) (|Seq#Length_8337| ys))) (< NoPerm FullPerm)) (qpRange3 x@@19))) (= (select (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| QPMask@0) null (P x@@19)) (select (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| ZeroMask) null (P x@@19))))
 :qid |stdinbpl.1164:22|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_12682_8459_8460#PolymorphicMapType_12682| QPMask@0) null (P x@@19)))
))) (and (and (state Heap@@46 QPMask@0) (state Heap@@46 QPMask@0)) (and (state Heap@@46 QPMask@0) (state Heap@@46 QPMask@0)))) (and (and (and (=> (= (ControlFlow 0 29) 26) anon21_Else_correct) (=> (= (ControlFlow 0 29) 14) anon22_Else_correct)) (=> (= (ControlFlow 0 29) 19) anon23_Then_correct)) (=> (= (ControlFlow 0 29) 21) anon23_Else_correct)))))))))
(let ((anon7_correct true))
(let ((anon20_Else_correct  (=> (and (not (and (<= 0 i_15) (< i_15 (|Seq#Length_8337| ys)))) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon20_Then_correct  (=> (and (<= 0 i_15) (< i_15 (|Seq#Length_8337| ys))) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= i_15 0)) (=> (>= i_15 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< i_15 (|Seq#Length_8337| ys))) (=> (< i_15 (|Seq#Length_8337| ys)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon17_Else_correct  (=> (forall ((ix_1 Int) (jx_1 Int) ) (!  (=> (and (>= ix_1 0) (and (< ix_1 (|Seq#Length_8337| ys)) (and (>= jx_1 0) (and (< jx_1 (|Seq#Length_8337| ys)) (not (= ix_1 jx_1)))))) (not (= (|Seq#Index_8337| ys ix_1) (|Seq#Index_8337| ys jx_1))))
 :qid |stdinbpl.1113:20|
 :skolemid |96|
 :pattern ( (|Seq#Index_8337| ys ix_1) (|Seq#Index_8337| ys jx_1))
)) (=> (and (state Heap@@46 ZeroMask) (state Heap@@46 ZeroMask)) (and (and (=> (= (ControlFlow 0 31) 29) anon19_Else_correct) (=> (= (ControlFlow 0 31) 9) anon20_Then_correct)) (=> (= (ControlFlow 0 31) 12) anon20_Else_correct))))))
(let ((anon3_correct true))
(let ((anon18_Else_correct  (=> (and (not (and (>= ix_11 0) (and (< ix_11 (|Seq#Length_8337| ys)) (and (>= jx_11 0) (and (< jx_11 (|Seq#Length_8337| ys)) (not (= ix_11 jx_11))))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon18_Then_correct  (=> (and (>= ix_11 0) (and (< ix_11 (|Seq#Length_8337| ys)) (and (>= jx_11 0) (and (< jx_11 (|Seq#Length_8337| ys)) (not (= ix_11 jx_11)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= ix_11 0)) (=> (>= ix_11 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< ix_11 (|Seq#Length_8337| ys))) (=> (< ix_11 (|Seq#Length_8337| ys)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= jx_11 0)) (=> (>= jx_11 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< jx_11 (|Seq#Length_8337| ys))) (=> (< jx_11 (|Seq#Length_8337| ys)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (state Heap@@46 ZeroMask) (=> (and (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (<= 0 k) (state Heap@@46 ZeroMask))) (and (and (state Heap@@46 ZeroMask) (< k (|Seq#Length_8337| ys))) (and (state Heap@@46 ZeroMask) (state Heap@@46 ZeroMask)))) (and (and (=> (= (ControlFlow 0 32) 31) anon17_Else_correct) (=> (= (ControlFlow 0 32) 2) anon18_Then_correct)) (=> (= (ControlFlow 0 32) 7) anon18_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 33) 32) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
