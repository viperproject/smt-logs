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
(declare-sort T@Field_8506_53 0)
(declare-sort T@Field_8519_8520 0)
(declare-sort T@Field_14540_3085 0)
(declare-sort T@Field_14986_14987 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_15002_15007 0)
(declare-sort T@Field_5444_5457 0)
(declare-sort T@Field_5444_15007 0)
(declare-sort T@Field_5456_3085 0)
(declare-sort T@Field_5456_53 0)
(declare-sort T@Field_5456_8520 0)
(declare-datatypes ((T@PolymorphicMapType_8467 0)) (((PolymorphicMapType_8467 (|PolymorphicMapType_8467_5444_3085#PolymorphicMapType_8467| (Array T@Ref T@Field_14540_3085 Real)) (|PolymorphicMapType_8467_5456_5457#PolymorphicMapType_8467| (Array T@Ref T@Field_14986_14987 Real)) (|PolymorphicMapType_8467_5444_5457#PolymorphicMapType_8467| (Array T@Ref T@Field_5444_5457 Real)) (|PolymorphicMapType_8467_5444_53#PolymorphicMapType_8467| (Array T@Ref T@Field_8506_53 Real)) (|PolymorphicMapType_8467_5444_8520#PolymorphicMapType_8467| (Array T@Ref T@Field_8519_8520 Real)) (|PolymorphicMapType_8467_5444_32800#PolymorphicMapType_8467| (Array T@Ref T@Field_5444_15007 Real)) (|PolymorphicMapType_8467_5456_3085#PolymorphicMapType_8467| (Array T@Ref T@Field_5456_3085 Real)) (|PolymorphicMapType_8467_5456_53#PolymorphicMapType_8467| (Array T@Ref T@Field_5456_53 Real)) (|PolymorphicMapType_8467_5456_8520#PolymorphicMapType_8467| (Array T@Ref T@Field_5456_8520 Real)) (|PolymorphicMapType_8467_5456_33211#PolymorphicMapType_8467| (Array T@Ref T@Field_15002_15007 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8995 0)) (((PolymorphicMapType_8995 (|PolymorphicMapType_8995_5444_3085#PolymorphicMapType_8995| (Array T@Ref T@Field_14540_3085 Bool)) (|PolymorphicMapType_8995_5444_53#PolymorphicMapType_8995| (Array T@Ref T@Field_8506_53 Bool)) (|PolymorphicMapType_8995_5444_8520#PolymorphicMapType_8995| (Array T@Ref T@Field_8519_8520 Bool)) (|PolymorphicMapType_8995_5444_14987#PolymorphicMapType_8995| (Array T@Ref T@Field_5444_5457 Bool)) (|PolymorphicMapType_8995_5444_26358#PolymorphicMapType_8995| (Array T@Ref T@Field_5444_15007 Bool)) (|PolymorphicMapType_8995_14986_3085#PolymorphicMapType_8995| (Array T@Ref T@Field_5456_3085 Bool)) (|PolymorphicMapType_8995_14986_53#PolymorphicMapType_8995| (Array T@Ref T@Field_5456_53 Bool)) (|PolymorphicMapType_8995_14986_8520#PolymorphicMapType_8995| (Array T@Ref T@Field_5456_8520 Bool)) (|PolymorphicMapType_8995_14986_14987#PolymorphicMapType_8995| (Array T@Ref T@Field_14986_14987 Bool)) (|PolymorphicMapType_8995_14986_27406#PolymorphicMapType_8995| (Array T@Ref T@Field_15002_15007 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8446 0)) (((PolymorphicMapType_8446 (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| (Array T@Ref T@Field_8506_53 Bool)) (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| (Array T@Ref T@Field_8519_8520 T@Ref)) (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| (Array T@Ref T@Field_14540_3085 Int)) (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| (Array T@Ref T@Field_14986_14987 T@FrameType)) (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| (Array T@Ref T@Field_15002_15007 T@PolymorphicMapType_8995)) (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| (Array T@Ref T@Field_5444_5457 T@FrameType)) (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| (Array T@Ref T@Field_5444_15007 T@PolymorphicMapType_8995)) (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| (Array T@Ref T@Field_5456_3085 Int)) (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| (Array T@Ref T@Field_5456_53 Bool)) (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| (Array T@Ref T@Field_5456_8520 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_8506_53)
(declare-fun f_7 () T@Field_14540_3085)
(declare-sort T@Seq_14980 0)
(declare-fun |Seq#Length_14980| (T@Seq_14980) Int)
(declare-fun |Seq#Drop_14980| (T@Seq_14980 Int) T@Seq_14980)
(declare-sort T@Seq_2963 0)
(declare-fun |Seq#Length_2963| (T@Seq_2963) Int)
(declare-fun |Seq#Drop_2963| (T@Seq_2963 Int) T@Seq_2963)
(declare-fun succHeap (T@PolymorphicMapType_8446 T@PolymorphicMapType_8446) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8446 T@PolymorphicMapType_8446) Bool)
(declare-fun state (T@PolymorphicMapType_8446 T@PolymorphicMapType_8467) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8467) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8995)
(declare-fun |Seq#Index_14980| (T@Seq_14980 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2963| (T@Seq_2963 Int) Int)
(declare-fun |Seq#Empty_14980| () T@Seq_14980)
(declare-fun |Seq#Empty_2963| () T@Seq_2963)
(declare-fun wrap (T@Seq_14980) T@Field_14986_14987)
(declare-fun IsPredicateField_5456_5457 (T@Field_14986_14987) Bool)
(declare-fun |fun'| (T@PolymorphicMapType_8446 Int) Bool)
(declare-fun dummyFunction_3231 (Bool) Bool)
(declare-fun |fun#triggerStateless| (Int) Bool)
(declare-fun |wrap#trigger_5456| (T@PolymorphicMapType_8446 T@Field_14986_14987) Bool)
(declare-fun |wrap#everUsed_5456| (T@Field_14986_14987) Bool)
(declare-fun |Seq#Update_14980| (T@Seq_14980 Int T@Ref) T@Seq_14980)
(declare-fun |Seq#Update_2963| (T@Seq_2963 Int Int) T@Seq_2963)
(declare-fun |Seq#Take_14980| (T@Seq_14980 Int) T@Seq_14980)
(declare-fun |Seq#Take_2963| (T@Seq_2963 Int) T@Seq_2963)
(declare-fun |Seq#Contains_2963| (T@Seq_2963 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2963)
(declare-fun |Seq#Contains_5492| (T@Seq_14980 T@Ref) Bool)
(declare-fun |Seq#Skolem_5492| (T@Seq_14980 T@Ref) Int)
(declare-fun |Seq#Skolem_2963| (T@Seq_2963 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8446 T@PolymorphicMapType_8446 T@PolymorphicMapType_8467) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5456 (T@Field_14986_14987) T@Field_15002_15007)
(declare-fun HasDirectPerm_5456_5457 (T@PolymorphicMapType_8467 T@Ref T@Field_14986_14987) Bool)
(declare-fun IsPredicateField_5444_24886 (T@Field_5444_5457) Bool)
(declare-fun PredicateMaskField_5444 (T@Field_5444_5457) T@Field_5444_15007)
(declare-fun HasDirectPerm_5444_5457 (T@PolymorphicMapType_8467 T@Ref T@Field_5444_5457) Bool)
(declare-fun IsWandField_5456_28571 (T@Field_14986_14987) Bool)
(declare-fun WandMaskField_5456 (T@Field_14986_14987) T@Field_15002_15007)
(declare-fun IsWandField_5444_28214 (T@Field_5444_5457) Bool)
(declare-fun WandMaskField_5444 (T@Field_5444_5457) T@Field_5444_15007)
(declare-fun |Seq#Singleton_14980| (T@Ref) T@Seq_14980)
(declare-fun |Seq#Singleton_2963| (Int) T@Seq_2963)
(declare-fun |wrap#sm| (T@Seq_14980) T@Field_15002_15007)
(declare-fun |Seq#Append_14980| (T@Seq_14980 T@Seq_14980) T@Seq_14980)
(declare-fun |Seq#Append_2963| (T@Seq_2963 T@Seq_2963) T@Seq_2963)
(declare-fun dummyHeap () T@PolymorphicMapType_8446)
(declare-fun ZeroMask () T@PolymorphicMapType_8467)
(declare-fun InsidePredicate_14986_14986 (T@Field_14986_14987 T@FrameType T@Field_14986_14987 T@FrameType) Bool)
(declare-fun InsidePredicate_8506_8506 (T@Field_5444_5457 T@FrameType T@Field_5444_5457 T@FrameType) Bool)
(declare-fun IsPredicateField_5444_3085 (T@Field_14540_3085) Bool)
(declare-fun IsWandField_5444_3085 (T@Field_14540_3085) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5456_35503 (T@Field_15002_15007) Bool)
(declare-fun IsWandField_5456_35519 (T@Field_15002_15007) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5456_8520 (T@Field_5456_8520) Bool)
(declare-fun IsWandField_5456_8520 (T@Field_5456_8520) Bool)
(declare-fun IsPredicateField_5456_53 (T@Field_5456_53) Bool)
(declare-fun IsWandField_5456_53 (T@Field_5456_53) Bool)
(declare-fun IsPredicateField_5456_3085 (T@Field_5456_3085) Bool)
(declare-fun IsWandField_5456_3085 (T@Field_5456_3085) Bool)
(declare-fun IsPredicateField_5444_34672 (T@Field_5444_15007) Bool)
(declare-fun IsWandField_5444_34688 (T@Field_5444_15007) Bool)
(declare-fun IsPredicateField_5444_8520 (T@Field_8519_8520) Bool)
(declare-fun IsWandField_5444_8520 (T@Field_8519_8520) Bool)
(declare-fun IsPredicateField_5444_53 (T@Field_8506_53) Bool)
(declare-fun IsWandField_5444_53 (T@Field_8506_53) Bool)
(declare-fun HasDirectPerm_5456_24641 (T@PolymorphicMapType_8467 T@Ref T@Field_15002_15007) Bool)
(declare-fun HasDirectPerm_5456_8520 (T@PolymorphicMapType_8467 T@Ref T@Field_5456_8520) Bool)
(declare-fun HasDirectPerm_5456_53 (T@PolymorphicMapType_8467 T@Ref T@Field_5456_53) Bool)
(declare-fun HasDirectPerm_5456_3085 (T@PolymorphicMapType_8467 T@Ref T@Field_5456_3085) Bool)
(declare-fun HasDirectPerm_5444_23500 (T@PolymorphicMapType_8467 T@Ref T@Field_5444_15007) Bool)
(declare-fun HasDirectPerm_5444_8520 (T@PolymorphicMapType_8467 T@Ref T@Field_8519_8520) Bool)
(declare-fun HasDirectPerm_5444_53 (T@PolymorphicMapType_8467 T@Ref T@Field_8506_53) Bool)
(declare-fun HasDirectPerm_5444_3085 (T@PolymorphicMapType_8467 T@Ref T@Field_14540_3085) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8467 T@PolymorphicMapType_8467 T@PolymorphicMapType_8467) Bool)
(declare-fun |Seq#Equal_14980| (T@Seq_14980 T@Seq_14980) Bool)
(declare-fun |Seq#Equal_2963| (T@Seq_2963 T@Seq_2963) Bool)
(declare-fun |fun#frame| (T@FrameType Int) Bool)
(declare-fun |Seq#ContainsTrigger_5496| (T@Seq_14980 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2963| (T@Seq_2963 Int) Bool)
(declare-fun fun (T@PolymorphicMapType_8446 Int) Bool)
(declare-fun getPredWandId_5456_5457 (T@Field_14986_14987) Int)
(declare-fun |wrap#condqp1| (T@PolymorphicMapType_8446 T@Seq_14980) Int)
(declare-fun |sk_wrap#condqp1| (Int Int) T@Ref)
(declare-fun |Seq#SkolemDiff_14980| (T@Seq_14980 T@Seq_14980) Int)
(declare-fun |Seq#SkolemDiff_2963| (T@Seq_2963 T@Seq_2963) Int)
(declare-fun InsidePredicate_14986_8506 (T@Field_14986_14987 T@FrameType T@Field_5444_5457 T@FrameType) Bool)
(declare-fun InsidePredicate_8506_14986 (T@Field_5444_5457 T@FrameType T@Field_14986_14987 T@FrameType) Bool)
(assert (forall ((s T@Seq_14980) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_14980| s)) (= (|Seq#Length_14980| (|Seq#Drop_14980| s n)) (- (|Seq#Length_14980| s) n))) (=> (< (|Seq#Length_14980| s) n) (= (|Seq#Length_14980| (|Seq#Drop_14980| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_14980| (|Seq#Drop_14980| s n)) (|Seq#Length_14980| s))))
 :qid |stdinbpl.300:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_14980| (|Seq#Drop_14980| s n)))
 :pattern ( (|Seq#Length_14980| s) (|Seq#Drop_14980| s n))
)))
(assert (forall ((s@@0 T@Seq_2963) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2963| s@@0)) (= (|Seq#Length_2963| (|Seq#Drop_2963| s@@0 n@@0)) (- (|Seq#Length_2963| s@@0) n@@0))) (=> (< (|Seq#Length_2963| s@@0) n@@0) (= (|Seq#Length_2963| (|Seq#Drop_2963| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2963| (|Seq#Drop_2963| s@@0 n@@0)) (|Seq#Length_2963| s@@0))))
 :qid |stdinbpl.300:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2963| (|Seq#Drop_2963| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2963| s@@0) (|Seq#Drop_2963| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_8446) (Heap1 T@PolymorphicMapType_8446) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8446) (Mask T@PolymorphicMapType_8467) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8446) (Heap1@@0 T@PolymorphicMapType_8446) (Heap2 T@PolymorphicMapType_8446) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_15002_15007) ) (!  (not (select (|PolymorphicMapType_8995_14986_27406#PolymorphicMapType_8995| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8995_14986_27406#PolymorphicMapType_8995| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_14986_14987) ) (!  (not (select (|PolymorphicMapType_8995_14986_14987#PolymorphicMapType_8995| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8995_14986_14987#PolymorphicMapType_8995| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5456_8520) ) (!  (not (select (|PolymorphicMapType_8995_14986_8520#PolymorphicMapType_8995| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8995_14986_8520#PolymorphicMapType_8995| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5456_53) ) (!  (not (select (|PolymorphicMapType_8995_14986_53#PolymorphicMapType_8995| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8995_14986_53#PolymorphicMapType_8995| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5456_3085) ) (!  (not (select (|PolymorphicMapType_8995_14986_3085#PolymorphicMapType_8995| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8995_14986_3085#PolymorphicMapType_8995| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_5444_15007) ) (!  (not (select (|PolymorphicMapType_8995_5444_26358#PolymorphicMapType_8995| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8995_5444_26358#PolymorphicMapType_8995| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_5444_5457) ) (!  (not (select (|PolymorphicMapType_8995_5444_14987#PolymorphicMapType_8995| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8995_5444_14987#PolymorphicMapType_8995| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_8519_8520) ) (!  (not (select (|PolymorphicMapType_8995_5444_8520#PolymorphicMapType_8995| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8995_5444_8520#PolymorphicMapType_8995| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_8506_53) ) (!  (not (select (|PolymorphicMapType_8995_5444_53#PolymorphicMapType_8995| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8995_5444_53#PolymorphicMapType_8995| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_14540_3085) ) (!  (not (select (|PolymorphicMapType_8995_5444_3085#PolymorphicMapType_8995| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8995_5444_3085#PolymorphicMapType_8995| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((s@@1 T@Seq_14980) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_14980| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_14980| (|Seq#Drop_14980| s@@1 n@@1) j) (|Seq#Index_14980| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.321:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_14980| (|Seq#Drop_14980| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2963) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2963| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2963| (|Seq#Drop_2963| s@@2 n@@2) j@@0) (|Seq#Index_2963| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.321:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2963| (|Seq#Drop_2963| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_14980| |Seq#Empty_14980|) 0))
(assert (= (|Seq#Length_2963| |Seq#Empty_2963|) 0))
(assert (forall ((xs T@Seq_14980) ) (! (IsPredicateField_5456_5457 (wrap xs))
 :qid |stdinbpl.627:15|
 :skolemid |62|
 :pattern ( (wrap xs))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8446) (a_2 Int) ) (! (dummyFunction_3231 (|fun#triggerStateless| a_2))
 :qid |stdinbpl.586:15|
 :skolemid |59|
 :pattern ( (|fun'| Heap@@0 a_2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8446) (xs@@0 T@Seq_14980) ) (! (|wrap#everUsed_5456| (wrap xs@@0))
 :qid |stdinbpl.646:15|
 :skolemid |66|
 :pattern ( (|wrap#trigger_5456| Heap@@1 (wrap xs@@0)))
)))
(assert (forall ((s@@3 T@Seq_14980) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_14980| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_14980| (|Seq#Update_14980| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_14980| (|Seq#Update_14980| s@@3 i v) n@@3) (|Seq#Index_14980| s@@3 n@@3)))))
 :qid |stdinbpl.276:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_14980| (|Seq#Update_14980| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_14980| s@@3 n@@3) (|Seq#Update_14980| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_2963) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2963| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_2963| (|Seq#Update_2963| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_2963| (|Seq#Update_2963| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_2963| s@@4 n@@4)))))
 :qid |stdinbpl.276:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2963| (|Seq#Update_2963| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_2963| s@@4 n@@4) (|Seq#Update_2963| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_14980) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_14980| s@@5)) (= (|Seq#Length_14980| (|Seq#Take_14980| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_14980| s@@5) n@@5) (= (|Seq#Length_14980| (|Seq#Take_14980| s@@5 n@@5)) (|Seq#Length_14980| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_14980| (|Seq#Take_14980| s@@5 n@@5)) 0)))
 :qid |stdinbpl.287:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_14980| (|Seq#Take_14980| s@@5 n@@5)))
 :pattern ( (|Seq#Take_14980| s@@5 n@@5) (|Seq#Length_14980| s@@5))
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
(assert (forall ((s@@7 T@Seq_14980) (x T@Ref) ) (!  (=> (|Seq#Contains_5492| s@@7 x) (and (and (<= 0 (|Seq#Skolem_5492| s@@7 x)) (< (|Seq#Skolem_5492| s@@7 x) (|Seq#Length_14980| s@@7))) (= (|Seq#Index_14980| s@@7 (|Seq#Skolem_5492| s@@7 x)) x)))
 :qid |stdinbpl.419:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_5492| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2963) (x@@0 Int) ) (!  (=> (|Seq#Contains_2963| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2963| s@@8 x@@0)) (< (|Seq#Skolem_2963| s@@8 x@@0) (|Seq#Length_2963| s@@8))) (= (|Seq#Index_2963| s@@8 (|Seq#Skolem_2963| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.419:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2963| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_14980) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_14980| s@@9 n@@7) s@@9))
 :qid |stdinbpl.403:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_14980| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2963) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2963| s@@10 n@@8) s@@10))
 :qid |stdinbpl.403:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2963| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.256:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.254:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8446) (ExhaleHeap T@PolymorphicMapType_8446) (Mask@@0 T@PolymorphicMapType_8467) (pm_f_1 T@Field_14986_14987) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5456_5457 Mask@@0 null pm_f_1) (IsPredicateField_5456_5457 pm_f_1)) (= (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@2) null (PredicateMaskField_5456 pm_f_1)) (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| ExhaleHeap) null (PredicateMaskField_5456 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_5456_5457 pm_f_1) (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| ExhaleHeap) null (PredicateMaskField_5456 pm_f_1)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8446) (ExhaleHeap@@0 T@PolymorphicMapType_8446) (Mask@@1 T@PolymorphicMapType_8467) (pm_f_1@@0 T@Field_5444_5457) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5444_5457 Mask@@1 null pm_f_1@@0) (IsPredicateField_5444_24886 pm_f_1@@0)) (= (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@3) null (PredicateMaskField_5444 pm_f_1@@0)) (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| ExhaleHeap@@0) null (PredicateMaskField_5444 pm_f_1@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_5444_24886 pm_f_1@@0) (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| ExhaleHeap@@0) null (PredicateMaskField_5444 pm_f_1@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8446) (ExhaleHeap@@1 T@PolymorphicMapType_8446) (Mask@@2 T@PolymorphicMapType_8467) (pm_f_1@@1 T@Field_14986_14987) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5456_5457 Mask@@2 null pm_f_1@@1) (IsWandField_5456_28571 pm_f_1@@1)) (= (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@4) null (WandMaskField_5456 pm_f_1@@1)) (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| ExhaleHeap@@1) null (WandMaskField_5456 pm_f_1@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsWandField_5456_28571 pm_f_1@@1) (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| ExhaleHeap@@1) null (WandMaskField_5456 pm_f_1@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8446) (ExhaleHeap@@2 T@PolymorphicMapType_8446) (Mask@@3 T@PolymorphicMapType_8467) (pm_f_1@@2 T@Field_5444_5457) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5444_5457 Mask@@3 null pm_f_1@@2) (IsWandField_5444_28214 pm_f_1@@2)) (= (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@5) null (WandMaskField_5444 pm_f_1@@2)) (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| ExhaleHeap@@2) null (WandMaskField_5444 pm_f_1@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_5444_28214 pm_f_1@@2) (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| ExhaleHeap@@2) null (WandMaskField_5444 pm_f_1@@2)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_5492| (|Seq#Singleton_14980| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.544:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_5492| (|Seq#Singleton_14980| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2963| (|Seq#Singleton_2963| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.544:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2963| (|Seq#Singleton_2963| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_14980) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_14980| s@@11))) (= (|Seq#Index_14980| (|Seq#Take_14980| s@@11 n@@9) j@@3) (|Seq#Index_14980| s@@11 j@@3)))
 :qid |stdinbpl.295:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_14980| (|Seq#Take_14980| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_14980| s@@11 j@@3) (|Seq#Take_14980| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2963) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2963| s@@12))) (= (|Seq#Index_2963| (|Seq#Take_2963| s@@12 n@@10) j@@4) (|Seq#Index_2963| s@@12 j@@4)))
 :qid |stdinbpl.295:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2963| (|Seq#Take_2963| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2963| s@@12 j@@4) (|Seq#Take_2963| s@@12 n@@10))
)))
(assert (forall ((xs@@1 T@Seq_14980) (xs2 T@Seq_14980) ) (!  (=> (= (wrap xs@@1) (wrap xs2)) (= xs@@1 xs2))
 :qid |stdinbpl.637:15|
 :skolemid |64|
 :pattern ( (wrap xs@@1) (wrap xs2))
)))
(assert (forall ((xs@@2 T@Seq_14980) (xs2@@0 T@Seq_14980) ) (!  (=> (= (|wrap#sm| xs@@2) (|wrap#sm| xs2@@0)) (= xs@@2 xs2@@0))
 :qid |stdinbpl.641:15|
 :skolemid |65|
 :pattern ( (|wrap#sm| xs@@2) (|wrap#sm| xs2@@0))
)))
(assert (forall ((s@@13 T@Seq_14980) (t T@Seq_14980) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_14980| s@@13))) (< n@@11 (|Seq#Length_14980| (|Seq#Append_14980| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_14980| s@@13)) (|Seq#Length_14980| s@@13)) n@@11) (= (|Seq#Take_14980| (|Seq#Append_14980| s@@13 t) n@@11) (|Seq#Append_14980| s@@13 (|Seq#Take_14980| t (|Seq#Sub| n@@11 (|Seq#Length_14980| s@@13)))))))
 :qid |stdinbpl.380:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_14980| (|Seq#Append_14980| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2963) (t@@0 T@Seq_2963) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2963| s@@14))) (< n@@12 (|Seq#Length_2963| (|Seq#Append_2963| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2963| s@@14)) (|Seq#Length_2963| s@@14)) n@@12) (= (|Seq#Take_2963| (|Seq#Append_2963| s@@14 t@@0) n@@12) (|Seq#Append_2963| s@@14 (|Seq#Take_2963| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2963| s@@14)))))))
 :qid |stdinbpl.380:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2963| (|Seq#Append_2963| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8446) (ExhaleHeap@@3 T@PolymorphicMapType_8446) (Mask@@4 T@PolymorphicMapType_8467) (pm_f_1@@3 T@Field_14986_14987) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_5456_5457 Mask@@4 null pm_f_1@@3) (IsPredicateField_5456_5457 pm_f_1@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_1 T@Ref) (f_8 T@Field_14540_3085) ) (!  (=> (select (|PolymorphicMapType_8995_5444_3085#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@6) null (PredicateMaskField_5456 pm_f_1@@3))) o2_1 f_8) (= (select (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| Heap@@6) o2_1 f_8) (select (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| ExhaleHeap@@3) o2_1 f_8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| ExhaleHeap@@3) o2_1 f_8))
)) (forall ((o2_1@@0 T@Ref) (f_8@@0 T@Field_8506_53) ) (!  (=> (select (|PolymorphicMapType_8995_5444_53#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@6) null (PredicateMaskField_5456 pm_f_1@@3))) o2_1@@0 f_8@@0) (= (select (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| Heap@@6) o2_1@@0 f_8@@0) (select (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| ExhaleHeap@@3) o2_1@@0 f_8@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| ExhaleHeap@@3) o2_1@@0 f_8@@0))
))) (forall ((o2_1@@1 T@Ref) (f_8@@1 T@Field_8519_8520) ) (!  (=> (select (|PolymorphicMapType_8995_5444_8520#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@6) null (PredicateMaskField_5456 pm_f_1@@3))) o2_1@@1 f_8@@1) (= (select (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| Heap@@6) o2_1@@1 f_8@@1) (select (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| ExhaleHeap@@3) o2_1@@1 f_8@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| ExhaleHeap@@3) o2_1@@1 f_8@@1))
))) (forall ((o2_1@@2 T@Ref) (f_8@@2 T@Field_5444_5457) ) (!  (=> (select (|PolymorphicMapType_8995_5444_14987#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@6) null (PredicateMaskField_5456 pm_f_1@@3))) o2_1@@2 f_8@@2) (= (select (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| Heap@@6) o2_1@@2 f_8@@2) (select (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| ExhaleHeap@@3) o2_1@@2 f_8@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| ExhaleHeap@@3) o2_1@@2 f_8@@2))
))) (forall ((o2_1@@3 T@Ref) (f_8@@3 T@Field_5444_15007) ) (!  (=> (select (|PolymorphicMapType_8995_5444_26358#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@6) null (PredicateMaskField_5456 pm_f_1@@3))) o2_1@@3 f_8@@3) (= (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@6) o2_1@@3 f_8@@3) (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| ExhaleHeap@@3) o2_1@@3 f_8@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| ExhaleHeap@@3) o2_1@@3 f_8@@3))
))) (forall ((o2_1@@4 T@Ref) (f_8@@4 T@Field_5456_3085) ) (!  (=> (select (|PolymorphicMapType_8995_14986_3085#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@6) null (PredicateMaskField_5456 pm_f_1@@3))) o2_1@@4 f_8@@4) (= (select (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| Heap@@6) o2_1@@4 f_8@@4) (select (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| ExhaleHeap@@3) o2_1@@4 f_8@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| ExhaleHeap@@3) o2_1@@4 f_8@@4))
))) (forall ((o2_1@@5 T@Ref) (f_8@@5 T@Field_5456_53) ) (!  (=> (select (|PolymorphicMapType_8995_14986_53#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@6) null (PredicateMaskField_5456 pm_f_1@@3))) o2_1@@5 f_8@@5) (= (select (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| Heap@@6) o2_1@@5 f_8@@5) (select (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| ExhaleHeap@@3) o2_1@@5 f_8@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| ExhaleHeap@@3) o2_1@@5 f_8@@5))
))) (forall ((o2_1@@6 T@Ref) (f_8@@6 T@Field_5456_8520) ) (!  (=> (select (|PolymorphicMapType_8995_14986_8520#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@6) null (PredicateMaskField_5456 pm_f_1@@3))) o2_1@@6 f_8@@6) (= (select (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| Heap@@6) o2_1@@6 f_8@@6) (select (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| ExhaleHeap@@3) o2_1@@6 f_8@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| ExhaleHeap@@3) o2_1@@6 f_8@@6))
))) (forall ((o2_1@@7 T@Ref) (f_8@@7 T@Field_14986_14987) ) (!  (=> (select (|PolymorphicMapType_8995_14986_14987#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@6) null (PredicateMaskField_5456 pm_f_1@@3))) o2_1@@7 f_8@@7) (= (select (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| Heap@@6) o2_1@@7 f_8@@7) (select (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| ExhaleHeap@@3) o2_1@@7 f_8@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| ExhaleHeap@@3) o2_1@@7 f_8@@7))
))) (forall ((o2_1@@8 T@Ref) (f_8@@8 T@Field_15002_15007) ) (!  (=> (select (|PolymorphicMapType_8995_14986_27406#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@6) null (PredicateMaskField_5456 pm_f_1@@3))) o2_1@@8 f_8@@8) (= (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@6) o2_1@@8 f_8@@8) (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| ExhaleHeap@@3) o2_1@@8 f_8@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| ExhaleHeap@@3) o2_1@@8 f_8@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsPredicateField_5456_5457 pm_f_1@@3))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8446) (ExhaleHeap@@4 T@PolymorphicMapType_8446) (Mask@@5 T@PolymorphicMapType_8467) (pm_f_1@@4 T@Field_5444_5457) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_5444_5457 Mask@@5 null pm_f_1@@4) (IsPredicateField_5444_24886 pm_f_1@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_1@@9 T@Ref) (f_8@@9 T@Field_14540_3085) ) (!  (=> (select (|PolymorphicMapType_8995_5444_3085#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@7) null (PredicateMaskField_5444 pm_f_1@@4))) o2_1@@9 f_8@@9) (= (select (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| Heap@@7) o2_1@@9 f_8@@9) (select (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| ExhaleHeap@@4) o2_1@@9 f_8@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| ExhaleHeap@@4) o2_1@@9 f_8@@9))
)) (forall ((o2_1@@10 T@Ref) (f_8@@10 T@Field_8506_53) ) (!  (=> (select (|PolymorphicMapType_8995_5444_53#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@7) null (PredicateMaskField_5444 pm_f_1@@4))) o2_1@@10 f_8@@10) (= (select (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| Heap@@7) o2_1@@10 f_8@@10) (select (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| ExhaleHeap@@4) o2_1@@10 f_8@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| ExhaleHeap@@4) o2_1@@10 f_8@@10))
))) (forall ((o2_1@@11 T@Ref) (f_8@@11 T@Field_8519_8520) ) (!  (=> (select (|PolymorphicMapType_8995_5444_8520#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@7) null (PredicateMaskField_5444 pm_f_1@@4))) o2_1@@11 f_8@@11) (= (select (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| Heap@@7) o2_1@@11 f_8@@11) (select (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| ExhaleHeap@@4) o2_1@@11 f_8@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| ExhaleHeap@@4) o2_1@@11 f_8@@11))
))) (forall ((o2_1@@12 T@Ref) (f_8@@12 T@Field_5444_5457) ) (!  (=> (select (|PolymorphicMapType_8995_5444_14987#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@7) null (PredicateMaskField_5444 pm_f_1@@4))) o2_1@@12 f_8@@12) (= (select (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| Heap@@7) o2_1@@12 f_8@@12) (select (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| ExhaleHeap@@4) o2_1@@12 f_8@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| ExhaleHeap@@4) o2_1@@12 f_8@@12))
))) (forall ((o2_1@@13 T@Ref) (f_8@@13 T@Field_5444_15007) ) (!  (=> (select (|PolymorphicMapType_8995_5444_26358#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@7) null (PredicateMaskField_5444 pm_f_1@@4))) o2_1@@13 f_8@@13) (= (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@7) o2_1@@13 f_8@@13) (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| ExhaleHeap@@4) o2_1@@13 f_8@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| ExhaleHeap@@4) o2_1@@13 f_8@@13))
))) (forall ((o2_1@@14 T@Ref) (f_8@@14 T@Field_5456_3085) ) (!  (=> (select (|PolymorphicMapType_8995_14986_3085#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@7) null (PredicateMaskField_5444 pm_f_1@@4))) o2_1@@14 f_8@@14) (= (select (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| Heap@@7) o2_1@@14 f_8@@14) (select (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| ExhaleHeap@@4) o2_1@@14 f_8@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| ExhaleHeap@@4) o2_1@@14 f_8@@14))
))) (forall ((o2_1@@15 T@Ref) (f_8@@15 T@Field_5456_53) ) (!  (=> (select (|PolymorphicMapType_8995_14986_53#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@7) null (PredicateMaskField_5444 pm_f_1@@4))) o2_1@@15 f_8@@15) (= (select (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| Heap@@7) o2_1@@15 f_8@@15) (select (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| ExhaleHeap@@4) o2_1@@15 f_8@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| ExhaleHeap@@4) o2_1@@15 f_8@@15))
))) (forall ((o2_1@@16 T@Ref) (f_8@@16 T@Field_5456_8520) ) (!  (=> (select (|PolymorphicMapType_8995_14986_8520#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@7) null (PredicateMaskField_5444 pm_f_1@@4))) o2_1@@16 f_8@@16) (= (select (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| Heap@@7) o2_1@@16 f_8@@16) (select (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| ExhaleHeap@@4) o2_1@@16 f_8@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| ExhaleHeap@@4) o2_1@@16 f_8@@16))
))) (forall ((o2_1@@17 T@Ref) (f_8@@17 T@Field_14986_14987) ) (!  (=> (select (|PolymorphicMapType_8995_14986_14987#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@7) null (PredicateMaskField_5444 pm_f_1@@4))) o2_1@@17 f_8@@17) (= (select (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| Heap@@7) o2_1@@17 f_8@@17) (select (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| ExhaleHeap@@4) o2_1@@17 f_8@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| ExhaleHeap@@4) o2_1@@17 f_8@@17))
))) (forall ((o2_1@@18 T@Ref) (f_8@@18 T@Field_15002_15007) ) (!  (=> (select (|PolymorphicMapType_8995_14986_27406#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@7) null (PredicateMaskField_5444 pm_f_1@@4))) o2_1@@18 f_8@@18) (= (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@7) o2_1@@18 f_8@@18) (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| ExhaleHeap@@4) o2_1@@18 f_8@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| ExhaleHeap@@4) o2_1@@18 f_8@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsPredicateField_5444_24886 pm_f_1@@4))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8446) (ExhaleHeap@@5 T@PolymorphicMapType_8446) (Mask@@6 T@PolymorphicMapType_8467) (pm_f_1@@5 T@Field_14986_14987) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_5456_5457 Mask@@6 null pm_f_1@@5) (IsWandField_5456_28571 pm_f_1@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_1@@19 T@Ref) (f_8@@19 T@Field_14540_3085) ) (!  (=> (select (|PolymorphicMapType_8995_5444_3085#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@8) null (WandMaskField_5456 pm_f_1@@5))) o2_1@@19 f_8@@19) (= (select (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| Heap@@8) o2_1@@19 f_8@@19) (select (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| ExhaleHeap@@5) o2_1@@19 f_8@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| ExhaleHeap@@5) o2_1@@19 f_8@@19))
)) (forall ((o2_1@@20 T@Ref) (f_8@@20 T@Field_8506_53) ) (!  (=> (select (|PolymorphicMapType_8995_5444_53#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@8) null (WandMaskField_5456 pm_f_1@@5))) o2_1@@20 f_8@@20) (= (select (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| Heap@@8) o2_1@@20 f_8@@20) (select (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| ExhaleHeap@@5) o2_1@@20 f_8@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| ExhaleHeap@@5) o2_1@@20 f_8@@20))
))) (forall ((o2_1@@21 T@Ref) (f_8@@21 T@Field_8519_8520) ) (!  (=> (select (|PolymorphicMapType_8995_5444_8520#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@8) null (WandMaskField_5456 pm_f_1@@5))) o2_1@@21 f_8@@21) (= (select (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| Heap@@8) o2_1@@21 f_8@@21) (select (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| ExhaleHeap@@5) o2_1@@21 f_8@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| ExhaleHeap@@5) o2_1@@21 f_8@@21))
))) (forall ((o2_1@@22 T@Ref) (f_8@@22 T@Field_5444_5457) ) (!  (=> (select (|PolymorphicMapType_8995_5444_14987#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@8) null (WandMaskField_5456 pm_f_1@@5))) o2_1@@22 f_8@@22) (= (select (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| Heap@@8) o2_1@@22 f_8@@22) (select (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| ExhaleHeap@@5) o2_1@@22 f_8@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| ExhaleHeap@@5) o2_1@@22 f_8@@22))
))) (forall ((o2_1@@23 T@Ref) (f_8@@23 T@Field_5444_15007) ) (!  (=> (select (|PolymorphicMapType_8995_5444_26358#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@8) null (WandMaskField_5456 pm_f_1@@5))) o2_1@@23 f_8@@23) (= (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@8) o2_1@@23 f_8@@23) (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| ExhaleHeap@@5) o2_1@@23 f_8@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| ExhaleHeap@@5) o2_1@@23 f_8@@23))
))) (forall ((o2_1@@24 T@Ref) (f_8@@24 T@Field_5456_3085) ) (!  (=> (select (|PolymorphicMapType_8995_14986_3085#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@8) null (WandMaskField_5456 pm_f_1@@5))) o2_1@@24 f_8@@24) (= (select (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| Heap@@8) o2_1@@24 f_8@@24) (select (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| ExhaleHeap@@5) o2_1@@24 f_8@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| ExhaleHeap@@5) o2_1@@24 f_8@@24))
))) (forall ((o2_1@@25 T@Ref) (f_8@@25 T@Field_5456_53) ) (!  (=> (select (|PolymorphicMapType_8995_14986_53#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@8) null (WandMaskField_5456 pm_f_1@@5))) o2_1@@25 f_8@@25) (= (select (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| Heap@@8) o2_1@@25 f_8@@25) (select (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| ExhaleHeap@@5) o2_1@@25 f_8@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| ExhaleHeap@@5) o2_1@@25 f_8@@25))
))) (forall ((o2_1@@26 T@Ref) (f_8@@26 T@Field_5456_8520) ) (!  (=> (select (|PolymorphicMapType_8995_14986_8520#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@8) null (WandMaskField_5456 pm_f_1@@5))) o2_1@@26 f_8@@26) (= (select (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| Heap@@8) o2_1@@26 f_8@@26) (select (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| ExhaleHeap@@5) o2_1@@26 f_8@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| ExhaleHeap@@5) o2_1@@26 f_8@@26))
))) (forall ((o2_1@@27 T@Ref) (f_8@@27 T@Field_14986_14987) ) (!  (=> (select (|PolymorphicMapType_8995_14986_14987#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@8) null (WandMaskField_5456 pm_f_1@@5))) o2_1@@27 f_8@@27) (= (select (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| Heap@@8) o2_1@@27 f_8@@27) (select (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| ExhaleHeap@@5) o2_1@@27 f_8@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| ExhaleHeap@@5) o2_1@@27 f_8@@27))
))) (forall ((o2_1@@28 T@Ref) (f_8@@28 T@Field_15002_15007) ) (!  (=> (select (|PolymorphicMapType_8995_14986_27406#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@8) null (WandMaskField_5456 pm_f_1@@5))) o2_1@@28 f_8@@28) (= (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@8) o2_1@@28 f_8@@28) (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| ExhaleHeap@@5) o2_1@@28 f_8@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| ExhaleHeap@@5) o2_1@@28 f_8@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (IsWandField_5456_28571 pm_f_1@@5))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8446) (ExhaleHeap@@6 T@PolymorphicMapType_8446) (Mask@@7 T@PolymorphicMapType_8467) (pm_f_1@@6 T@Field_5444_5457) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_5444_5457 Mask@@7 null pm_f_1@@6) (IsWandField_5444_28214 pm_f_1@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_1@@29 T@Ref) (f_8@@29 T@Field_14540_3085) ) (!  (=> (select (|PolymorphicMapType_8995_5444_3085#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@9) null (WandMaskField_5444 pm_f_1@@6))) o2_1@@29 f_8@@29) (= (select (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| Heap@@9) o2_1@@29 f_8@@29) (select (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| ExhaleHeap@@6) o2_1@@29 f_8@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| ExhaleHeap@@6) o2_1@@29 f_8@@29))
)) (forall ((o2_1@@30 T@Ref) (f_8@@30 T@Field_8506_53) ) (!  (=> (select (|PolymorphicMapType_8995_5444_53#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@9) null (WandMaskField_5444 pm_f_1@@6))) o2_1@@30 f_8@@30) (= (select (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| Heap@@9) o2_1@@30 f_8@@30) (select (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| ExhaleHeap@@6) o2_1@@30 f_8@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| ExhaleHeap@@6) o2_1@@30 f_8@@30))
))) (forall ((o2_1@@31 T@Ref) (f_8@@31 T@Field_8519_8520) ) (!  (=> (select (|PolymorphicMapType_8995_5444_8520#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@9) null (WandMaskField_5444 pm_f_1@@6))) o2_1@@31 f_8@@31) (= (select (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| Heap@@9) o2_1@@31 f_8@@31) (select (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| ExhaleHeap@@6) o2_1@@31 f_8@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| ExhaleHeap@@6) o2_1@@31 f_8@@31))
))) (forall ((o2_1@@32 T@Ref) (f_8@@32 T@Field_5444_5457) ) (!  (=> (select (|PolymorphicMapType_8995_5444_14987#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@9) null (WandMaskField_5444 pm_f_1@@6))) o2_1@@32 f_8@@32) (= (select (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| Heap@@9) o2_1@@32 f_8@@32) (select (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| ExhaleHeap@@6) o2_1@@32 f_8@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| ExhaleHeap@@6) o2_1@@32 f_8@@32))
))) (forall ((o2_1@@33 T@Ref) (f_8@@33 T@Field_5444_15007) ) (!  (=> (select (|PolymorphicMapType_8995_5444_26358#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@9) null (WandMaskField_5444 pm_f_1@@6))) o2_1@@33 f_8@@33) (= (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@9) o2_1@@33 f_8@@33) (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| ExhaleHeap@@6) o2_1@@33 f_8@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| ExhaleHeap@@6) o2_1@@33 f_8@@33))
))) (forall ((o2_1@@34 T@Ref) (f_8@@34 T@Field_5456_3085) ) (!  (=> (select (|PolymorphicMapType_8995_14986_3085#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@9) null (WandMaskField_5444 pm_f_1@@6))) o2_1@@34 f_8@@34) (= (select (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| Heap@@9) o2_1@@34 f_8@@34) (select (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| ExhaleHeap@@6) o2_1@@34 f_8@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| ExhaleHeap@@6) o2_1@@34 f_8@@34))
))) (forall ((o2_1@@35 T@Ref) (f_8@@35 T@Field_5456_53) ) (!  (=> (select (|PolymorphicMapType_8995_14986_53#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@9) null (WandMaskField_5444 pm_f_1@@6))) o2_1@@35 f_8@@35) (= (select (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| Heap@@9) o2_1@@35 f_8@@35) (select (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| ExhaleHeap@@6) o2_1@@35 f_8@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| ExhaleHeap@@6) o2_1@@35 f_8@@35))
))) (forall ((o2_1@@36 T@Ref) (f_8@@36 T@Field_5456_8520) ) (!  (=> (select (|PolymorphicMapType_8995_14986_8520#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@9) null (WandMaskField_5444 pm_f_1@@6))) o2_1@@36 f_8@@36) (= (select (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| Heap@@9) o2_1@@36 f_8@@36) (select (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| ExhaleHeap@@6) o2_1@@36 f_8@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| ExhaleHeap@@6) o2_1@@36 f_8@@36))
))) (forall ((o2_1@@37 T@Ref) (f_8@@37 T@Field_14986_14987) ) (!  (=> (select (|PolymorphicMapType_8995_14986_14987#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@9) null (WandMaskField_5444 pm_f_1@@6))) o2_1@@37 f_8@@37) (= (select (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| Heap@@9) o2_1@@37 f_8@@37) (select (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| ExhaleHeap@@6) o2_1@@37 f_8@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| ExhaleHeap@@6) o2_1@@37 f_8@@37))
))) (forall ((o2_1@@38 T@Ref) (f_8@@38 T@Field_15002_15007) ) (!  (=> (select (|PolymorphicMapType_8995_14986_27406#PolymorphicMapType_8995| (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@9) null (WandMaskField_5444 pm_f_1@@6))) o2_1@@38 f_8@@38) (= (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@9) o2_1@@38 f_8@@38) (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| ExhaleHeap@@6) o2_1@@38 f_8@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| ExhaleHeap@@6) o2_1@@38 f_8@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (IsWandField_5444_28214 pm_f_1@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8446) (ExhaleHeap@@7 T@PolymorphicMapType_8446) (Mask@@8 T@PolymorphicMapType_8467) (o_3 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| Heap@@10) o_3 $allocated) (select (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| ExhaleHeap@@7) o_3 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| ExhaleHeap@@7) o_3 $allocated))
)))
(assert (forall ((p T@Field_14986_14987) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_14986_14986 p v_1 p w))
 :qid |stdinbpl.198:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14986_14986 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_5444_5457) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_8506_8506 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.198:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8506_8506 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_14980) (s1 T@Seq_14980) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_14980|)) (not (= s1 |Seq#Empty_14980|))) (<= (|Seq#Length_14980| s0) n@@13)) (< n@@13 (|Seq#Length_14980| (|Seq#Append_14980| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_14980| s0)) (|Seq#Length_14980| s0)) n@@13) (= (|Seq#Index_14980| (|Seq#Append_14980| s0 s1) n@@13) (|Seq#Index_14980| s1 (|Seq#Sub| n@@13 (|Seq#Length_14980| s0))))))
 :qid |stdinbpl.267:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_14980| (|Seq#Append_14980| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2963) (s1@@0 T@Seq_2963) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2963|)) (not (= s1@@0 |Seq#Empty_2963|))) (<= (|Seq#Length_2963| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2963| (|Seq#Append_2963| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2963| s0@@0)) (|Seq#Length_2963| s0@@0)) n@@14) (= (|Seq#Index_2963| (|Seq#Append_2963| s0@@0 s1@@0) n@@14) (|Seq#Index_2963| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2963| s0@@0))))))
 :qid |stdinbpl.267:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2963| (|Seq#Append_2963| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_5444_3085 f_7)))
(assert  (not (IsWandField_5444_3085 f_7)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8446) (ExhaleHeap@@8 T@PolymorphicMapType_8446) (Mask@@9 T@PolymorphicMapType_8467) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@11 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8467) (o_2@@9 T@Ref) (f_4@@9 T@Field_15002_15007) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_8467_5456_33211#PolymorphicMapType_8467| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5456_35503 f_4@@9))) (not (IsWandField_5456_35519 f_4@@9))) (<= (select (|PolymorphicMapType_8467_5456_33211#PolymorphicMapType_8467| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_8467_5456_33211#PolymorphicMapType_8467| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8467) (o_2@@10 T@Ref) (f_4@@10 T@Field_5456_8520) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_8467_5456_8520#PolymorphicMapType_8467| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5456_8520 f_4@@10))) (not (IsWandField_5456_8520 f_4@@10))) (<= (select (|PolymorphicMapType_8467_5456_8520#PolymorphicMapType_8467| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_8467_5456_8520#PolymorphicMapType_8467| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8467) (o_2@@11 T@Ref) (f_4@@11 T@Field_5456_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_8467_5456_53#PolymorphicMapType_8467| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5456_53 f_4@@11))) (not (IsWandField_5456_53 f_4@@11))) (<= (select (|PolymorphicMapType_8467_5456_53#PolymorphicMapType_8467| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_8467_5456_53#PolymorphicMapType_8467| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8467) (o_2@@12 T@Ref) (f_4@@12 T@Field_14986_14987) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_8467_5456_5457#PolymorphicMapType_8467| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5456_5457 f_4@@12))) (not (IsWandField_5456_28571 f_4@@12))) (<= (select (|PolymorphicMapType_8467_5456_5457#PolymorphicMapType_8467| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_8467_5456_5457#PolymorphicMapType_8467| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8467) (o_2@@13 T@Ref) (f_4@@13 T@Field_5456_3085) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_8467_5456_3085#PolymorphicMapType_8467| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5456_3085 f_4@@13))) (not (IsWandField_5456_3085 f_4@@13))) (<= (select (|PolymorphicMapType_8467_5456_3085#PolymorphicMapType_8467| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_8467_5456_3085#PolymorphicMapType_8467| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8467) (o_2@@14 T@Ref) (f_4@@14 T@Field_5444_15007) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_8467_5444_32800#PolymorphicMapType_8467| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5444_34672 f_4@@14))) (not (IsWandField_5444_34688 f_4@@14))) (<= (select (|PolymorphicMapType_8467_5444_32800#PolymorphicMapType_8467| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_8467_5444_32800#PolymorphicMapType_8467| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_8467) (o_2@@15 T@Ref) (f_4@@15 T@Field_8519_8520) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_8467_5444_8520#PolymorphicMapType_8467| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5444_8520 f_4@@15))) (not (IsWandField_5444_8520 f_4@@15))) (<= (select (|PolymorphicMapType_8467_5444_8520#PolymorphicMapType_8467| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_8467_5444_8520#PolymorphicMapType_8467| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_8467) (o_2@@16 T@Ref) (f_4@@16 T@Field_8506_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_8467_5444_53#PolymorphicMapType_8467| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5444_53 f_4@@16))) (not (IsWandField_5444_53 f_4@@16))) (<= (select (|PolymorphicMapType_8467_5444_53#PolymorphicMapType_8467| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_8467_5444_53#PolymorphicMapType_8467| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_8467) (o_2@@17 T@Ref) (f_4@@17 T@Field_5444_5457) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_8467_5444_5457#PolymorphicMapType_8467| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5444_24886 f_4@@17))) (not (IsWandField_5444_28214 f_4@@17))) (<= (select (|PolymorphicMapType_8467_5444_5457#PolymorphicMapType_8467| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_8467_5444_5457#PolymorphicMapType_8467| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_8467) (o_2@@18 T@Ref) (f_4@@18 T@Field_14540_3085) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_8467_5444_3085#PolymorphicMapType_8467| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5444_3085 f_4@@18))) (not (IsWandField_5444_3085 f_4@@18))) (<= (select (|PolymorphicMapType_8467_5444_3085#PolymorphicMapType_8467| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_8467_5444_3085#PolymorphicMapType_8467| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_8467) (o_2@@19 T@Ref) (f_4@@19 T@Field_15002_15007) ) (! (= (HasDirectPerm_5456_24641 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_8467_5456_33211#PolymorphicMapType_8467| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5456_24641 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_8467) (o_2@@20 T@Ref) (f_4@@20 T@Field_5456_8520) ) (! (= (HasDirectPerm_5456_8520 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_8467_5456_8520#PolymorphicMapType_8467| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5456_8520 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_8467) (o_2@@21 T@Ref) (f_4@@21 T@Field_5456_53) ) (! (= (HasDirectPerm_5456_53 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_8467_5456_53#PolymorphicMapType_8467| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5456_53 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_8467) (o_2@@22 T@Ref) (f_4@@22 T@Field_14986_14987) ) (! (= (HasDirectPerm_5456_5457 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_8467_5456_5457#PolymorphicMapType_8467| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5456_5457 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_8467) (o_2@@23 T@Ref) (f_4@@23 T@Field_5456_3085) ) (! (= (HasDirectPerm_5456_3085 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_8467_5456_3085#PolymorphicMapType_8467| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5456_3085 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_8467) (o_2@@24 T@Ref) (f_4@@24 T@Field_5444_15007) ) (! (= (HasDirectPerm_5444_23500 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_8467_5444_32800#PolymorphicMapType_8467| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5444_23500 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_8467) (o_2@@25 T@Ref) (f_4@@25 T@Field_8519_8520) ) (! (= (HasDirectPerm_5444_8520 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_8467_5444_8520#PolymorphicMapType_8467| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5444_8520 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_8467) (o_2@@26 T@Ref) (f_4@@26 T@Field_8506_53) ) (! (= (HasDirectPerm_5444_53 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_8467_5444_53#PolymorphicMapType_8467| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5444_53 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_8467) (o_2@@27 T@Ref) (f_4@@27 T@Field_5444_5457) ) (! (= (HasDirectPerm_5444_5457 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_8467_5444_5457#PolymorphicMapType_8467| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5444_5457 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_8467) (o_2@@28 T@Ref) (f_4@@28 T@Field_14540_3085) ) (! (= (HasDirectPerm_5444_3085 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_8467_5444_3085#PolymorphicMapType_8467| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5444_3085 Mask@@29 o_2@@28 f_4@@28))
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
(assert (forall ((Heap@@12 T@PolymorphicMapType_8446) (ExhaleHeap@@9 T@PolymorphicMapType_8446) (Mask@@30 T@PolymorphicMapType_8467) (o_3@@0 T@Ref) (f_8@@39 T@Field_15002_15007) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_5456_24641 Mask@@30 o_3@@0 f_8@@39) (= (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@12) o_3@@0 f_8@@39) (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| ExhaleHeap@@9) o_3@@0 f_8@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| ExhaleHeap@@9) o_3@@0 f_8@@39))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8446) (ExhaleHeap@@10 T@PolymorphicMapType_8446) (Mask@@31 T@PolymorphicMapType_8467) (o_3@@1 T@Ref) (f_8@@40 T@Field_5456_8520) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_5456_8520 Mask@@31 o_3@@1 f_8@@40) (= (select (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| Heap@@13) o_3@@1 f_8@@40) (select (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| ExhaleHeap@@10) o_3@@1 f_8@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| ExhaleHeap@@10) o_3@@1 f_8@@40))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8446) (ExhaleHeap@@11 T@PolymorphicMapType_8446) (Mask@@32 T@PolymorphicMapType_8467) (o_3@@2 T@Ref) (f_8@@41 T@Field_5456_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_5456_53 Mask@@32 o_3@@2 f_8@@41) (= (select (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| Heap@@14) o_3@@2 f_8@@41) (select (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| ExhaleHeap@@11) o_3@@2 f_8@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| ExhaleHeap@@11) o_3@@2 f_8@@41))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8446) (ExhaleHeap@@12 T@PolymorphicMapType_8446) (Mask@@33 T@PolymorphicMapType_8467) (o_3@@3 T@Ref) (f_8@@42 T@Field_14986_14987) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_5456_5457 Mask@@33 o_3@@3 f_8@@42) (= (select (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| Heap@@15) o_3@@3 f_8@@42) (select (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| ExhaleHeap@@12) o_3@@3 f_8@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| ExhaleHeap@@12) o_3@@3 f_8@@42))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8446) (ExhaleHeap@@13 T@PolymorphicMapType_8446) (Mask@@34 T@PolymorphicMapType_8467) (o_3@@4 T@Ref) (f_8@@43 T@Field_5456_3085) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_5456_3085 Mask@@34 o_3@@4 f_8@@43) (= (select (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| Heap@@16) o_3@@4 f_8@@43) (select (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| ExhaleHeap@@13) o_3@@4 f_8@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| ExhaleHeap@@13) o_3@@4 f_8@@43))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8446) (ExhaleHeap@@14 T@PolymorphicMapType_8446) (Mask@@35 T@PolymorphicMapType_8467) (o_3@@5 T@Ref) (f_8@@44 T@Field_5444_15007) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_5444_23500 Mask@@35 o_3@@5 f_8@@44) (= (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@17) o_3@@5 f_8@@44) (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| ExhaleHeap@@14) o_3@@5 f_8@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| ExhaleHeap@@14) o_3@@5 f_8@@44))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8446) (ExhaleHeap@@15 T@PolymorphicMapType_8446) (Mask@@36 T@PolymorphicMapType_8467) (o_3@@6 T@Ref) (f_8@@45 T@Field_8519_8520) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_5444_8520 Mask@@36 o_3@@6 f_8@@45) (= (select (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| Heap@@18) o_3@@6 f_8@@45) (select (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| ExhaleHeap@@15) o_3@@6 f_8@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| ExhaleHeap@@15) o_3@@6 f_8@@45))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8446) (ExhaleHeap@@16 T@PolymorphicMapType_8446) (Mask@@37 T@PolymorphicMapType_8467) (o_3@@7 T@Ref) (f_8@@46 T@Field_8506_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_5444_53 Mask@@37 o_3@@7 f_8@@46) (= (select (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| Heap@@19) o_3@@7 f_8@@46) (select (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| ExhaleHeap@@16) o_3@@7 f_8@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| ExhaleHeap@@16) o_3@@7 f_8@@46))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8446) (ExhaleHeap@@17 T@PolymorphicMapType_8446) (Mask@@38 T@PolymorphicMapType_8467) (o_3@@8 T@Ref) (f_8@@47 T@Field_5444_5457) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_5444_5457 Mask@@38 o_3@@8 f_8@@47) (= (select (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| Heap@@20) o_3@@8 f_8@@47) (select (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| ExhaleHeap@@17) o_3@@8 f_8@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| ExhaleHeap@@17) o_3@@8 f_8@@47))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8446) (ExhaleHeap@@18 T@PolymorphicMapType_8446) (Mask@@39 T@PolymorphicMapType_8467) (o_3@@9 T@Ref) (f_8@@48 T@Field_14540_3085) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_5444_3085 Mask@@39 o_3@@9 f_8@@48) (= (select (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| Heap@@21) o_3@@9 f_8@@48) (select (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| ExhaleHeap@@18) o_3@@9 f_8@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| ExhaleHeap@@18) o_3@@9 f_8@@48))
)))
(assert (forall ((s0@@1 T@Seq_14980) (s1@@1 T@Seq_14980) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_14980|)) (not (= s1@@1 |Seq#Empty_14980|))) (= (|Seq#Length_14980| (|Seq#Append_14980| s0@@1 s1@@1)) (+ (|Seq#Length_14980| s0@@1) (|Seq#Length_14980| s1@@1))))
 :qid |stdinbpl.236:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_14980| (|Seq#Append_14980| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2963) (s1@@2 T@Seq_2963) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2963|)) (not (= s1@@2 |Seq#Empty_2963|))) (= (|Seq#Length_2963| (|Seq#Append_2963| s0@@2 s1@@2)) (+ (|Seq#Length_2963| s0@@2) (|Seq#Length_2963| s1@@2))))
 :qid |stdinbpl.236:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2963| (|Seq#Append_2963| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_15002_15007) ) (! (= (select (|PolymorphicMapType_8467_5456_33211#PolymorphicMapType_8467| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8467_5456_33211#PolymorphicMapType_8467| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_5456_8520) ) (! (= (select (|PolymorphicMapType_8467_5456_8520#PolymorphicMapType_8467| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8467_5456_8520#PolymorphicMapType_8467| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_5456_53) ) (! (= (select (|PolymorphicMapType_8467_5456_53#PolymorphicMapType_8467| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8467_5456_53#PolymorphicMapType_8467| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_14986_14987) ) (! (= (select (|PolymorphicMapType_8467_5456_5457#PolymorphicMapType_8467| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8467_5456_5457#PolymorphicMapType_8467| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_5456_3085) ) (! (= (select (|PolymorphicMapType_8467_5456_3085#PolymorphicMapType_8467| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8467_5456_3085#PolymorphicMapType_8467| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_5444_15007) ) (! (= (select (|PolymorphicMapType_8467_5444_32800#PolymorphicMapType_8467| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8467_5444_32800#PolymorphicMapType_8467| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_8519_8520) ) (! (= (select (|PolymorphicMapType_8467_5444_8520#PolymorphicMapType_8467| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8467_5444_8520#PolymorphicMapType_8467| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_8506_53) ) (! (= (select (|PolymorphicMapType_8467_5444_53#PolymorphicMapType_8467| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8467_5444_53#PolymorphicMapType_8467| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_5444_5457) ) (! (= (select (|PolymorphicMapType_8467_5444_5457#PolymorphicMapType_8467| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8467_5444_5457#PolymorphicMapType_8467| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_14540_3085) ) (! (= (select (|PolymorphicMapType_8467_5444_3085#PolymorphicMapType_8467| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8467_5444_3085#PolymorphicMapType_8467| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((s@@15 T@Seq_14980) (t@@1 T@Seq_14980) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_14980| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_14980| s@@15)) (|Seq#Length_14980| s@@15)) n@@15) (= (|Seq#Drop_14980| (|Seq#Append_14980| s@@15 t@@1) n@@15) (|Seq#Drop_14980| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_14980| s@@15))))))
 :qid |stdinbpl.393:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_14980| (|Seq#Append_14980| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2963) (t@@2 T@Seq_2963) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2963| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2963| s@@16)) (|Seq#Length_2963| s@@16)) n@@16) (= (|Seq#Drop_2963| (|Seq#Append_2963| s@@16 t@@2) n@@16) (|Seq#Drop_2963| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2963| s@@16))))))
 :qid |stdinbpl.393:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2963| (|Seq#Append_2963| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8467) (SummandMask1 T@PolymorphicMapType_8467) (SummandMask2 T@PolymorphicMapType_8467) (o_2@@39 T@Ref) (f_4@@39 T@Field_15002_15007) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8467_5456_33211#PolymorphicMapType_8467| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_8467_5456_33211#PolymorphicMapType_8467| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_8467_5456_33211#PolymorphicMapType_8467| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8467_5456_33211#PolymorphicMapType_8467| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8467_5456_33211#PolymorphicMapType_8467| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8467_5456_33211#PolymorphicMapType_8467| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8467) (SummandMask1@@0 T@PolymorphicMapType_8467) (SummandMask2@@0 T@PolymorphicMapType_8467) (o_2@@40 T@Ref) (f_4@@40 T@Field_5456_8520) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8467_5456_8520#PolymorphicMapType_8467| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_8467_5456_8520#PolymorphicMapType_8467| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_8467_5456_8520#PolymorphicMapType_8467| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8467_5456_8520#PolymorphicMapType_8467| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8467_5456_8520#PolymorphicMapType_8467| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8467_5456_8520#PolymorphicMapType_8467| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8467) (SummandMask1@@1 T@PolymorphicMapType_8467) (SummandMask2@@1 T@PolymorphicMapType_8467) (o_2@@41 T@Ref) (f_4@@41 T@Field_5456_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8467_5456_53#PolymorphicMapType_8467| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_8467_5456_53#PolymorphicMapType_8467| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_8467_5456_53#PolymorphicMapType_8467| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8467_5456_53#PolymorphicMapType_8467| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8467_5456_53#PolymorphicMapType_8467| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8467_5456_53#PolymorphicMapType_8467| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8467) (SummandMask1@@2 T@PolymorphicMapType_8467) (SummandMask2@@2 T@PolymorphicMapType_8467) (o_2@@42 T@Ref) (f_4@@42 T@Field_14986_14987) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8467_5456_5457#PolymorphicMapType_8467| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_8467_5456_5457#PolymorphicMapType_8467| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_8467_5456_5457#PolymorphicMapType_8467| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8467_5456_5457#PolymorphicMapType_8467| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8467_5456_5457#PolymorphicMapType_8467| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8467_5456_5457#PolymorphicMapType_8467| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8467) (SummandMask1@@3 T@PolymorphicMapType_8467) (SummandMask2@@3 T@PolymorphicMapType_8467) (o_2@@43 T@Ref) (f_4@@43 T@Field_5456_3085) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8467_5456_3085#PolymorphicMapType_8467| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_8467_5456_3085#PolymorphicMapType_8467| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_8467_5456_3085#PolymorphicMapType_8467| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8467_5456_3085#PolymorphicMapType_8467| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8467_5456_3085#PolymorphicMapType_8467| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8467_5456_3085#PolymorphicMapType_8467| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_8467) (SummandMask1@@4 T@PolymorphicMapType_8467) (SummandMask2@@4 T@PolymorphicMapType_8467) (o_2@@44 T@Ref) (f_4@@44 T@Field_5444_15007) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_8467_5444_32800#PolymorphicMapType_8467| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_8467_5444_32800#PolymorphicMapType_8467| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_8467_5444_32800#PolymorphicMapType_8467| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8467_5444_32800#PolymorphicMapType_8467| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8467_5444_32800#PolymorphicMapType_8467| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8467_5444_32800#PolymorphicMapType_8467| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_8467) (SummandMask1@@5 T@PolymorphicMapType_8467) (SummandMask2@@5 T@PolymorphicMapType_8467) (o_2@@45 T@Ref) (f_4@@45 T@Field_8519_8520) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_8467_5444_8520#PolymorphicMapType_8467| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_8467_5444_8520#PolymorphicMapType_8467| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_8467_5444_8520#PolymorphicMapType_8467| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8467_5444_8520#PolymorphicMapType_8467| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8467_5444_8520#PolymorphicMapType_8467| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8467_5444_8520#PolymorphicMapType_8467| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_8467) (SummandMask1@@6 T@PolymorphicMapType_8467) (SummandMask2@@6 T@PolymorphicMapType_8467) (o_2@@46 T@Ref) (f_4@@46 T@Field_8506_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_8467_5444_53#PolymorphicMapType_8467| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_8467_5444_53#PolymorphicMapType_8467| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_8467_5444_53#PolymorphicMapType_8467| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8467_5444_53#PolymorphicMapType_8467| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8467_5444_53#PolymorphicMapType_8467| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8467_5444_53#PolymorphicMapType_8467| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_8467) (SummandMask1@@7 T@PolymorphicMapType_8467) (SummandMask2@@7 T@PolymorphicMapType_8467) (o_2@@47 T@Ref) (f_4@@47 T@Field_5444_5457) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_8467_5444_5457#PolymorphicMapType_8467| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_8467_5444_5457#PolymorphicMapType_8467| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_8467_5444_5457#PolymorphicMapType_8467| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8467_5444_5457#PolymorphicMapType_8467| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8467_5444_5457#PolymorphicMapType_8467| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8467_5444_5457#PolymorphicMapType_8467| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_8467) (SummandMask1@@8 T@PolymorphicMapType_8467) (SummandMask2@@8 T@PolymorphicMapType_8467) (o_2@@48 T@Ref) (f_4@@48 T@Field_14540_3085) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_8467_5444_3085#PolymorphicMapType_8467| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_8467_5444_3085#PolymorphicMapType_8467| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_8467_5444_3085#PolymorphicMapType_8467| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8467_5444_3085#PolymorphicMapType_8467| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8467_5444_3085#PolymorphicMapType_8467| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8467_5444_3085#PolymorphicMapType_8467| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2963| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2963| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.558:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2963| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_14980) (b T@Seq_14980) ) (!  (=> (|Seq#Equal_14980| a b) (= a b))
 :qid |stdinbpl.531:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_14980| a b))
)))
(assert (forall ((a@@0 T@Seq_2963) (b@@0 T@Seq_2963) ) (!  (=> (|Seq#Equal_2963| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.531:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2963| a@@0 b@@0))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8446) (Mask@@40 T@PolymorphicMapType_8467) (a_2@@0 Int) ) (!  (=> (state Heap@@22 Mask@@40) (= (|fun'| Heap@@22 a_2@@0) (|fun#frame| EmptyFrame a_2@@0)))
 :qid |stdinbpl.593:15|
 :skolemid |60|
 :pattern ( (state Heap@@22 Mask@@40) (|fun'| Heap@@22 a_2@@0))
)))
(assert (forall ((s@@17 T@Seq_14980) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_14980| s@@17))) (|Seq#ContainsTrigger_5496| s@@17 (|Seq#Index_14980| s@@17 i@@3)))
 :qid |stdinbpl.424:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_14980| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_2963) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2963| s@@18))) (|Seq#ContainsTrigger_2963| s@@18 (|Seq#Index_2963| s@@18 i@@4)))
 :qid |stdinbpl.424:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2963| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_14980) (s1@@3 T@Seq_14980) ) (!  (and (=> (= s0@@3 |Seq#Empty_14980|) (= (|Seq#Append_14980| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_14980|) (= (|Seq#Append_14980| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.242:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_14980| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2963) (s1@@4 T@Seq_2963) ) (!  (and (=> (= s0@@4 |Seq#Empty_2963|) (= (|Seq#Append_2963| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2963|) (= (|Seq#Append_2963| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.242:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2963| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_14980| (|Seq#Singleton_14980| t@@3) 0) t@@3)
 :qid |stdinbpl.246:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_14980| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2963| (|Seq#Singleton_2963| t@@4) 0) t@@4)
 :qid |stdinbpl.246:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2963| t@@4))
)))
(assert (forall ((s@@19 T@Seq_14980) ) (! (<= 0 (|Seq#Length_14980| s@@19))
 :qid |stdinbpl.225:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_14980| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2963) ) (! (<= 0 (|Seq#Length_2963| s@@20))
 :qid |stdinbpl.225:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2963| s@@20))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8446) (a_2@@1 Int) ) (!  (and (= (fun Heap@@23 a_2@@1) (|fun'| Heap@@23 a_2@@1)) (dummyFunction_3231 (|fun#triggerStateless| a_2@@1)))
 :qid |stdinbpl.582:15|
 :skolemid |58|
 :pattern ( (fun Heap@@23 a_2@@1))
)))
(assert (forall ((s0@@5 T@Seq_14980) (s1@@5 T@Seq_14980) ) (!  (=> (|Seq#Equal_14980| s0@@5 s1@@5) (and (= (|Seq#Length_14980| s0@@5) (|Seq#Length_14980| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_14980| s0@@5))) (= (|Seq#Index_14980| s0@@5 j@@6) (|Seq#Index_14980| s1@@5 j@@6)))
 :qid |stdinbpl.521:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_14980| s0@@5 j@@6))
 :pattern ( (|Seq#Index_14980| s1@@5 j@@6))
))))
 :qid |stdinbpl.518:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_14980| s0@@5 s1@@5))
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
(assert (forall ((xs@@3 T@Seq_14980) ) (! (= (getPredWandId_5456_5457 (wrap xs@@3)) 0)
 :qid |stdinbpl.631:15|
 :skolemid |63|
 :pattern ( (wrap xs@@3))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_14980| (|Seq#Singleton_14980| t@@5)) 1)
 :qid |stdinbpl.233:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_14980| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2963| (|Seq#Singleton_2963| t@@6)) 1)
 :qid |stdinbpl.233:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2963| t@@6))
)))
(assert (forall ((s@@21 T@Seq_14980) (t@@7 T@Seq_14980) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_14980| s@@21))) (= (|Seq#Take_14980| (|Seq#Append_14980| s@@21 t@@7) n@@17) (|Seq#Take_14980| s@@21 n@@17)))
 :qid |stdinbpl.375:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_14980| (|Seq#Append_14980| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2963) (t@@8 T@Seq_2963) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2963| s@@22))) (= (|Seq#Take_2963| (|Seq#Append_2963| s@@22 t@@8) n@@18) (|Seq#Take_2963| s@@22 n@@18)))
 :qid |stdinbpl.375:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2963| (|Seq#Append_2963| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_14980) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_14980| s@@23))) (= (|Seq#Length_14980| (|Seq#Update_14980| s@@23 i@@5 v@@2)) (|Seq#Length_14980| s@@23)))
 :qid |stdinbpl.274:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_14980| (|Seq#Update_14980| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_14980| s@@23) (|Seq#Update_14980| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2963) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2963| s@@24))) (= (|Seq#Length_2963| (|Seq#Update_2963| s@@24 i@@6 v@@3)) (|Seq#Length_2963| s@@24)))
 :qid |stdinbpl.274:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2963| (|Seq#Update_2963| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_2963| s@@24) (|Seq#Update_2963| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8446) (o_1 T@Ref) (f_9 T@Field_15002_15007) (v@@4 T@PolymorphicMapType_8995) ) (! (succHeap Heap@@24 (PolymorphicMapType_8446 (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| Heap@@24) (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| Heap@@24) (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| Heap@@24) (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| Heap@@24) (store (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@24) o_1 f_9 v@@4) (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| Heap@@24) (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@24) (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| Heap@@24) (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| Heap@@24) (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8446 (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| Heap@@24) (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| Heap@@24) (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| Heap@@24) (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| Heap@@24) (store (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@24) o_1 f_9 v@@4) (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| Heap@@24) (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@24) (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| Heap@@24) (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| Heap@@24) (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8446) (o_1@@0 T@Ref) (f_9@@0 T@Field_14986_14987) (v@@5 T@FrameType) ) (! (succHeap Heap@@25 (PolymorphicMapType_8446 (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| Heap@@25) (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| Heap@@25) (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| Heap@@25) (store (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| Heap@@25) o_1@@0 f_9@@0 v@@5) (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@25) (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| Heap@@25) (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@25) (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| Heap@@25) (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| Heap@@25) (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8446 (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| Heap@@25) (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| Heap@@25) (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| Heap@@25) (store (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| Heap@@25) o_1@@0 f_9@@0 v@@5) (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@25) (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| Heap@@25) (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@25) (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| Heap@@25) (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| Heap@@25) (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8446) (o_1@@1 T@Ref) (f_9@@1 T@Field_5456_3085) (v@@6 Int) ) (! (succHeap Heap@@26 (PolymorphicMapType_8446 (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| Heap@@26) (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| Heap@@26) (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| Heap@@26) (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| Heap@@26) (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@26) (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| Heap@@26) (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@26) (store (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| Heap@@26) o_1@@1 f_9@@1 v@@6) (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| Heap@@26) (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8446 (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| Heap@@26) (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| Heap@@26) (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| Heap@@26) (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| Heap@@26) (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@26) (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| Heap@@26) (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@26) (store (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| Heap@@26) o_1@@1 f_9@@1 v@@6) (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| Heap@@26) (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_8446) (o_1@@2 T@Ref) (f_9@@2 T@Field_5456_8520) (v@@7 T@Ref) ) (! (succHeap Heap@@27 (PolymorphicMapType_8446 (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| Heap@@27) (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| Heap@@27) (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| Heap@@27) (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| Heap@@27) (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@27) (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| Heap@@27) (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@27) (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| Heap@@27) (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| Heap@@27) (store (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| Heap@@27) o_1@@2 f_9@@2 v@@7)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8446 (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| Heap@@27) (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| Heap@@27) (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| Heap@@27) (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| Heap@@27) (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@27) (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| Heap@@27) (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@27) (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| Heap@@27) (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| Heap@@27) (store (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| Heap@@27) o_1@@2 f_9@@2 v@@7)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_8446) (o_1@@3 T@Ref) (f_9@@3 T@Field_5456_53) (v@@8 Bool) ) (! (succHeap Heap@@28 (PolymorphicMapType_8446 (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| Heap@@28) (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| Heap@@28) (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| Heap@@28) (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| Heap@@28) (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@28) (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| Heap@@28) (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@28) (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| Heap@@28) (store (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| Heap@@28) o_1@@3 f_9@@3 v@@8) (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8446 (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| Heap@@28) (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| Heap@@28) (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| Heap@@28) (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| Heap@@28) (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@28) (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| Heap@@28) (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@28) (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| Heap@@28) (store (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| Heap@@28) o_1@@3 f_9@@3 v@@8) (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_8446) (o_1@@4 T@Ref) (f_9@@4 T@Field_5444_15007) (v@@9 T@PolymorphicMapType_8995) ) (! (succHeap Heap@@29 (PolymorphicMapType_8446 (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| Heap@@29) (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| Heap@@29) (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| Heap@@29) (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| Heap@@29) (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@29) (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| Heap@@29) (store (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@29) o_1@@4 f_9@@4 v@@9) (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| Heap@@29) (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| Heap@@29) (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8446 (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| Heap@@29) (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| Heap@@29) (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| Heap@@29) (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| Heap@@29) (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@29) (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| Heap@@29) (store (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@29) o_1@@4 f_9@@4 v@@9) (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| Heap@@29) (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| Heap@@29) (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_8446) (o_1@@5 T@Ref) (f_9@@5 T@Field_5444_5457) (v@@10 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_8446 (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| Heap@@30) (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| Heap@@30) (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| Heap@@30) (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| Heap@@30) (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@30) (store (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| Heap@@30) o_1@@5 f_9@@5 v@@10) (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@30) (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| Heap@@30) (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| Heap@@30) (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8446 (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| Heap@@30) (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| Heap@@30) (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| Heap@@30) (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| Heap@@30) (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@30) (store (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| Heap@@30) o_1@@5 f_9@@5 v@@10) (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@30) (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| Heap@@30) (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| Heap@@30) (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_8446) (o_1@@6 T@Ref) (f_9@@6 T@Field_14540_3085) (v@@11 Int) ) (! (succHeap Heap@@31 (PolymorphicMapType_8446 (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| Heap@@31) (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| Heap@@31) (store (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| Heap@@31) o_1@@6 f_9@@6 v@@11) (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| Heap@@31) (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@31) (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| Heap@@31) (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@31) (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| Heap@@31) (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| Heap@@31) (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8446 (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| Heap@@31) (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| Heap@@31) (store (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| Heap@@31) o_1@@6 f_9@@6 v@@11) (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| Heap@@31) (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@31) (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| Heap@@31) (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@31) (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| Heap@@31) (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| Heap@@31) (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_8446) (o_1@@7 T@Ref) (f_9@@7 T@Field_8519_8520) (v@@12 T@Ref) ) (! (succHeap Heap@@32 (PolymorphicMapType_8446 (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| Heap@@32) (store (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| Heap@@32) o_1@@7 f_9@@7 v@@12) (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| Heap@@32) (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| Heap@@32) (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@32) (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| Heap@@32) (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@32) (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| Heap@@32) (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| Heap@@32) (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8446 (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| Heap@@32) (store (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| Heap@@32) o_1@@7 f_9@@7 v@@12) (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| Heap@@32) (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| Heap@@32) (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@32) (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| Heap@@32) (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@32) (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| Heap@@32) (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| Heap@@32) (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_8446) (o_1@@8 T@Ref) (f_9@@8 T@Field_8506_53) (v@@13 Bool) ) (! (succHeap Heap@@33 (PolymorphicMapType_8446 (store (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| Heap@@33) o_1@@8 f_9@@8 v@@13) (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| Heap@@33) (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| Heap@@33) (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| Heap@@33) (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@33) (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| Heap@@33) (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@33) (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| Heap@@33) (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| Heap@@33) (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8446 (store (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| Heap@@33) o_1@@8 f_9@@8 v@@13) (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| Heap@@33) (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| Heap@@33) (|PolymorphicMapType_8446_5456_5457#PolymorphicMapType_8446| Heap@@33) (|PolymorphicMapType_8446_5461_20013#PolymorphicMapType_8446| Heap@@33) (|PolymorphicMapType_8446_5444_5457#PolymorphicMapType_8446| Heap@@33) (|PolymorphicMapType_8446_5444_23542#PolymorphicMapType_8446| Heap@@33) (|PolymorphicMapType_8446_5456_3085#PolymorphicMapType_8446| Heap@@33) (|PolymorphicMapType_8446_5456_53#PolymorphicMapType_8446| Heap@@33) (|PolymorphicMapType_8446_5456_8520#PolymorphicMapType_8446| Heap@@33)))
)))
(assert (forall ((xs@@4 T@Seq_14980) ) (! (= (PredicateMaskField_5456 (wrap xs@@4)) (|wrap#sm| xs@@4))
 :qid |stdinbpl.623:15|
 :skolemid |61|
 :pattern ( (PredicateMaskField_5456 (wrap xs@@4)))
)))
(assert (forall ((s@@25 T@Seq_14980) (t@@9 T@Seq_14980) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_14980| s@@25))) (= (|Seq#Drop_14980| (|Seq#Append_14980| s@@25 t@@9) n@@19) (|Seq#Append_14980| (|Seq#Drop_14980| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.389:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_14980| (|Seq#Append_14980| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2963) (t@@10 T@Seq_2963) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2963| s@@26))) (= (|Seq#Drop_2963| (|Seq#Append_2963| s@@26 t@@10) n@@20) (|Seq#Append_2963| (|Seq#Drop_2963| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.389:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2963| (|Seq#Append_2963| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_14980) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_14980| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_14980| (|Seq#Drop_14980| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_14980| s@@27 i@@7))))
 :qid |stdinbpl.325:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_14980| s@@27 n@@21) (|Seq#Index_14980| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_2963) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_2963| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_2963| (|Seq#Drop_2963| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_2963| s@@28 i@@8))))
 :qid |stdinbpl.325:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2963| s@@28 n@@22) (|Seq#Index_2963| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_14980) (s1@@7 T@Seq_14980) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_14980|)) (not (= s1@@7 |Seq#Empty_14980|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_14980| s0@@7))) (= (|Seq#Index_14980| (|Seq#Append_14980| s0@@7 s1@@7) n@@23) (|Seq#Index_14980| s0@@7 n@@23)))
 :qid |stdinbpl.265:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_14980| (|Seq#Append_14980| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_14980| s0@@7 n@@23) (|Seq#Append_14980| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2963) (s1@@8 T@Seq_2963) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2963|)) (not (= s1@@8 |Seq#Empty_2963|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2963| s0@@8))) (= (|Seq#Index_2963| (|Seq#Append_2963| s0@@8 s1@@8) n@@24) (|Seq#Index_2963| s0@@8 n@@24)))
 :qid |stdinbpl.265:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2963| (|Seq#Append_2963| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2963| s0@@8 n@@24) (|Seq#Append_2963| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_14980) (s1@@9 T@Seq_14980) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_14980|)) (not (= s1@@9 |Seq#Empty_14980|))) (<= 0 m)) (< m (|Seq#Length_14980| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_14980| s0@@9)) (|Seq#Length_14980| s0@@9)) m) (= (|Seq#Index_14980| (|Seq#Append_14980| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_14980| s0@@9))) (|Seq#Index_14980| s1@@9 m))))
 :qid |stdinbpl.270:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_14980| s1@@9 m) (|Seq#Append_14980| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2963) (s1@@10 T@Seq_2963) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2963|)) (not (= s1@@10 |Seq#Empty_2963|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2963| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2963| s0@@10)) (|Seq#Length_2963| s0@@10)) m@@0) (= (|Seq#Index_2963| (|Seq#Append_2963| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2963| s0@@10))) (|Seq#Index_2963| s1@@10 m@@0))))
 :qid |stdinbpl.270:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2963| s1@@10 m@@0) (|Seq#Append_2963| s0@@10 s1@@10))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_8446) (Heap1Heap T@PolymorphicMapType_8446) (xs@@5 T@Seq_14980) ) (!  (=> (and (=  (and (|Seq#Contains_5492| xs@@5 (|sk_wrap#condqp1| (|wrap#condqp1| Heap2Heap xs@@5) (|wrap#condqp1| Heap1Heap xs@@5))) (< NoPerm FullPerm))  (and (|Seq#Contains_5492| xs@@5 (|sk_wrap#condqp1| (|wrap#condqp1| Heap2Heap xs@@5) (|wrap#condqp1| Heap1Heap xs@@5))) (< NoPerm FullPerm))) (=> (and (|Seq#Contains_5492| xs@@5 (|sk_wrap#condqp1| (|wrap#condqp1| Heap2Heap xs@@5) (|wrap#condqp1| Heap1Heap xs@@5))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| Heap2Heap) (|sk_wrap#condqp1| (|wrap#condqp1| Heap2Heap xs@@5) (|wrap#condqp1| Heap1Heap xs@@5)) f_7) (select (|PolymorphicMapType_8446_5444_3085#PolymorphicMapType_8446| Heap1Heap) (|sk_wrap#condqp1| (|wrap#condqp1| Heap2Heap xs@@5) (|wrap#condqp1| Heap1Heap xs@@5)) f_7)))) (= (|wrap#condqp1| Heap2Heap xs@@5) (|wrap#condqp1| Heap1Heap xs@@5)))
 :qid |stdinbpl.657:15|
 :skolemid |67|
 :pattern ( (|wrap#condqp1| Heap2Heap xs@@5) (|wrap#condqp1| Heap1Heap xs@@5) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((o_1@@9 T@Ref) (f_2 T@Field_8519_8520) (Heap@@34 T@PolymorphicMapType_8446) ) (!  (=> (select (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| Heap@@34) o_1@@9 $allocated) (select (|PolymorphicMapType_8446_5240_53#PolymorphicMapType_8446| Heap@@34) (select (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| Heap@@34) o_1@@9 f_2) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8446_5243_5244#PolymorphicMapType_8446| Heap@@34) o_1@@9 f_2))
)))
(assert (forall ((s@@29 T@Seq_14980) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_14980| s@@29))) (= (|Seq#Index_14980| s@@29 i@@9) x@@3)) (|Seq#Contains_5492| s@@29 x@@3))
 :qid |stdinbpl.422:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_5492| s@@29 x@@3) (|Seq#Index_14980| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_2963) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2963| s@@30))) (= (|Seq#Index_2963| s@@30 i@@10) x@@4)) (|Seq#Contains_2963| s@@30 x@@4))
 :qid |stdinbpl.422:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2963| s@@30 x@@4) (|Seq#Index_2963| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_14980) (s1@@11 T@Seq_14980) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_14980| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_14980| s0@@11 s1@@11))) (not (= (|Seq#Length_14980| s0@@11) (|Seq#Length_14980| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_14980| s0@@11 s1@@11))) (= (|Seq#Length_14980| s0@@11) (|Seq#Length_14980| s1@@11))) (= (|Seq#SkolemDiff_14980| s0@@11 s1@@11) (|Seq#SkolemDiff_14980| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_14980| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_14980| s0@@11 s1@@11) (|Seq#Length_14980| s0@@11))) (not (= (|Seq#Index_14980| s0@@11 (|Seq#SkolemDiff_14980| s0@@11 s1@@11)) (|Seq#Index_14980| s1@@11 (|Seq#SkolemDiff_14980| s0@@11 s1@@11))))))
 :qid |stdinbpl.526:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_14980| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2963) (s1@@12 T@Seq_2963) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2963| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2963| s0@@12 s1@@12))) (not (= (|Seq#Length_2963| s0@@12) (|Seq#Length_2963| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2963| s0@@12 s1@@12))) (= (|Seq#Length_2963| s0@@12) (|Seq#Length_2963| s1@@12))) (= (|Seq#SkolemDiff_2963| s0@@12 s1@@12) (|Seq#SkolemDiff_2963| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2963| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2963| s0@@12 s1@@12) (|Seq#Length_2963| s0@@12))) (not (= (|Seq#Index_2963| s0@@12 (|Seq#SkolemDiff_2963| s0@@12 s1@@12)) (|Seq#Index_2963| s1@@12 (|Seq#SkolemDiff_2963| s0@@12 s1@@12))))))
 :qid |stdinbpl.526:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2963| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_14986_14987) (v_1@@1 T@FrameType) (q T@Field_14986_14987) (w@@1 T@FrameType) (r T@Field_14986_14987) (u T@FrameType) ) (!  (=> (and (InsidePredicate_14986_14986 p@@2 v_1@@1 q w@@1) (InsidePredicate_14986_14986 q w@@1 r u)) (InsidePredicate_14986_14986 p@@2 v_1@@1 r u))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14986_14986 p@@2 v_1@@1 q w@@1) (InsidePredicate_14986_14986 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_14986_14987) (v_1@@2 T@FrameType) (q@@0 T@Field_14986_14987) (w@@2 T@FrameType) (r@@0 T@Field_5444_5457) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_14986_14986 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_14986_8506 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_14986_8506 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14986_14986 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_14986_8506 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_14986_14987) (v_1@@3 T@FrameType) (q@@1 T@Field_5444_5457) (w@@3 T@FrameType) (r@@1 T@Field_14986_14987) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_14986_8506 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8506_14986 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_14986_14986 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14986_8506 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8506_14986 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_14986_14987) (v_1@@4 T@FrameType) (q@@2 T@Field_5444_5457) (w@@4 T@FrameType) (r@@2 T@Field_5444_5457) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_14986_8506 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8506_8506 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_14986_8506 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14986_8506 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8506_8506 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_5444_5457) (v_1@@5 T@FrameType) (q@@3 T@Field_14986_14987) (w@@5 T@FrameType) (r@@3 T@Field_14986_14987) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_8506_14986 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_14986_14986 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_8506_14986 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8506_14986 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_14986_14986 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_5444_5457) (v_1@@6 T@FrameType) (q@@4 T@Field_14986_14987) (w@@6 T@FrameType) (r@@4 T@Field_5444_5457) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_8506_14986 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_14986_8506 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_8506_8506 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8506_14986 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_14986_8506 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_5444_5457) (v_1@@7 T@FrameType) (q@@5 T@Field_5444_5457) (w@@7 T@FrameType) (r@@5 T@Field_14986_14987) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_8506_8506 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8506_14986 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_8506_14986 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8506_8506 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8506_14986 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_5444_5457) (v_1@@8 T@FrameType) (q@@6 T@Field_5444_5457) (w@@8 T@FrameType) (r@@6 T@Field_5444_5457) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_8506_8506 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8506_8506 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_8506_8506 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8506_8506 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8506_8506 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((s@@31 T@Seq_14980) ) (!  (=> (= (|Seq#Length_14980| s@@31) 0) (= s@@31 |Seq#Empty_14980|))
 :qid |stdinbpl.229:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_14980| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2963) ) (!  (=> (= (|Seq#Length_2963| s@@32) 0) (= s@@32 |Seq#Empty_2963|))
 :qid |stdinbpl.229:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2963| s@@32))
)))
(assert (forall ((s@@33 T@Seq_14980) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_14980| s@@33 n@@25) |Seq#Empty_14980|))
 :qid |stdinbpl.405:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_14980| s@@33 n@@25))
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
(declare-fun xs@@6 () T@Seq_14980)
(declare-fun Heap@@35 () T@PolymorphicMapType_8446)
(declare-fun AssumeFunctionsAbove () Int)
(set-info :boogie-vc-id |wrap#definedness|)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon3_Else_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((x_2_2 T@Ref) (x_2_3 T@Ref) ) (!  (=> (and (and (and (and (not (= x_2_2 x_2_3)) (|Seq#Contains_5492| xs@@6 x_2_2)) (|Seq#Contains_5492| xs@@6 x_2_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_2_2 x_2_3)))
 :qid |stdinbpl.681:15|
 :skolemid |68|
)))))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@35 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (=> (= (ControlFlow 0 4) 1) anon3_Then_correct) (=> (= (ControlFlow 0 4) 3) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 4) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
