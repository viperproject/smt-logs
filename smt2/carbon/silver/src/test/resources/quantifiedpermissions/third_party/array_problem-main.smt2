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
(declare-sort T@Field_15784_53 0)
(declare-sort T@Field_15797_15798 0)
(declare-sort T@Field_21860_21865 0)
(declare-sort T@Seq_21863 0)
(declare-sort T@Field_21924_3164 0)
(declare-sort T@Field_9955_49862 0)
(declare-sort T@Field_9955_49729 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_15745 0)) (((PolymorphicMapType_15745 (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| (Array T@Ref T@Field_15784_53 Real)) (|PolymorphicMapType_15745_9957_28312#PolymorphicMapType_15745| (Array T@Ref T@Field_21860_21865 Real)) (|PolymorphicMapType_15745_9955_15798#PolymorphicMapType_15745| (Array T@Ref T@Field_15797_15798 Real)) (|PolymorphicMapType_15745_9955_3164#PolymorphicMapType_15745| (Array T@Ref T@Field_21924_3164 Real)) (|PolymorphicMapType_15745_9955_49729#PolymorphicMapType_15745| (Array T@Ref T@Field_9955_49729 Real)) (|PolymorphicMapType_15745_9955_54556#PolymorphicMapType_15745| (Array T@Ref T@Field_9955_49862 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_16273 0)) (((PolymorphicMapType_16273 (|PolymorphicMapType_16273_15784_53#PolymorphicMapType_16273| (Array T@Ref T@Field_15784_53 Bool)) (|PolymorphicMapType_16273_15784_15798#PolymorphicMapType_16273| (Array T@Ref T@Field_15797_15798 Bool)) (|PolymorphicMapType_16273_15784_21865#PolymorphicMapType_16273| (Array T@Ref T@Field_21860_21865 Bool)) (|PolymorphicMapType_16273_15784_3164#PolymorphicMapType_16273| (Array T@Ref T@Field_21924_3164 Bool)) (|PolymorphicMapType_16273_15784_49729#PolymorphicMapType_16273| (Array T@Ref T@Field_9955_49729 Bool)) (|PolymorphicMapType_16273_15784_51244#PolymorphicMapType_16273| (Array T@Ref T@Field_9955_49862 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15724 0)) (((PolymorphicMapType_15724 (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| (Array T@Ref T@Field_15784_53 Bool)) (|PolymorphicMapType_15724_9758_9759#PolymorphicMapType_15724| (Array T@Ref T@Field_15797_15798 T@Ref)) (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| (Array T@Ref T@Field_21860_21865 T@Seq_21863)) (|PolymorphicMapType_15724_9955_3164#PolymorphicMapType_15724| (Array T@Ref T@Field_21924_3164 Int)) (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| (Array T@Ref T@Field_9955_49862 T@PolymorphicMapType_16273)) (|PolymorphicMapType_15724_15784_49729#PolymorphicMapType_15724| (Array T@Ref T@Field_9955_49729 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_15784_53)
(declare-fun val () T@Field_15784_53)
(declare-fun ar () T@Field_21860_21865)
(declare-fun other_3 () T@Field_21924_3164)
(declare-fun |Seq#Length_9977| (T@Seq_21863) Int)
(declare-fun |Seq#Drop_9977| (T@Seq_21863 Int) T@Seq_21863)
(declare-sort T@Seq_3011 0)
(declare-fun |Seq#Length_3011| (T@Seq_3011) Int)
(declare-fun |Seq#Drop_3011| (T@Seq_3011 Int) T@Seq_3011)
(declare-fun succHeap (T@PolymorphicMapType_15724 T@PolymorphicMapType_15724) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_15724 T@PolymorphicMapType_15724) Bool)
(declare-fun state (T@PolymorphicMapType_15724 T@PolymorphicMapType_15745) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_15745) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_16273)
(declare-fun |count'| (T@PolymorphicMapType_15724 T@Seq_21863 Int) Int)
(declare-fun dummyFunction_3877 (Int) Bool)
(declare-fun |count#triggerStateless| (T@Seq_21863 Int) Int)
(declare-fun |Seq#Index_9977| (T@Seq_21863 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3011| (T@Seq_3011 Int) Int)
(declare-fun |Seq#Empty_9977| () T@Seq_21863)
(declare-fun |Seq#Empty_3011| () T@Seq_3011)
(declare-fun |Seq#Update_9977| (T@Seq_21863 Int T@Ref) T@Seq_21863)
(declare-fun |Seq#Update_3011| (T@Seq_3011 Int Int) T@Seq_3011)
(declare-fun |Seq#Take_9977| (T@Seq_21863 Int) T@Seq_21863)
(declare-fun |Seq#Take_3011| (T@Seq_3011 Int) T@Seq_3011)
(declare-fun |Seq#Contains_3011| (T@Seq_3011 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3011)
(declare-fun |Seq#Contains_21863| (T@Seq_21863 T@Ref) Bool)
(declare-fun |Seq#Skolem_21863| (T@Seq_21863 T@Ref) Int)
(declare-fun |Seq#Skolem_3011| (T@Seq_3011 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_15724 T@PolymorphicMapType_15724 T@PolymorphicMapType_15745) Bool)
(declare-fun IsPredicateField_9955_49820 (T@Field_9955_49729) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9955 (T@Field_9955_49729) T@Field_9955_49862)
(declare-fun HasDirectPerm_9955_49793 (T@PolymorphicMapType_15745 T@Ref T@Field_9955_49729) Bool)
(declare-fun IsWandField_9955_51771 (T@Field_9955_49729) Bool)
(declare-fun WandMaskField_9955 (T@Field_9955_49729) T@Field_9955_49862)
(declare-fun |Seq#Singleton_9977| (T@Ref) T@Seq_21863)
(declare-fun |Seq#Singleton_3011| (Int) T@Seq_3011)
(declare-fun |Seq#Append_21863| (T@Seq_21863 T@Seq_21863) T@Seq_21863)
(declare-fun |Seq#Append_3011| (T@Seq_3011 T@Seq_3011) T@Seq_3011)
(declare-fun dummyHeap () T@PolymorphicMapType_15724)
(declare-fun ZeroMask () T@PolymorphicMapType_15745)
(declare-fun InsidePredicate_15784_15784 (T@Field_9955_49729 T@FrameType T@Field_9955_49729 T@FrameType) Bool)
(declare-fun count_2 (T@PolymorphicMapType_15724 T@Seq_21863 Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#ContainsTrigger_3011| (T@Seq_3011 Int) Bool)
(declare-fun IsPredicateField_9955_3133 (T@Field_15784_53) Bool)
(declare-fun IsWandField_9955_3133 (T@Field_15784_53) Bool)
(declare-fun IsPredicateField_9957_21887 (T@Field_21860_21865) Bool)
(declare-fun IsWandField_9957_21913 (T@Field_21860_21865) Bool)
(declare-fun IsPredicateField_9961_3164 (T@Field_21924_3164) Bool)
(declare-fun IsWandField_9961_3164 (T@Field_21924_3164) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9955_55891 (T@Field_9955_49862) Bool)
(declare-fun IsWandField_9955_55907 (T@Field_9955_49862) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_9955_15798 (T@Field_15797_15798) Bool)
(declare-fun IsWandField_9955_15798 (T@Field_15797_15798) Bool)
(declare-fun HasDirectPerm_9955_56428 (T@PolymorphicMapType_15745 T@Ref T@Field_9955_49862) Bool)
(declare-fun HasDirectPerm_9955_3164 (T@PolymorphicMapType_15745 T@Ref T@Field_21924_3164) Bool)
(declare-fun HasDirectPerm_9955_15798 (T@PolymorphicMapType_15745 T@Ref T@Field_15797_15798) Bool)
(declare-fun HasDirectPerm_9957_28464 (T@PolymorphicMapType_15745 T@Ref T@Field_21860_21865) Bool)
(declare-fun HasDirectPerm_9955_3133 (T@PolymorphicMapType_15745 T@Ref T@Field_15784_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |count#condqp1| (T@PolymorphicMapType_15724 T@Seq_21863 Int) Int)
(declare-fun |sk_count#condqp1| (Int Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_15745 T@PolymorphicMapType_15745 T@PolymorphicMapType_15745) Bool)
(declare-fun |Seq#Equal_21863| (T@Seq_21863 T@Seq_21863) Bool)
(declare-fun |Seq#Equal_3011| (T@Seq_3011 T@Seq_3011) Bool)
(declare-fun |Seq#ContainsTrigger_9977| (T@Seq_21863 T@Ref) Bool)
(declare-fun |Seq#SkolemDiff_21863| (T@Seq_21863 T@Seq_21863) Int)
(declare-fun |Seq#SkolemDiff_3011| (T@Seq_3011 T@Seq_3011) Int)
(declare-fun |count#frame| (T@FrameType T@Seq_21863 Int) Int)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_3675 (Int) T@FrameType)
(declare-fun FrameFragment_9866 (T@FrameType) T@FrameType)
(assert (distinct $allocated val)
)
(assert (forall ((s T@Seq_21863) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_9977| s)) (= (|Seq#Length_9977| (|Seq#Drop_9977| s n)) (- (|Seq#Length_9977| s) n))) (=> (< (|Seq#Length_9977| s) n) (= (|Seq#Length_9977| (|Seq#Drop_9977| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_9977| (|Seq#Drop_9977| s n)) (|Seq#Length_9977| s))))
 :qid |stdinbpl.306:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_9977| (|Seq#Drop_9977| s n)))
 :pattern ( (|Seq#Length_9977| s) (|Seq#Drop_9977| s n))
)))
(assert (forall ((s@@0 T@Seq_3011) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3011| s@@0)) (= (|Seq#Length_3011| (|Seq#Drop_3011| s@@0 n@@0)) (- (|Seq#Length_3011| s@@0) n@@0))) (=> (< (|Seq#Length_3011| s@@0) n@@0) (= (|Seq#Length_3011| (|Seq#Drop_3011| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3011| (|Seq#Drop_3011| s@@0 n@@0)) (|Seq#Length_3011| s@@0))))
 :qid |stdinbpl.306:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3011| (|Seq#Drop_3011| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3011| s@@0) (|Seq#Drop_3011| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_15724) (Heap1 T@PolymorphicMapType_15724) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_15724) (Mask T@PolymorphicMapType_15745) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_15724) (Heap1@@0 T@PolymorphicMapType_15724) (Heap2 T@PolymorphicMapType_15724) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_9955_49862) ) (!  (not (select (|PolymorphicMapType_16273_15784_51244#PolymorphicMapType_16273| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16273_15784_51244#PolymorphicMapType_16273| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9955_49729) ) (!  (not (select (|PolymorphicMapType_16273_15784_49729#PolymorphicMapType_16273| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16273_15784_49729#PolymorphicMapType_16273| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_21924_3164) ) (!  (not (select (|PolymorphicMapType_16273_15784_3164#PolymorphicMapType_16273| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16273_15784_3164#PolymorphicMapType_16273| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_21860_21865) ) (!  (not (select (|PolymorphicMapType_16273_15784_21865#PolymorphicMapType_16273| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16273_15784_21865#PolymorphicMapType_16273| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_15797_15798) ) (!  (not (select (|PolymorphicMapType_16273_15784_15798#PolymorphicMapType_16273| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16273_15784_15798#PolymorphicMapType_16273| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_15784_53) ) (!  (not (select (|PolymorphicMapType_16273_15784_53#PolymorphicMapType_16273| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16273_15784_53#PolymorphicMapType_16273| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_15724) (l_1 T@Seq_21863) (n@@1 Int) ) (! (dummyFunction_3877 (|count#triggerStateless| l_1 n@@1))
 :qid |stdinbpl.598:15|
 :skolemid |59|
 :pattern ( (|count'| Heap@@0 l_1 n@@1))
)))
(assert (forall ((s@@1 T@Seq_21863) (n@@2 Int) (j Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j)) (< j (- (|Seq#Length_9977| s@@1) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j n@@2) n@@2) j) (= (|Seq#Index_9977| (|Seq#Drop_9977| s@@1 n@@2) j) (|Seq#Index_9977| s@@1 (|Seq#Add| j n@@2)))))
 :qid |stdinbpl.327:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_9977| (|Seq#Drop_9977| s@@1 n@@2) j))
)))
(assert (forall ((s@@2 T@Seq_3011) (n@@3 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@3) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3011| s@@2) n@@3))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@3) n@@3) j@@0) (= (|Seq#Index_3011| (|Seq#Drop_3011| s@@2 n@@3) j@@0) (|Seq#Index_3011| s@@2 (|Seq#Add| j@@0 n@@3)))))
 :qid |stdinbpl.327:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3011| (|Seq#Drop_3011| s@@2 n@@3) j@@0))
)))
(assert (= (|Seq#Length_9977| |Seq#Empty_9977|) 0))
(assert (= (|Seq#Length_3011| |Seq#Empty_3011|) 0))
(assert (forall ((s@@3 T@Seq_21863) (i Int) (v T@Ref) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_9977| s@@3))) (and (=> (= i n@@4) (= (|Seq#Index_9977| (|Seq#Update_9977| s@@3 i v) n@@4) v)) (=> (not (= i n@@4)) (= (|Seq#Index_9977| (|Seq#Update_9977| s@@3 i v) n@@4) (|Seq#Index_9977| s@@3 n@@4)))))
 :qid |stdinbpl.282:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_9977| (|Seq#Update_9977| s@@3 i v) n@@4))
 :pattern ( (|Seq#Index_9977| s@@3 n@@4) (|Seq#Update_9977| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3011) (i@@0 Int) (v@@0 Int) (n@@5 Int) ) (!  (=> (and (<= 0 n@@5) (< n@@5 (|Seq#Length_3011| s@@4))) (and (=> (= i@@0 n@@5) (= (|Seq#Index_3011| (|Seq#Update_3011| s@@4 i@@0 v@@0) n@@5) v@@0)) (=> (not (= i@@0 n@@5)) (= (|Seq#Index_3011| (|Seq#Update_3011| s@@4 i@@0 v@@0) n@@5) (|Seq#Index_3011| s@@4 n@@5)))))
 :qid |stdinbpl.282:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3011| (|Seq#Update_3011| s@@4 i@@0 v@@0) n@@5))
 :pattern ( (|Seq#Index_3011| s@@4 n@@5) (|Seq#Update_3011| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_21863) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_9977| s@@5)) (= (|Seq#Length_9977| (|Seq#Take_9977| s@@5 n@@6)) n@@6)) (=> (< (|Seq#Length_9977| s@@5) n@@6) (= (|Seq#Length_9977| (|Seq#Take_9977| s@@5 n@@6)) (|Seq#Length_9977| s@@5))))) (=> (< n@@6 0) (= (|Seq#Length_9977| (|Seq#Take_9977| s@@5 n@@6)) 0)))
 :qid |stdinbpl.293:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_9977| (|Seq#Take_9977| s@@5 n@@6)))
 :pattern ( (|Seq#Take_9977| s@@5 n@@6) (|Seq#Length_9977| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3011) (n@@7 Int) ) (!  (and (=> (<= 0 n@@7) (and (=> (<= n@@7 (|Seq#Length_3011| s@@6)) (= (|Seq#Length_3011| (|Seq#Take_3011| s@@6 n@@7)) n@@7)) (=> (< (|Seq#Length_3011| s@@6) n@@7) (= (|Seq#Length_3011| (|Seq#Take_3011| s@@6 n@@7)) (|Seq#Length_3011| s@@6))))) (=> (< n@@7 0) (= (|Seq#Length_3011| (|Seq#Take_3011| s@@6 n@@7)) 0)))
 :qid |stdinbpl.293:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3011| (|Seq#Take_3011| s@@6 n@@7)))
 :pattern ( (|Seq#Take_3011| s@@6 n@@7) (|Seq#Length_3011| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3011| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.567:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_21863) (x T@Ref) ) (!  (=> (|Seq#Contains_21863| s@@7 x) (and (and (<= 0 (|Seq#Skolem_21863| s@@7 x)) (< (|Seq#Skolem_21863| s@@7 x) (|Seq#Length_9977| s@@7))) (= (|Seq#Index_9977| s@@7 (|Seq#Skolem_21863| s@@7 x)) x)))
 :qid |stdinbpl.425:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_21863| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3011) (x@@0 Int) ) (!  (=> (|Seq#Contains_3011| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3011| s@@8 x@@0)) (< (|Seq#Skolem_3011| s@@8 x@@0) (|Seq#Length_3011| s@@8))) (= (|Seq#Index_3011| s@@8 (|Seq#Skolem_3011| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.425:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3011| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_21863) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_9977| s@@9 n@@8) s@@9))
 :qid |stdinbpl.409:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_9977| s@@9 n@@8))
)))
(assert (forall ((s@@10 T@Seq_3011) (n@@9 Int) ) (!  (=> (<= n@@9 0) (= (|Seq#Drop_3011| s@@10 n@@9) s@@10))
 :qid |stdinbpl.409:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3011| s@@10 n@@9))
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
(assert (forall ((Heap@@1 T@PolymorphicMapType_15724) (ExhaleHeap T@PolymorphicMapType_15724) (Mask@@0 T@PolymorphicMapType_15745) (pm_f_19 T@Field_9955_49729) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_9955_49793 Mask@@0 null pm_f_19) (IsPredicateField_9955_49820 pm_f_19)) (= (select (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@1) null (PredicateMaskField_9955 pm_f_19)) (select (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| ExhaleHeap) null (PredicateMaskField_9955 pm_f_19)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_9955_49820 pm_f_19) (select (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| ExhaleHeap) null (PredicateMaskField_9955 pm_f_19)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_15724) (ExhaleHeap@@0 T@PolymorphicMapType_15724) (Mask@@1 T@PolymorphicMapType_15745) (pm_f_19@@0 T@Field_9955_49729) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_9955_49793 Mask@@1 null pm_f_19@@0) (IsWandField_9955_51771 pm_f_19@@0)) (= (select (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@2) null (WandMaskField_9955 pm_f_19@@0)) (select (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| ExhaleHeap@@0) null (WandMaskField_9955 pm_f_19@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsWandField_9955_51771 pm_f_19@@0) (select (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| ExhaleHeap@@0) null (WandMaskField_9955 pm_f_19@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_21863| (|Seq#Singleton_9977| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.550:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_21863| (|Seq#Singleton_9977| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3011| (|Seq#Singleton_3011| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.550:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3011| (|Seq#Singleton_3011| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_21863) (n@@10 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@10)) (< j@@3 (|Seq#Length_9977| s@@11))) (= (|Seq#Index_9977| (|Seq#Take_9977| s@@11 n@@10) j@@3) (|Seq#Index_9977| s@@11 j@@3)))
 :qid |stdinbpl.301:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_9977| (|Seq#Take_9977| s@@11 n@@10) j@@3))
 :pattern ( (|Seq#Index_9977| s@@11 j@@3) (|Seq#Take_9977| s@@11 n@@10))
)))
(assert (forall ((s@@12 T@Seq_3011) (n@@11 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@11)) (< j@@4 (|Seq#Length_3011| s@@12))) (= (|Seq#Index_3011| (|Seq#Take_3011| s@@12 n@@11) j@@4) (|Seq#Index_3011| s@@12 j@@4)))
 :qid |stdinbpl.301:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3011| (|Seq#Take_3011| s@@12 n@@11) j@@4))
 :pattern ( (|Seq#Index_3011| s@@12 j@@4) (|Seq#Take_3011| s@@12 n@@11))
)))
(assert (forall ((s@@13 T@Seq_21863) (t T@Seq_21863) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_9977| s@@13))) (< n@@12 (|Seq#Length_9977| (|Seq#Append_21863| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_9977| s@@13)) (|Seq#Length_9977| s@@13)) n@@12) (= (|Seq#Take_9977| (|Seq#Append_21863| s@@13 t) n@@12) (|Seq#Append_21863| s@@13 (|Seq#Take_9977| t (|Seq#Sub| n@@12 (|Seq#Length_9977| s@@13)))))))
 :qid |stdinbpl.386:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_9977| (|Seq#Append_21863| s@@13 t) n@@12))
)))
(assert (forall ((s@@14 T@Seq_3011) (t@@0 T@Seq_3011) (n@@13 Int) ) (!  (=> (and (and (> n@@13 0) (> n@@13 (|Seq#Length_3011| s@@14))) (< n@@13 (|Seq#Length_3011| (|Seq#Append_3011| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_3011| s@@14)) (|Seq#Length_3011| s@@14)) n@@13) (= (|Seq#Take_3011| (|Seq#Append_3011| s@@14 t@@0) n@@13) (|Seq#Append_3011| s@@14 (|Seq#Take_3011| t@@0 (|Seq#Sub| n@@13 (|Seq#Length_3011| s@@14)))))))
 :qid |stdinbpl.386:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3011| (|Seq#Append_3011| s@@14 t@@0) n@@13))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@3 T@PolymorphicMapType_15724) (ExhaleHeap@@1 T@PolymorphicMapType_15724) (Mask@@2 T@PolymorphicMapType_15745) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap@@3) o_12 $allocated) (select (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| ExhaleHeap@@1) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| ExhaleHeap@@1) o_12 $allocated))
)))
(assert (forall ((p T@Field_9955_49729) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_15784_15784 p v_1 p w))
 :qid |stdinbpl.204:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15784_15784 p v_1 p w))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_15724) (Mask@@3 T@PolymorphicMapType_15745) (l_1@@0 T@Seq_21863) (n@@14 Int) ) (!  (=> (and (state Heap@@4 Mask@@3) (< AssumeFunctionsAbove 0)) (=> (and (<= 0 n@@14) (and (<= n@@14 (|Seq#Length_9977| l_1@@0)) (and (forall ((i@@3 Int) ) (!  (=> (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| l_1@@0)) i@@3) (not (= (|Seq#Index_9977| l_1@@0 i@@3) null)))
 :qid |stdinbpl.606:97|
 :skolemid |60|
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| l_1@@0)) i@@3))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| l_1@@0)) i@@3))
 :pattern ( (|Seq#Index_9977| l_1@@0 i@@3))
)) (and (forall ((i1_9 Int) (i2 Int) ) (!  (=> (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| l_1@@0)) i1_9) (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| l_1@@0)) i2) (not (= i1_9 i2)))) (not (= (|Seq#Index_9977| l_1@@0 i1_9) (|Seq#Index_9977| l_1@@0 i2))))
 :qid |stdinbpl.609:17|
 :skolemid |61|
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| l_1@@0)) i1_9) (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| l_1@@0)) i2))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| l_1@@0)) i1_9) (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| l_1@@0)) i2))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| l_1@@0)) i1_9) (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| l_1@@0)) i2))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| l_1@@0)) i1_9) (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| l_1@@0)) i2))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| l_1@@0)) i1_9) (|Seq#Index_9977| l_1@@0 i2))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| l_1@@0)) i1_9) (|Seq#Index_9977| l_1@@0 i2))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| l_1@@0)) i2) (|Seq#Index_9977| l_1@@0 i1_9))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| l_1@@0)) i2) (|Seq#Index_9977| l_1@@0 i1_9))
 :pattern ( (|Seq#Index_9977| l_1@@0 i1_9) (|Seq#Index_9977| l_1@@0 i2))
)) (=> (> n@@14 0) (not (= (|Seq#Index_9977| l_1@@0 (- n@@14 1)) null))))))) (= (count_2 Heap@@4 l_1@@0 n@@14) (ite (= n@@14 0) 0 (+ (|count'| Heap@@4 l_1@@0 (- n@@14 1)) (ite (select (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap@@4) (|Seq#Index_9977| l_1@@0 (- n@@14 1)) val) 1 0))))))
 :qid |stdinbpl.604:15|
 :skolemid |62|
 :pattern ( (state Heap@@4 Mask@@3) (count_2 Heap@@4 l_1@@0 n@@14))
)))
(assert (forall ((s0 T@Seq_21863) (s1 T@Seq_21863) (n@@15 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_9977|)) (not (= s1 |Seq#Empty_9977|))) (<= (|Seq#Length_9977| s0) n@@15)) (< n@@15 (|Seq#Length_9977| (|Seq#Append_21863| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_9977| s0)) (|Seq#Length_9977| s0)) n@@15) (= (|Seq#Index_9977| (|Seq#Append_21863| s0 s1) n@@15) (|Seq#Index_9977| s1 (|Seq#Sub| n@@15 (|Seq#Length_9977| s0))))))
 :qid |stdinbpl.273:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_9977| (|Seq#Append_21863| s0 s1) n@@15))
)))
(assert (forall ((s0@@0 T@Seq_3011) (s1@@0 T@Seq_3011) (n@@16 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3011|)) (not (= s1@@0 |Seq#Empty_3011|))) (<= (|Seq#Length_3011| s0@@0) n@@16)) (< n@@16 (|Seq#Length_3011| (|Seq#Append_3011| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3011| s0@@0)) (|Seq#Length_3011| s0@@0)) n@@16) (= (|Seq#Index_3011| (|Seq#Append_3011| s0@@0 s1@@0) n@@16) (|Seq#Index_3011| s1@@0 (|Seq#Sub| n@@16 (|Seq#Length_3011| s0@@0))))))
 :qid |stdinbpl.273:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3011| (|Seq#Append_3011| s0@@0 s1@@0) n@@16))
)))
(assert  (not (IsPredicateField_9955_3133 val)))
(assert  (not (IsWandField_9955_3133 val)))
(assert  (not (IsPredicateField_9957_21887 ar)))
(assert  (not (IsWandField_9957_21913 ar)))
(assert  (not (IsPredicateField_9961_3164 other_3)))
(assert  (not (IsWandField_9961_3164 other_3)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_15724) (ExhaleHeap@@2 T@PolymorphicMapType_15724) (Mask@@4 T@PolymorphicMapType_15745) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4) (succHeap Heap@@5 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_15745) (o_2@@5 T@Ref) (f_4@@5 T@Field_9955_49862) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_15745_9955_54556#PolymorphicMapType_15745| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_9955_55891 f_4@@5))) (not (IsWandField_9955_55907 f_4@@5))) (<= (select (|PolymorphicMapType_15745_9955_54556#PolymorphicMapType_15745| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_15745_9955_54556#PolymorphicMapType_15745| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_15745) (o_2@@6 T@Ref) (f_4@@6 T@Field_9955_49729) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_15745_9955_49729#PolymorphicMapType_15745| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_9955_49820 f_4@@6))) (not (IsWandField_9955_51771 f_4@@6))) (<= (select (|PolymorphicMapType_15745_9955_49729#PolymorphicMapType_15745| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_15745_9955_49729#PolymorphicMapType_15745| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_15745) (o_2@@7 T@Ref) (f_4@@7 T@Field_21924_3164) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_15745_9955_3164#PolymorphicMapType_15745| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_9961_3164 f_4@@7))) (not (IsWandField_9961_3164 f_4@@7))) (<= (select (|PolymorphicMapType_15745_9955_3164#PolymorphicMapType_15745| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_15745_9955_3164#PolymorphicMapType_15745| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_15745) (o_2@@8 T@Ref) (f_4@@8 T@Field_15797_15798) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_15745_9955_15798#PolymorphicMapType_15745| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_9955_15798 f_4@@8))) (not (IsWandField_9955_15798 f_4@@8))) (<= (select (|PolymorphicMapType_15745_9955_15798#PolymorphicMapType_15745| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_15745_9955_15798#PolymorphicMapType_15745| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_15745) (o_2@@9 T@Ref) (f_4@@9 T@Field_21860_21865) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_15745_9957_28312#PolymorphicMapType_15745| Mask@@9) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_9957_21887 f_4@@9))) (not (IsWandField_9957_21913 f_4@@9))) (<= (select (|PolymorphicMapType_15745_9957_28312#PolymorphicMapType_15745| Mask@@9) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_15745_9957_28312#PolymorphicMapType_15745| Mask@@9) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_15745) (o_2@@10 T@Ref) (f_4@@10 T@Field_15784_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| Mask@@10) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_9955_3133 f_4@@10))) (not (IsWandField_9955_3133 f_4@@10))) (<= (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| Mask@@10) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| Mask@@10) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_15745) (o_2@@11 T@Ref) (f_4@@11 T@Field_9955_49862) ) (! (= (HasDirectPerm_9955_56428 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_15745_9955_54556#PolymorphicMapType_15745| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9955_56428 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_15745) (o_2@@12 T@Ref) (f_4@@12 T@Field_9955_49729) ) (! (= (HasDirectPerm_9955_49793 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_15745_9955_49729#PolymorphicMapType_15745| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9955_49793 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_15745) (o_2@@13 T@Ref) (f_4@@13 T@Field_21924_3164) ) (! (= (HasDirectPerm_9955_3164 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_15745_9955_3164#PolymorphicMapType_15745| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9955_3164 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_15745) (o_2@@14 T@Ref) (f_4@@14 T@Field_15797_15798) ) (! (= (HasDirectPerm_9955_15798 Mask@@14 o_2@@14 f_4@@14) (> (select (|PolymorphicMapType_15745_9955_15798#PolymorphicMapType_15745| Mask@@14) o_2@@14 f_4@@14) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9955_15798 Mask@@14 o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_15745) (o_2@@15 T@Ref) (f_4@@15 T@Field_21860_21865) ) (! (= (HasDirectPerm_9957_28464 Mask@@15 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_15745_9957_28312#PolymorphicMapType_15745| Mask@@15) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9957_28464 Mask@@15 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_15745) (o_2@@16 T@Ref) (f_4@@16 T@Field_15784_53) ) (! (= (HasDirectPerm_9955_3133 Mask@@16 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| Mask@@16) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9955_3133 Mask@@16 o_2@@16 f_4@@16))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.192:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3011| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.565:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3011| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_15724) (ExhaleHeap@@3 T@PolymorphicMapType_15724) (Mask@@17 T@PolymorphicMapType_15745) (o_12@@0 T@Ref) (f_19 T@Field_9955_49862) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@17) (=> (HasDirectPerm_9955_56428 Mask@@17 o_12@@0 f_19) (= (select (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@6) o_12@@0 f_19) (select (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| ExhaleHeap@@3) o_12@@0 f_19))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@17) (select (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| ExhaleHeap@@3) o_12@@0 f_19))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_15724) (ExhaleHeap@@4 T@PolymorphicMapType_15724) (Mask@@18 T@PolymorphicMapType_15745) (o_12@@1 T@Ref) (f_19@@0 T@Field_9955_49729) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@18) (=> (HasDirectPerm_9955_49793 Mask@@18 o_12@@1 f_19@@0) (= (select (|PolymorphicMapType_15724_15784_49729#PolymorphicMapType_15724| Heap@@7) o_12@@1 f_19@@0) (select (|PolymorphicMapType_15724_15784_49729#PolymorphicMapType_15724| ExhaleHeap@@4) o_12@@1 f_19@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@18) (select (|PolymorphicMapType_15724_15784_49729#PolymorphicMapType_15724| ExhaleHeap@@4) o_12@@1 f_19@@0))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_15724) (ExhaleHeap@@5 T@PolymorphicMapType_15724) (Mask@@19 T@PolymorphicMapType_15745) (o_12@@2 T@Ref) (f_19@@1 T@Field_21924_3164) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@19) (=> (HasDirectPerm_9955_3164 Mask@@19 o_12@@2 f_19@@1) (= (select (|PolymorphicMapType_15724_9955_3164#PolymorphicMapType_15724| Heap@@8) o_12@@2 f_19@@1) (select (|PolymorphicMapType_15724_9955_3164#PolymorphicMapType_15724| ExhaleHeap@@5) o_12@@2 f_19@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@19) (select (|PolymorphicMapType_15724_9955_3164#PolymorphicMapType_15724| ExhaleHeap@@5) o_12@@2 f_19@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_15724) (ExhaleHeap@@6 T@PolymorphicMapType_15724) (Mask@@20 T@PolymorphicMapType_15745) (o_12@@3 T@Ref) (f_19@@2 T@Field_15797_15798) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@20) (=> (HasDirectPerm_9955_15798 Mask@@20 o_12@@3 f_19@@2) (= (select (|PolymorphicMapType_15724_9758_9759#PolymorphicMapType_15724| Heap@@9) o_12@@3 f_19@@2) (select (|PolymorphicMapType_15724_9758_9759#PolymorphicMapType_15724| ExhaleHeap@@6) o_12@@3 f_19@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@20) (select (|PolymorphicMapType_15724_9758_9759#PolymorphicMapType_15724| ExhaleHeap@@6) o_12@@3 f_19@@2))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_15724) (ExhaleHeap@@7 T@PolymorphicMapType_15724) (Mask@@21 T@PolymorphicMapType_15745) (o_12@@4 T@Ref) (f_19@@3 T@Field_21860_21865) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@21) (=> (HasDirectPerm_9957_28464 Mask@@21 o_12@@4 f_19@@3) (= (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@10) o_12@@4 f_19@@3) (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| ExhaleHeap@@7) o_12@@4 f_19@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@21) (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| ExhaleHeap@@7) o_12@@4 f_19@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_15724) (ExhaleHeap@@8 T@PolymorphicMapType_15724) (Mask@@22 T@PolymorphicMapType_15745) (o_12@@5 T@Ref) (f_19@@4 T@Field_15784_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@22) (=> (HasDirectPerm_9955_3133 Mask@@22 o_12@@5 f_19@@4) (= (select (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap@@11) o_12@@5 f_19@@4) (select (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| ExhaleHeap@@8) o_12@@5 f_19@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@22) (select (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| ExhaleHeap@@8) o_12@@5 f_19@@4))
)))
(assert (forall ((s0@@1 T@Seq_21863) (s1@@1 T@Seq_21863) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_9977|)) (not (= s1@@1 |Seq#Empty_9977|))) (= (|Seq#Length_9977| (|Seq#Append_21863| s0@@1 s1@@1)) (+ (|Seq#Length_9977| s0@@1) (|Seq#Length_9977| s1@@1))))
 :qid |stdinbpl.242:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_9977| (|Seq#Append_21863| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3011) (s1@@2 T@Seq_3011) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3011|)) (not (= s1@@2 |Seq#Empty_3011|))) (= (|Seq#Length_3011| (|Seq#Append_3011| s0@@2 s1@@2)) (+ (|Seq#Length_3011| s0@@2) (|Seq#Length_3011| s1@@2))))
 :qid |stdinbpl.242:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3011| (|Seq#Append_3011| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_9955_49862) ) (! (= (select (|PolymorphicMapType_15745_9955_54556#PolymorphicMapType_15745| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15745_9955_54556#PolymorphicMapType_15745| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_9955_49729) ) (! (= (select (|PolymorphicMapType_15745_9955_49729#PolymorphicMapType_15745| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15745_9955_49729#PolymorphicMapType_15745| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_21924_3164) ) (! (= (select (|PolymorphicMapType_15745_9955_3164#PolymorphicMapType_15745| ZeroMask) o_2@@19 f_4@@19) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15745_9955_3164#PolymorphicMapType_15745| ZeroMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_15797_15798) ) (! (= (select (|PolymorphicMapType_15745_9955_15798#PolymorphicMapType_15745| ZeroMask) o_2@@20 f_4@@20) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15745_9955_15798#PolymorphicMapType_15745| ZeroMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_21860_21865) ) (! (= (select (|PolymorphicMapType_15745_9957_28312#PolymorphicMapType_15745| ZeroMask) o_2@@21 f_4@@21) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15745_9957_28312#PolymorphicMapType_15745| ZeroMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_15784_53) ) (! (= (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| ZeroMask) o_2@@22 f_4@@22) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| ZeroMask) o_2@@22 f_4@@22))
)))
(assert (forall ((s@@15 T@Seq_21863) (t@@1 T@Seq_21863) (n@@17 Int) ) (!  (=> (and (> n@@17 0) (> n@@17 (|Seq#Length_9977| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@17 (|Seq#Length_9977| s@@15)) (|Seq#Length_9977| s@@15)) n@@17) (= (|Seq#Drop_9977| (|Seq#Append_21863| s@@15 t@@1) n@@17) (|Seq#Drop_9977| t@@1 (|Seq#Sub| n@@17 (|Seq#Length_9977| s@@15))))))
 :qid |stdinbpl.399:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_9977| (|Seq#Append_21863| s@@15 t@@1) n@@17))
)))
(assert (forall ((s@@16 T@Seq_3011) (t@@2 T@Seq_3011) (n@@18 Int) ) (!  (=> (and (> n@@18 0) (> n@@18 (|Seq#Length_3011| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@18 (|Seq#Length_3011| s@@16)) (|Seq#Length_3011| s@@16)) n@@18) (= (|Seq#Drop_3011| (|Seq#Append_3011| s@@16 t@@2) n@@18) (|Seq#Drop_3011| t@@2 (|Seq#Sub| n@@18 (|Seq#Length_3011| s@@16))))))
 :qid |stdinbpl.399:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3011| (|Seq#Append_3011| s@@16 t@@2) n@@18))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_15724) (l_1@@1 T@Seq_21863) (n@@19 Int) ) (!  (and (= (count_2 Heap@@12 l_1@@1 n@@19) (|count'| Heap@@12 l_1@@1 n@@19)) (dummyFunction_3877 (|count#triggerStateless| l_1@@1 n@@19)))
 :qid |stdinbpl.594:15|
 :skolemid |58|
 :pattern ( (count_2 Heap@@12 l_1@@1 n@@19))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_15724) (Heap1Heap T@PolymorphicMapType_15724) (l_1@@2 T@Seq_21863) (n@@20 Int) ) (!  (=> (and (=  (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| l_1@@2)) (|sk_count#condqp1| (|count#condqp1| Heap2Heap l_1@@2 n@@20) (|count#condqp1| Heap1Heap l_1@@2 n@@20))) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| l_1@@2)) (|sk_count#condqp1| (|count#condqp1| Heap2Heap l_1@@2 n@@20) (|count#condqp1| Heap1Heap l_1@@2 n@@20))) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| l_1@@2)) (|sk_count#condqp1| (|count#condqp1| Heap2Heap l_1@@2 n@@20) (|count#condqp1| Heap1Heap l_1@@2 n@@20))) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap2Heap) (|Seq#Index_9977| l_1@@2 (|sk_count#condqp1| (|count#condqp1| Heap2Heap l_1@@2 n@@20) (|count#condqp1| Heap1Heap l_1@@2 n@@20))) val) (select (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap1Heap) (|Seq#Index_9977| l_1@@2 (|sk_count#condqp1| (|count#condqp1| Heap2Heap l_1@@2 n@@20) (|count#condqp1| Heap1Heap l_1@@2 n@@20))) val)))) (= (|count#condqp1| Heap2Heap l_1@@2 n@@20) (|count#condqp1| Heap1Heap l_1@@2 n@@20)))
 :qid |stdinbpl.627:15|
 :skolemid |64|
 :pattern ( (|count#condqp1| Heap2Heap l_1@@2 n@@20) (|count#condqp1| Heap1Heap l_1@@2 n@@20) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_15745) (SummandMask1 T@PolymorphicMapType_15745) (SummandMask2 T@PolymorphicMapType_15745) (o_2@@23 T@Ref) (f_4@@23 T@Field_9955_49862) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_15745_9955_54556#PolymorphicMapType_15745| ResultMask) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_15745_9955_54556#PolymorphicMapType_15745| SummandMask1) o_2@@23 f_4@@23) (select (|PolymorphicMapType_15745_9955_54556#PolymorphicMapType_15745| SummandMask2) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15745_9955_54556#PolymorphicMapType_15745| ResultMask) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15745_9955_54556#PolymorphicMapType_15745| SummandMask1) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15745_9955_54556#PolymorphicMapType_15745| SummandMask2) o_2@@23 f_4@@23))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_15745) (SummandMask1@@0 T@PolymorphicMapType_15745) (SummandMask2@@0 T@PolymorphicMapType_15745) (o_2@@24 T@Ref) (f_4@@24 T@Field_9955_49729) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_15745_9955_49729#PolymorphicMapType_15745| ResultMask@@0) o_2@@24 f_4@@24) (+ (select (|PolymorphicMapType_15745_9955_49729#PolymorphicMapType_15745| SummandMask1@@0) o_2@@24 f_4@@24) (select (|PolymorphicMapType_15745_9955_49729#PolymorphicMapType_15745| SummandMask2@@0) o_2@@24 f_4@@24))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15745_9955_49729#PolymorphicMapType_15745| ResultMask@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15745_9955_49729#PolymorphicMapType_15745| SummandMask1@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15745_9955_49729#PolymorphicMapType_15745| SummandMask2@@0) o_2@@24 f_4@@24))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_15745) (SummandMask1@@1 T@PolymorphicMapType_15745) (SummandMask2@@1 T@PolymorphicMapType_15745) (o_2@@25 T@Ref) (f_4@@25 T@Field_21924_3164) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_15745_9955_3164#PolymorphicMapType_15745| ResultMask@@1) o_2@@25 f_4@@25) (+ (select (|PolymorphicMapType_15745_9955_3164#PolymorphicMapType_15745| SummandMask1@@1) o_2@@25 f_4@@25) (select (|PolymorphicMapType_15745_9955_3164#PolymorphicMapType_15745| SummandMask2@@1) o_2@@25 f_4@@25))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15745_9955_3164#PolymorphicMapType_15745| ResultMask@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15745_9955_3164#PolymorphicMapType_15745| SummandMask1@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15745_9955_3164#PolymorphicMapType_15745| SummandMask2@@1) o_2@@25 f_4@@25))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_15745) (SummandMask1@@2 T@PolymorphicMapType_15745) (SummandMask2@@2 T@PolymorphicMapType_15745) (o_2@@26 T@Ref) (f_4@@26 T@Field_15797_15798) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_15745_9955_15798#PolymorphicMapType_15745| ResultMask@@2) o_2@@26 f_4@@26) (+ (select (|PolymorphicMapType_15745_9955_15798#PolymorphicMapType_15745| SummandMask1@@2) o_2@@26 f_4@@26) (select (|PolymorphicMapType_15745_9955_15798#PolymorphicMapType_15745| SummandMask2@@2) o_2@@26 f_4@@26))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15745_9955_15798#PolymorphicMapType_15745| ResultMask@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15745_9955_15798#PolymorphicMapType_15745| SummandMask1@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15745_9955_15798#PolymorphicMapType_15745| SummandMask2@@2) o_2@@26 f_4@@26))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_15745) (SummandMask1@@3 T@PolymorphicMapType_15745) (SummandMask2@@3 T@PolymorphicMapType_15745) (o_2@@27 T@Ref) (f_4@@27 T@Field_21860_21865) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_15745_9957_28312#PolymorphicMapType_15745| ResultMask@@3) o_2@@27 f_4@@27) (+ (select (|PolymorphicMapType_15745_9957_28312#PolymorphicMapType_15745| SummandMask1@@3) o_2@@27 f_4@@27) (select (|PolymorphicMapType_15745_9957_28312#PolymorphicMapType_15745| SummandMask2@@3) o_2@@27 f_4@@27))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15745_9957_28312#PolymorphicMapType_15745| ResultMask@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15745_9957_28312#PolymorphicMapType_15745| SummandMask1@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15745_9957_28312#PolymorphicMapType_15745| SummandMask2@@3) o_2@@27 f_4@@27))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_15745) (SummandMask1@@4 T@PolymorphicMapType_15745) (SummandMask2@@4 T@PolymorphicMapType_15745) (o_2@@28 T@Ref) (f_4@@28 T@Field_15784_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| ResultMask@@4) o_2@@28 f_4@@28) (+ (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| SummandMask1@@4) o_2@@28 f_4@@28) (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| SummandMask2@@4) o_2@@28 f_4@@28))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| ResultMask@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| SummandMask1@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| SummandMask2@@4) o_2@@28 f_4@@28))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3011| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3011| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.564:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3011| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_21863) (b T@Seq_21863) ) (!  (=> (|Seq#Equal_21863| a b) (= a b))
 :qid |stdinbpl.537:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_21863| a b))
)))
(assert (forall ((a@@0 T@Seq_3011) (b@@0 T@Seq_3011) ) (!  (=> (|Seq#Equal_3011| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.537:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3011| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_21863) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_9977| s@@17))) (|Seq#ContainsTrigger_9977| s@@17 (|Seq#Index_9977| s@@17 i@@4)))
 :qid |stdinbpl.430:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_9977| s@@17 i@@4))
)))
(assert (forall ((s@@18 T@Seq_3011) (i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_3011| s@@18))) (|Seq#ContainsTrigger_3011| s@@18 (|Seq#Index_3011| s@@18 i@@5)))
 :qid |stdinbpl.430:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3011| s@@18 i@@5))
)))
(assert (forall ((s0@@3 T@Seq_21863) (s1@@3 T@Seq_21863) ) (!  (and (=> (= s0@@3 |Seq#Empty_9977|) (= (|Seq#Append_21863| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_9977|) (= (|Seq#Append_21863| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.248:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_21863| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3011) (s1@@4 T@Seq_3011) ) (!  (and (=> (= s0@@4 |Seq#Empty_3011|) (= (|Seq#Append_3011| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3011|) (= (|Seq#Append_3011| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.248:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3011| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_9977| (|Seq#Singleton_9977| t@@3) 0) t@@3)
 :qid |stdinbpl.252:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_9977| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3011| (|Seq#Singleton_3011| t@@4) 0) t@@4)
 :qid |stdinbpl.252:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3011| t@@4))
)))
(assert (forall ((s@@19 T@Seq_21863) ) (! (<= 0 (|Seq#Length_9977| s@@19))
 :qid |stdinbpl.231:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_9977| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3011) ) (! (<= 0 (|Seq#Length_3011| s@@20))
 :qid |stdinbpl.231:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3011| s@@20))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_15724) (ExhaleHeap@@9 T@PolymorphicMapType_15724) (Mask@@23 T@PolymorphicMapType_15745) (pm_f_19@@1 T@Field_9955_49729) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@23) (=> (and (HasDirectPerm_9955_49793 Mask@@23 null pm_f_19@@1) (IsPredicateField_9955_49820 pm_f_19@@1)) (and (and (and (and (and (forall ((o2_19 T@Ref) (f_19@@5 T@Field_15784_53) ) (!  (=> (select (|PolymorphicMapType_16273_15784_53#PolymorphicMapType_16273| (select (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@13) null (PredicateMaskField_9955 pm_f_19@@1))) o2_19 f_19@@5) (= (select (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap@@13) o2_19 f_19@@5) (select (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| ExhaleHeap@@9) o2_19 f_19@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| ExhaleHeap@@9) o2_19 f_19@@5))
)) (forall ((o2_19@@0 T@Ref) (f_19@@6 T@Field_15797_15798) ) (!  (=> (select (|PolymorphicMapType_16273_15784_15798#PolymorphicMapType_16273| (select (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@13) null (PredicateMaskField_9955 pm_f_19@@1))) o2_19@@0 f_19@@6) (= (select (|PolymorphicMapType_15724_9758_9759#PolymorphicMapType_15724| Heap@@13) o2_19@@0 f_19@@6) (select (|PolymorphicMapType_15724_9758_9759#PolymorphicMapType_15724| ExhaleHeap@@9) o2_19@@0 f_19@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15724_9758_9759#PolymorphicMapType_15724| ExhaleHeap@@9) o2_19@@0 f_19@@6))
))) (forall ((o2_19@@1 T@Ref) (f_19@@7 T@Field_21860_21865) ) (!  (=> (select (|PolymorphicMapType_16273_15784_21865#PolymorphicMapType_16273| (select (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@13) null (PredicateMaskField_9955 pm_f_19@@1))) o2_19@@1 f_19@@7) (= (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@13) o2_19@@1 f_19@@7) (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| ExhaleHeap@@9) o2_19@@1 f_19@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| ExhaleHeap@@9) o2_19@@1 f_19@@7))
))) (forall ((o2_19@@2 T@Ref) (f_19@@8 T@Field_21924_3164) ) (!  (=> (select (|PolymorphicMapType_16273_15784_3164#PolymorphicMapType_16273| (select (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@13) null (PredicateMaskField_9955 pm_f_19@@1))) o2_19@@2 f_19@@8) (= (select (|PolymorphicMapType_15724_9955_3164#PolymorphicMapType_15724| Heap@@13) o2_19@@2 f_19@@8) (select (|PolymorphicMapType_15724_9955_3164#PolymorphicMapType_15724| ExhaleHeap@@9) o2_19@@2 f_19@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15724_9955_3164#PolymorphicMapType_15724| ExhaleHeap@@9) o2_19@@2 f_19@@8))
))) (forall ((o2_19@@3 T@Ref) (f_19@@9 T@Field_9955_49729) ) (!  (=> (select (|PolymorphicMapType_16273_15784_49729#PolymorphicMapType_16273| (select (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@13) null (PredicateMaskField_9955 pm_f_19@@1))) o2_19@@3 f_19@@9) (= (select (|PolymorphicMapType_15724_15784_49729#PolymorphicMapType_15724| Heap@@13) o2_19@@3 f_19@@9) (select (|PolymorphicMapType_15724_15784_49729#PolymorphicMapType_15724| ExhaleHeap@@9) o2_19@@3 f_19@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15724_15784_49729#PolymorphicMapType_15724| ExhaleHeap@@9) o2_19@@3 f_19@@9))
))) (forall ((o2_19@@4 T@Ref) (f_19@@10 T@Field_9955_49862) ) (!  (=> (select (|PolymorphicMapType_16273_15784_51244#PolymorphicMapType_16273| (select (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@13) null (PredicateMaskField_9955 pm_f_19@@1))) o2_19@@4 f_19@@10) (= (select (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@13) o2_19@@4 f_19@@10) (select (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| ExhaleHeap@@9) o2_19@@4 f_19@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| ExhaleHeap@@9) o2_19@@4 f_19@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@23) (IsPredicateField_9955_49820 pm_f_19@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_15724) (ExhaleHeap@@10 T@PolymorphicMapType_15724) (Mask@@24 T@PolymorphicMapType_15745) (pm_f_19@@2 T@Field_9955_49729) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@24) (=> (and (HasDirectPerm_9955_49793 Mask@@24 null pm_f_19@@2) (IsWandField_9955_51771 pm_f_19@@2)) (and (and (and (and (and (forall ((o2_19@@5 T@Ref) (f_19@@11 T@Field_15784_53) ) (!  (=> (select (|PolymorphicMapType_16273_15784_53#PolymorphicMapType_16273| (select (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@14) null (WandMaskField_9955 pm_f_19@@2))) o2_19@@5 f_19@@11) (= (select (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap@@14) o2_19@@5 f_19@@11) (select (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| ExhaleHeap@@10) o2_19@@5 f_19@@11)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| ExhaleHeap@@10) o2_19@@5 f_19@@11))
)) (forall ((o2_19@@6 T@Ref) (f_19@@12 T@Field_15797_15798) ) (!  (=> (select (|PolymorphicMapType_16273_15784_15798#PolymorphicMapType_16273| (select (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@14) null (WandMaskField_9955 pm_f_19@@2))) o2_19@@6 f_19@@12) (= (select (|PolymorphicMapType_15724_9758_9759#PolymorphicMapType_15724| Heap@@14) o2_19@@6 f_19@@12) (select (|PolymorphicMapType_15724_9758_9759#PolymorphicMapType_15724| ExhaleHeap@@10) o2_19@@6 f_19@@12)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15724_9758_9759#PolymorphicMapType_15724| ExhaleHeap@@10) o2_19@@6 f_19@@12))
))) (forall ((o2_19@@7 T@Ref) (f_19@@13 T@Field_21860_21865) ) (!  (=> (select (|PolymorphicMapType_16273_15784_21865#PolymorphicMapType_16273| (select (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@14) null (WandMaskField_9955 pm_f_19@@2))) o2_19@@7 f_19@@13) (= (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@14) o2_19@@7 f_19@@13) (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| ExhaleHeap@@10) o2_19@@7 f_19@@13)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| ExhaleHeap@@10) o2_19@@7 f_19@@13))
))) (forall ((o2_19@@8 T@Ref) (f_19@@14 T@Field_21924_3164) ) (!  (=> (select (|PolymorphicMapType_16273_15784_3164#PolymorphicMapType_16273| (select (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@14) null (WandMaskField_9955 pm_f_19@@2))) o2_19@@8 f_19@@14) (= (select (|PolymorphicMapType_15724_9955_3164#PolymorphicMapType_15724| Heap@@14) o2_19@@8 f_19@@14) (select (|PolymorphicMapType_15724_9955_3164#PolymorphicMapType_15724| ExhaleHeap@@10) o2_19@@8 f_19@@14)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15724_9955_3164#PolymorphicMapType_15724| ExhaleHeap@@10) o2_19@@8 f_19@@14))
))) (forall ((o2_19@@9 T@Ref) (f_19@@15 T@Field_9955_49729) ) (!  (=> (select (|PolymorphicMapType_16273_15784_49729#PolymorphicMapType_16273| (select (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@14) null (WandMaskField_9955 pm_f_19@@2))) o2_19@@9 f_19@@15) (= (select (|PolymorphicMapType_15724_15784_49729#PolymorphicMapType_15724| Heap@@14) o2_19@@9 f_19@@15) (select (|PolymorphicMapType_15724_15784_49729#PolymorphicMapType_15724| ExhaleHeap@@10) o2_19@@9 f_19@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15724_15784_49729#PolymorphicMapType_15724| ExhaleHeap@@10) o2_19@@9 f_19@@15))
))) (forall ((o2_19@@10 T@Ref) (f_19@@16 T@Field_9955_49862) ) (!  (=> (select (|PolymorphicMapType_16273_15784_51244#PolymorphicMapType_16273| (select (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@14) null (WandMaskField_9955 pm_f_19@@2))) o2_19@@10 f_19@@16) (= (select (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@14) o2_19@@10 f_19@@16) (select (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| ExhaleHeap@@10) o2_19@@10 f_19@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| ExhaleHeap@@10) o2_19@@10 f_19@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@24) (IsWandField_9955_51771 pm_f_19@@2))
)))
(assert (forall ((s0@@5 T@Seq_21863) (s1@@5 T@Seq_21863) ) (!  (=> (|Seq#Equal_21863| s0@@5 s1@@5) (and (= (|Seq#Length_9977| s0@@5) (|Seq#Length_9977| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_9977| s0@@5))) (= (|Seq#Index_9977| s0@@5 j@@6) (|Seq#Index_9977| s1@@5 j@@6)))
 :qid |stdinbpl.527:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_9977| s0@@5 j@@6))
 :pattern ( (|Seq#Index_9977| s1@@5 j@@6))
))))
 :qid |stdinbpl.524:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_21863| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3011) (s1@@6 T@Seq_3011) ) (!  (=> (|Seq#Equal_3011| s0@@6 s1@@6) (and (= (|Seq#Length_3011| s0@@6) (|Seq#Length_3011| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3011| s0@@6))) (= (|Seq#Index_3011| s0@@6 j@@7) (|Seq#Index_3011| s1@@6 j@@7)))
 :qid |stdinbpl.527:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3011| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3011| s1@@6 j@@7))
))))
 :qid |stdinbpl.524:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3011| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_9977| (|Seq#Singleton_9977| t@@5)) 1)
 :qid |stdinbpl.239:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_9977| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3011| (|Seq#Singleton_3011| t@@6)) 1)
 :qid |stdinbpl.239:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3011| t@@6))
)))
(assert (forall ((s@@21 T@Seq_21863) (t@@7 T@Seq_21863) (n@@21 Int) ) (!  (=> (and (< 0 n@@21) (<= n@@21 (|Seq#Length_9977| s@@21))) (= (|Seq#Take_9977| (|Seq#Append_21863| s@@21 t@@7) n@@21) (|Seq#Take_9977| s@@21 n@@21)))
 :qid |stdinbpl.381:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_9977| (|Seq#Append_21863| s@@21 t@@7) n@@21))
)))
(assert (forall ((s@@22 T@Seq_3011) (t@@8 T@Seq_3011) (n@@22 Int) ) (!  (=> (and (< 0 n@@22) (<= n@@22 (|Seq#Length_3011| s@@22))) (= (|Seq#Take_3011| (|Seq#Append_3011| s@@22 t@@8) n@@22) (|Seq#Take_3011| s@@22 n@@22)))
 :qid |stdinbpl.381:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3011| (|Seq#Append_3011| s@@22 t@@8) n@@22))
)))
(assert (forall ((s@@23 T@Seq_21863) (i@@6 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_9977| s@@23))) (= (|Seq#Length_9977| (|Seq#Update_9977| s@@23 i@@6 v@@2)) (|Seq#Length_9977| s@@23)))
 :qid |stdinbpl.280:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_9977| (|Seq#Update_9977| s@@23 i@@6 v@@2)))
 :pattern ( (|Seq#Length_9977| s@@23) (|Seq#Update_9977| s@@23 i@@6 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3011) (i@@7 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_3011| s@@24))) (= (|Seq#Length_3011| (|Seq#Update_3011| s@@24 i@@7 v@@3)) (|Seq#Length_3011| s@@24)))
 :qid |stdinbpl.280:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3011| (|Seq#Update_3011| s@@24 i@@7 v@@3)))
 :pattern ( (|Seq#Length_3011| s@@24) (|Seq#Update_3011| s@@24 i@@7 v@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_15724) (o_1 T@Ref) (f_51 T@Field_9955_49729) (v@@4 T@FrameType) ) (! (succHeap Heap@@15 (PolymorphicMapType_15724 (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap@@15) (|PolymorphicMapType_15724_9758_9759#PolymorphicMapType_15724| Heap@@15) (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@15) (|PolymorphicMapType_15724_9955_3164#PolymorphicMapType_15724| Heap@@15) (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@15) (store (|PolymorphicMapType_15724_15784_49729#PolymorphicMapType_15724| Heap@@15) o_1 f_51 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15724 (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap@@15) (|PolymorphicMapType_15724_9758_9759#PolymorphicMapType_15724| Heap@@15) (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@15) (|PolymorphicMapType_15724_9955_3164#PolymorphicMapType_15724| Heap@@15) (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@15) (store (|PolymorphicMapType_15724_15784_49729#PolymorphicMapType_15724| Heap@@15) o_1 f_51 v@@4)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_15724) (o_1@@0 T@Ref) (f_51@@0 T@Field_9955_49862) (v@@5 T@PolymorphicMapType_16273) ) (! (succHeap Heap@@16 (PolymorphicMapType_15724 (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap@@16) (|PolymorphicMapType_15724_9758_9759#PolymorphicMapType_15724| Heap@@16) (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@16) (|PolymorphicMapType_15724_9955_3164#PolymorphicMapType_15724| Heap@@16) (store (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@16) o_1@@0 f_51@@0 v@@5) (|PolymorphicMapType_15724_15784_49729#PolymorphicMapType_15724| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15724 (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap@@16) (|PolymorphicMapType_15724_9758_9759#PolymorphicMapType_15724| Heap@@16) (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@16) (|PolymorphicMapType_15724_9955_3164#PolymorphicMapType_15724| Heap@@16) (store (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@16) o_1@@0 f_51@@0 v@@5) (|PolymorphicMapType_15724_15784_49729#PolymorphicMapType_15724| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_15724) (o_1@@1 T@Ref) (f_51@@1 T@Field_21924_3164) (v@@6 Int) ) (! (succHeap Heap@@17 (PolymorphicMapType_15724 (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap@@17) (|PolymorphicMapType_15724_9758_9759#PolymorphicMapType_15724| Heap@@17) (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@17) (store (|PolymorphicMapType_15724_9955_3164#PolymorphicMapType_15724| Heap@@17) o_1@@1 f_51@@1 v@@6) (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@17) (|PolymorphicMapType_15724_15784_49729#PolymorphicMapType_15724| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15724 (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap@@17) (|PolymorphicMapType_15724_9758_9759#PolymorphicMapType_15724| Heap@@17) (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@17) (store (|PolymorphicMapType_15724_9955_3164#PolymorphicMapType_15724| Heap@@17) o_1@@1 f_51@@1 v@@6) (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@17) (|PolymorphicMapType_15724_15784_49729#PolymorphicMapType_15724| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_15724) (o_1@@2 T@Ref) (f_51@@2 T@Field_21860_21865) (v@@7 T@Seq_21863) ) (! (succHeap Heap@@18 (PolymorphicMapType_15724 (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap@@18) (|PolymorphicMapType_15724_9758_9759#PolymorphicMapType_15724| Heap@@18) (store (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@18) o_1@@2 f_51@@2 v@@7) (|PolymorphicMapType_15724_9955_3164#PolymorphicMapType_15724| Heap@@18) (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@18) (|PolymorphicMapType_15724_15784_49729#PolymorphicMapType_15724| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15724 (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap@@18) (|PolymorphicMapType_15724_9758_9759#PolymorphicMapType_15724| Heap@@18) (store (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@18) o_1@@2 f_51@@2 v@@7) (|PolymorphicMapType_15724_9955_3164#PolymorphicMapType_15724| Heap@@18) (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@18) (|PolymorphicMapType_15724_15784_49729#PolymorphicMapType_15724| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_15724) (o_1@@3 T@Ref) (f_51@@3 T@Field_15797_15798) (v@@8 T@Ref) ) (! (succHeap Heap@@19 (PolymorphicMapType_15724 (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap@@19) (store (|PolymorphicMapType_15724_9758_9759#PolymorphicMapType_15724| Heap@@19) o_1@@3 f_51@@3 v@@8) (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@19) (|PolymorphicMapType_15724_9955_3164#PolymorphicMapType_15724| Heap@@19) (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@19) (|PolymorphicMapType_15724_15784_49729#PolymorphicMapType_15724| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15724 (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap@@19) (store (|PolymorphicMapType_15724_9758_9759#PolymorphicMapType_15724| Heap@@19) o_1@@3 f_51@@3 v@@8) (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@19) (|PolymorphicMapType_15724_9955_3164#PolymorphicMapType_15724| Heap@@19) (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@19) (|PolymorphicMapType_15724_15784_49729#PolymorphicMapType_15724| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_15724) (o_1@@4 T@Ref) (f_51@@4 T@Field_15784_53) (v@@9 Bool) ) (! (succHeap Heap@@20 (PolymorphicMapType_15724 (store (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap@@20) o_1@@4 f_51@@4 v@@9) (|PolymorphicMapType_15724_9758_9759#PolymorphicMapType_15724| Heap@@20) (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@20) (|PolymorphicMapType_15724_9955_3164#PolymorphicMapType_15724| Heap@@20) (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@20) (|PolymorphicMapType_15724_15784_49729#PolymorphicMapType_15724| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15724 (store (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap@@20) o_1@@4 f_51@@4 v@@9) (|PolymorphicMapType_15724_9758_9759#PolymorphicMapType_15724| Heap@@20) (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@20) (|PolymorphicMapType_15724_9955_3164#PolymorphicMapType_15724| Heap@@20) (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@20) (|PolymorphicMapType_15724_15784_49729#PolymorphicMapType_15724| Heap@@20)))
)))
(assert (forall ((s@@25 T@Seq_21863) (t@@9 T@Seq_21863) (n@@23 Int) ) (!  (=> (and (< 0 n@@23) (<= n@@23 (|Seq#Length_9977| s@@25))) (= (|Seq#Drop_9977| (|Seq#Append_21863| s@@25 t@@9) n@@23) (|Seq#Append_21863| (|Seq#Drop_9977| s@@25 n@@23) t@@9)))
 :qid |stdinbpl.395:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_9977| (|Seq#Append_21863| s@@25 t@@9) n@@23))
)))
(assert (forall ((s@@26 T@Seq_3011) (t@@10 T@Seq_3011) (n@@24 Int) ) (!  (=> (and (< 0 n@@24) (<= n@@24 (|Seq#Length_3011| s@@26))) (= (|Seq#Drop_3011| (|Seq#Append_3011| s@@26 t@@10) n@@24) (|Seq#Append_3011| (|Seq#Drop_3011| s@@26 n@@24) t@@10)))
 :qid |stdinbpl.395:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3011| (|Seq#Append_3011| s@@26 t@@10) n@@24))
)))
(assert (forall ((s@@27 T@Seq_21863) (n@@25 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@25) (<= n@@25 i@@8)) (< i@@8 (|Seq#Length_9977| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@25) n@@25) i@@8) (= (|Seq#Index_9977| (|Seq#Drop_9977| s@@27 n@@25) (|Seq#Sub| i@@8 n@@25)) (|Seq#Index_9977| s@@27 i@@8))))
 :qid |stdinbpl.331:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_9977| s@@27 n@@25) (|Seq#Index_9977| s@@27 i@@8))
)))
(assert (forall ((s@@28 T@Seq_3011) (n@@26 Int) (i@@9 Int) ) (!  (=> (and (and (< 0 n@@26) (<= n@@26 i@@9)) (< i@@9 (|Seq#Length_3011| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@9 n@@26) n@@26) i@@9) (= (|Seq#Index_3011| (|Seq#Drop_3011| s@@28 n@@26) (|Seq#Sub| i@@9 n@@26)) (|Seq#Index_3011| s@@28 i@@9))))
 :qid |stdinbpl.331:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3011| s@@28 n@@26) (|Seq#Index_3011| s@@28 i@@9))
)))
(assert (forall ((s0@@7 T@Seq_21863) (s1@@7 T@Seq_21863) (n@@27 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_9977|)) (not (= s1@@7 |Seq#Empty_9977|))) (<= 0 n@@27)) (< n@@27 (|Seq#Length_9977| s0@@7))) (= (|Seq#Index_9977| (|Seq#Append_21863| s0@@7 s1@@7) n@@27) (|Seq#Index_9977| s0@@7 n@@27)))
 :qid |stdinbpl.271:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_9977| (|Seq#Append_21863| s0@@7 s1@@7) n@@27))
 :pattern ( (|Seq#Index_9977| s0@@7 n@@27) (|Seq#Append_21863| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3011) (s1@@8 T@Seq_3011) (n@@28 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3011|)) (not (= s1@@8 |Seq#Empty_3011|))) (<= 0 n@@28)) (< n@@28 (|Seq#Length_3011| s0@@8))) (= (|Seq#Index_3011| (|Seq#Append_3011| s0@@8 s1@@8) n@@28) (|Seq#Index_3011| s0@@8 n@@28)))
 :qid |stdinbpl.271:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3011| (|Seq#Append_3011| s0@@8 s1@@8) n@@28))
 :pattern ( (|Seq#Index_3011| s0@@8 n@@28) (|Seq#Append_3011| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_21863) (s1@@9 T@Seq_21863) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_9977|)) (not (= s1@@9 |Seq#Empty_9977|))) (<= 0 m)) (< m (|Seq#Length_9977| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_9977| s0@@9)) (|Seq#Length_9977| s0@@9)) m) (= (|Seq#Index_9977| (|Seq#Append_21863| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_9977| s0@@9))) (|Seq#Index_9977| s1@@9 m))))
 :qid |stdinbpl.276:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_9977| s1@@9 m) (|Seq#Append_21863| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3011) (s1@@10 T@Seq_3011) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3011|)) (not (= s1@@10 |Seq#Empty_3011|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3011| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3011| s0@@10)) (|Seq#Length_3011| s0@@10)) m@@0) (= (|Seq#Index_3011| (|Seq#Append_3011| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3011| s0@@10))) (|Seq#Index_3011| s1@@10 m@@0))))
 :qid |stdinbpl.276:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3011| s1@@10 m@@0) (|Seq#Append_3011| s0@@10 s1@@10))
)))
(assert (forall ((o_1@@5 T@Ref) (f_2 T@Field_15797_15798) (Heap@@21 T@PolymorphicMapType_15724) ) (!  (=> (select (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap@@21) o_1@@5 $allocated) (select (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap@@21) (select (|PolymorphicMapType_15724_9758_9759#PolymorphicMapType_15724| Heap@@21) o_1@@5 f_2) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_15724_9758_9759#PolymorphicMapType_15724| Heap@@21) o_1@@5 f_2))
)))
(assert (forall ((s@@29 T@Seq_21863) (x@@3 T@Ref) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_9977| s@@29))) (= (|Seq#Index_9977| s@@29 i@@10) x@@3)) (|Seq#Contains_21863| s@@29 x@@3))
 :qid |stdinbpl.428:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_21863| s@@29 x@@3) (|Seq#Index_9977| s@@29 i@@10))
)))
(assert (forall ((s@@30 T@Seq_3011) (x@@4 Int) (i@@11 Int) ) (!  (=> (and (and (<= 0 i@@11) (< i@@11 (|Seq#Length_3011| s@@30))) (= (|Seq#Index_3011| s@@30 i@@11) x@@4)) (|Seq#Contains_3011| s@@30 x@@4))
 :qid |stdinbpl.428:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3011| s@@30 x@@4) (|Seq#Index_3011| s@@30 i@@11))
)))
(assert (forall ((s0@@11 T@Seq_21863) (s1@@11 T@Seq_21863) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_21863| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_21863| s0@@11 s1@@11))) (not (= (|Seq#Length_9977| s0@@11) (|Seq#Length_9977| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_21863| s0@@11 s1@@11))) (= (|Seq#Length_9977| s0@@11) (|Seq#Length_9977| s1@@11))) (= (|Seq#SkolemDiff_21863| s0@@11 s1@@11) (|Seq#SkolemDiff_21863| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_21863| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_21863| s0@@11 s1@@11) (|Seq#Length_9977| s0@@11))) (not (= (|Seq#Index_9977| s0@@11 (|Seq#SkolemDiff_21863| s0@@11 s1@@11)) (|Seq#Index_9977| s1@@11 (|Seq#SkolemDiff_21863| s0@@11 s1@@11))))))
 :qid |stdinbpl.532:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_21863| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3011) (s1@@12 T@Seq_3011) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3011| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3011| s0@@12 s1@@12))) (not (= (|Seq#Length_3011| s0@@12) (|Seq#Length_3011| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3011| s0@@12 s1@@12))) (= (|Seq#Length_3011| s0@@12) (|Seq#Length_3011| s1@@12))) (= (|Seq#SkolemDiff_3011| s0@@12 s1@@12) (|Seq#SkolemDiff_3011| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3011| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3011| s0@@12 s1@@12) (|Seq#Length_3011| s0@@12))) (not (= (|Seq#Index_3011| s0@@12 (|Seq#SkolemDiff_3011| s0@@12 s1@@12)) (|Seq#Index_3011| s1@@12 (|Seq#SkolemDiff_3011| s0@@12 s1@@12))))))
 :qid |stdinbpl.532:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3011| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_9955_49729) (v_1@@0 T@FrameType) (q T@Field_9955_49729) (w@@0 T@FrameType) (r T@Field_9955_49729) (u T@FrameType) ) (!  (=> (and (InsidePredicate_15784_15784 p@@1 v_1@@0 q w@@0) (InsidePredicate_15784_15784 q w@@0 r u)) (InsidePredicate_15784_15784 p@@1 v_1@@0 r u))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15784_15784 p@@1 v_1@@0 q w@@0) (InsidePredicate_15784_15784 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_21863) ) (!  (=> (= (|Seq#Length_9977| s@@31) 0) (= s@@31 |Seq#Empty_9977|))
 :qid |stdinbpl.235:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_9977| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3011) ) (!  (=> (= (|Seq#Length_3011| s@@32) 0) (= s@@32 |Seq#Empty_3011|))
 :qid |stdinbpl.235:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3011| s@@32))
)))
(assert (forall ((s@@33 T@Seq_21863) (n@@29 Int) ) (!  (=> (<= n@@29 0) (= (|Seq#Take_9977| s@@33 n@@29) |Seq#Empty_9977|))
 :qid |stdinbpl.411:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_9977| s@@33 n@@29))
)))
(assert (forall ((s@@34 T@Seq_3011) (n@@30 Int) ) (!  (=> (<= n@@30 0) (= (|Seq#Take_3011| s@@34 n@@30) |Seq#Empty_3011|))
 :qid |stdinbpl.411:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3011| s@@34 n@@30))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_15724) (Mask@@25 T@PolymorphicMapType_15745) (l_1@@3 T@Seq_21863) (n@@31 Int) ) (!  (=> (state Heap@@22 Mask@@25) (= (|count'| Heap@@22 l_1@@3 n@@31) (|count#frame| (CombineFrames (FrameFragment_3675 (|count#condqp1| Heap@@22 l_1@@3 n@@31)) (FrameFragment_9866 (ite (> n@@31 0) EmptyFrame EmptyFrame))) l_1@@3 n@@31)))
 :qid |stdinbpl.617:15|
 :skolemid |63|
 :pattern ( (state Heap@@22 Mask@@25) (|count'| Heap@@22 l_1@@3 n@@31))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@23 () T@PolymorphicMapType_15724)
(declare-fun this () T@Ref)
(declare-fun i_14 () Int)
(declare-fun Mask@0 () T@PolymorphicMapType_15745)
(declare-fun i1_11 () Int)
(declare-fun i2_11 () Int)
(declare-fun i_15 () Int)
(declare-fun dummyFunction_3133 (Bool) Bool)
(declare-fun neverTriggered4 (Int) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_15745)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun i1_2_2 () Int)
(declare-fun i2_2_2 () Int)
(declare-fun i_4_1 () Int)
(declare-fun Heap@0 () T@PolymorphicMapType_15724)
(declare-fun neverTriggered5 (Int) Bool)
(declare-fun Mask@2 () T@PolymorphicMapType_15745)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun i1_4 () Int)
(declare-fun i2_4 () Int)
(declare-fun i_7_1 () Int)
(declare-fun neverTriggered6 (Int) Bool)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun i1_6 () Int)
(declare-fun i2_6 () Int)
(declare-fun i_10_1 () Int)
(declare-fun perm@0 () Real)
(declare-fun Mask@1 () T@PolymorphicMapType_15745)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun wildcard@0 () Real)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id main)
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
 (=> (= (ControlFlow 0 0) 117) (let ((anon3_correct true))
(let ((anon52_Else_correct  (=> (and (not (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_14)) (= (ControlFlow 0 113) 108)) anon3_correct)))
(let ((anon52_Then_correct  (=> (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_14) (and (=> (= (ControlFlow 0 109) (- 0 112)) (HasDirectPerm_9957_28464 Mask@0 this ar)) (=> (HasDirectPerm_9957_28464 Mask@0 this ar) (and (=> (= (ControlFlow 0 109) (- 0 111)) (>= i_14 0)) (=> (>= i_14 0) (and (=> (= (ControlFlow 0 109) (- 0 110)) (< i_14 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar)))) (=> (< i_14 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) (=> (= (ControlFlow 0 109) 108) anon3_correct))))))))))
(let ((anon51_Then_correct  (and (=> (= (ControlFlow 0 114) (- 0 115)) (HasDirectPerm_9957_28464 Mask@0 this ar)) (=> (HasDirectPerm_9957_28464 Mask@0 this ar) (and (=> (= (ControlFlow 0 114) 109) anon52_Then_correct) (=> (= (ControlFlow 0 114) 113) anon52_Else_correct))))))
(let ((anon9_correct true))
(let ((anon55_Else_correct  (=> (and (not (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i1_11) (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i2_11) (not (= i1_11 i2_11))))) (= (ControlFlow 0 101) 93)) anon9_correct)))
(let ((anon55_Then_correct  (=> (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i1_11) (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i2_11) (not (= i1_11 i2_11)))) (and (=> (= (ControlFlow 0 94) (- 0 100)) (HasDirectPerm_9957_28464 Mask@0 this ar)) (=> (HasDirectPerm_9957_28464 Mask@0 this ar) (and (=> (= (ControlFlow 0 94) (- 0 99)) (>= i1_11 0)) (=> (>= i1_11 0) (and (=> (= (ControlFlow 0 94) (- 0 98)) (< i1_11 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar)))) (=> (< i1_11 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) (and (=> (= (ControlFlow 0 94) (- 0 97)) (HasDirectPerm_9957_28464 Mask@0 this ar)) (=> (HasDirectPerm_9957_28464 Mask@0 this ar) (and (=> (= (ControlFlow 0 94) (- 0 96)) (>= i2_11 0)) (=> (>= i2_11 0) (and (=> (= (ControlFlow 0 94) (- 0 95)) (< i2_11 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar)))) (=> (< i2_11 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) (=> (= (ControlFlow 0 94) 93) anon9_correct))))))))))))))))
(let ((anon54_Else_correct  (=> (not (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i1_11)) (and (=> (= (ControlFlow 0 104) 94) anon55_Then_correct) (=> (= (ControlFlow 0 104) 101) anon55_Else_correct)))))
(let ((anon54_Then_correct  (=> (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i1_11) (and (=> (= (ControlFlow 0 102) (- 0 103)) (HasDirectPerm_9957_28464 Mask@0 this ar)) (=> (HasDirectPerm_9957_28464 Mask@0 this ar) (and (=> (= (ControlFlow 0 102) 94) anon55_Then_correct) (=> (= (ControlFlow 0 102) 101) anon55_Else_correct)))))))
(let ((anon53_Then_correct  (and (=> (= (ControlFlow 0 105) (- 0 106)) (HasDirectPerm_9957_28464 Mask@0 this ar)) (=> (HasDirectPerm_9957_28464 Mask@0 this ar) (and (=> (= (ControlFlow 0 105) 102) anon54_Then_correct) (=> (= (ControlFlow 0 105) 104) anon54_Else_correct))))))
(let ((anon13_correct true))
(let ((anon57_Else_correct  (=> (and (not (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_15)) (= (ControlFlow 0 89) 84)) anon13_correct)))
(let ((anon57_Then_correct  (=> (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_15) (and (=> (= (ControlFlow 0 85) (- 0 88)) (HasDirectPerm_9957_28464 Mask@0 this ar)) (=> (HasDirectPerm_9957_28464 Mask@0 this ar) (and (=> (= (ControlFlow 0 85) (- 0 87)) (>= i_15 0)) (=> (>= i_15 0) (and (=> (= (ControlFlow 0 85) (- 0 86)) (< i_15 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar)))) (=> (< i_15 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) (=> (= (ControlFlow 0 85) 84) anon13_correct))))))))))
(let ((anon56_Then_correct  (and (=> (= (ControlFlow 0 90) (- 0 91)) (HasDirectPerm_9957_28464 Mask@0 this ar)) (=> (HasDirectPerm_9957_28464 Mask@0 this ar) (and (=> (= (ControlFlow 0 90) 85) anon57_Then_correct) (=> (= (ControlFlow 0 90) 89) anon57_Else_correct))))))
(let ((anon25_correct true))
(let ((anon63_Else_correct  (=> (and (>= 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) (= (ControlFlow 0 69) 66)) anon25_correct)))
(let ((anon63_Then_correct  (=> (> (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar)) 0) (and (=> (= (ControlFlow 0 67) (- 0 68)) (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) (- (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar)) 1)) null))) (=> (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) (- (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar)) 1)) null)) (=> (= (ControlFlow 0 67) 66) anon25_correct))))))
(let ((anon61_Else_correct  (=> (forall ((i1_3_1_1 Int) (i2_3_1 Int) ) (!  (=> (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i1_3_1_1) (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i2_3_1) (not (= i1_3_1_1 i2_3_1)))) (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i1_3_1_1) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i2_3_1))))
 :qid |stdinbpl.1044:24|
 :skolemid |91|
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i1_3_1_1) (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i2_3_1))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i1_3_1_1) (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i2_3_1))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i1_3_1_1) (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i2_3_1))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i1_3_1_1) (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i2_3_1))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i1_3_1_1) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i2_3_1))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i1_3_1_1) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i2_3_1))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i2_3_1) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i1_3_1_1))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i2_3_1) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i1_3_1_1))
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i1_3_1_1) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i2_3_1))
)) (and (=> (= (ControlFlow 0 70) (- 0 73)) (forall ((i_6_2 Int) ) (!  (=> (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_6_2) (dummyFunction_3133 (select (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap@@23) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_6_2) val))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1052:21|
 :skolemid |92|
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_6_2))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_6_2))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_6_2))
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_6_2))
))) (=> (forall ((i_6_2@@0 Int) ) (!  (=> (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_6_2@@0) (dummyFunction_3133 (select (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap@@23) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_6_2@@0) val))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1052:21|
 :skolemid |92|
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_6_2@@0))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_6_2@@0))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_6_2@@0))
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_6_2@@0))
)) (and (=> (= (ControlFlow 0 70) (- 0 72)) (forall ((i_6_2@@1 Int) (i_6_3 Int) ) (!  (=> (and (and (and (and (not (= i_6_2@@1 i_6_3)) (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_6_2@@1)) (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_6_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_6_2@@1) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_6_3))))
 :qid |stdinbpl.1059:21|
 :skolemid |93|
 :pattern ( (neverTriggered4 i_6_2@@1) (neverTriggered4 i_6_3))
))) (=> (forall ((i_6_2@@2 Int) (i_6_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_6_2@@2 i_6_3@@0)) (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_6_2@@2)) (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_6_3@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_6_2@@2) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_6_3@@0))))
 :qid |stdinbpl.1059:21|
 :skolemid |93|
 :pattern ( (neverTriggered4 i_6_2@@2) (neverTriggered4 i_6_3@@0))
)) (and (=> (= (ControlFlow 0 70) (- 0 71)) (forall ((i_6_2@@3 Int) ) (!  (=> (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_6_2@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| QPMask@0) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_6_2@@3) val) NoPerm)))
 :qid |stdinbpl.1066:21|
 :skolemid |94|
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_6_2@@3))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_6_2@@3))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_6_2@@3))
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_6_2@@3))
))) (=> (forall ((i_6_2@@4 Int) ) (!  (=> (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_6_2@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| QPMask@0) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_6_2@@4) val) NoPerm)))
 :qid |stdinbpl.1066:21|
 :skolemid |94|
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_6_2@@4))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_6_2@@4))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_6_2@@4))
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_6_2@@4))
)) (=> (and (forall ((i_6_2@@5 Int) ) (!  (=> (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_6_2@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange4 (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_6_2@@5)) (= (invRecv4 (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_6_2@@5)) i_6_2@@5)))
 :qid |stdinbpl.1072:26|
 :skolemid |95|
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_6_2@@5))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_6_2@@5))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_6_2@@5))
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_6_2@@5))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) (invRecv4 o_9)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange4 o_9))) (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) (invRecv4 o_9)) o_9))
 :qid |stdinbpl.1076:26|
 :skolemid |96|
 :pattern ( (invRecv4 o_9))
))) (and (=> (= (ControlFlow 0 70) 67) anon63_Then_correct) (=> (= (ControlFlow 0 70) 69) anon63_Else_correct))))))))))))
(let ((anon22_correct true))
(let ((anon62_Else_correct  (=> (and (not (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i1_2_2) (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i2_2_2) (not (= i1_2_2 i2_2_2))))) (= (ControlFlow 0 65) 62)) anon22_correct)))
(let ((anon62_Then_correct  (=> (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i1_2_2) (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i2_2_2) (not (= i1_2_2 i2_2_2)))) (and (=> (= (ControlFlow 0 63) (- 0 64)) (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i1_2_2) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i2_2_2)))) (=> (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i1_2_2) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i2_2_2))) (=> (= (ControlFlow 0 63) 62) anon22_correct))))))
(let ((anon59_Else_correct  (=> (forall ((i_5_1_1 Int) ) (!  (=> (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_5_1_1) (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_5_1_1) null)))
 :qid |stdinbpl.1033:24|
 :skolemid |90|
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_5_1_1))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_5_1_1))
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_5_1_1))
)) (and (and (=> (= (ControlFlow 0 74) 70) anon61_Else_correct) (=> (= (ControlFlow 0 74) 63) anon62_Then_correct)) (=> (= (ControlFlow 0 74) 65) anon62_Else_correct)))))
(let ((anon18_correct true))
(let ((anon60_Else_correct  (=> (and (not (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_4_1)) (= (ControlFlow 0 61) 58)) anon18_correct)))
(let ((anon60_Then_correct  (=> (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_4_1) (and (=> (= (ControlFlow 0 59) (- 0 60)) (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_4_1) null))) (=> (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_4_1) null)) (=> (= (ControlFlow 0 59) 58) anon18_correct))))))
(let ((anon58_Then_correct  (and (=> (= (ControlFlow 0 75) (- 0 77)) (<= 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar)))) (=> (<= 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) (and (=> (= (ControlFlow 0 75) (- 0 76)) (<= (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar)) (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar)))) (=> (<= (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar)) (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) (and (and (=> (= (ControlFlow 0 75) 74) anon59_Else_correct) (=> (= (ControlFlow 0 75) 59) anon60_Then_correct)) (=> (= (ControlFlow 0 75) 61) anon60_Else_correct))))))))
(let ((anon37_correct true))
(let ((anon69_Else_correct  (=> (and (>= 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) (= (ControlFlow 0 37) 34)) anon37_correct)))
(let ((anon69_Then_correct  (=> (> (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar)) 0) (and (=> (= (ControlFlow 0 35) (- 0 36)) (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) (- (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar)) 1)) null))) (=> (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) (- (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar)) 1)) null)) (=> (= (ControlFlow 0 35) 34) anon37_correct))))))
(let ((anon67_Else_correct  (=> (forall ((i1_5_1 Int) (i2_5_1_1 Int) ) (!  (=> (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i1_5_1) (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i2_5_1_1) (not (= i1_5_1 i2_5_1_1)))) (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i1_5_1) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i2_5_1_1))))
 :qid |stdinbpl.1174:24|
 :skolemid |98|
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i1_5_1) (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i2_5_1_1))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i1_5_1) (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i2_5_1_1))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i1_5_1) (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i2_5_1_1))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i1_5_1) (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i2_5_1_1))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i1_5_1) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i2_5_1_1))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i1_5_1) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i2_5_1_1))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i2_5_1_1) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i1_5_1))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i2_5_1_1) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i1_5_1))
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i1_5_1) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i2_5_1_1))
)) (and (=> (= (ControlFlow 0 38) (- 0 41)) (forall ((i_9_1 Int) ) (!  (=> (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_9_1) (dummyFunction_3133 (select (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap@0) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_9_1) val))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1182:21|
 :skolemid |99|
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_9_1))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_9_1))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_9_1))
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_9_1))
))) (=> (forall ((i_9_1@@0 Int) ) (!  (=> (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_9_1@@0) (dummyFunction_3133 (select (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap@0) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_9_1@@0) val))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1182:21|
 :skolemid |99|
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_9_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_9_1@@0))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_9_1@@0))
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_9_1@@0))
)) (and (=> (= (ControlFlow 0 38) (- 0 40)) (forall ((i_9_1@@1 Int) (i_9_2 Int) ) (!  (=> (and (and (and (and (not (= i_9_1@@1 i_9_2)) (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_9_1@@1)) (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_9_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_9_1@@1) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_9_2))))
 :qid |stdinbpl.1189:21|
 :skolemid |100|
 :pattern ( (neverTriggered5 i_9_1@@1) (neverTriggered5 i_9_2))
))) (=> (forall ((i_9_1@@2 Int) (i_9_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_9_1@@2 i_9_2@@0)) (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_9_1@@2)) (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_9_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_9_1@@2) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_9_2@@0))))
 :qid |stdinbpl.1189:21|
 :skolemid |100|
 :pattern ( (neverTriggered5 i_9_1@@2) (neverTriggered5 i_9_2@@0))
)) (and (=> (= (ControlFlow 0 38) (- 0 39)) (forall ((i_9_1@@3 Int) ) (!  (=> (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_9_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| Mask@2) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_9_1@@3) val) NoPerm)))
 :qid |stdinbpl.1196:21|
 :skolemid |101|
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_9_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_9_1@@3))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_9_1@@3))
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_9_1@@3))
))) (=> (forall ((i_9_1@@4 Int) ) (!  (=> (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_9_1@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| Mask@2) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_9_1@@4) val) NoPerm)))
 :qid |stdinbpl.1196:21|
 :skolemid |101|
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_9_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_9_1@@4))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_9_1@@4))
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_9_1@@4))
)) (=> (and (forall ((i_9_1@@5 Int) ) (!  (=> (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_9_1@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange5 (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_9_1@@5)) (= (invRecv5 (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_9_1@@5)) i_9_1@@5)))
 :qid |stdinbpl.1202:26|
 :skolemid |102|
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_9_1@@5))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_9_1@@5))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_9_1@@5))
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_9_1@@5))
)) (forall ((o_9@@0 T@Ref) ) (!  (=> (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) (invRecv5 o_9@@0)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange5 o_9@@0))) (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) (invRecv5 o_9@@0)) o_9@@0))
 :qid |stdinbpl.1206:26|
 :skolemid |103|
 :pattern ( (invRecv5 o_9@@0))
))) (and (=> (= (ControlFlow 0 38) 35) anon69_Then_correct) (=> (= (ControlFlow 0 38) 37) anon69_Else_correct))))))))))))
(let ((anon34_correct true))
(let ((anon68_Else_correct  (=> (and (not (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i1_4) (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i2_4) (not (= i1_4 i2_4))))) (= (ControlFlow 0 33) 30)) anon34_correct)))
(let ((anon68_Then_correct  (=> (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i1_4) (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i2_4) (not (= i1_4 i2_4)))) (and (=> (= (ControlFlow 0 31) (- 0 32)) (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i1_4) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i2_4)))) (=> (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i1_4) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i2_4))) (=> (= (ControlFlow 0 31) 30) anon34_correct))))))
(let ((anon65_Else_correct  (=> (forall ((i_8_1_1 Int) ) (!  (=> (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_8_1_1) (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_8_1_1) null)))
 :qid |stdinbpl.1163:24|
 :skolemid |97|
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_8_1_1))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_8_1_1))
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_8_1_1))
)) (and (and (=> (= (ControlFlow 0 42) 38) anon67_Else_correct) (=> (= (ControlFlow 0 42) 31) anon68_Then_correct)) (=> (= (ControlFlow 0 42) 33) anon68_Else_correct)))))
(let ((anon30_correct true))
(let ((anon66_Else_correct  (=> (and (not (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_7_1)) (= (ControlFlow 0 29) 26)) anon30_correct)))
(let ((anon66_Then_correct  (=> (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_7_1) (and (=> (= (ControlFlow 0 27) (- 0 28)) (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_7_1) null))) (=> (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_7_1) null)) (=> (= (ControlFlow 0 27) 26) anon30_correct))))))
(let ((anon64_Then_correct  (and (=> (= (ControlFlow 0 43) (- 0 45)) (<= 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar)))) (=> (<= 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) (and (=> (= (ControlFlow 0 43) (- 0 44)) (<= (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar)) (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar)))) (=> (<= (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar)) (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) (and (and (=> (= (ControlFlow 0 43) 42) anon65_Else_correct) (=> (= (ControlFlow 0 43) 27) anon66_Then_correct)) (=> (= (ControlFlow 0 43) 29) anon66_Else_correct))))))))
(let ((anon49_correct true))
(let ((anon75_Else_correct  (=> (and (>= 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) (= (ControlFlow 0 14) 11)) anon49_correct)))
(let ((anon75_Then_correct  (=> (> (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar)) 0) (and (=> (= (ControlFlow 0 12) (- 0 13)) (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) (- (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar)) 1)) null))) (=> (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) (- (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar)) 1)) null)) (=> (= (ControlFlow 0 12) 11) anon49_correct))))))
(let ((anon73_Else_correct  (=> (forall ((i1_7_1 Int) (i2_7_1 Int) ) (!  (=> (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i1_7_1) (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i2_7_1) (not (= i1_7_1 i2_7_1)))) (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i1_7_1) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i2_7_1))))
 :qid |stdinbpl.1260:24|
 :skolemid |105|
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i1_7_1) (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i2_7_1))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i1_7_1) (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i2_7_1))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i1_7_1) (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i2_7_1))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i1_7_1) (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i2_7_1))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i1_7_1) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i2_7_1))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i1_7_1) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i2_7_1))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i2_7_1) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i1_7_1))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i2_7_1) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i1_7_1))
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i1_7_1) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i2_7_1))
)) (and (=> (= (ControlFlow 0 15) (- 0 18)) (forall ((i_12_1 Int) ) (!  (=> (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_12_1) (dummyFunction_3133 (select (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap@0) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_12_1) val))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1268:21|
 :skolemid |106|
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_12_1))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_12_1))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_12_1))
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_12_1))
))) (=> (forall ((i_12_1@@0 Int) ) (!  (=> (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_12_1@@0) (dummyFunction_3133 (select (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap@0) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_12_1@@0) val))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1268:21|
 :skolemid |106|
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_12_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_12_1@@0))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_12_1@@0))
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_12_1@@0))
)) (and (=> (= (ControlFlow 0 15) (- 0 17)) (forall ((i_12_1@@1 Int) (i_12_2 Int) ) (!  (=> (and (and (and (and (not (= i_12_1@@1 i_12_2)) (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_12_1@@1)) (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_12_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_12_1@@1) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_12_2))))
 :qid |stdinbpl.1275:21|
 :skolemid |107|
 :pattern ( (neverTriggered6 i_12_1@@1) (neverTriggered6 i_12_2))
))) (=> (forall ((i_12_1@@2 Int) (i_12_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_12_1@@2 i_12_2@@0)) (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_12_1@@2)) (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_12_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_12_1@@2) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_12_2@@0))))
 :qid |stdinbpl.1275:21|
 :skolemid |107|
 :pattern ( (neverTriggered6 i_12_1@@2) (neverTriggered6 i_12_2@@0))
)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (forall ((i_12_1@@3 Int) ) (!  (=> (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_12_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| Mask@2) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_12_1@@3) val) NoPerm)))
 :qid |stdinbpl.1282:21|
 :skolemid |108|
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_12_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_12_1@@3))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_12_1@@3))
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_12_1@@3))
))) (=> (forall ((i_12_1@@4 Int) ) (!  (=> (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_12_1@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| Mask@2) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_12_1@@4) val) NoPerm)))
 :qid |stdinbpl.1282:21|
 :skolemid |108|
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_12_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_12_1@@4))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_12_1@@4))
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_12_1@@4))
)) (=> (and (forall ((i_12_1@@5 Int) ) (!  (=> (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_12_1@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange6 (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_12_1@@5)) (= (invRecv6 (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_12_1@@5)) i_12_1@@5)))
 :qid |stdinbpl.1288:26|
 :skolemid |109|
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_12_1@@5))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_12_1@@5))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_12_1@@5))
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_12_1@@5))
)) (forall ((o_9@@1 T@Ref) ) (!  (=> (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) (invRecv6 o_9@@1)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange6 o_9@@1))) (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) (invRecv6 o_9@@1)) o_9@@1))
 :qid |stdinbpl.1292:26|
 :skolemid |110|
 :pattern ( (invRecv6 o_9@@1))
))) (and (=> (= (ControlFlow 0 15) 12) anon75_Then_correct) (=> (= (ControlFlow 0 15) 14) anon75_Else_correct))))))))))))
(let ((anon46_correct true))
(let ((anon74_Else_correct  (=> (and (not (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i1_6) (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i2_6) (not (= i1_6 i2_6))))) (= (ControlFlow 0 10) 7)) anon46_correct)))
(let ((anon74_Then_correct  (=> (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i1_6) (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i2_6) (not (= i1_6 i2_6)))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i1_6) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i2_6)))) (=> (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i1_6) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i2_6))) (=> (= (ControlFlow 0 8) 7) anon46_correct))))))
(let ((anon71_Else_correct  (=> (forall ((i_11_1_1 Int) ) (!  (=> (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_11_1_1) (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_11_1_1) null)))
 :qid |stdinbpl.1249:24|
 :skolemid |104|
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_11_1_1))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_11_1_1))
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_11_1_1))
)) (and (and (=> (= (ControlFlow 0 19) 15) anon73_Else_correct) (=> (= (ControlFlow 0 19) 8) anon74_Then_correct)) (=> (= (ControlFlow 0 19) 10) anon74_Else_correct)))))
(let ((anon42_correct true))
(let ((anon72_Else_correct  (=> (and (not (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_10_1)) (= (ControlFlow 0 6) 3)) anon42_correct)))
(let ((anon72_Then_correct  (=> (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) i_10_1) (and (=> (= (ControlFlow 0 4) (- 0 5)) (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_10_1) null))) (=> (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) i_10_1) null)) (=> (= (ControlFlow 0 4) 3) anon42_correct))))))
(let ((anon70_Then_correct  (and (=> (= (ControlFlow 0 20) (- 0 22)) (<= 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar)))) (=> (<= 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (<= (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar)) (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar)))) (=> (<= (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar)) (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) (and (and (=> (= (ControlFlow 0 20) 19) anon71_Else_correct) (=> (= (ControlFlow 0 20) 4) anon72_Then_correct)) (=> (= (ControlFlow 0 20) 6) anon72_Else_correct))))))))
(let ((anon70_Else_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= (count_2 Heap@0 (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) 3))))
(let ((anon64_Else_correct  (=> (= (count_2 Heap@0 (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar) (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@0) this ar))) 3) (=> (and (state Heap@0 Mask@2) (state Heap@0 Mask@2)) (and (=> (= (ControlFlow 0 23) (- 0 25)) (HasDirectPerm_9957_28464 Mask@2 this ar)) (=> (HasDirectPerm_9957_28464 Mask@2 this ar) (and (=> (= (ControlFlow 0 23) (- 0 24)) (HasDirectPerm_9957_28464 Mask@2 this ar)) (=> (HasDirectPerm_9957_28464 Mask@2 this ar) (and (=> (= (ControlFlow 0 23) 20) anon70_Then_correct) (=> (= (ControlFlow 0 23) 2) anon70_Else_correct))))))))))
(let ((anon58_Else_correct  (=> (and (= (count_2 Heap@@23 (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) 4) (state Heap@@23 QPMask@0)) (and (=> (= (ControlFlow 0 46) (- 0 57)) (HasDirectPerm_9957_28464 QPMask@0 this ar)) (=> (HasDirectPerm_9957_28464 QPMask@0 this ar) (and (=> (= (ControlFlow 0 46) (- 0 56)) (< 3 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar)))) (=> (< 3 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) (=> (= perm@0 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 46) (- 0 55)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (and (and (=> (> perm@0 NoPerm) (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) 3) null))) (= Mask@1 (PolymorphicMapType_15745 (store (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| QPMask@0) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) 3) val (+ (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| QPMask@0) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) 3) val) perm@0)) (|PolymorphicMapType_15745_9957_28312#PolymorphicMapType_15745| QPMask@0) (|PolymorphicMapType_15745_9955_15798#PolymorphicMapType_15745| QPMask@0) (|PolymorphicMapType_15745_9955_3164#PolymorphicMapType_15745| QPMask@0) (|PolymorphicMapType_15745_9955_49729#PolymorphicMapType_15745| QPMask@0) (|PolymorphicMapType_15745_9955_54556#PolymorphicMapType_15745| QPMask@0)))) (and (state Heap@@23 Mask@1) (state Heap@@23 Mask@1))) (and (=> (= (ControlFlow 0 46) (- 0 54)) (HasDirectPerm_9957_28464 Mask@1 this ar)) (=> (HasDirectPerm_9957_28464 Mask@1 this ar) (and (=> (= (ControlFlow 0 46) (- 0 53)) (< 3 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar)))) (=> (< 3 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) (and (=> (= (ControlFlow 0 46) (- 0 52)) (HasDirectPerm_9955_3133 Mask@1 (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) 3) val)) (=> (HasDirectPerm_9955_3133 Mask@1 (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) 3) val) (=> (and (select (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap@@23) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) 3) val) (state Heap@@23 Mask@1)) (=> (and (and (not (= this null)) (= Mask@2 (PolymorphicMapType_15745 (store (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| Mask@1) this val (+ (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| Mask@1) this val) FullPerm)) (|PolymorphicMapType_15745_9957_28312#PolymorphicMapType_15745| Mask@1) (|PolymorphicMapType_15745_9955_15798#PolymorphicMapType_15745| Mask@1) (|PolymorphicMapType_15745_9955_3164#PolymorphicMapType_15745| Mask@1) (|PolymorphicMapType_15745_9955_49729#PolymorphicMapType_15745| Mask@1) (|PolymorphicMapType_15745_9955_54556#PolymorphicMapType_15745| Mask@1)))) (and (state Heap@@23 Mask@2) (state Heap@@23 Mask@2))) (and (=> (= (ControlFlow 0 46) (- 0 51)) (HasDirectPerm_9957_28464 Mask@2 this ar)) (=> (HasDirectPerm_9957_28464 Mask@2 this ar) (and (=> (= (ControlFlow 0 46) (- 0 50)) (< 3 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar)))) (=> (< 3 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) (and (=> (= (ControlFlow 0 46) (- 0 49)) (= FullPerm (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| Mask@2) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) 3) val))) (=> (= FullPerm (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| Mask@2) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) 3) val)) (=> (= Heap@0 (PolymorphicMapType_15724 (store (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap@@23) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) 3) val false) (|PolymorphicMapType_15724_9758_9759#PolymorphicMapType_15724| Heap@@23) (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) (|PolymorphicMapType_15724_9955_3164#PolymorphicMapType_15724| Heap@@23) (|PolymorphicMapType_15724_9955_49906#PolymorphicMapType_15724| Heap@@23) (|PolymorphicMapType_15724_15784_49729#PolymorphicMapType_15724| Heap@@23))) (=> (and (state Heap@0 Mask@2) (state Heap@0 Mask@2)) (and (=> (= (ControlFlow 0 46) (- 0 48)) (HasDirectPerm_9957_28464 Mask@2 this ar)) (=> (HasDirectPerm_9957_28464 Mask@2 this ar) (and (=> (= (ControlFlow 0 46) (- 0 47)) (HasDirectPerm_9957_28464 Mask@2 this ar)) (=> (HasDirectPerm_9957_28464 Mask@2 this ar) (and (=> (= (ControlFlow 0 46) 43) anon64_Then_correct) (=> (= (ControlFlow 0 46) 23) anon64_Else_correct)))))))))))))))))))))))))))))))))
(let ((anon56_Else_correct  (and (=> (= (ControlFlow 0 78) (- 0 83)) (forall ((i_3_2 Int) (i_3_3 Int) ) (!  (=> (and (and (and (and (not (= i_3_2 i_3_3)) (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_3_2)) (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_3_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_3_2) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_3_3))))
 :qid |stdinbpl.966:15|
 :skolemid |83|
))) (=> (forall ((i_3_2@@0 Int) (i_3_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3_2@@0 i_3_3@@0)) (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_3_2@@0)) (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_3_3@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_3_2@@0) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_3_3@@0))))
 :qid |stdinbpl.966:15|
 :skolemid |83|
)) (=> (and (forall ((i_3_2@@1 Int) ) (!  (=> (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_3_2@@1) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange3 (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_3_2@@1)) (= (invRecv3 (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_3_2@@1)) i_3_2@@1)))
 :qid |stdinbpl.972:22|
 :skolemid |84|
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_3_2@@1))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_3_2@@1))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_3_2@@1))
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_3_2@@1))
)) (forall ((o_9@@2 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) (invRecv3 o_9@@2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange3 o_9@@2)) (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) (invRecv3 o_9@@2)) o_9@@2))
 :qid |stdinbpl.976:22|
 :skolemid |85|
 :pattern ( (invRecv3 o_9@@2))
))) (and (=> (= (ControlFlow 0 78) (- 0 82)) (forall ((i_3_2@@2 Int) ) (!  (=> (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_3_2@@2) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.982:15|
 :skolemid |86|
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_3_2@@2))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_3_2@@2))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_3_2@@2))
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_3_2@@2))
))) (=> (forall ((i_3_2@@3 Int) ) (!  (=> (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_3_2@@3) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.982:15|
 :skolemid |86|
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_3_2@@3))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_3_2@@3))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_3_2@@3))
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_3_2@@3))
)) (=> (and (forall ((i_3_2@@4 Int) ) (!  (=> (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_3_2@@4) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_3_2@@4) null)))
 :qid |stdinbpl.988:22|
 :skolemid |87|
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_3_2@@4))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_3_2@@4))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_3_2@@4))
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_3_2@@4))
)) (forall ((o_9@@3 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) (invRecv3 o_9@@3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange3 o_9@@3)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) (invRecv3 o_9@@3)) o_9@@3)) (= (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| QPMask@0) o_9@@3 val) (+ (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| Mask@0) o_9@@3 val) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) (invRecv3 o_9@@3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange3 o_9@@3))) (= (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| QPMask@0) o_9@@3 val) (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| Mask@0) o_9@@3 val))))
 :qid |stdinbpl.994:22|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| QPMask@0) o_9@@3 val))
))) (=> (and (and (and (and (and (and (forall ((o_9@@4 T@Ref) (f_5 T@Field_15784_53) ) (!  (=> (not (= f_5 val)) (= (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| Mask@0) o_9@@4 f_5) (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| QPMask@0) o_9@@4 f_5)))
 :qid |stdinbpl.998:29|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| Mask@0) o_9@@4 f_5))
 :pattern ( (select (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| QPMask@0) o_9@@4 f_5))
)) (forall ((o_9@@5 T@Ref) (f_5@@0 T@Field_15797_15798) ) (!  (=> true (= (select (|PolymorphicMapType_15745_9955_15798#PolymorphicMapType_15745| Mask@0) o_9@@5 f_5@@0) (select (|PolymorphicMapType_15745_9955_15798#PolymorphicMapType_15745| QPMask@0) o_9@@5 f_5@@0)))
 :qid |stdinbpl.998:29|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15745_9955_15798#PolymorphicMapType_15745| Mask@0) o_9@@5 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_15745_9955_15798#PolymorphicMapType_15745| QPMask@0) o_9@@5 f_5@@0))
))) (forall ((o_9@@6 T@Ref) (f_5@@1 T@Field_21860_21865) ) (!  (=> true (= (select (|PolymorphicMapType_15745_9957_28312#PolymorphicMapType_15745| Mask@0) o_9@@6 f_5@@1) (select (|PolymorphicMapType_15745_9957_28312#PolymorphicMapType_15745| QPMask@0) o_9@@6 f_5@@1)))
 :qid |stdinbpl.998:29|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15745_9957_28312#PolymorphicMapType_15745| Mask@0) o_9@@6 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_15745_9957_28312#PolymorphicMapType_15745| QPMask@0) o_9@@6 f_5@@1))
))) (forall ((o_9@@7 T@Ref) (f_5@@2 T@Field_21924_3164) ) (!  (=> true (= (select (|PolymorphicMapType_15745_9955_3164#PolymorphicMapType_15745| Mask@0) o_9@@7 f_5@@2) (select (|PolymorphicMapType_15745_9955_3164#PolymorphicMapType_15745| QPMask@0) o_9@@7 f_5@@2)))
 :qid |stdinbpl.998:29|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15745_9955_3164#PolymorphicMapType_15745| Mask@0) o_9@@7 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_15745_9955_3164#PolymorphicMapType_15745| QPMask@0) o_9@@7 f_5@@2))
))) (forall ((o_9@@8 T@Ref) (f_5@@3 T@Field_9955_49729) ) (!  (=> true (= (select (|PolymorphicMapType_15745_9955_49729#PolymorphicMapType_15745| Mask@0) o_9@@8 f_5@@3) (select (|PolymorphicMapType_15745_9955_49729#PolymorphicMapType_15745| QPMask@0) o_9@@8 f_5@@3)))
 :qid |stdinbpl.998:29|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15745_9955_49729#PolymorphicMapType_15745| Mask@0) o_9@@8 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_15745_9955_49729#PolymorphicMapType_15745| QPMask@0) o_9@@8 f_5@@3))
))) (forall ((o_9@@9 T@Ref) (f_5@@4 T@Field_9955_49862) ) (!  (=> true (= (select (|PolymorphicMapType_15745_9955_54556#PolymorphicMapType_15745| Mask@0) o_9@@9 f_5@@4) (select (|PolymorphicMapType_15745_9955_54556#PolymorphicMapType_15745| QPMask@0) o_9@@9 f_5@@4)))
 :qid |stdinbpl.998:29|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15745_9955_54556#PolymorphicMapType_15745| Mask@0) o_9@@9 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_15745_9955_54556#PolymorphicMapType_15745| QPMask@0) o_9@@9 f_5@@4))
))) (and (state Heap@@23 QPMask@0) (state Heap@@23 QPMask@0))) (and (=> (= (ControlFlow 0 78) (- 0 81)) (HasDirectPerm_9957_28464 QPMask@0 this ar)) (=> (HasDirectPerm_9957_28464 QPMask@0 this ar) (=> (> (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar)) 10) (=> (and (state Heap@@23 QPMask@0) (state Heap@@23 QPMask@0)) (and (=> (= (ControlFlow 0 78) (- 0 80)) (HasDirectPerm_9957_28464 QPMask@0 this ar)) (=> (HasDirectPerm_9957_28464 QPMask@0 this ar) (and (=> (= (ControlFlow 0 78) (- 0 79)) (HasDirectPerm_9957_28464 QPMask@0 this ar)) (=> (HasDirectPerm_9957_28464 QPMask@0 this ar) (and (=> (= (ControlFlow 0 78) 75) anon58_Then_correct) (=> (= (ControlFlow 0 78) 46) anon58_Else_correct)))))))))))))))))))
(let ((anon53_Else_correct  (=> (and (forall ((i1_1 Int) (i2_1 Int) ) (!  (=> (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i1_1) (and (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i2_1) (not (= i1_1 i2_1)))) (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i1_1) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i2_1))))
 :qid |stdinbpl.944:20|
 :skolemid |82|
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i1_1) (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i2_1))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i1_1) (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i2_1))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i1_1) (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i2_1))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i1_1) (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i2_1))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i1_1) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i2_1))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i1_1) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i2_1))
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i2_1) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i1_1))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i2_1) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i1_1))
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i1_1) (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i2_1))
)) (state Heap@@23 Mask@0)) (and (=> (= (ControlFlow 0 92) 90) anon56_Then_correct) (=> (= (ControlFlow 0 92) 78) anon56_Else_correct)))))
(let ((anon51_Else_correct  (=> (and (forall ((i_1 Int) ) (!  (=> (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_1) (not (= (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_1) null)))
 :qid |stdinbpl.914:20|
 :skolemid |81|
 :pattern ( (|Seq#ContainsTrigger_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_1))
 :pattern ( (|Seq#Contains_3011| (|Seq#Range| 0 (|Seq#Length_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar))) i_1))
 :pattern ( (|Seq#Index_9977| (select (|PolymorphicMapType_15724_9957_28535#PolymorphicMapType_15724| Heap@@23) this ar) i_1))
)) (state Heap@@23 Mask@0)) (and (=> (= (ControlFlow 0 107) 105) anon53_Then_correct) (=> (= (ControlFlow 0 107) 92) anon53_Else_correct)))))
(let ((anon0_correct  (=> (state Heap@@23 ZeroMask) (=> (and (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (select (|PolymorphicMapType_15724_9755_53#PolymorphicMapType_15724| Heap@@23) this $allocated) (> wildcard@0 NoPerm))) (and (and (not (= this null)) (= Mask@0 (PolymorphicMapType_15745 (|PolymorphicMapType_15745_9955_3133#PolymorphicMapType_15745| ZeroMask) (store (|PolymorphicMapType_15745_9957_28312#PolymorphicMapType_15745| ZeroMask) this ar (+ (select (|PolymorphicMapType_15745_9957_28312#PolymorphicMapType_15745| ZeroMask) this ar) wildcard@0)) (|PolymorphicMapType_15745_9955_15798#PolymorphicMapType_15745| ZeroMask) (|PolymorphicMapType_15745_9955_3164#PolymorphicMapType_15745| ZeroMask) (|PolymorphicMapType_15745_9955_49729#PolymorphicMapType_15745| ZeroMask) (|PolymorphicMapType_15745_9955_54556#PolymorphicMapType_15745| ZeroMask)))) (and (state Heap@@23 Mask@0) (state Heap@@23 Mask@0)))) (and (=> (= (ControlFlow 0 116) 114) anon51_Then_correct) (=> (= (ControlFlow 0 116) 107) anon51_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 117) 116)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
