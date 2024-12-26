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
(declare-sort T@Field_12961_53 0)
(declare-sort T@Field_12974_12975 0)
(declare-sort T@Field_20333_20334 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_19023_3253 0)
(declare-sort T@Field_12961_20334 0)
(declare-sort T@Field_12961_20351 0)
(declare-sort T@Field_20333_53 0)
(declare-sort T@Field_20333_12975 0)
(declare-sort T@Field_20333_3253 0)
(declare-sort T@Field_20346_20351 0)
(declare-datatypes ((T@PolymorphicMapType_12922 0)) (((PolymorphicMapType_12922 (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| (Array T@Ref T@Field_19023_3253 Real)) (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| (Array T@Ref T@Field_20333_20334 Real)) (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| (Array T@Ref T@Field_12961_20334 Real)) (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| (Array T@Ref T@Field_12961_53 Real)) (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| (Array T@Ref T@Field_12974_12975 Real)) (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| (Array T@Ref T@Field_12961_20351 Real)) (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| (Array T@Ref T@Field_20333_3253 Real)) (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| (Array T@Ref T@Field_20333_53 Real)) (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| (Array T@Ref T@Field_20333_12975 Real)) (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| (Array T@Ref T@Field_20346_20351 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13450 0)) (((PolymorphicMapType_13450 (|PolymorphicMapType_13450_12961_53#PolymorphicMapType_13450| (Array T@Ref T@Field_12961_53 Bool)) (|PolymorphicMapType_13450_12961_12975#PolymorphicMapType_13450| (Array T@Ref T@Field_12974_12975 Bool)) (|PolymorphicMapType_13450_12961_3253#PolymorphicMapType_13450| (Array T@Ref T@Field_19023_3253 Bool)) (|PolymorphicMapType_13450_12961_20334#PolymorphicMapType_13450| (Array T@Ref T@Field_12961_20334 Bool)) (|PolymorphicMapType_13450_12961_40270#PolymorphicMapType_13450| (Array T@Ref T@Field_12961_20351 Bool)) (|PolymorphicMapType_13450_20333_53#PolymorphicMapType_13450| (Array T@Ref T@Field_20333_53 Bool)) (|PolymorphicMapType_13450_20333_12975#PolymorphicMapType_13450| (Array T@Ref T@Field_20333_12975 Bool)) (|PolymorphicMapType_13450_20333_3253#PolymorphicMapType_13450| (Array T@Ref T@Field_20333_3253 Bool)) (|PolymorphicMapType_13450_20333_20334#PolymorphicMapType_13450| (Array T@Ref T@Field_20333_20334 Bool)) (|PolymorphicMapType_13450_20333_41318#PolymorphicMapType_13450| (Array T@Ref T@Field_20346_20351 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12901 0)) (((PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| (Array T@Ref T@Field_12961_53 Bool)) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| (Array T@Ref T@Field_12974_12975 T@Ref)) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| (Array T@Ref T@Field_20333_20334 T@FrameType)) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| (Array T@Ref T@Field_19023_3253 Int)) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| (Array T@Ref T@Field_12961_20334 T@FrameType)) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| (Array T@Ref T@Field_12961_20351 T@PolymorphicMapType_13450)) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| (Array T@Ref T@Field_20333_53 Bool)) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| (Array T@Ref T@Field_20333_12975 T@Ref)) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| (Array T@Ref T@Field_20333_3253 Int)) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| (Array T@Ref T@Field_20346_20351 T@PolymorphicMapType_13450)) ) ) ))
(declare-fun $allocated () T@Field_12961_53)
(declare-fun f_7 () T@Field_19023_3253)
(declare-fun g () T@Field_19023_3253)
(declare-sort T@Seq_21259 0)
(declare-fun |Seq#Length_21259| (T@Seq_21259) Int)
(declare-fun |Seq#Drop_21259| (T@Seq_21259 Int) T@Seq_21259)
(declare-sort T@Seq_3131 0)
(declare-fun |Seq#Length_3131| (T@Seq_3131) Int)
(declare-fun |Seq#Drop_3131| (T@Seq_3131 Int) T@Seq_3131)
(declare-fun succHeap (T@PolymorphicMapType_12901 T@PolymorphicMapType_12901) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_12901 T@PolymorphicMapType_12901) Bool)
(declare-fun state (T@PolymorphicMapType_12901 T@PolymorphicMapType_12922) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_12922) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_13450)
(declare-fun |fun'| (T@PolymorphicMapType_12901 T@Ref Int) T@Ref)
(declare-fun dummyFunction_8390 (T@Ref) Bool)
(declare-fun |fun#triggerStateless| (T@Ref Int) T@Ref)
(declare-fun |Seq#Index_21259| (T@Seq_21259 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3131| (T@Seq_3131 Int) Int)
(declare-fun |fun#frame| (T@FrameType T@Ref Int) T@Ref)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |Seq#Empty_21259| () T@Seq_21259)
(declare-fun |Seq#Empty_3131| () T@Seq_3131)
(declare-fun pred_3 (T@Ref) T@Field_20333_20334)
(declare-fun IsPredicateField_8423_8424 (T@Field_20333_20334) Bool)
(declare-fun |fun2'| (T@PolymorphicMapType_12901 T@Ref) T@Ref)
(declare-fun |fun2#triggerStateless| (T@Ref) T@Ref)
(declare-fun |pred#trigger_8423| (T@PolymorphicMapType_12901 T@Field_20333_20334) Bool)
(declare-fun |pred#everUsed_8423| (T@Field_20333_20334) Bool)
(declare-fun |Seq#Update_21259| (T@Seq_21259 Int T@Ref) T@Seq_21259)
(declare-fun |Seq#Update_3131| (T@Seq_3131 Int Int) T@Seq_3131)
(declare-fun |Seq#Take_21259| (T@Seq_21259 Int) T@Seq_21259)
(declare-fun |Seq#Take_3131| (T@Seq_3131 Int) T@Seq_3131)
(declare-fun |Seq#Contains_3131| (T@Seq_3131 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3131)
(declare-fun |Seq#Contains_8450| (T@Seq_21259 T@Ref) Bool)
(declare-fun |Seq#Skolem_8450| (T@Seq_21259 T@Ref) Int)
(declare-fun |Seq#Skolem_3131| (T@Seq_3131 Int) Int)
(declare-fun fun2 (T@PolymorphicMapType_12901 T@Ref) T@Ref)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_12901 T@PolymorphicMapType_12901 T@PolymorphicMapType_12922) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_8423 (T@Field_20333_20334) T@Field_20346_20351)
(declare-fun HasDirectPerm_20333_20334 (T@PolymorphicMapType_12922 T@Ref T@Field_20333_20334) Bool)
(declare-fun IsPredicateField_12961_38786 (T@Field_12961_20334) Bool)
(declare-fun PredicateMaskField_12961 (T@Field_12961_20334) T@Field_12961_20351)
(declare-fun HasDirectPerm_12961_20334 (T@PolymorphicMapType_12922 T@Ref T@Field_12961_20334) Bool)
(declare-fun IsWandField_20333_42483 (T@Field_20333_20334) Bool)
(declare-fun WandMaskField_20333 (T@Field_20333_20334) T@Field_20346_20351)
(declare-fun IsWandField_12961_42126 (T@Field_12961_20334) Bool)
(declare-fun WandMaskField_12961 (T@Field_12961_20334) T@Field_12961_20351)
(declare-fun |Seq#Singleton_21259| (T@Ref) T@Seq_21259)
(declare-fun |Seq#Singleton_3131| (Int) T@Seq_3131)
(declare-fun |pred#sm| (T@Ref) T@Field_20346_20351)
(declare-fun |Seq#Append_21259| (T@Seq_21259 T@Seq_21259) T@Seq_21259)
(declare-fun |Seq#Append_3131| (T@Seq_3131 T@Seq_3131) T@Seq_3131)
(declare-fun fun (T@PolymorphicMapType_12901 T@Ref Int) T@Ref)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun dummyHeap () T@PolymorphicMapType_12901)
(declare-fun ZeroMask () T@PolymorphicMapType_12922)
(declare-fun InsidePredicate_20333_20333 (T@Field_20333_20334 T@FrameType T@Field_20333_20334 T@FrameType) Bool)
(declare-fun InsidePredicate_12961_12961 (T@Field_12961_20334 T@FrameType T@Field_12961_20334 T@FrameType) Bool)
(declare-fun IsPredicateField_8364_3253 (T@Field_19023_3253) Bool)
(declare-fun IsWandField_8364_3253 (T@Field_19023_3253) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8423_49415 (T@Field_20346_20351) Bool)
(declare-fun IsWandField_8423_49431 (T@Field_20346_20351) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8423_12975 (T@Field_20333_12975) Bool)
(declare-fun IsWandField_8423_12975 (T@Field_20333_12975) Bool)
(declare-fun IsPredicateField_8423_53 (T@Field_20333_53) Bool)
(declare-fun IsWandField_8423_53 (T@Field_20333_53) Bool)
(declare-fun IsPredicateField_8423_3253 (T@Field_20333_3253) Bool)
(declare-fun IsWandField_8423_3253 (T@Field_20333_3253) Bool)
(declare-fun IsPredicateField_8364_48584 (T@Field_12961_20351) Bool)
(declare-fun IsWandField_8364_48600 (T@Field_12961_20351) Bool)
(declare-fun IsPredicateField_8364_12975 (T@Field_12974_12975) Bool)
(declare-fun IsWandField_8364_12975 (T@Field_12974_12975) Bool)
(declare-fun IsPredicateField_8364_53 (T@Field_12961_53) Bool)
(declare-fun IsWandField_8364_53 (T@Field_12961_53) Bool)
(declare-fun HasDirectPerm_20333_38498 (T@PolymorphicMapType_12922 T@Ref T@Field_20346_20351) Bool)
(declare-fun HasDirectPerm_20333_3253 (T@PolymorphicMapType_12922 T@Ref T@Field_20333_3253) Bool)
(declare-fun HasDirectPerm_20333_12975 (T@PolymorphicMapType_12922 T@Ref T@Field_20333_12975) Bool)
(declare-fun HasDirectPerm_20333_53 (T@PolymorphicMapType_12922 T@Ref T@Field_20333_53) Bool)
(declare-fun HasDirectPerm_12961_37337 (T@PolymorphicMapType_12922 T@Ref T@Field_12961_20351) Bool)
(declare-fun HasDirectPerm_12961_3253 (T@PolymorphicMapType_12922 T@Ref T@Field_19023_3253) Bool)
(declare-fun HasDirectPerm_12961_12975 (T@PolymorphicMapType_12922 T@Ref T@Field_12974_12975) Bool)
(declare-fun HasDirectPerm_12961_53 (T@PolymorphicMapType_12922 T@Ref T@Field_12961_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_12922 T@PolymorphicMapType_12922 T@PolymorphicMapType_12922) Bool)
(declare-fun |Seq#Equal_21259| (T@Seq_21259 T@Seq_21259) Bool)
(declare-fun |Seq#Equal_3131| (T@Seq_3131 T@Seq_3131) Bool)
(declare-fun |Seq#ContainsTrigger_8450| (T@Seq_21259 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3131| (T@Seq_3131 Int) Bool)
(declare-fun getPredWandId_8423_8424 (T@Field_20333_20334) Int)
(declare-fun |fun2#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun |Seq#SkolemDiff_21259| (T@Seq_21259 T@Seq_21259) Int)
(declare-fun |Seq#SkolemDiff_3131| (T@Seq_3131 T@Seq_3131) Int)
(declare-fun InsidePredicate_20333_12961 (T@Field_20333_20334 T@FrameType T@Field_12961_20334 T@FrameType) Bool)
(declare-fun InsidePredicate_12961_20333 (T@Field_12961_20334 T@FrameType T@Field_20333_20334 T@FrameType) Bool)
(assert (distinct f_7 g)
)
(assert (forall ((s T@Seq_21259) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_21259| s)) (= (|Seq#Length_21259| (|Seq#Drop_21259| s n)) (- (|Seq#Length_21259| s) n))) (=> (< (|Seq#Length_21259| s) n) (= (|Seq#Length_21259| (|Seq#Drop_21259| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_21259| (|Seq#Drop_21259| s n)) (|Seq#Length_21259| s))))
 :qid |stdinbpl.322:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_21259| (|Seq#Drop_21259| s n)))
 :pattern ( (|Seq#Length_21259| s) (|Seq#Drop_21259| s n))
)))
(assert (forall ((s@@0 T@Seq_3131) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3131| s@@0)) (= (|Seq#Length_3131| (|Seq#Drop_3131| s@@0 n@@0)) (- (|Seq#Length_3131| s@@0) n@@0))) (=> (< (|Seq#Length_3131| s@@0) n@@0) (= (|Seq#Length_3131| (|Seq#Drop_3131| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3131| (|Seq#Drop_3131| s@@0 n@@0)) (|Seq#Length_3131| s@@0))))
 :qid |stdinbpl.322:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3131| (|Seq#Drop_3131| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3131| s@@0) (|Seq#Drop_3131| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_12901) (Heap1 T@PolymorphicMapType_12901) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_12901) (Mask T@PolymorphicMapType_12922) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_12901) (Heap1@@0 T@PolymorphicMapType_12901) (Heap2 T@PolymorphicMapType_12901) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_20346_20351) ) (!  (not (select (|PolymorphicMapType_13450_20333_41318#PolymorphicMapType_13450| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13450_20333_41318#PolymorphicMapType_13450| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_20333_20334) ) (!  (not (select (|PolymorphicMapType_13450_20333_20334#PolymorphicMapType_13450| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13450_20333_20334#PolymorphicMapType_13450| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_20333_3253) ) (!  (not (select (|PolymorphicMapType_13450_20333_3253#PolymorphicMapType_13450| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13450_20333_3253#PolymorphicMapType_13450| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_20333_12975) ) (!  (not (select (|PolymorphicMapType_13450_20333_12975#PolymorphicMapType_13450| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13450_20333_12975#PolymorphicMapType_13450| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_20333_53) ) (!  (not (select (|PolymorphicMapType_13450_20333_53#PolymorphicMapType_13450| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13450_20333_53#PolymorphicMapType_13450| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_12961_20351) ) (!  (not (select (|PolymorphicMapType_13450_12961_40270#PolymorphicMapType_13450| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13450_12961_40270#PolymorphicMapType_13450| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_12961_20334) ) (!  (not (select (|PolymorphicMapType_13450_12961_20334#PolymorphicMapType_13450| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13450_12961_20334#PolymorphicMapType_13450| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_19023_3253) ) (!  (not (select (|PolymorphicMapType_13450_12961_3253#PolymorphicMapType_13450| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13450_12961_3253#PolymorphicMapType_13450| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_12974_12975) ) (!  (not (select (|PolymorphicMapType_13450_12961_12975#PolymorphicMapType_13450| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13450_12961_12975#PolymorphicMapType_13450| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_12961_53) ) (!  (not (select (|PolymorphicMapType_13450_12961_53#PolymorphicMapType_13450| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13450_12961_53#PolymorphicMapType_13450| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_12901) (r_1 T@Ref) (i Int) ) (! (dummyFunction_8390 (|fun#triggerStateless| r_1 i))
 :qid |stdinbpl.611:15|
 :skolemid |59|
 :pattern ( (|fun'| Heap@@0 r_1 i))
)))
(assert (forall ((s@@1 T@Seq_21259) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_21259| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_21259| (|Seq#Drop_21259| s@@1 n@@1) j) (|Seq#Index_21259| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.343:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_21259| (|Seq#Drop_21259| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3131) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3131| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3131| (|Seq#Drop_3131| s@@2 n@@2) j@@0) (|Seq#Index_3131| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.343:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3131| (|Seq#Drop_3131| s@@2 n@@2) j@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_12901) (Mask@@0 T@PolymorphicMapType_12922) (r_1@@0 T@Ref) (i@@0 Int) ) (!  (=> (state Heap@@1 Mask@@0) (= (|fun'| Heap@@1 r_1@@0 i@@0) (|fun#frame| EmptyFrame r_1@@0 i@@0)))
 :qid |stdinbpl.624:15|
 :skolemid |61|
 :pattern ( (state Heap@@1 Mask@@0) (|fun'| Heap@@1 r_1@@0 i@@0))
)))
(assert (= (|Seq#Length_21259| |Seq#Empty_21259|) 0))
(assert (= (|Seq#Length_3131| |Seq#Empty_3131|) 0))
(assert (forall ((r_1@@1 T@Ref) ) (! (IsPredicateField_8423_8424 (pred_3 r_1@@1))
 :qid |stdinbpl.713:15|
 :skolemid |67|
 :pattern ( (pred_3 r_1@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12901) (r_1@@2 T@Ref) ) (! (dummyFunction_8390 (|fun2#triggerStateless| r_1@@2))
 :qid |stdinbpl.662:15|
 :skolemid |63|
 :pattern ( (|fun2'| Heap@@2 r_1@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12901) (r_1@@3 T@Ref) ) (! (|pred#everUsed_8423| (pred_3 r_1@@3))
 :qid |stdinbpl.732:15|
 :skolemid |71|
 :pattern ( (|pred#trigger_8423| Heap@@3 (pred_3 r_1@@3)))
)))
(assert (forall ((s@@3 T@Seq_21259) (i@@1 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_21259| s@@3))) (and (=> (= i@@1 n@@3) (= (|Seq#Index_21259| (|Seq#Update_21259| s@@3 i@@1 v) n@@3) v)) (=> (not (= i@@1 n@@3)) (= (|Seq#Index_21259| (|Seq#Update_21259| s@@3 i@@1 v) n@@3) (|Seq#Index_21259| s@@3 n@@3)))))
 :qid |stdinbpl.298:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_21259| (|Seq#Update_21259| s@@3 i@@1 v) n@@3))
 :pattern ( (|Seq#Index_21259| s@@3 n@@3) (|Seq#Update_21259| s@@3 i@@1 v))
)))
(assert (forall ((s@@4 T@Seq_3131) (i@@2 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3131| s@@4))) (and (=> (= i@@2 n@@4) (= (|Seq#Index_3131| (|Seq#Update_3131| s@@4 i@@2 v@@0) n@@4) v@@0)) (=> (not (= i@@2 n@@4)) (= (|Seq#Index_3131| (|Seq#Update_3131| s@@4 i@@2 v@@0) n@@4) (|Seq#Index_3131| s@@4 n@@4)))))
 :qid |stdinbpl.298:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3131| (|Seq#Update_3131| s@@4 i@@2 v@@0) n@@4))
 :pattern ( (|Seq#Index_3131| s@@4 n@@4) (|Seq#Update_3131| s@@4 i@@2 v@@0))
)))
(assert (forall ((s@@5 T@Seq_21259) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_21259| s@@5)) (= (|Seq#Length_21259| (|Seq#Take_21259| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_21259| s@@5) n@@5) (= (|Seq#Length_21259| (|Seq#Take_21259| s@@5 n@@5)) (|Seq#Length_21259| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_21259| (|Seq#Take_21259| s@@5 n@@5)) 0)))
 :qid |stdinbpl.309:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_21259| (|Seq#Take_21259| s@@5 n@@5)))
 :pattern ( (|Seq#Take_21259| s@@5 n@@5) (|Seq#Length_21259| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3131) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3131| s@@6)) (= (|Seq#Length_3131| (|Seq#Take_3131| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3131| s@@6) n@@6) (= (|Seq#Length_3131| (|Seq#Take_3131| s@@6 n@@6)) (|Seq#Length_3131| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3131| (|Seq#Take_3131| s@@6 n@@6)) 0)))
 :qid |stdinbpl.309:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3131| (|Seq#Take_3131| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3131| s@@6 n@@6) (|Seq#Length_3131| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3131| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.583:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3131| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_21259) (x T@Ref) ) (!  (=> (|Seq#Contains_8450| s@@7 x) (and (and (<= 0 (|Seq#Skolem_8450| s@@7 x)) (< (|Seq#Skolem_8450| s@@7 x) (|Seq#Length_21259| s@@7))) (= (|Seq#Index_21259| s@@7 (|Seq#Skolem_8450| s@@7 x)) x)))
 :qid |stdinbpl.441:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_8450| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3131) (x@@0 Int) ) (!  (=> (|Seq#Contains_3131| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3131| s@@8 x@@0)) (< (|Seq#Skolem_3131| s@@8 x@@0) (|Seq#Length_3131| s@@8))) (= (|Seq#Index_3131| s@@8 (|Seq#Skolem_3131| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.441:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3131| s@@8 x@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12901) (r_1@@4 T@Ref) ) (!  (and (= (fun2 Heap@@4 r_1@@4) (|fun2'| Heap@@4 r_1@@4)) (dummyFunction_8390 (|fun2#triggerStateless| r_1@@4)))
 :qid |stdinbpl.658:15|
 :skolemid |62|
 :pattern ( (fun2 Heap@@4 r_1@@4))
)))
(assert (forall ((s@@9 T@Seq_21259) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_21259| s@@9 n@@7) s@@9))
 :qid |stdinbpl.425:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_21259| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3131) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3131| s@@10 n@@8) s@@10))
 :qid |stdinbpl.425:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3131| s@@10 n@@8))
)))
(assert (forall ((i@@3 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@3 j@@1) (- i@@3 j@@1))
 :qid |stdinbpl.278:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@3 j@@1))
)))
(assert (forall ((i@@4 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@4 j@@2) (+ i@@4 j@@2))
 :qid |stdinbpl.276:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@4 j@@2))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12901) (ExhaleHeap T@PolymorphicMapType_12901) (Mask@@1 T@PolymorphicMapType_12922) (pm_f_8 T@Field_20333_20334) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_20333_20334 Mask@@1 null pm_f_8) (IsPredicateField_8423_8424 pm_f_8)) (= (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@5) null (PredicateMaskField_8423 pm_f_8)) (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| ExhaleHeap) null (PredicateMaskField_8423 pm_f_8)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (IsPredicateField_8423_8424 pm_f_8) (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| ExhaleHeap) null (PredicateMaskField_8423 pm_f_8)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_12901) (ExhaleHeap@@0 T@PolymorphicMapType_12901) (Mask@@2 T@PolymorphicMapType_12922) (pm_f_8@@0 T@Field_12961_20334) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_12961_20334 Mask@@2 null pm_f_8@@0) (IsPredicateField_12961_38786 pm_f_8@@0)) (= (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@6) null (PredicateMaskField_12961 pm_f_8@@0)) (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| ExhaleHeap@@0) null (PredicateMaskField_12961 pm_f_8@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (IsPredicateField_12961_38786 pm_f_8@@0) (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| ExhaleHeap@@0) null (PredicateMaskField_12961 pm_f_8@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12901) (ExhaleHeap@@1 T@PolymorphicMapType_12901) (Mask@@3 T@PolymorphicMapType_12922) (pm_f_8@@1 T@Field_20333_20334) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_20333_20334 Mask@@3 null pm_f_8@@1) (IsWandField_20333_42483 pm_f_8@@1)) (= (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@7) null (WandMaskField_20333 pm_f_8@@1)) (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| ExhaleHeap@@1) null (WandMaskField_20333 pm_f_8@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (IsWandField_20333_42483 pm_f_8@@1) (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| ExhaleHeap@@1) null (WandMaskField_20333 pm_f_8@@1)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12901) (ExhaleHeap@@2 T@PolymorphicMapType_12901) (Mask@@4 T@PolymorphicMapType_12922) (pm_f_8@@2 T@Field_12961_20334) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_12961_20334 Mask@@4 null pm_f_8@@2) (IsWandField_12961_42126 pm_f_8@@2)) (= (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@8) null (WandMaskField_12961 pm_f_8@@2)) (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| ExhaleHeap@@2) null (WandMaskField_12961 pm_f_8@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (IsWandField_12961_42126 pm_f_8@@2) (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| ExhaleHeap@@2) null (WandMaskField_12961 pm_f_8@@2)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_8450| (|Seq#Singleton_21259| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.566:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_8450| (|Seq#Singleton_21259| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3131| (|Seq#Singleton_3131| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.566:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3131| (|Seq#Singleton_3131| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_21259) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_21259| s@@11))) (= (|Seq#Index_21259| (|Seq#Take_21259| s@@11 n@@9) j@@3) (|Seq#Index_21259| s@@11 j@@3)))
 :qid |stdinbpl.317:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_21259| (|Seq#Take_21259| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_21259| s@@11 j@@3) (|Seq#Take_21259| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3131) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3131| s@@12))) (= (|Seq#Index_3131| (|Seq#Take_3131| s@@12 n@@10) j@@4) (|Seq#Index_3131| s@@12 j@@4)))
 :qid |stdinbpl.317:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3131| (|Seq#Take_3131| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3131| s@@12 j@@4) (|Seq#Take_3131| s@@12 n@@10))
)))
(assert (forall ((r_1@@5 T@Ref) (r2 T@Ref) ) (!  (=> (= (pred_3 r_1@@5) (pred_3 r2)) (= r_1@@5 r2))
 :qid |stdinbpl.723:15|
 :skolemid |69|
 :pattern ( (pred_3 r_1@@5) (pred_3 r2))
)))
(assert (forall ((r_1@@6 T@Ref) (r2@@0 T@Ref) ) (!  (=> (= (|pred#sm| r_1@@6) (|pred#sm| r2@@0)) (= r_1@@6 r2@@0))
 :qid |stdinbpl.727:15|
 :skolemid |70|
 :pattern ( (|pred#sm| r_1@@6) (|pred#sm| r2@@0))
)))
(assert (forall ((s@@13 T@Seq_21259) (t T@Seq_21259) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_21259| s@@13))) (< n@@11 (|Seq#Length_21259| (|Seq#Append_21259| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_21259| s@@13)) (|Seq#Length_21259| s@@13)) n@@11) (= (|Seq#Take_21259| (|Seq#Append_21259| s@@13 t) n@@11) (|Seq#Append_21259| s@@13 (|Seq#Take_21259| t (|Seq#Sub| n@@11 (|Seq#Length_21259| s@@13)))))))
 :qid |stdinbpl.402:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_21259| (|Seq#Append_21259| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3131) (t@@0 T@Seq_3131) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3131| s@@14))) (< n@@12 (|Seq#Length_3131| (|Seq#Append_3131| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3131| s@@14)) (|Seq#Length_3131| s@@14)) n@@12) (= (|Seq#Take_3131| (|Seq#Append_3131| s@@14 t@@0) n@@12) (|Seq#Append_3131| s@@14 (|Seq#Take_3131| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3131| s@@14)))))))
 :qid |stdinbpl.402:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3131| (|Seq#Append_3131| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12901) (ExhaleHeap@@3 T@PolymorphicMapType_12901) (Mask@@5 T@PolymorphicMapType_12922) (pm_f_8@@3 T@Field_20333_20334) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_20333_20334 Mask@@5 null pm_f_8@@3) (IsPredicateField_8423_8424 pm_f_8@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_8 T@Ref) (f_25 T@Field_12961_53) ) (!  (=> (select (|PolymorphicMapType_13450_12961_53#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@9) null (PredicateMaskField_8423 pm_f_8@@3))) o2_8 f_25) (= (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@9) o2_8 f_25) (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8 f_25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8 f_25))
)) (forall ((o2_8@@0 T@Ref) (f_25@@0 T@Field_12974_12975) ) (!  (=> (select (|PolymorphicMapType_13450_12961_12975#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@9) null (PredicateMaskField_8423 pm_f_8@@3))) o2_8@@0 f_25@@0) (= (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@9) o2_8@@0 f_25@@0) (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@0 f_25@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@0 f_25@@0))
))) (forall ((o2_8@@1 T@Ref) (f_25@@1 T@Field_19023_3253) ) (!  (=> (select (|PolymorphicMapType_13450_12961_3253#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@9) null (PredicateMaskField_8423 pm_f_8@@3))) o2_8@@1 f_25@@1) (= (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@9) o2_8@@1 f_25@@1) (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@1 f_25@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@1 f_25@@1))
))) (forall ((o2_8@@2 T@Ref) (f_25@@2 T@Field_12961_20334) ) (!  (=> (select (|PolymorphicMapType_13450_12961_20334#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@9) null (PredicateMaskField_8423 pm_f_8@@3))) o2_8@@2 f_25@@2) (= (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@9) o2_8@@2 f_25@@2) (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@2 f_25@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@2 f_25@@2))
))) (forall ((o2_8@@3 T@Ref) (f_25@@3 T@Field_12961_20351) ) (!  (=> (select (|PolymorphicMapType_13450_12961_40270#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@9) null (PredicateMaskField_8423 pm_f_8@@3))) o2_8@@3 f_25@@3) (= (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@9) o2_8@@3 f_25@@3) (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@3 f_25@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@3 f_25@@3))
))) (forall ((o2_8@@4 T@Ref) (f_25@@4 T@Field_20333_53) ) (!  (=> (select (|PolymorphicMapType_13450_20333_53#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@9) null (PredicateMaskField_8423 pm_f_8@@3))) o2_8@@4 f_25@@4) (= (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@9) o2_8@@4 f_25@@4) (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@4 f_25@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@4 f_25@@4))
))) (forall ((o2_8@@5 T@Ref) (f_25@@5 T@Field_20333_12975) ) (!  (=> (select (|PolymorphicMapType_13450_20333_12975#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@9) null (PredicateMaskField_8423 pm_f_8@@3))) o2_8@@5 f_25@@5) (= (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@9) o2_8@@5 f_25@@5) (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@5 f_25@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@5 f_25@@5))
))) (forall ((o2_8@@6 T@Ref) (f_25@@6 T@Field_20333_3253) ) (!  (=> (select (|PolymorphicMapType_13450_20333_3253#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@9) null (PredicateMaskField_8423 pm_f_8@@3))) o2_8@@6 f_25@@6) (= (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@9) o2_8@@6 f_25@@6) (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@6 f_25@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@6 f_25@@6))
))) (forall ((o2_8@@7 T@Ref) (f_25@@7 T@Field_20333_20334) ) (!  (=> (select (|PolymorphicMapType_13450_20333_20334#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@9) null (PredicateMaskField_8423 pm_f_8@@3))) o2_8@@7 f_25@@7) (= (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@9) o2_8@@7 f_25@@7) (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@7 f_25@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@7 f_25@@7))
))) (forall ((o2_8@@8 T@Ref) (f_25@@8 T@Field_20346_20351) ) (!  (=> (select (|PolymorphicMapType_13450_20333_41318#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@9) null (PredicateMaskField_8423 pm_f_8@@3))) o2_8@@8 f_25@@8) (= (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@9) o2_8@@8 f_25@@8) (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@8 f_25@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@8 f_25@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@5) (IsPredicateField_8423_8424 pm_f_8@@3))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12901) (ExhaleHeap@@4 T@PolymorphicMapType_12901) (Mask@@6 T@PolymorphicMapType_12922) (pm_f_8@@4 T@Field_12961_20334) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_12961_20334 Mask@@6 null pm_f_8@@4) (IsPredicateField_12961_38786 pm_f_8@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_8@@9 T@Ref) (f_25@@9 T@Field_12961_53) ) (!  (=> (select (|PolymorphicMapType_13450_12961_53#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@10) null (PredicateMaskField_12961 pm_f_8@@4))) o2_8@@9 f_25@@9) (= (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@10) o2_8@@9 f_25@@9) (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@9 f_25@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@9 f_25@@9))
)) (forall ((o2_8@@10 T@Ref) (f_25@@10 T@Field_12974_12975) ) (!  (=> (select (|PolymorphicMapType_13450_12961_12975#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@10) null (PredicateMaskField_12961 pm_f_8@@4))) o2_8@@10 f_25@@10) (= (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@10) o2_8@@10 f_25@@10) (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@10 f_25@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@10 f_25@@10))
))) (forall ((o2_8@@11 T@Ref) (f_25@@11 T@Field_19023_3253) ) (!  (=> (select (|PolymorphicMapType_13450_12961_3253#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@10) null (PredicateMaskField_12961 pm_f_8@@4))) o2_8@@11 f_25@@11) (= (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@10) o2_8@@11 f_25@@11) (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@11 f_25@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@11 f_25@@11))
))) (forall ((o2_8@@12 T@Ref) (f_25@@12 T@Field_12961_20334) ) (!  (=> (select (|PolymorphicMapType_13450_12961_20334#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@10) null (PredicateMaskField_12961 pm_f_8@@4))) o2_8@@12 f_25@@12) (= (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@10) o2_8@@12 f_25@@12) (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@12 f_25@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@12 f_25@@12))
))) (forall ((o2_8@@13 T@Ref) (f_25@@13 T@Field_12961_20351) ) (!  (=> (select (|PolymorphicMapType_13450_12961_40270#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@10) null (PredicateMaskField_12961 pm_f_8@@4))) o2_8@@13 f_25@@13) (= (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@10) o2_8@@13 f_25@@13) (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@13 f_25@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@13 f_25@@13))
))) (forall ((o2_8@@14 T@Ref) (f_25@@14 T@Field_20333_53) ) (!  (=> (select (|PolymorphicMapType_13450_20333_53#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@10) null (PredicateMaskField_12961 pm_f_8@@4))) o2_8@@14 f_25@@14) (= (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@10) o2_8@@14 f_25@@14) (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@14 f_25@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@14 f_25@@14))
))) (forall ((o2_8@@15 T@Ref) (f_25@@15 T@Field_20333_12975) ) (!  (=> (select (|PolymorphicMapType_13450_20333_12975#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@10) null (PredicateMaskField_12961 pm_f_8@@4))) o2_8@@15 f_25@@15) (= (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@10) o2_8@@15 f_25@@15) (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@15 f_25@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@15 f_25@@15))
))) (forall ((o2_8@@16 T@Ref) (f_25@@16 T@Field_20333_3253) ) (!  (=> (select (|PolymorphicMapType_13450_20333_3253#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@10) null (PredicateMaskField_12961 pm_f_8@@4))) o2_8@@16 f_25@@16) (= (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@10) o2_8@@16 f_25@@16) (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@16 f_25@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@16 f_25@@16))
))) (forall ((o2_8@@17 T@Ref) (f_25@@17 T@Field_20333_20334) ) (!  (=> (select (|PolymorphicMapType_13450_20333_20334#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@10) null (PredicateMaskField_12961 pm_f_8@@4))) o2_8@@17 f_25@@17) (= (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@10) o2_8@@17 f_25@@17) (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@17 f_25@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@17 f_25@@17))
))) (forall ((o2_8@@18 T@Ref) (f_25@@18 T@Field_20346_20351) ) (!  (=> (select (|PolymorphicMapType_13450_20333_41318#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@10) null (PredicateMaskField_12961 pm_f_8@@4))) o2_8@@18 f_25@@18) (= (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@10) o2_8@@18 f_25@@18) (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@18 f_25@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@18 f_25@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@6) (IsPredicateField_12961_38786 pm_f_8@@4))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12901) (ExhaleHeap@@5 T@PolymorphicMapType_12901) (Mask@@7 T@PolymorphicMapType_12922) (pm_f_8@@5 T@Field_20333_20334) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_20333_20334 Mask@@7 null pm_f_8@@5) (IsWandField_20333_42483 pm_f_8@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_8@@19 T@Ref) (f_25@@19 T@Field_12961_53) ) (!  (=> (select (|PolymorphicMapType_13450_12961_53#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@11) null (WandMaskField_20333 pm_f_8@@5))) o2_8@@19 f_25@@19) (= (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@11) o2_8@@19 f_25@@19) (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@19 f_25@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@19 f_25@@19))
)) (forall ((o2_8@@20 T@Ref) (f_25@@20 T@Field_12974_12975) ) (!  (=> (select (|PolymorphicMapType_13450_12961_12975#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@11) null (WandMaskField_20333 pm_f_8@@5))) o2_8@@20 f_25@@20) (= (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@11) o2_8@@20 f_25@@20) (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@20 f_25@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@20 f_25@@20))
))) (forall ((o2_8@@21 T@Ref) (f_25@@21 T@Field_19023_3253) ) (!  (=> (select (|PolymorphicMapType_13450_12961_3253#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@11) null (WandMaskField_20333 pm_f_8@@5))) o2_8@@21 f_25@@21) (= (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@11) o2_8@@21 f_25@@21) (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@21 f_25@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@21 f_25@@21))
))) (forall ((o2_8@@22 T@Ref) (f_25@@22 T@Field_12961_20334) ) (!  (=> (select (|PolymorphicMapType_13450_12961_20334#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@11) null (WandMaskField_20333 pm_f_8@@5))) o2_8@@22 f_25@@22) (= (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@11) o2_8@@22 f_25@@22) (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@22 f_25@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@22 f_25@@22))
))) (forall ((o2_8@@23 T@Ref) (f_25@@23 T@Field_12961_20351) ) (!  (=> (select (|PolymorphicMapType_13450_12961_40270#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@11) null (WandMaskField_20333 pm_f_8@@5))) o2_8@@23 f_25@@23) (= (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@11) o2_8@@23 f_25@@23) (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@23 f_25@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@23 f_25@@23))
))) (forall ((o2_8@@24 T@Ref) (f_25@@24 T@Field_20333_53) ) (!  (=> (select (|PolymorphicMapType_13450_20333_53#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@11) null (WandMaskField_20333 pm_f_8@@5))) o2_8@@24 f_25@@24) (= (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@11) o2_8@@24 f_25@@24) (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@24 f_25@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@24 f_25@@24))
))) (forall ((o2_8@@25 T@Ref) (f_25@@25 T@Field_20333_12975) ) (!  (=> (select (|PolymorphicMapType_13450_20333_12975#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@11) null (WandMaskField_20333 pm_f_8@@5))) o2_8@@25 f_25@@25) (= (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@11) o2_8@@25 f_25@@25) (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@25 f_25@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@25 f_25@@25))
))) (forall ((o2_8@@26 T@Ref) (f_25@@26 T@Field_20333_3253) ) (!  (=> (select (|PolymorphicMapType_13450_20333_3253#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@11) null (WandMaskField_20333 pm_f_8@@5))) o2_8@@26 f_25@@26) (= (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@11) o2_8@@26 f_25@@26) (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@26 f_25@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@26 f_25@@26))
))) (forall ((o2_8@@27 T@Ref) (f_25@@27 T@Field_20333_20334) ) (!  (=> (select (|PolymorphicMapType_13450_20333_20334#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@11) null (WandMaskField_20333 pm_f_8@@5))) o2_8@@27 f_25@@27) (= (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@11) o2_8@@27 f_25@@27) (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@27 f_25@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@27 f_25@@27))
))) (forall ((o2_8@@28 T@Ref) (f_25@@28 T@Field_20346_20351) ) (!  (=> (select (|PolymorphicMapType_13450_20333_41318#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@11) null (WandMaskField_20333 pm_f_8@@5))) o2_8@@28 f_25@@28) (= (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@11) o2_8@@28 f_25@@28) (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@28 f_25@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@28 f_25@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@7) (IsWandField_20333_42483 pm_f_8@@5))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_12901) (ExhaleHeap@@6 T@PolymorphicMapType_12901) (Mask@@8 T@PolymorphicMapType_12922) (pm_f_8@@6 T@Field_12961_20334) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_12961_20334 Mask@@8 null pm_f_8@@6) (IsWandField_12961_42126 pm_f_8@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_8@@29 T@Ref) (f_25@@29 T@Field_12961_53) ) (!  (=> (select (|PolymorphicMapType_13450_12961_53#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@12) null (WandMaskField_12961 pm_f_8@@6))) o2_8@@29 f_25@@29) (= (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@12) o2_8@@29 f_25@@29) (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@29 f_25@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@29 f_25@@29))
)) (forall ((o2_8@@30 T@Ref) (f_25@@30 T@Field_12974_12975) ) (!  (=> (select (|PolymorphicMapType_13450_12961_12975#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@12) null (WandMaskField_12961 pm_f_8@@6))) o2_8@@30 f_25@@30) (= (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@12) o2_8@@30 f_25@@30) (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@30 f_25@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@30 f_25@@30))
))) (forall ((o2_8@@31 T@Ref) (f_25@@31 T@Field_19023_3253) ) (!  (=> (select (|PolymorphicMapType_13450_12961_3253#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@12) null (WandMaskField_12961 pm_f_8@@6))) o2_8@@31 f_25@@31) (= (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@12) o2_8@@31 f_25@@31) (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@31 f_25@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@31 f_25@@31))
))) (forall ((o2_8@@32 T@Ref) (f_25@@32 T@Field_12961_20334) ) (!  (=> (select (|PolymorphicMapType_13450_12961_20334#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@12) null (WandMaskField_12961 pm_f_8@@6))) o2_8@@32 f_25@@32) (= (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@12) o2_8@@32 f_25@@32) (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@32 f_25@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@32 f_25@@32))
))) (forall ((o2_8@@33 T@Ref) (f_25@@33 T@Field_12961_20351) ) (!  (=> (select (|PolymorphicMapType_13450_12961_40270#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@12) null (WandMaskField_12961 pm_f_8@@6))) o2_8@@33 f_25@@33) (= (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@12) o2_8@@33 f_25@@33) (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@33 f_25@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@33 f_25@@33))
))) (forall ((o2_8@@34 T@Ref) (f_25@@34 T@Field_20333_53) ) (!  (=> (select (|PolymorphicMapType_13450_20333_53#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@12) null (WandMaskField_12961 pm_f_8@@6))) o2_8@@34 f_25@@34) (= (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@12) o2_8@@34 f_25@@34) (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@34 f_25@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@34 f_25@@34))
))) (forall ((o2_8@@35 T@Ref) (f_25@@35 T@Field_20333_12975) ) (!  (=> (select (|PolymorphicMapType_13450_20333_12975#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@12) null (WandMaskField_12961 pm_f_8@@6))) o2_8@@35 f_25@@35) (= (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@12) o2_8@@35 f_25@@35) (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@35 f_25@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@35 f_25@@35))
))) (forall ((o2_8@@36 T@Ref) (f_25@@36 T@Field_20333_3253) ) (!  (=> (select (|PolymorphicMapType_13450_20333_3253#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@12) null (WandMaskField_12961 pm_f_8@@6))) o2_8@@36 f_25@@36) (= (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@12) o2_8@@36 f_25@@36) (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@36 f_25@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@36 f_25@@36))
))) (forall ((o2_8@@37 T@Ref) (f_25@@37 T@Field_20333_20334) ) (!  (=> (select (|PolymorphicMapType_13450_20333_20334#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@12) null (WandMaskField_12961 pm_f_8@@6))) o2_8@@37 f_25@@37) (= (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@12) o2_8@@37 f_25@@37) (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@37 f_25@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@37 f_25@@37))
))) (forall ((o2_8@@38 T@Ref) (f_25@@38 T@Field_20346_20351) ) (!  (=> (select (|PolymorphicMapType_13450_20333_41318#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@12) null (WandMaskField_12961 pm_f_8@@6))) o2_8@@38 f_25@@38) (= (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@12) o2_8@@38 f_25@@38) (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@38 f_25@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@38 f_25@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@8) (IsWandField_12961_42126 pm_f_8@@6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_12901) (Mask@@9 T@PolymorphicMapType_12922) (r_1@@7 T@Ref) (i@@5 Int) ) (!  (=> (and (state Heap@@13 Mask@@9) (< AssumeFunctionsAbove 0)) (= (fun Heap@@13 r_1@@7 i@@5) r_1@@7))
 :qid |stdinbpl.617:15|
 :skolemid |60|
 :pattern ( (state Heap@@13 Mask@@9) (fun Heap@@13 r_1@@7 i@@5))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_12901) (ExhaleHeap@@7 T@PolymorphicMapType_12901) (Mask@@10 T@PolymorphicMapType_12922) (o_23 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@10) (=> (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@14) o_23 $allocated) (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| ExhaleHeap@@7) o_23 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@10) (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| ExhaleHeap@@7) o_23 $allocated))
)))
(assert (forall ((p T@Field_20333_20334) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_20333_20333 p v_1 p w))
 :qid |stdinbpl.220:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_20333_20333 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_12961_20334) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_12961_12961 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.220:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12961_12961 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_21259) (s1 T@Seq_21259) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_21259|)) (not (= s1 |Seq#Empty_21259|))) (<= (|Seq#Length_21259| s0) n@@13)) (< n@@13 (|Seq#Length_21259| (|Seq#Append_21259| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_21259| s0)) (|Seq#Length_21259| s0)) n@@13) (= (|Seq#Index_21259| (|Seq#Append_21259| s0 s1) n@@13) (|Seq#Index_21259| s1 (|Seq#Sub| n@@13 (|Seq#Length_21259| s0))))))
 :qid |stdinbpl.289:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_21259| (|Seq#Append_21259| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3131) (s1@@0 T@Seq_3131) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3131|)) (not (= s1@@0 |Seq#Empty_3131|))) (<= (|Seq#Length_3131| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3131| (|Seq#Append_3131| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3131| s0@@0)) (|Seq#Length_3131| s0@@0)) n@@14) (= (|Seq#Index_3131| (|Seq#Append_3131| s0@@0 s1@@0) n@@14) (|Seq#Index_3131| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3131| s0@@0))))))
 :qid |stdinbpl.289:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3131| (|Seq#Append_3131| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_8364_3253 f_7)))
(assert  (not (IsWandField_8364_3253 f_7)))
(assert  (not (IsPredicateField_8364_3253 g)))
(assert  (not (IsWandField_8364_3253 g)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_12901) (ExhaleHeap@@8 T@PolymorphicMapType_12901) (Mask@@11 T@PolymorphicMapType_12922) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@11) (succHeap Heap@@15 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_12922) (o_2@@9 T@Ref) (f_4@@9 T@Field_20346_20351) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_8423_49415 f_4@@9))) (not (IsWandField_8423_49431 f_4@@9))) (<= (select (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_12922) (o_2@@10 T@Ref) (f_4@@10 T@Field_20333_12975) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_8423_12975 f_4@@10))) (not (IsWandField_8423_12975 f_4@@10))) (<= (select (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_12922) (o_2@@11 T@Ref) (f_4@@11 T@Field_20333_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_8423_53 f_4@@11))) (not (IsWandField_8423_53 f_4@@11))) (<= (select (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_12922) (o_2@@12 T@Ref) (f_4@@12 T@Field_20333_20334) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_8423_8424 f_4@@12))) (not (IsWandField_20333_42483 f_4@@12))) (<= (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_12922) (o_2@@13 T@Ref) (f_4@@13 T@Field_20333_3253) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_8423_3253 f_4@@13))) (not (IsWandField_8423_3253 f_4@@13))) (<= (select (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_12922) (o_2@@14 T@Ref) (f_4@@14 T@Field_12961_20351) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_8364_48584 f_4@@14))) (not (IsWandField_8364_48600 f_4@@14))) (<= (select (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_12922) (o_2@@15 T@Ref) (f_4@@15 T@Field_12974_12975) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| Mask@@18) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_8364_12975 f_4@@15))) (not (IsWandField_8364_12975 f_4@@15))) (<= (select (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| Mask@@18) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| Mask@@18) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_12922) (o_2@@16 T@Ref) (f_4@@16 T@Field_12961_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| Mask@@19) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_8364_53 f_4@@16))) (not (IsWandField_8364_53 f_4@@16))) (<= (select (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| Mask@@19) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| Mask@@19) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_12922) (o_2@@17 T@Ref) (f_4@@17 T@Field_12961_20334) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| Mask@@20) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_12961_38786 f_4@@17))) (not (IsWandField_12961_42126 f_4@@17))) (<= (select (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| Mask@@20) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| Mask@@20) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_12922) (o_2@@18 T@Ref) (f_4@@18 T@Field_19023_3253) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| Mask@@21) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_8364_3253 f_4@@18))) (not (IsWandField_8364_3253 f_4@@18))) (<= (select (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| Mask@@21) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| Mask@@21) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_12922) (o_2@@19 T@Ref) (f_4@@19 T@Field_20346_20351) ) (! (= (HasDirectPerm_20333_38498 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20333_38498 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_12922) (o_2@@20 T@Ref) (f_4@@20 T@Field_20333_20334) ) (! (= (HasDirectPerm_20333_20334 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20333_20334 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_12922) (o_2@@21 T@Ref) (f_4@@21 T@Field_20333_3253) ) (! (= (HasDirectPerm_20333_3253 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20333_3253 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_12922) (o_2@@22 T@Ref) (f_4@@22 T@Field_20333_12975) ) (! (= (HasDirectPerm_20333_12975 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20333_12975 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_12922) (o_2@@23 T@Ref) (f_4@@23 T@Field_20333_53) ) (! (= (HasDirectPerm_20333_53 Mask@@26 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| Mask@@26) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20333_53 Mask@@26 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_12922) (o_2@@24 T@Ref) (f_4@@24 T@Field_12961_20351) ) (! (= (HasDirectPerm_12961_37337 Mask@@27 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| Mask@@27) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12961_37337 Mask@@27 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_12922) (o_2@@25 T@Ref) (f_4@@25 T@Field_12961_20334) ) (! (= (HasDirectPerm_12961_20334 Mask@@28 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| Mask@@28) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12961_20334 Mask@@28 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_12922) (o_2@@26 T@Ref) (f_4@@26 T@Field_19023_3253) ) (! (= (HasDirectPerm_12961_3253 Mask@@29 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| Mask@@29) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12961_3253 Mask@@29 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_12922) (o_2@@27 T@Ref) (f_4@@27 T@Field_12974_12975) ) (! (= (HasDirectPerm_12961_12975 Mask@@30 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| Mask@@30) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12961_12975 Mask@@30 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_12922) (o_2@@28 T@Ref) (f_4@@28 T@Field_12961_53) ) (! (= (HasDirectPerm_12961_53 Mask@@31 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| Mask@@31) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12961_53 Mask@@31 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.208:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3131| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.581:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3131| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_12901) (ExhaleHeap@@9 T@PolymorphicMapType_12901) (Mask@@32 T@PolymorphicMapType_12922) (o_23@@0 T@Ref) (f_25@@39 T@Field_20346_20351) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@32) (=> (HasDirectPerm_20333_38498 Mask@@32 o_23@@0 f_25@@39) (= (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@16) o_23@@0 f_25@@39) (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| ExhaleHeap@@9) o_23@@0 f_25@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@32) (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| ExhaleHeap@@9) o_23@@0 f_25@@39))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_12901) (ExhaleHeap@@10 T@PolymorphicMapType_12901) (Mask@@33 T@PolymorphicMapType_12922) (o_23@@1 T@Ref) (f_25@@40 T@Field_20333_20334) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@33) (=> (HasDirectPerm_20333_20334 Mask@@33 o_23@@1 f_25@@40) (= (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@17) o_23@@1 f_25@@40) (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| ExhaleHeap@@10) o_23@@1 f_25@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@33) (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| ExhaleHeap@@10) o_23@@1 f_25@@40))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_12901) (ExhaleHeap@@11 T@PolymorphicMapType_12901) (Mask@@34 T@PolymorphicMapType_12922) (o_23@@2 T@Ref) (f_25@@41 T@Field_20333_3253) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@34) (=> (HasDirectPerm_20333_3253 Mask@@34 o_23@@2 f_25@@41) (= (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@18) o_23@@2 f_25@@41) (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| ExhaleHeap@@11) o_23@@2 f_25@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@34) (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| ExhaleHeap@@11) o_23@@2 f_25@@41))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_12901) (ExhaleHeap@@12 T@PolymorphicMapType_12901) (Mask@@35 T@PolymorphicMapType_12922) (o_23@@3 T@Ref) (f_25@@42 T@Field_20333_12975) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@35) (=> (HasDirectPerm_20333_12975 Mask@@35 o_23@@3 f_25@@42) (= (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@19) o_23@@3 f_25@@42) (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| ExhaleHeap@@12) o_23@@3 f_25@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@35) (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| ExhaleHeap@@12) o_23@@3 f_25@@42))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_12901) (ExhaleHeap@@13 T@PolymorphicMapType_12901) (Mask@@36 T@PolymorphicMapType_12922) (o_23@@4 T@Ref) (f_25@@43 T@Field_20333_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@36) (=> (HasDirectPerm_20333_53 Mask@@36 o_23@@4 f_25@@43) (= (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@20) o_23@@4 f_25@@43) (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| ExhaleHeap@@13) o_23@@4 f_25@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@36) (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| ExhaleHeap@@13) o_23@@4 f_25@@43))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_12901) (ExhaleHeap@@14 T@PolymorphicMapType_12901) (Mask@@37 T@PolymorphicMapType_12922) (o_23@@5 T@Ref) (f_25@@44 T@Field_12961_20351) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@37) (=> (HasDirectPerm_12961_37337 Mask@@37 o_23@@5 f_25@@44) (= (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@21) o_23@@5 f_25@@44) (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| ExhaleHeap@@14) o_23@@5 f_25@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@37) (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| ExhaleHeap@@14) o_23@@5 f_25@@44))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_12901) (ExhaleHeap@@15 T@PolymorphicMapType_12901) (Mask@@38 T@PolymorphicMapType_12922) (o_23@@6 T@Ref) (f_25@@45 T@Field_12961_20334) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@38) (=> (HasDirectPerm_12961_20334 Mask@@38 o_23@@6 f_25@@45) (= (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@22) o_23@@6 f_25@@45) (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| ExhaleHeap@@15) o_23@@6 f_25@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@38) (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| ExhaleHeap@@15) o_23@@6 f_25@@45))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_12901) (ExhaleHeap@@16 T@PolymorphicMapType_12901) (Mask@@39 T@PolymorphicMapType_12922) (o_23@@7 T@Ref) (f_25@@46 T@Field_19023_3253) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@39) (=> (HasDirectPerm_12961_3253 Mask@@39 o_23@@7 f_25@@46) (= (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@23) o_23@@7 f_25@@46) (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| ExhaleHeap@@16) o_23@@7 f_25@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@39) (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| ExhaleHeap@@16) o_23@@7 f_25@@46))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_12901) (ExhaleHeap@@17 T@PolymorphicMapType_12901) (Mask@@40 T@PolymorphicMapType_12922) (o_23@@8 T@Ref) (f_25@@47 T@Field_12974_12975) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@40) (=> (HasDirectPerm_12961_12975 Mask@@40 o_23@@8 f_25@@47) (= (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@24) o_23@@8 f_25@@47) (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| ExhaleHeap@@17) o_23@@8 f_25@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@40) (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| ExhaleHeap@@17) o_23@@8 f_25@@47))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_12901) (ExhaleHeap@@18 T@PolymorphicMapType_12901) (Mask@@41 T@PolymorphicMapType_12922) (o_23@@9 T@Ref) (f_25@@48 T@Field_12961_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@41) (=> (HasDirectPerm_12961_53 Mask@@41 o_23@@9 f_25@@48) (= (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@25) o_23@@9 f_25@@48) (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| ExhaleHeap@@18) o_23@@9 f_25@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@41) (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| ExhaleHeap@@18) o_23@@9 f_25@@48))
)))
(assert (forall ((s0@@1 T@Seq_21259) (s1@@1 T@Seq_21259) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_21259|)) (not (= s1@@1 |Seq#Empty_21259|))) (= (|Seq#Length_21259| (|Seq#Append_21259| s0@@1 s1@@1)) (+ (|Seq#Length_21259| s0@@1) (|Seq#Length_21259| s1@@1))))
 :qid |stdinbpl.258:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_21259| (|Seq#Append_21259| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3131) (s1@@2 T@Seq_3131) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3131|)) (not (= s1@@2 |Seq#Empty_3131|))) (= (|Seq#Length_3131| (|Seq#Append_3131| s0@@2 s1@@2)) (+ (|Seq#Length_3131| s0@@2) (|Seq#Length_3131| s1@@2))))
 :qid |stdinbpl.258:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3131| (|Seq#Append_3131| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_20346_20351) ) (! (= (select (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_20333_12975) ) (! (= (select (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_20333_53) ) (! (= (select (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_20333_20334) ) (! (= (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_20333_3253) ) (! (= (select (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_12961_20351) ) (! (= (select (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_12974_12975) ) (! (= (select (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_12961_53) ) (! (= (select (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_12961_20334) ) (! (= (select (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_19023_3253) ) (! (= (select (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((s@@15 T@Seq_21259) (t@@1 T@Seq_21259) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_21259| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_21259| s@@15)) (|Seq#Length_21259| s@@15)) n@@15) (= (|Seq#Drop_21259| (|Seq#Append_21259| s@@15 t@@1) n@@15) (|Seq#Drop_21259| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_21259| s@@15))))))
 :qid |stdinbpl.415:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_21259| (|Seq#Append_21259| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3131) (t@@2 T@Seq_3131) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3131| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3131| s@@16)) (|Seq#Length_3131| s@@16)) n@@16) (= (|Seq#Drop_3131| (|Seq#Append_3131| s@@16 t@@2) n@@16) (|Seq#Drop_3131| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3131| s@@16))))))
 :qid |stdinbpl.415:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3131| (|Seq#Append_3131| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_12901) (r_1@@8 T@Ref) (i@@6 Int) ) (!  (and (= (fun Heap@@26 r_1@@8 i@@6) (|fun'| Heap@@26 r_1@@8 i@@6)) (dummyFunction_8390 (|fun#triggerStateless| r_1@@8 i@@6)))
 :qid |stdinbpl.607:15|
 :skolemid |58|
 :pattern ( (fun Heap@@26 r_1@@8 i@@6))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12922) (SummandMask1 T@PolymorphicMapType_12922) (SummandMask2 T@PolymorphicMapType_12922) (o_2@@39 T@Ref) (f_4@@39 T@Field_20346_20351) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12922) (SummandMask1@@0 T@PolymorphicMapType_12922) (SummandMask2@@0 T@PolymorphicMapType_12922) (o_2@@40 T@Ref) (f_4@@40 T@Field_20333_12975) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12922) (SummandMask1@@1 T@PolymorphicMapType_12922) (SummandMask2@@1 T@PolymorphicMapType_12922) (o_2@@41 T@Ref) (f_4@@41 T@Field_20333_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12922) (SummandMask1@@2 T@PolymorphicMapType_12922) (SummandMask2@@2 T@PolymorphicMapType_12922) (o_2@@42 T@Ref) (f_4@@42 T@Field_20333_20334) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_12922) (SummandMask1@@3 T@PolymorphicMapType_12922) (SummandMask2@@3 T@PolymorphicMapType_12922) (o_2@@43 T@Ref) (f_4@@43 T@Field_20333_3253) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_12922) (SummandMask1@@4 T@PolymorphicMapType_12922) (SummandMask2@@4 T@PolymorphicMapType_12922) (o_2@@44 T@Ref) (f_4@@44 T@Field_12961_20351) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_12922) (SummandMask1@@5 T@PolymorphicMapType_12922) (SummandMask2@@5 T@PolymorphicMapType_12922) (o_2@@45 T@Ref) (f_4@@45 T@Field_12974_12975) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_12922) (SummandMask1@@6 T@PolymorphicMapType_12922) (SummandMask2@@6 T@PolymorphicMapType_12922) (o_2@@46 T@Ref) (f_4@@46 T@Field_12961_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_12922) (SummandMask1@@7 T@PolymorphicMapType_12922) (SummandMask2@@7 T@PolymorphicMapType_12922) (o_2@@47 T@Ref) (f_4@@47 T@Field_12961_20334) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_12922) (SummandMask1@@8 T@PolymorphicMapType_12922) (SummandMask2@@8 T@PolymorphicMapType_12922) (o_2@@48 T@Ref) (f_4@@48 T@Field_19023_3253) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3131| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3131| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.580:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3131| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_21259) (b T@Seq_21259) ) (!  (=> (|Seq#Equal_21259| a b) (= a b))
 :qid |stdinbpl.553:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_21259| a b))
)))
(assert (forall ((a@@0 T@Seq_3131) (b@@0 T@Seq_3131) ) (!  (=> (|Seq#Equal_3131| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.553:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3131| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_21259) (i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_21259| s@@17))) (|Seq#ContainsTrigger_8450| s@@17 (|Seq#Index_21259| s@@17 i@@7)))
 :qid |stdinbpl.446:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_21259| s@@17 i@@7))
)))
(assert (forall ((s@@18 T@Seq_3131) (i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length_3131| s@@18))) (|Seq#ContainsTrigger_3131| s@@18 (|Seq#Index_3131| s@@18 i@@8)))
 :qid |stdinbpl.446:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3131| s@@18 i@@8))
)))
(assert (forall ((s0@@3 T@Seq_21259) (s1@@3 T@Seq_21259) ) (!  (and (=> (= s0@@3 |Seq#Empty_21259|) (= (|Seq#Append_21259| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_21259|) (= (|Seq#Append_21259| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.264:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_21259| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3131) (s1@@4 T@Seq_3131) ) (!  (and (=> (= s0@@4 |Seq#Empty_3131|) (= (|Seq#Append_3131| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3131|) (= (|Seq#Append_3131| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.264:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3131| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_21259| (|Seq#Singleton_21259| t@@3) 0) t@@3)
 :qid |stdinbpl.268:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_21259| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3131| (|Seq#Singleton_3131| t@@4) 0) t@@4)
 :qid |stdinbpl.268:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3131| t@@4))
)))
(assert (forall ((s@@19 T@Seq_21259) ) (! (<= 0 (|Seq#Length_21259| s@@19))
 :qid |stdinbpl.247:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_21259| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3131) ) (! (<= 0 (|Seq#Length_3131| s@@20))
 :qid |stdinbpl.247:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3131| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_21259) (s1@@5 T@Seq_21259) ) (!  (=> (|Seq#Equal_21259| s0@@5 s1@@5) (and (= (|Seq#Length_21259| s0@@5) (|Seq#Length_21259| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_21259| s0@@5))) (= (|Seq#Index_21259| s0@@5 j@@6) (|Seq#Index_21259| s1@@5 j@@6)))
 :qid |stdinbpl.543:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_21259| s0@@5 j@@6))
 :pattern ( (|Seq#Index_21259| s1@@5 j@@6))
))))
 :qid |stdinbpl.540:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_21259| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3131) (s1@@6 T@Seq_3131) ) (!  (=> (|Seq#Equal_3131| s0@@6 s1@@6) (and (= (|Seq#Length_3131| s0@@6) (|Seq#Length_3131| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3131| s0@@6))) (= (|Seq#Index_3131| s0@@6 j@@7) (|Seq#Index_3131| s1@@6 j@@7)))
 :qid |stdinbpl.543:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3131| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3131| s1@@6 j@@7))
))))
 :qid |stdinbpl.540:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3131| s0@@6 s1@@6))
)))
(assert (forall ((r_1@@9 T@Ref) ) (! (= (getPredWandId_8423_8424 (pred_3 r_1@@9)) 0)
 :qid |stdinbpl.717:15|
 :skolemid |68|
 :pattern ( (pred_3 r_1@@9))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_21259| (|Seq#Singleton_21259| t@@5)) 1)
 :qid |stdinbpl.255:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_21259| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3131| (|Seq#Singleton_3131| t@@6)) 1)
 :qid |stdinbpl.255:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3131| t@@6))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_12901) (Mask@@42 T@PolymorphicMapType_12922) (r_1@@10 T@Ref) ) (!  (=> (state Heap@@27 Mask@@42) (= (|fun2'| Heap@@27 r_1@@10) (|fun2#frame| EmptyFrame r_1@@10)))
 :qid |stdinbpl.675:15|
 :skolemid |65|
 :pattern ( (state Heap@@27 Mask@@42) (|fun2'| Heap@@27 r_1@@10))
)))
(assert (forall ((s@@21 T@Seq_21259) (t@@7 T@Seq_21259) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_21259| s@@21))) (= (|Seq#Take_21259| (|Seq#Append_21259| s@@21 t@@7) n@@17) (|Seq#Take_21259| s@@21 n@@17)))
 :qid |stdinbpl.397:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_21259| (|Seq#Append_21259| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3131) (t@@8 T@Seq_3131) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3131| s@@22))) (= (|Seq#Take_3131| (|Seq#Append_3131| s@@22 t@@8) n@@18) (|Seq#Take_3131| s@@22 n@@18)))
 :qid |stdinbpl.397:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3131| (|Seq#Append_3131| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_21259) (i@@9 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@9) (< i@@9 (|Seq#Length_21259| s@@23))) (= (|Seq#Length_21259| (|Seq#Update_21259| s@@23 i@@9 v@@2)) (|Seq#Length_21259| s@@23)))
 :qid |stdinbpl.296:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_21259| (|Seq#Update_21259| s@@23 i@@9 v@@2)))
 :pattern ( (|Seq#Length_21259| s@@23) (|Seq#Update_21259| s@@23 i@@9 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3131) (i@@10 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3131| s@@24))) (= (|Seq#Length_3131| (|Seq#Update_3131| s@@24 i@@10 v@@3)) (|Seq#Length_3131| s@@24)))
 :qid |stdinbpl.296:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3131| (|Seq#Update_3131| s@@24 i@@10 v@@3)))
 :pattern ( (|Seq#Length_3131| s@@24) (|Seq#Update_3131| s@@24 i@@10 v@@3))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_12901) (o_27 T@Ref) (f_30 T@Field_20346_20351) (v@@4 T@PolymorphicMapType_13450) ) (! (succHeap Heap@@28 (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@28) (store (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@28) o_27 f_30 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@28) (store (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@28) o_27 f_30 v@@4)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_12901) (o_27@@0 T@Ref) (f_30@@0 T@Field_20333_3253) (v@@5 Int) ) (! (succHeap Heap@@29 (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@29) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@29) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@29) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@29) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@29) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@29) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@29) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@29) (store (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@29) o_27@@0 f_30@@0 v@@5) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@29) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@29) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@29) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@29) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@29) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@29) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@29) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@29) (store (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@29) o_27@@0 f_30@@0 v@@5) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_12901) (o_27@@1 T@Ref) (f_30@@1 T@Field_20333_20334) (v@@6 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@30) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@30) (store (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@30) o_27@@1 f_30@@1 v@@6) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@30) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@30) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@30) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@30) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@30) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@30) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@30) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@30) (store (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@30) o_27@@1 f_30@@1 v@@6) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@30) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@30) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@30) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@30) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@30) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@30) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_12901) (o_27@@2 T@Ref) (f_30@@2 T@Field_20333_12975) (v@@7 T@Ref) ) (! (succHeap Heap@@31 (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@31) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@31) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@31) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@31) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@31) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@31) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@31) (store (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@31) o_27@@2 f_30@@2 v@@7) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@31) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@31) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@31) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@31) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@31) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@31) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@31) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@31) (store (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@31) o_27@@2 f_30@@2 v@@7) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@31) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_12901) (o_27@@3 T@Ref) (f_30@@3 T@Field_20333_53) (v@@8 Bool) ) (! (succHeap Heap@@32 (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@32) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@32) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@32) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@32) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@32) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@32) (store (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@32) o_27@@3 f_30@@3 v@@8) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@32) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@32) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@32) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@32) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@32) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@32) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@32) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@32) (store (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@32) o_27@@3 f_30@@3 v@@8) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@32) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@32) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_12901) (o_27@@4 T@Ref) (f_30@@4 T@Field_12961_20351) (v@@9 T@PolymorphicMapType_13450) ) (! (succHeap Heap@@33 (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@33) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@33) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@33) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@33) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@33) (store (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@33) o_27@@4 f_30@@4 v@@9) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@33) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@33) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@33) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@33) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@33) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@33) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@33) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@33) (store (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@33) o_27@@4 f_30@@4 v@@9) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@33) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@33) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@33) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_12901) (o_27@@5 T@Ref) (f_30@@5 T@Field_19023_3253) (v@@10 Int) ) (! (succHeap Heap@@34 (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@34) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@34) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@34) (store (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@34) o_27@@5 f_30@@5 v@@10) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@34) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@34) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@34) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@34) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@34) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@34) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@34) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@34) (store (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@34) o_27@@5 f_30@@5 v@@10) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@34) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@34) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@34) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@34) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@34) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_12901) (o_27@@6 T@Ref) (f_30@@6 T@Field_12961_20334) (v@@11 T@FrameType) ) (! (succHeap Heap@@35 (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@35) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@35) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@35) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@35) (store (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@35) o_27@@6 f_30@@6 v@@11) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@35) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@35) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@35) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@35) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@35) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@35) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@35) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@35) (store (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@35) o_27@@6 f_30@@6 v@@11) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@35) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@35) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@35) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@35) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_12901) (o_27@@7 T@Ref) (f_30@@7 T@Field_12974_12975) (v@@12 T@Ref) ) (! (succHeap Heap@@36 (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@36) (store (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@36) o_27@@7 f_30@@7 v@@12) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@36) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@36) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@36) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@36) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@36) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@36) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@36) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@36) (store (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@36) o_27@@7 f_30@@7 v@@12) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@36) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@36) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@36) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@36) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@36) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@36) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@36) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_12901) (o_27@@8 T@Ref) (f_30@@8 T@Field_12961_53) (v@@13 Bool) ) (! (succHeap Heap@@37 (PolymorphicMapType_12901 (store (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@37) o_27@@8 f_30@@8 v@@13) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12901 (store (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@37) o_27@@8 f_30@@8 v@@13) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@37)))
)))
(assert (forall ((r_1@@11 T@Ref) ) (! (= (PredicateMaskField_8423 (pred_3 r_1@@11)) (|pred#sm| r_1@@11))
 :qid |stdinbpl.709:15|
 :skolemid |66|
 :pattern ( (PredicateMaskField_8423 (pred_3 r_1@@11)))
)))
(assert (forall ((s@@25 T@Seq_21259) (t@@9 T@Seq_21259) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_21259| s@@25))) (= (|Seq#Drop_21259| (|Seq#Append_21259| s@@25 t@@9) n@@19) (|Seq#Append_21259| (|Seq#Drop_21259| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.411:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_21259| (|Seq#Append_21259| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3131) (t@@10 T@Seq_3131) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3131| s@@26))) (= (|Seq#Drop_3131| (|Seq#Append_3131| s@@26 t@@10) n@@20) (|Seq#Append_3131| (|Seq#Drop_3131| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.411:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3131| (|Seq#Append_3131| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_21259) (n@@21 Int) (i@@11 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@11)) (< i@@11 (|Seq#Length_21259| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@11 n@@21) n@@21) i@@11) (= (|Seq#Index_21259| (|Seq#Drop_21259| s@@27 n@@21) (|Seq#Sub| i@@11 n@@21)) (|Seq#Index_21259| s@@27 i@@11))))
 :qid |stdinbpl.347:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_21259| s@@27 n@@21) (|Seq#Index_21259| s@@27 i@@11))
)))
(assert (forall ((s@@28 T@Seq_3131) (n@@22 Int) (i@@12 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@12)) (< i@@12 (|Seq#Length_3131| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@12 n@@22) n@@22) i@@12) (= (|Seq#Index_3131| (|Seq#Drop_3131| s@@28 n@@22) (|Seq#Sub| i@@12 n@@22)) (|Seq#Index_3131| s@@28 i@@12))))
 :qid |stdinbpl.347:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3131| s@@28 n@@22) (|Seq#Index_3131| s@@28 i@@12))
)))
(assert (forall ((s0@@7 T@Seq_21259) (s1@@7 T@Seq_21259) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_21259|)) (not (= s1@@7 |Seq#Empty_21259|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_21259| s0@@7))) (= (|Seq#Index_21259| (|Seq#Append_21259| s0@@7 s1@@7) n@@23) (|Seq#Index_21259| s0@@7 n@@23)))
 :qid |stdinbpl.287:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_21259| (|Seq#Append_21259| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_21259| s0@@7 n@@23) (|Seq#Append_21259| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3131) (s1@@8 T@Seq_3131) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3131|)) (not (= s1@@8 |Seq#Empty_3131|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3131| s0@@8))) (= (|Seq#Index_3131| (|Seq#Append_3131| s0@@8 s1@@8) n@@24) (|Seq#Index_3131| s0@@8 n@@24)))
 :qid |stdinbpl.287:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3131| (|Seq#Append_3131| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3131| s0@@8 n@@24) (|Seq#Append_3131| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_21259) (s1@@9 T@Seq_21259) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_21259|)) (not (= s1@@9 |Seq#Empty_21259|))) (<= 0 m)) (< m (|Seq#Length_21259| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_21259| s0@@9)) (|Seq#Length_21259| s0@@9)) m) (= (|Seq#Index_21259| (|Seq#Append_21259| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_21259| s0@@9))) (|Seq#Index_21259| s1@@9 m))))
 :qid |stdinbpl.292:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_21259| s1@@9 m) (|Seq#Append_21259| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3131) (s1@@10 T@Seq_3131) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3131|)) (not (= s1@@10 |Seq#Empty_3131|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3131| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3131| s0@@10)) (|Seq#Length_3131| s0@@10)) m@@0) (= (|Seq#Index_3131| (|Seq#Append_3131| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3131| s0@@10))) (|Seq#Index_3131| s1@@10 m@@0))))
 :qid |stdinbpl.292:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3131| s1@@10 m@@0) (|Seq#Append_3131| s0@@10 s1@@10))
)))
(assert (forall ((o_27@@9 T@Ref) (f_24 T@Field_12974_12975) (Heap@@38 T@PolymorphicMapType_12901) ) (!  (=> (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@38) o_27@@9 $allocated) (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@38) (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@38) o_27@@9 f_24) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@38) o_27@@9 f_24))
)))
(assert (forall ((s@@29 T@Seq_21259) (x@@3 T@Ref) (i@@13 Int) ) (!  (=> (and (and (<= 0 i@@13) (< i@@13 (|Seq#Length_21259| s@@29))) (= (|Seq#Index_21259| s@@29 i@@13) x@@3)) (|Seq#Contains_8450| s@@29 x@@3))
 :qid |stdinbpl.444:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_8450| s@@29 x@@3) (|Seq#Index_21259| s@@29 i@@13))
)))
(assert (forall ((s@@30 T@Seq_3131) (x@@4 Int) (i@@14 Int) ) (!  (=> (and (and (<= 0 i@@14) (< i@@14 (|Seq#Length_3131| s@@30))) (= (|Seq#Index_3131| s@@30 i@@14) x@@4)) (|Seq#Contains_3131| s@@30 x@@4))
 :qid |stdinbpl.444:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3131| s@@30 x@@4) (|Seq#Index_3131| s@@30 i@@14))
)))
(assert (forall ((s0@@11 T@Seq_21259) (s1@@11 T@Seq_21259) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_21259| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_21259| s0@@11 s1@@11))) (not (= (|Seq#Length_21259| s0@@11) (|Seq#Length_21259| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_21259| s0@@11 s1@@11))) (= (|Seq#Length_21259| s0@@11) (|Seq#Length_21259| s1@@11))) (= (|Seq#SkolemDiff_21259| s0@@11 s1@@11) (|Seq#SkolemDiff_21259| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_21259| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_21259| s0@@11 s1@@11) (|Seq#Length_21259| s0@@11))) (not (= (|Seq#Index_21259| s0@@11 (|Seq#SkolemDiff_21259| s0@@11 s1@@11)) (|Seq#Index_21259| s1@@11 (|Seq#SkolemDiff_21259| s0@@11 s1@@11))))))
 :qid |stdinbpl.548:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_21259| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3131) (s1@@12 T@Seq_3131) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3131| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3131| s0@@12 s1@@12))) (not (= (|Seq#Length_3131| s0@@12) (|Seq#Length_3131| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3131| s0@@12 s1@@12))) (= (|Seq#Length_3131| s0@@12) (|Seq#Length_3131| s1@@12))) (= (|Seq#SkolemDiff_3131| s0@@12 s1@@12) (|Seq#SkolemDiff_3131| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3131| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3131| s0@@12 s1@@12) (|Seq#Length_3131| s0@@12))) (not (= (|Seq#Index_3131| s0@@12 (|Seq#SkolemDiff_3131| s0@@12 s1@@12)) (|Seq#Index_3131| s1@@12 (|Seq#SkolemDiff_3131| s0@@12 s1@@12))))))
 :qid |stdinbpl.548:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3131| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_20333_20334) (v_1@@1 T@FrameType) (q T@Field_20333_20334) (w@@1 T@FrameType) (r T@Field_20333_20334) (u T@FrameType) ) (!  (=> (and (InsidePredicate_20333_20333 p@@2 v_1@@1 q w@@1) (InsidePredicate_20333_20333 q w@@1 r u)) (InsidePredicate_20333_20333 p@@2 v_1@@1 r u))
 :qid |stdinbpl.215:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20333_20333 p@@2 v_1@@1 q w@@1) (InsidePredicate_20333_20333 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_20333_20334) (v_1@@2 T@FrameType) (q@@0 T@Field_20333_20334) (w@@2 T@FrameType) (r@@0 T@Field_12961_20334) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_20333_20333 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_20333_12961 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_20333_12961 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.215:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20333_20333 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_20333_12961 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_20333_20334) (v_1@@3 T@FrameType) (q@@1 T@Field_12961_20334) (w@@3 T@FrameType) (r@@1 T@Field_20333_20334) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_20333_12961 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_12961_20333 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_20333_20333 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.215:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20333_12961 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_12961_20333 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_20333_20334) (v_1@@4 T@FrameType) (q@@2 T@Field_12961_20334) (w@@4 T@FrameType) (r@@2 T@Field_12961_20334) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_20333_12961 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_12961_12961 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_20333_12961 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.215:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20333_12961 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_12961_12961 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_12961_20334) (v_1@@5 T@FrameType) (q@@3 T@Field_20333_20334) (w@@5 T@FrameType) (r@@3 T@Field_20333_20334) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_12961_20333 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_20333_20333 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_12961_20333 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.215:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12961_20333 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_20333_20333 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_12961_20334) (v_1@@6 T@FrameType) (q@@4 T@Field_20333_20334) (w@@6 T@FrameType) (r@@4 T@Field_12961_20334) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_12961_20333 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_20333_12961 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_12961_12961 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.215:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12961_20333 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_20333_12961 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_12961_20334) (v_1@@7 T@FrameType) (q@@5 T@Field_12961_20334) (w@@7 T@FrameType) (r@@5 T@Field_20333_20334) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_12961_12961 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_12961_20333 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_12961_20333 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.215:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12961_12961 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_12961_20333 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_12961_20334) (v_1@@8 T@FrameType) (q@@6 T@Field_12961_20334) (w@@8 T@FrameType) (r@@6 T@Field_12961_20334) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_12961_12961 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_12961_12961 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_12961_12961 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.215:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12961_12961 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_12961_12961 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_12901) (Mask@@43 T@PolymorphicMapType_12922) (r_1@@12 T@Ref) ) (!  (=> (and (state Heap@@39 Mask@@43) (< AssumeFunctionsAbove 1)) (= (fun2 Heap@@39 r_1@@12) r_1@@12))
 :qid |stdinbpl.668:15|
 :skolemid |64|
 :pattern ( (state Heap@@39 Mask@@43) (fun2 Heap@@39 r_1@@12))
)))
(assert (forall ((s@@31 T@Seq_21259) ) (!  (=> (= (|Seq#Length_21259| s@@31) 0) (= s@@31 |Seq#Empty_21259|))
 :qid |stdinbpl.251:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_21259| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3131) ) (!  (=> (= (|Seq#Length_3131| s@@32) 0) (= s@@32 |Seq#Empty_3131|))
 :qid |stdinbpl.251:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3131| s@@32))
)))
(assert (forall ((s@@33 T@Seq_21259) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_21259| s@@33 n@@25) |Seq#Empty_21259|))
 :qid |stdinbpl.427:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_21259| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3131) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3131| s@@34 n@@26) |Seq#Empty_3131|))
 :qid |stdinbpl.427:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3131| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun xs () T@Seq_21259)
(declare-fun x_10 () T@Ref)
(declare-fun neverTriggered2 (T@Ref) Bool)
(declare-fun PostHeap@0 () T@PolymorphicMapType_12901)
(declare-fun i@@15 () Int)
(declare-fun Heap@@40 () T@PolymorphicMapType_12901)
(declare-fun QPMask@0 () T@PolymorphicMapType_12922)
(declare-fun neverTriggered3 (T@Ref) Bool)
(declare-fun x_8_1 () T@Ref)
(declare-fun neverTriggered1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun getPredWandId_8364_3253 (T@Field_19023_3253) Int)
(declare-fun getPredWandId_8364_8424 (T@Field_12961_20334) Int)
(declare-fun getPredWandId_8364_53 (T@Field_12961_53) Int)
(declare-fun getPredWandId_8364_12975 (T@Field_12974_12975) Int)
(declare-fun getPredWandId_8364_60718 (T@Field_12961_20351) Int)
(declare-fun getPredWandId_8423_3253 (T@Field_20333_3253) Int)
(declare-fun getPredWandId_8423_53 (T@Field_20333_53) Int)
(declare-fun getPredWandId_8423_12975 (T@Field_20333_12975) Int)
(declare-fun getPredWandId_8423_61527 (T@Field_20346_20351) Int)
(declare-fun x_33 () T@Ref)
(declare-fun r_1@@13 () T@Ref)
(set-info :boogie-vc-id t3)
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
 (=> (= (ControlFlow 0 0) 23) (let ((anon27_Then_correct true))
(let ((anon10_correct true))
(let ((anon26_Then_correct  (=> (|Seq#Contains_8450| xs x_10) (and (=> (= (ControlFlow 0 18) 17) anon27_Then_correct) (=> (= (ControlFlow 0 18) 15) anon10_correct)))))
(let ((anon26_Else_correct  (=> (and (not (|Seq#Contains_8450| xs x_10)) (= (ControlFlow 0 16) 15)) anon10_correct)))
(let ((anon25_Else_correct  (=> (= (ControlFlow 0 14) (- 0 13)) (forall ((x_4 T@Ref) (x_4_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_4 x_4_1)) (|Seq#Contains_8450| xs x_4)) (|Seq#Contains_8450| xs x_4_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (fun2 PostHeap@0 x_4) (fun2 PostHeap@0 x_4_1))))
 :qid |stdinbpl.862:17|
 :skolemid |78|
 :pattern ( (neverTriggered2 x_4) (neverTriggered2 x_4_1))
)))))
(let ((anon24_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (state PostHeap@0 ZeroMask)) (and (and (=> (= (ControlFlow 0 19) 14) anon25_Else_correct) (=> (= (ControlFlow 0 19) 18) anon26_Then_correct)) (=> (= (ControlFlow 0 19) 16) anon26_Else_correct)))))
(let ((anon30_Else_correct true))
(let ((anon30_Then_correct true))
(let ((anon29_Then_correct true))
(let ((anon31_Else_correct  (=> (and (forall ((x_9_1 T@Ref) ) (! (= (fun Heap@@40 x_9_1 i@@15) (fun2 Heap@@40 x_9_1))
 :qid |stdinbpl.920:20|
 :skolemid |84|
 :pattern ( (|fun#frame| EmptyFrame x_9_1 i@@15))
 :pattern ( (|fun2#frame| EmptyFrame x_9_1))
)) (state Heap@@40 QPMask@0)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (forall ((x_6 T@Ref) (x_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_6 x_6_1)) (|Seq#Contains_8450| xs x_6)) (|Seq#Contains_8450| xs x_6_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (fun2 Heap@@40 x_6) (fun2 Heap@@40 x_6_1))))
 :qid |stdinbpl.936:17|
 :skolemid |85|
 :pattern ( (neverTriggered3 x_6) (neverTriggered3 x_6_1))
))) (=> (forall ((x_6@@0 T@Ref) (x_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_6@@0 x_6_1@@0)) (|Seq#Contains_8450| xs x_6@@0)) (|Seq#Contains_8450| xs x_6_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (fun2 Heap@@40 x_6@@0) (fun2 Heap@@40 x_6_1@@0))))
 :qid |stdinbpl.936:17|
 :skolemid |85|
 :pattern ( (neverTriggered3 x_6@@0) (neverTriggered3 x_6_1@@0))
)) (=> (= (ControlFlow 0 8) (- 0 7)) (forall ((x_6@@1 T@Ref) ) (!  (=> (|Seq#Contains_8450| xs x_6@@1) (>= (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| QPMask@0) null (pred_3 (fun2 Heap@@40 x_6@@1))) FullPerm))
 :qid |stdinbpl.943:17|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@40) null (pred_3 (|fun2#frame| EmptyFrame x_6@@1))))
 :pattern ( (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| QPMask@0) null (pred_3 (|fun2#frame| EmptyFrame x_6@@1))))
 :pattern ( (|Seq#ContainsTrigger_8450| xs x_6@@1))
 :pattern ( (|Seq#Contains_8450| xs x_6@@1))
 :pattern ( (|fun2#frame| EmptyFrame x_6@@1))
))))))))
(let ((anon31_Then_correct  (=> (= (ControlFlow 0 6) (- 0 5)) (= (fun Heap@@40 x_8_1 i@@15) (fun2 Heap@@40 x_8_1)))))
(let ((anon21_Else_correct  (and (=> (= (ControlFlow 0 20) (- 0 21)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (|Seq#Contains_8450| xs x_1)) (|Seq#Contains_8450| xs x_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (fun Heap@@40 x_1 i@@15) (fun Heap@@40 x_1_1 i@@15))))
 :qid |stdinbpl.802:17|
 :skolemid |72|
 :pattern ( (neverTriggered1 x_1) (neverTriggered1 x_1_1))
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (|Seq#Contains_8450| xs x_1@@0)) (|Seq#Contains_8450| xs x_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (fun Heap@@40 x_1@@0 i@@15) (fun Heap@@40 x_1_1@@0 i@@15))))
 :qid |stdinbpl.802:17|
 :skolemid |72|
 :pattern ( (neverTriggered1 x_1@@0) (neverTriggered1 x_1_1@@0))
)) (=> (forall ((x_1@@1 T@Ref) ) (!  (=> (and (|Seq#Contains_8450| xs x_1@@1) (< NoPerm FullPerm)) (and (= (invRecv1 (fun Heap@@40 x_1@@1 i@@15)) x_1@@1) (qpRange1 (fun Heap@@40 x_1@@1 i@@15))))
 :qid |stdinbpl.808:22|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@40) null (pred_3 (|fun#frame| EmptyFrame x_1@@1 i@@15))))
 :pattern ( (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| ZeroMask) null (pred_3 (|fun#frame| EmptyFrame x_1@@1 i@@15))))
 :pattern ( (|Seq#ContainsTrigger_8450| xs x_1@@1))
 :pattern ( (|Seq#Contains_8450| xs x_1@@1))
 :pattern ( (|fun#frame| EmptyFrame x_1@@1 i@@15))
)) (=> (and (forall ((r_1_1_1 T@Ref) ) (!  (=> (and (and (|Seq#Contains_8450| xs (invRecv1 r_1_1_1)) (< NoPerm FullPerm)) (qpRange1 r_1_1_1)) (= (fun Heap@@40 (invRecv1 r_1_1_1) i@@15) r_1_1_1))
 :qid |stdinbpl.812:22|
 :skolemid |74|
 :pattern ( (invRecv1 r_1_1_1))
)) (forall ((r_1_1_1@@0 T@Ref) ) (!  (=> (and (and (|Seq#Contains_8450| xs (invRecv1 r_1_1_1@@0)) (< NoPerm FullPerm)) (qpRange1 r_1_1_1@@0)) (and (=> (< NoPerm FullPerm) (= (fun Heap@@40 (invRecv1 r_1_1_1@@0) i@@15) r_1_1_1@@0)) (= (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| QPMask@0) null (pred_3 r_1_1_1@@0)) (+ (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| ZeroMask) null (pred_3 r_1_1_1@@0)) FullPerm))))
 :qid |stdinbpl.818:22|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| QPMask@0) null (pred_3 r_1_1_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4 T@Ref) (f_5 T@Field_19023_3253) ) (!  (=> (or (or (not (= o_4 null)) (not (IsPredicateField_8364_3253 f_5))) (not (= (getPredWandId_8364_3253 f_5) 0))) (= (select (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| ZeroMask) o_4 f_5) (select (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| QPMask@0) o_4 f_5)))
 :qid |stdinbpl.824:29|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| ZeroMask) o_4 f_5))
 :pattern ( (select (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| QPMask@0) o_4 f_5))
)) (forall ((o_4@@0 T@Ref) (f_5@@0 T@Field_12961_20334) ) (!  (=> (or (or (not (= o_4@@0 null)) (not (IsPredicateField_12961_38786 f_5@@0))) (not (= (getPredWandId_8364_8424 f_5@@0) 0))) (= (select (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| ZeroMask) o_4@@0 f_5@@0) (select (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| QPMask@0) o_4@@0 f_5@@0)))
 :qid |stdinbpl.824:29|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| ZeroMask) o_4@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| QPMask@0) o_4@@0 f_5@@0))
))) (forall ((o_4@@1 T@Ref) (f_5@@1 T@Field_12961_53) ) (!  (=> (or (or (not (= o_4@@1 null)) (not (IsPredicateField_8364_53 f_5@@1))) (not (= (getPredWandId_8364_53 f_5@@1) 0))) (= (select (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| ZeroMask) o_4@@1 f_5@@1) (select (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| QPMask@0) o_4@@1 f_5@@1)))
 :qid |stdinbpl.824:29|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| ZeroMask) o_4@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| QPMask@0) o_4@@1 f_5@@1))
))) (forall ((o_4@@2 T@Ref) (f_5@@2 T@Field_12974_12975) ) (!  (=> (or (or (not (= o_4@@2 null)) (not (IsPredicateField_8364_12975 f_5@@2))) (not (= (getPredWandId_8364_12975 f_5@@2) 0))) (= (select (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| ZeroMask) o_4@@2 f_5@@2) (select (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| QPMask@0) o_4@@2 f_5@@2)))
 :qid |stdinbpl.824:29|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| ZeroMask) o_4@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| QPMask@0) o_4@@2 f_5@@2))
))) (forall ((o_4@@3 T@Ref) (f_5@@3 T@Field_12961_20351) ) (!  (=> (or (or (not (= o_4@@3 null)) (not (IsPredicateField_8364_48584 f_5@@3))) (not (= (getPredWandId_8364_60718 f_5@@3) 0))) (= (select (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| ZeroMask) o_4@@3 f_5@@3) (select (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| QPMask@0) o_4@@3 f_5@@3)))
 :qid |stdinbpl.824:29|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| ZeroMask) o_4@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| QPMask@0) o_4@@3 f_5@@3))
))) (forall ((o_4@@4 T@Ref) (f_5@@4 T@Field_20333_3253) ) (!  (=> (or (or (not (= o_4@@4 null)) (not (IsPredicateField_8423_3253 f_5@@4))) (not (= (getPredWandId_8423_3253 f_5@@4) 0))) (= (select (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| ZeroMask) o_4@@4 f_5@@4) (select (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| QPMask@0) o_4@@4 f_5@@4)))
 :qid |stdinbpl.824:29|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| ZeroMask) o_4@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| QPMask@0) o_4@@4 f_5@@4))
))) (forall ((o_4@@5 T@Ref) (f_5@@5 T@Field_20333_20334) ) (!  (=> (or (or (not (= o_4@@5 null)) (not (IsPredicateField_8423_8424 f_5@@5))) (not (= (getPredWandId_8423_8424 f_5@@5) 0))) (= (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| ZeroMask) o_4@@5 f_5@@5) (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| QPMask@0) o_4@@5 f_5@@5)))
 :qid |stdinbpl.824:29|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| ZeroMask) o_4@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| QPMask@0) o_4@@5 f_5@@5))
))) (forall ((o_4@@6 T@Ref) (f_5@@6 T@Field_20333_53) ) (!  (=> (or (or (not (= o_4@@6 null)) (not (IsPredicateField_8423_53 f_5@@6))) (not (= (getPredWandId_8423_53 f_5@@6) 0))) (= (select (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| ZeroMask) o_4@@6 f_5@@6) (select (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| QPMask@0) o_4@@6 f_5@@6)))
 :qid |stdinbpl.824:29|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| ZeroMask) o_4@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| QPMask@0) o_4@@6 f_5@@6))
))) (forall ((o_4@@7 T@Ref) (f_5@@7 T@Field_20333_12975) ) (!  (=> (or (or (not (= o_4@@7 null)) (not (IsPredicateField_8423_12975 f_5@@7))) (not (= (getPredWandId_8423_12975 f_5@@7) 0))) (= (select (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| ZeroMask) o_4@@7 f_5@@7) (select (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| QPMask@0) o_4@@7 f_5@@7)))
 :qid |stdinbpl.824:29|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| ZeroMask) o_4@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| QPMask@0) o_4@@7 f_5@@7))
))) (forall ((o_4@@8 T@Ref) (f_5@@8 T@Field_20346_20351) ) (!  (=> (or (or (not (= o_4@@8 null)) (not (IsPredicateField_8423_49415 f_5@@8))) (not (= (getPredWandId_8423_61527 f_5@@8) 0))) (= (select (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| ZeroMask) o_4@@8 f_5@@8) (select (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| QPMask@0) o_4@@8 f_5@@8)))
 :qid |stdinbpl.824:29|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| ZeroMask) o_4@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| QPMask@0) o_4@@8 f_5@@8))
))) (forall ((r_1_1_1@@1 T@Ref) ) (!  (=> (not (and (and (|Seq#Contains_8450| xs (invRecv1 r_1_1_1@@1)) (< NoPerm FullPerm)) (qpRange1 r_1_1_1@@1))) (= (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| QPMask@0) null (pred_3 r_1_1_1@@1)) (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| ZeroMask) null (pred_3 r_1_1_1@@1))))
 :qid |stdinbpl.828:22|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| QPMask@0) null (pred_3 r_1_1_1@@1)))
))) (and (state Heap@@40 QPMask@0) (state Heap@@40 QPMask@0))) (and (and (and (and (and (=> (= (ControlFlow 0 20) 19) anon24_Then_correct) (=> (= (ControlFlow 0 20) 6) anon31_Then_correct)) (=> (= (ControlFlow 0 20) 8) anon31_Else_correct)) (=> (= (ControlFlow 0 20) 10) anon29_Then_correct)) (=> (= (ControlFlow 0 20) 11) anon30_Then_correct)) (=> (= (ControlFlow 0 20) 12) anon30_Else_correct)))))))))
(let ((anon23_Then_correct true))
(let ((anon4_correct true))
(let ((anon22_Then_correct  (=> (|Seq#Contains_8450| xs x_33) (and (=> (= (ControlFlow 0 4) 3) anon23_Then_correct) (=> (= (ControlFlow 0 4) 1) anon4_correct)))))
(let ((anon22_Else_correct  (=> (and (not (|Seq#Contains_8450| xs x_33)) (= (ControlFlow 0 2) 1)) anon4_correct)))
(let ((anon0_correct  (=> (state Heap@@40 ZeroMask) (=> (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@40) r_1@@13 $allocated) (state Heap@@40 ZeroMask))) (and (and (=> (= (ControlFlow 0 22) 20) anon21_Else_correct) (=> (= (ControlFlow 0 22) 4) anon22_Then_correct)) (=> (= (ControlFlow 0 22) 2) anon22_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 23) 22) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))
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
(declare-sort T@Field_12961_53 0)
(declare-sort T@Field_12974_12975 0)
(declare-sort T@Field_20333_20334 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_19023_3253 0)
(declare-sort T@Field_12961_20334 0)
(declare-sort T@Field_12961_20351 0)
(declare-sort T@Field_20333_53 0)
(declare-sort T@Field_20333_12975 0)
(declare-sort T@Field_20333_3253 0)
(declare-sort T@Field_20346_20351 0)
(declare-datatypes ((T@PolymorphicMapType_12922 0)) (((PolymorphicMapType_12922 (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| (Array T@Ref T@Field_19023_3253 Real)) (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| (Array T@Ref T@Field_20333_20334 Real)) (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| (Array T@Ref T@Field_12961_20334 Real)) (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| (Array T@Ref T@Field_12961_53 Real)) (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| (Array T@Ref T@Field_12974_12975 Real)) (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| (Array T@Ref T@Field_12961_20351 Real)) (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| (Array T@Ref T@Field_20333_3253 Real)) (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| (Array T@Ref T@Field_20333_53 Real)) (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| (Array T@Ref T@Field_20333_12975 Real)) (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| (Array T@Ref T@Field_20346_20351 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13450 0)) (((PolymorphicMapType_13450 (|PolymorphicMapType_13450_12961_53#PolymorphicMapType_13450| (Array T@Ref T@Field_12961_53 Bool)) (|PolymorphicMapType_13450_12961_12975#PolymorphicMapType_13450| (Array T@Ref T@Field_12974_12975 Bool)) (|PolymorphicMapType_13450_12961_3253#PolymorphicMapType_13450| (Array T@Ref T@Field_19023_3253 Bool)) (|PolymorphicMapType_13450_12961_20334#PolymorphicMapType_13450| (Array T@Ref T@Field_12961_20334 Bool)) (|PolymorphicMapType_13450_12961_40270#PolymorphicMapType_13450| (Array T@Ref T@Field_12961_20351 Bool)) (|PolymorphicMapType_13450_20333_53#PolymorphicMapType_13450| (Array T@Ref T@Field_20333_53 Bool)) (|PolymorphicMapType_13450_20333_12975#PolymorphicMapType_13450| (Array T@Ref T@Field_20333_12975 Bool)) (|PolymorphicMapType_13450_20333_3253#PolymorphicMapType_13450| (Array T@Ref T@Field_20333_3253 Bool)) (|PolymorphicMapType_13450_20333_20334#PolymorphicMapType_13450| (Array T@Ref T@Field_20333_20334 Bool)) (|PolymorphicMapType_13450_20333_41318#PolymorphicMapType_13450| (Array T@Ref T@Field_20346_20351 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12901 0)) (((PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| (Array T@Ref T@Field_12961_53 Bool)) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| (Array T@Ref T@Field_12974_12975 T@Ref)) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| (Array T@Ref T@Field_20333_20334 T@FrameType)) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| (Array T@Ref T@Field_19023_3253 Int)) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| (Array T@Ref T@Field_12961_20334 T@FrameType)) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| (Array T@Ref T@Field_12961_20351 T@PolymorphicMapType_13450)) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| (Array T@Ref T@Field_20333_53 Bool)) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| (Array T@Ref T@Field_20333_12975 T@Ref)) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| (Array T@Ref T@Field_20333_3253 Int)) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| (Array T@Ref T@Field_20346_20351 T@PolymorphicMapType_13450)) ) ) ))
(declare-fun $allocated () T@Field_12961_53)
(declare-fun f_7 () T@Field_19023_3253)
(declare-fun g () T@Field_19023_3253)
(declare-sort T@Seq_21259 0)
(declare-fun |Seq#Length_21259| (T@Seq_21259) Int)
(declare-fun |Seq#Drop_21259| (T@Seq_21259 Int) T@Seq_21259)
(declare-sort T@Seq_3131 0)
(declare-fun |Seq#Length_3131| (T@Seq_3131) Int)
(declare-fun |Seq#Drop_3131| (T@Seq_3131 Int) T@Seq_3131)
(declare-fun succHeap (T@PolymorphicMapType_12901 T@PolymorphicMapType_12901) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_12901 T@PolymorphicMapType_12901) Bool)
(declare-fun state (T@PolymorphicMapType_12901 T@PolymorphicMapType_12922) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_12922) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_13450)
(declare-fun |fun'| (T@PolymorphicMapType_12901 T@Ref Int) T@Ref)
(declare-fun dummyFunction_8390 (T@Ref) Bool)
(declare-fun |fun#triggerStateless| (T@Ref Int) T@Ref)
(declare-fun |Seq#Index_21259| (T@Seq_21259 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3131| (T@Seq_3131 Int) Int)
(declare-fun |fun#frame| (T@FrameType T@Ref Int) T@Ref)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |Seq#Empty_21259| () T@Seq_21259)
(declare-fun |Seq#Empty_3131| () T@Seq_3131)
(declare-fun pred_3 (T@Ref) T@Field_20333_20334)
(declare-fun IsPredicateField_8423_8424 (T@Field_20333_20334) Bool)
(declare-fun |fun2'| (T@PolymorphicMapType_12901 T@Ref) T@Ref)
(declare-fun |fun2#triggerStateless| (T@Ref) T@Ref)
(declare-fun |pred#trigger_8423| (T@PolymorphicMapType_12901 T@Field_20333_20334) Bool)
(declare-fun |pred#everUsed_8423| (T@Field_20333_20334) Bool)
(declare-fun |Seq#Update_21259| (T@Seq_21259 Int T@Ref) T@Seq_21259)
(declare-fun |Seq#Update_3131| (T@Seq_3131 Int Int) T@Seq_3131)
(declare-fun |Seq#Take_21259| (T@Seq_21259 Int) T@Seq_21259)
(declare-fun |Seq#Take_3131| (T@Seq_3131 Int) T@Seq_3131)
(declare-fun |Seq#Contains_3131| (T@Seq_3131 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3131)
(declare-fun |Seq#Contains_8450| (T@Seq_21259 T@Ref) Bool)
(declare-fun |Seq#Skolem_8450| (T@Seq_21259 T@Ref) Int)
(declare-fun |Seq#Skolem_3131| (T@Seq_3131 Int) Int)
(declare-fun fun2 (T@PolymorphicMapType_12901 T@Ref) T@Ref)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_12901 T@PolymorphicMapType_12901 T@PolymorphicMapType_12922) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_8423 (T@Field_20333_20334) T@Field_20346_20351)
(declare-fun HasDirectPerm_20333_20334 (T@PolymorphicMapType_12922 T@Ref T@Field_20333_20334) Bool)
(declare-fun IsPredicateField_12961_38786 (T@Field_12961_20334) Bool)
(declare-fun PredicateMaskField_12961 (T@Field_12961_20334) T@Field_12961_20351)
(declare-fun HasDirectPerm_12961_20334 (T@PolymorphicMapType_12922 T@Ref T@Field_12961_20334) Bool)
(declare-fun IsWandField_20333_42483 (T@Field_20333_20334) Bool)
(declare-fun WandMaskField_20333 (T@Field_20333_20334) T@Field_20346_20351)
(declare-fun IsWandField_12961_42126 (T@Field_12961_20334) Bool)
(declare-fun WandMaskField_12961 (T@Field_12961_20334) T@Field_12961_20351)
(declare-fun |Seq#Singleton_21259| (T@Ref) T@Seq_21259)
(declare-fun |Seq#Singleton_3131| (Int) T@Seq_3131)
(declare-fun |pred#sm| (T@Ref) T@Field_20346_20351)
(declare-fun |Seq#Append_21259| (T@Seq_21259 T@Seq_21259) T@Seq_21259)
(declare-fun |Seq#Append_3131| (T@Seq_3131 T@Seq_3131) T@Seq_3131)
(declare-fun fun (T@PolymorphicMapType_12901 T@Ref Int) T@Ref)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun dummyHeap () T@PolymorphicMapType_12901)
(declare-fun ZeroMask () T@PolymorphicMapType_12922)
(declare-fun InsidePredicate_20333_20333 (T@Field_20333_20334 T@FrameType T@Field_20333_20334 T@FrameType) Bool)
(declare-fun InsidePredicate_12961_12961 (T@Field_12961_20334 T@FrameType T@Field_12961_20334 T@FrameType) Bool)
(declare-fun IsPredicateField_8364_3253 (T@Field_19023_3253) Bool)
(declare-fun IsWandField_8364_3253 (T@Field_19023_3253) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8423_49415 (T@Field_20346_20351) Bool)
(declare-fun IsWandField_8423_49431 (T@Field_20346_20351) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8423_12975 (T@Field_20333_12975) Bool)
(declare-fun IsWandField_8423_12975 (T@Field_20333_12975) Bool)
(declare-fun IsPredicateField_8423_53 (T@Field_20333_53) Bool)
(declare-fun IsWandField_8423_53 (T@Field_20333_53) Bool)
(declare-fun IsPredicateField_8423_3253 (T@Field_20333_3253) Bool)
(declare-fun IsWandField_8423_3253 (T@Field_20333_3253) Bool)
(declare-fun IsPredicateField_8364_48584 (T@Field_12961_20351) Bool)
(declare-fun IsWandField_8364_48600 (T@Field_12961_20351) Bool)
(declare-fun IsPredicateField_8364_12975 (T@Field_12974_12975) Bool)
(declare-fun IsWandField_8364_12975 (T@Field_12974_12975) Bool)
(declare-fun IsPredicateField_8364_53 (T@Field_12961_53) Bool)
(declare-fun IsWandField_8364_53 (T@Field_12961_53) Bool)
(declare-fun HasDirectPerm_20333_38498 (T@PolymorphicMapType_12922 T@Ref T@Field_20346_20351) Bool)
(declare-fun HasDirectPerm_20333_3253 (T@PolymorphicMapType_12922 T@Ref T@Field_20333_3253) Bool)
(declare-fun HasDirectPerm_20333_12975 (T@PolymorphicMapType_12922 T@Ref T@Field_20333_12975) Bool)
(declare-fun HasDirectPerm_20333_53 (T@PolymorphicMapType_12922 T@Ref T@Field_20333_53) Bool)
(declare-fun HasDirectPerm_12961_37337 (T@PolymorphicMapType_12922 T@Ref T@Field_12961_20351) Bool)
(declare-fun HasDirectPerm_12961_3253 (T@PolymorphicMapType_12922 T@Ref T@Field_19023_3253) Bool)
(declare-fun HasDirectPerm_12961_12975 (T@PolymorphicMapType_12922 T@Ref T@Field_12974_12975) Bool)
(declare-fun HasDirectPerm_12961_53 (T@PolymorphicMapType_12922 T@Ref T@Field_12961_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_12922 T@PolymorphicMapType_12922 T@PolymorphicMapType_12922) Bool)
(declare-fun |Seq#Equal_21259| (T@Seq_21259 T@Seq_21259) Bool)
(declare-fun |Seq#Equal_3131| (T@Seq_3131 T@Seq_3131) Bool)
(declare-fun |Seq#ContainsTrigger_8450| (T@Seq_21259 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3131| (T@Seq_3131 Int) Bool)
(declare-fun getPredWandId_8423_8424 (T@Field_20333_20334) Int)
(declare-fun |fun2#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun |Seq#SkolemDiff_21259| (T@Seq_21259 T@Seq_21259) Int)
(declare-fun |Seq#SkolemDiff_3131| (T@Seq_3131 T@Seq_3131) Int)
(declare-fun InsidePredicate_20333_12961 (T@Field_20333_20334 T@FrameType T@Field_12961_20334 T@FrameType) Bool)
(declare-fun InsidePredicate_12961_20333 (T@Field_12961_20334 T@FrameType T@Field_20333_20334 T@FrameType) Bool)
(assert (distinct f_7 g)
)
(assert (forall ((s T@Seq_21259) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_21259| s)) (= (|Seq#Length_21259| (|Seq#Drop_21259| s n)) (- (|Seq#Length_21259| s) n))) (=> (< (|Seq#Length_21259| s) n) (= (|Seq#Length_21259| (|Seq#Drop_21259| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_21259| (|Seq#Drop_21259| s n)) (|Seq#Length_21259| s))))
 :qid |stdinbpl.322:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_21259| (|Seq#Drop_21259| s n)))
 :pattern ( (|Seq#Length_21259| s) (|Seq#Drop_21259| s n))
)))
(assert (forall ((s@@0 T@Seq_3131) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3131| s@@0)) (= (|Seq#Length_3131| (|Seq#Drop_3131| s@@0 n@@0)) (- (|Seq#Length_3131| s@@0) n@@0))) (=> (< (|Seq#Length_3131| s@@0) n@@0) (= (|Seq#Length_3131| (|Seq#Drop_3131| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3131| (|Seq#Drop_3131| s@@0 n@@0)) (|Seq#Length_3131| s@@0))))
 :qid |stdinbpl.322:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3131| (|Seq#Drop_3131| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3131| s@@0) (|Seq#Drop_3131| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_12901) (Heap1 T@PolymorphicMapType_12901) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_12901) (Mask T@PolymorphicMapType_12922) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_12901) (Heap1@@0 T@PolymorphicMapType_12901) (Heap2 T@PolymorphicMapType_12901) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_20346_20351) ) (!  (not (select (|PolymorphicMapType_13450_20333_41318#PolymorphicMapType_13450| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13450_20333_41318#PolymorphicMapType_13450| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_20333_20334) ) (!  (not (select (|PolymorphicMapType_13450_20333_20334#PolymorphicMapType_13450| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13450_20333_20334#PolymorphicMapType_13450| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_20333_3253) ) (!  (not (select (|PolymorphicMapType_13450_20333_3253#PolymorphicMapType_13450| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13450_20333_3253#PolymorphicMapType_13450| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_20333_12975) ) (!  (not (select (|PolymorphicMapType_13450_20333_12975#PolymorphicMapType_13450| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13450_20333_12975#PolymorphicMapType_13450| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_20333_53) ) (!  (not (select (|PolymorphicMapType_13450_20333_53#PolymorphicMapType_13450| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13450_20333_53#PolymorphicMapType_13450| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_12961_20351) ) (!  (not (select (|PolymorphicMapType_13450_12961_40270#PolymorphicMapType_13450| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13450_12961_40270#PolymorphicMapType_13450| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_12961_20334) ) (!  (not (select (|PolymorphicMapType_13450_12961_20334#PolymorphicMapType_13450| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13450_12961_20334#PolymorphicMapType_13450| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_19023_3253) ) (!  (not (select (|PolymorphicMapType_13450_12961_3253#PolymorphicMapType_13450| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13450_12961_3253#PolymorphicMapType_13450| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_12974_12975) ) (!  (not (select (|PolymorphicMapType_13450_12961_12975#PolymorphicMapType_13450| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13450_12961_12975#PolymorphicMapType_13450| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_12961_53) ) (!  (not (select (|PolymorphicMapType_13450_12961_53#PolymorphicMapType_13450| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13450_12961_53#PolymorphicMapType_13450| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_12901) (r_1 T@Ref) (i Int) ) (! (dummyFunction_8390 (|fun#triggerStateless| r_1 i))
 :qid |stdinbpl.611:15|
 :skolemid |59|
 :pattern ( (|fun'| Heap@@0 r_1 i))
)))
(assert (forall ((s@@1 T@Seq_21259) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_21259| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_21259| (|Seq#Drop_21259| s@@1 n@@1) j) (|Seq#Index_21259| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.343:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_21259| (|Seq#Drop_21259| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3131) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3131| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3131| (|Seq#Drop_3131| s@@2 n@@2) j@@0) (|Seq#Index_3131| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.343:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3131| (|Seq#Drop_3131| s@@2 n@@2) j@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_12901) (Mask@@0 T@PolymorphicMapType_12922) (r_1@@0 T@Ref) (i@@0 Int) ) (!  (=> (state Heap@@1 Mask@@0) (= (|fun'| Heap@@1 r_1@@0 i@@0) (|fun#frame| EmptyFrame r_1@@0 i@@0)))
 :qid |stdinbpl.624:15|
 :skolemid |61|
 :pattern ( (state Heap@@1 Mask@@0) (|fun'| Heap@@1 r_1@@0 i@@0))
)))
(assert (= (|Seq#Length_21259| |Seq#Empty_21259|) 0))
(assert (= (|Seq#Length_3131| |Seq#Empty_3131|) 0))
(assert (forall ((r_1@@1 T@Ref) ) (! (IsPredicateField_8423_8424 (pred_3 r_1@@1))
 :qid |stdinbpl.713:15|
 :skolemid |67|
 :pattern ( (pred_3 r_1@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12901) (r_1@@2 T@Ref) ) (! (dummyFunction_8390 (|fun2#triggerStateless| r_1@@2))
 :qid |stdinbpl.662:15|
 :skolemid |63|
 :pattern ( (|fun2'| Heap@@2 r_1@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12901) (r_1@@3 T@Ref) ) (! (|pred#everUsed_8423| (pred_3 r_1@@3))
 :qid |stdinbpl.732:15|
 :skolemid |71|
 :pattern ( (|pred#trigger_8423| Heap@@3 (pred_3 r_1@@3)))
)))
(assert (forall ((s@@3 T@Seq_21259) (i@@1 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_21259| s@@3))) (and (=> (= i@@1 n@@3) (= (|Seq#Index_21259| (|Seq#Update_21259| s@@3 i@@1 v) n@@3) v)) (=> (not (= i@@1 n@@3)) (= (|Seq#Index_21259| (|Seq#Update_21259| s@@3 i@@1 v) n@@3) (|Seq#Index_21259| s@@3 n@@3)))))
 :qid |stdinbpl.298:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_21259| (|Seq#Update_21259| s@@3 i@@1 v) n@@3))
 :pattern ( (|Seq#Index_21259| s@@3 n@@3) (|Seq#Update_21259| s@@3 i@@1 v))
)))
(assert (forall ((s@@4 T@Seq_3131) (i@@2 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3131| s@@4))) (and (=> (= i@@2 n@@4) (= (|Seq#Index_3131| (|Seq#Update_3131| s@@4 i@@2 v@@0) n@@4) v@@0)) (=> (not (= i@@2 n@@4)) (= (|Seq#Index_3131| (|Seq#Update_3131| s@@4 i@@2 v@@0) n@@4) (|Seq#Index_3131| s@@4 n@@4)))))
 :qid |stdinbpl.298:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3131| (|Seq#Update_3131| s@@4 i@@2 v@@0) n@@4))
 :pattern ( (|Seq#Index_3131| s@@4 n@@4) (|Seq#Update_3131| s@@4 i@@2 v@@0))
)))
(assert (forall ((s@@5 T@Seq_21259) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_21259| s@@5)) (= (|Seq#Length_21259| (|Seq#Take_21259| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_21259| s@@5) n@@5) (= (|Seq#Length_21259| (|Seq#Take_21259| s@@5 n@@5)) (|Seq#Length_21259| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_21259| (|Seq#Take_21259| s@@5 n@@5)) 0)))
 :qid |stdinbpl.309:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_21259| (|Seq#Take_21259| s@@5 n@@5)))
 :pattern ( (|Seq#Take_21259| s@@5 n@@5) (|Seq#Length_21259| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3131) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3131| s@@6)) (= (|Seq#Length_3131| (|Seq#Take_3131| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3131| s@@6) n@@6) (= (|Seq#Length_3131| (|Seq#Take_3131| s@@6 n@@6)) (|Seq#Length_3131| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3131| (|Seq#Take_3131| s@@6 n@@6)) 0)))
 :qid |stdinbpl.309:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3131| (|Seq#Take_3131| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3131| s@@6 n@@6) (|Seq#Length_3131| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3131| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.583:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3131| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_21259) (x T@Ref) ) (!  (=> (|Seq#Contains_8450| s@@7 x) (and (and (<= 0 (|Seq#Skolem_8450| s@@7 x)) (< (|Seq#Skolem_8450| s@@7 x) (|Seq#Length_21259| s@@7))) (= (|Seq#Index_21259| s@@7 (|Seq#Skolem_8450| s@@7 x)) x)))
 :qid |stdinbpl.441:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_8450| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3131) (x@@0 Int) ) (!  (=> (|Seq#Contains_3131| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3131| s@@8 x@@0)) (< (|Seq#Skolem_3131| s@@8 x@@0) (|Seq#Length_3131| s@@8))) (= (|Seq#Index_3131| s@@8 (|Seq#Skolem_3131| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.441:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3131| s@@8 x@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12901) (r_1@@4 T@Ref) ) (!  (and (= (fun2 Heap@@4 r_1@@4) (|fun2'| Heap@@4 r_1@@4)) (dummyFunction_8390 (|fun2#triggerStateless| r_1@@4)))
 :qid |stdinbpl.658:15|
 :skolemid |62|
 :pattern ( (fun2 Heap@@4 r_1@@4))
)))
(assert (forall ((s@@9 T@Seq_21259) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_21259| s@@9 n@@7) s@@9))
 :qid |stdinbpl.425:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_21259| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3131) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3131| s@@10 n@@8) s@@10))
 :qid |stdinbpl.425:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3131| s@@10 n@@8))
)))
(assert (forall ((i@@3 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@3 j@@1) (- i@@3 j@@1))
 :qid |stdinbpl.278:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@3 j@@1))
)))
(assert (forall ((i@@4 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@4 j@@2) (+ i@@4 j@@2))
 :qid |stdinbpl.276:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@4 j@@2))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12901) (ExhaleHeap T@PolymorphicMapType_12901) (Mask@@1 T@PolymorphicMapType_12922) (pm_f_8 T@Field_20333_20334) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_20333_20334 Mask@@1 null pm_f_8) (IsPredicateField_8423_8424 pm_f_8)) (= (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@5) null (PredicateMaskField_8423 pm_f_8)) (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| ExhaleHeap) null (PredicateMaskField_8423 pm_f_8)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (IsPredicateField_8423_8424 pm_f_8) (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| ExhaleHeap) null (PredicateMaskField_8423 pm_f_8)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_12901) (ExhaleHeap@@0 T@PolymorphicMapType_12901) (Mask@@2 T@PolymorphicMapType_12922) (pm_f_8@@0 T@Field_12961_20334) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_12961_20334 Mask@@2 null pm_f_8@@0) (IsPredicateField_12961_38786 pm_f_8@@0)) (= (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@6) null (PredicateMaskField_12961 pm_f_8@@0)) (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| ExhaleHeap@@0) null (PredicateMaskField_12961 pm_f_8@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (IsPredicateField_12961_38786 pm_f_8@@0) (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| ExhaleHeap@@0) null (PredicateMaskField_12961 pm_f_8@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12901) (ExhaleHeap@@1 T@PolymorphicMapType_12901) (Mask@@3 T@PolymorphicMapType_12922) (pm_f_8@@1 T@Field_20333_20334) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_20333_20334 Mask@@3 null pm_f_8@@1) (IsWandField_20333_42483 pm_f_8@@1)) (= (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@7) null (WandMaskField_20333 pm_f_8@@1)) (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| ExhaleHeap@@1) null (WandMaskField_20333 pm_f_8@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (IsWandField_20333_42483 pm_f_8@@1) (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| ExhaleHeap@@1) null (WandMaskField_20333 pm_f_8@@1)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12901) (ExhaleHeap@@2 T@PolymorphicMapType_12901) (Mask@@4 T@PolymorphicMapType_12922) (pm_f_8@@2 T@Field_12961_20334) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_12961_20334 Mask@@4 null pm_f_8@@2) (IsWandField_12961_42126 pm_f_8@@2)) (= (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@8) null (WandMaskField_12961 pm_f_8@@2)) (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| ExhaleHeap@@2) null (WandMaskField_12961 pm_f_8@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (IsWandField_12961_42126 pm_f_8@@2) (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| ExhaleHeap@@2) null (WandMaskField_12961 pm_f_8@@2)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_8450| (|Seq#Singleton_21259| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.566:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_8450| (|Seq#Singleton_21259| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3131| (|Seq#Singleton_3131| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.566:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3131| (|Seq#Singleton_3131| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_21259) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_21259| s@@11))) (= (|Seq#Index_21259| (|Seq#Take_21259| s@@11 n@@9) j@@3) (|Seq#Index_21259| s@@11 j@@3)))
 :qid |stdinbpl.317:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_21259| (|Seq#Take_21259| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_21259| s@@11 j@@3) (|Seq#Take_21259| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3131) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3131| s@@12))) (= (|Seq#Index_3131| (|Seq#Take_3131| s@@12 n@@10) j@@4) (|Seq#Index_3131| s@@12 j@@4)))
 :qid |stdinbpl.317:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3131| (|Seq#Take_3131| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3131| s@@12 j@@4) (|Seq#Take_3131| s@@12 n@@10))
)))
(assert (forall ((r_1@@5 T@Ref) (r2 T@Ref) ) (!  (=> (= (pred_3 r_1@@5) (pred_3 r2)) (= r_1@@5 r2))
 :qid |stdinbpl.723:15|
 :skolemid |69|
 :pattern ( (pred_3 r_1@@5) (pred_3 r2))
)))
(assert (forall ((r_1@@6 T@Ref) (r2@@0 T@Ref) ) (!  (=> (= (|pred#sm| r_1@@6) (|pred#sm| r2@@0)) (= r_1@@6 r2@@0))
 :qid |stdinbpl.727:15|
 :skolemid |70|
 :pattern ( (|pred#sm| r_1@@6) (|pred#sm| r2@@0))
)))
(assert (forall ((s@@13 T@Seq_21259) (t T@Seq_21259) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_21259| s@@13))) (< n@@11 (|Seq#Length_21259| (|Seq#Append_21259| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_21259| s@@13)) (|Seq#Length_21259| s@@13)) n@@11) (= (|Seq#Take_21259| (|Seq#Append_21259| s@@13 t) n@@11) (|Seq#Append_21259| s@@13 (|Seq#Take_21259| t (|Seq#Sub| n@@11 (|Seq#Length_21259| s@@13)))))))
 :qid |stdinbpl.402:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_21259| (|Seq#Append_21259| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3131) (t@@0 T@Seq_3131) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3131| s@@14))) (< n@@12 (|Seq#Length_3131| (|Seq#Append_3131| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3131| s@@14)) (|Seq#Length_3131| s@@14)) n@@12) (= (|Seq#Take_3131| (|Seq#Append_3131| s@@14 t@@0) n@@12) (|Seq#Append_3131| s@@14 (|Seq#Take_3131| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3131| s@@14)))))))
 :qid |stdinbpl.402:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3131| (|Seq#Append_3131| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12901) (ExhaleHeap@@3 T@PolymorphicMapType_12901) (Mask@@5 T@PolymorphicMapType_12922) (pm_f_8@@3 T@Field_20333_20334) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_20333_20334 Mask@@5 null pm_f_8@@3) (IsPredicateField_8423_8424 pm_f_8@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_8 T@Ref) (f_25 T@Field_12961_53) ) (!  (=> (select (|PolymorphicMapType_13450_12961_53#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@9) null (PredicateMaskField_8423 pm_f_8@@3))) o2_8 f_25) (= (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@9) o2_8 f_25) (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8 f_25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8 f_25))
)) (forall ((o2_8@@0 T@Ref) (f_25@@0 T@Field_12974_12975) ) (!  (=> (select (|PolymorphicMapType_13450_12961_12975#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@9) null (PredicateMaskField_8423 pm_f_8@@3))) o2_8@@0 f_25@@0) (= (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@9) o2_8@@0 f_25@@0) (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@0 f_25@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@0 f_25@@0))
))) (forall ((o2_8@@1 T@Ref) (f_25@@1 T@Field_19023_3253) ) (!  (=> (select (|PolymorphicMapType_13450_12961_3253#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@9) null (PredicateMaskField_8423 pm_f_8@@3))) o2_8@@1 f_25@@1) (= (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@9) o2_8@@1 f_25@@1) (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@1 f_25@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@1 f_25@@1))
))) (forall ((o2_8@@2 T@Ref) (f_25@@2 T@Field_12961_20334) ) (!  (=> (select (|PolymorphicMapType_13450_12961_20334#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@9) null (PredicateMaskField_8423 pm_f_8@@3))) o2_8@@2 f_25@@2) (= (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@9) o2_8@@2 f_25@@2) (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@2 f_25@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@2 f_25@@2))
))) (forall ((o2_8@@3 T@Ref) (f_25@@3 T@Field_12961_20351) ) (!  (=> (select (|PolymorphicMapType_13450_12961_40270#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@9) null (PredicateMaskField_8423 pm_f_8@@3))) o2_8@@3 f_25@@3) (= (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@9) o2_8@@3 f_25@@3) (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@3 f_25@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@3 f_25@@3))
))) (forall ((o2_8@@4 T@Ref) (f_25@@4 T@Field_20333_53) ) (!  (=> (select (|PolymorphicMapType_13450_20333_53#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@9) null (PredicateMaskField_8423 pm_f_8@@3))) o2_8@@4 f_25@@4) (= (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@9) o2_8@@4 f_25@@4) (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@4 f_25@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@4 f_25@@4))
))) (forall ((o2_8@@5 T@Ref) (f_25@@5 T@Field_20333_12975) ) (!  (=> (select (|PolymorphicMapType_13450_20333_12975#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@9) null (PredicateMaskField_8423 pm_f_8@@3))) o2_8@@5 f_25@@5) (= (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@9) o2_8@@5 f_25@@5) (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@5 f_25@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@5 f_25@@5))
))) (forall ((o2_8@@6 T@Ref) (f_25@@6 T@Field_20333_3253) ) (!  (=> (select (|PolymorphicMapType_13450_20333_3253#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@9) null (PredicateMaskField_8423 pm_f_8@@3))) o2_8@@6 f_25@@6) (= (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@9) o2_8@@6 f_25@@6) (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@6 f_25@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@6 f_25@@6))
))) (forall ((o2_8@@7 T@Ref) (f_25@@7 T@Field_20333_20334) ) (!  (=> (select (|PolymorphicMapType_13450_20333_20334#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@9) null (PredicateMaskField_8423 pm_f_8@@3))) o2_8@@7 f_25@@7) (= (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@9) o2_8@@7 f_25@@7) (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@7 f_25@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@7 f_25@@7))
))) (forall ((o2_8@@8 T@Ref) (f_25@@8 T@Field_20346_20351) ) (!  (=> (select (|PolymorphicMapType_13450_20333_41318#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@9) null (PredicateMaskField_8423 pm_f_8@@3))) o2_8@@8 f_25@@8) (= (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@9) o2_8@@8 f_25@@8) (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@8 f_25@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| ExhaleHeap@@3) o2_8@@8 f_25@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@5) (IsPredicateField_8423_8424 pm_f_8@@3))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12901) (ExhaleHeap@@4 T@PolymorphicMapType_12901) (Mask@@6 T@PolymorphicMapType_12922) (pm_f_8@@4 T@Field_12961_20334) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_12961_20334 Mask@@6 null pm_f_8@@4) (IsPredicateField_12961_38786 pm_f_8@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_8@@9 T@Ref) (f_25@@9 T@Field_12961_53) ) (!  (=> (select (|PolymorphicMapType_13450_12961_53#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@10) null (PredicateMaskField_12961 pm_f_8@@4))) o2_8@@9 f_25@@9) (= (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@10) o2_8@@9 f_25@@9) (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@9 f_25@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@9 f_25@@9))
)) (forall ((o2_8@@10 T@Ref) (f_25@@10 T@Field_12974_12975) ) (!  (=> (select (|PolymorphicMapType_13450_12961_12975#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@10) null (PredicateMaskField_12961 pm_f_8@@4))) o2_8@@10 f_25@@10) (= (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@10) o2_8@@10 f_25@@10) (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@10 f_25@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@10 f_25@@10))
))) (forall ((o2_8@@11 T@Ref) (f_25@@11 T@Field_19023_3253) ) (!  (=> (select (|PolymorphicMapType_13450_12961_3253#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@10) null (PredicateMaskField_12961 pm_f_8@@4))) o2_8@@11 f_25@@11) (= (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@10) o2_8@@11 f_25@@11) (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@11 f_25@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@11 f_25@@11))
))) (forall ((o2_8@@12 T@Ref) (f_25@@12 T@Field_12961_20334) ) (!  (=> (select (|PolymorphicMapType_13450_12961_20334#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@10) null (PredicateMaskField_12961 pm_f_8@@4))) o2_8@@12 f_25@@12) (= (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@10) o2_8@@12 f_25@@12) (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@12 f_25@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@12 f_25@@12))
))) (forall ((o2_8@@13 T@Ref) (f_25@@13 T@Field_12961_20351) ) (!  (=> (select (|PolymorphicMapType_13450_12961_40270#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@10) null (PredicateMaskField_12961 pm_f_8@@4))) o2_8@@13 f_25@@13) (= (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@10) o2_8@@13 f_25@@13) (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@13 f_25@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@13 f_25@@13))
))) (forall ((o2_8@@14 T@Ref) (f_25@@14 T@Field_20333_53) ) (!  (=> (select (|PolymorphicMapType_13450_20333_53#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@10) null (PredicateMaskField_12961 pm_f_8@@4))) o2_8@@14 f_25@@14) (= (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@10) o2_8@@14 f_25@@14) (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@14 f_25@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@14 f_25@@14))
))) (forall ((o2_8@@15 T@Ref) (f_25@@15 T@Field_20333_12975) ) (!  (=> (select (|PolymorphicMapType_13450_20333_12975#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@10) null (PredicateMaskField_12961 pm_f_8@@4))) o2_8@@15 f_25@@15) (= (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@10) o2_8@@15 f_25@@15) (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@15 f_25@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@15 f_25@@15))
))) (forall ((o2_8@@16 T@Ref) (f_25@@16 T@Field_20333_3253) ) (!  (=> (select (|PolymorphicMapType_13450_20333_3253#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@10) null (PredicateMaskField_12961 pm_f_8@@4))) o2_8@@16 f_25@@16) (= (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@10) o2_8@@16 f_25@@16) (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@16 f_25@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@16 f_25@@16))
))) (forall ((o2_8@@17 T@Ref) (f_25@@17 T@Field_20333_20334) ) (!  (=> (select (|PolymorphicMapType_13450_20333_20334#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@10) null (PredicateMaskField_12961 pm_f_8@@4))) o2_8@@17 f_25@@17) (= (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@10) o2_8@@17 f_25@@17) (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@17 f_25@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@17 f_25@@17))
))) (forall ((o2_8@@18 T@Ref) (f_25@@18 T@Field_20346_20351) ) (!  (=> (select (|PolymorphicMapType_13450_20333_41318#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@10) null (PredicateMaskField_12961 pm_f_8@@4))) o2_8@@18 f_25@@18) (= (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@10) o2_8@@18 f_25@@18) (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@18 f_25@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| ExhaleHeap@@4) o2_8@@18 f_25@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@6) (IsPredicateField_12961_38786 pm_f_8@@4))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12901) (ExhaleHeap@@5 T@PolymorphicMapType_12901) (Mask@@7 T@PolymorphicMapType_12922) (pm_f_8@@5 T@Field_20333_20334) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_20333_20334 Mask@@7 null pm_f_8@@5) (IsWandField_20333_42483 pm_f_8@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_8@@19 T@Ref) (f_25@@19 T@Field_12961_53) ) (!  (=> (select (|PolymorphicMapType_13450_12961_53#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@11) null (WandMaskField_20333 pm_f_8@@5))) o2_8@@19 f_25@@19) (= (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@11) o2_8@@19 f_25@@19) (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@19 f_25@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@19 f_25@@19))
)) (forall ((o2_8@@20 T@Ref) (f_25@@20 T@Field_12974_12975) ) (!  (=> (select (|PolymorphicMapType_13450_12961_12975#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@11) null (WandMaskField_20333 pm_f_8@@5))) o2_8@@20 f_25@@20) (= (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@11) o2_8@@20 f_25@@20) (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@20 f_25@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@20 f_25@@20))
))) (forall ((o2_8@@21 T@Ref) (f_25@@21 T@Field_19023_3253) ) (!  (=> (select (|PolymorphicMapType_13450_12961_3253#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@11) null (WandMaskField_20333 pm_f_8@@5))) o2_8@@21 f_25@@21) (= (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@11) o2_8@@21 f_25@@21) (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@21 f_25@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@21 f_25@@21))
))) (forall ((o2_8@@22 T@Ref) (f_25@@22 T@Field_12961_20334) ) (!  (=> (select (|PolymorphicMapType_13450_12961_20334#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@11) null (WandMaskField_20333 pm_f_8@@5))) o2_8@@22 f_25@@22) (= (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@11) o2_8@@22 f_25@@22) (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@22 f_25@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@22 f_25@@22))
))) (forall ((o2_8@@23 T@Ref) (f_25@@23 T@Field_12961_20351) ) (!  (=> (select (|PolymorphicMapType_13450_12961_40270#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@11) null (WandMaskField_20333 pm_f_8@@5))) o2_8@@23 f_25@@23) (= (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@11) o2_8@@23 f_25@@23) (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@23 f_25@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@23 f_25@@23))
))) (forall ((o2_8@@24 T@Ref) (f_25@@24 T@Field_20333_53) ) (!  (=> (select (|PolymorphicMapType_13450_20333_53#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@11) null (WandMaskField_20333 pm_f_8@@5))) o2_8@@24 f_25@@24) (= (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@11) o2_8@@24 f_25@@24) (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@24 f_25@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@24 f_25@@24))
))) (forall ((o2_8@@25 T@Ref) (f_25@@25 T@Field_20333_12975) ) (!  (=> (select (|PolymorphicMapType_13450_20333_12975#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@11) null (WandMaskField_20333 pm_f_8@@5))) o2_8@@25 f_25@@25) (= (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@11) o2_8@@25 f_25@@25) (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@25 f_25@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@25 f_25@@25))
))) (forall ((o2_8@@26 T@Ref) (f_25@@26 T@Field_20333_3253) ) (!  (=> (select (|PolymorphicMapType_13450_20333_3253#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@11) null (WandMaskField_20333 pm_f_8@@5))) o2_8@@26 f_25@@26) (= (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@11) o2_8@@26 f_25@@26) (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@26 f_25@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@26 f_25@@26))
))) (forall ((o2_8@@27 T@Ref) (f_25@@27 T@Field_20333_20334) ) (!  (=> (select (|PolymorphicMapType_13450_20333_20334#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@11) null (WandMaskField_20333 pm_f_8@@5))) o2_8@@27 f_25@@27) (= (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@11) o2_8@@27 f_25@@27) (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@27 f_25@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@27 f_25@@27))
))) (forall ((o2_8@@28 T@Ref) (f_25@@28 T@Field_20346_20351) ) (!  (=> (select (|PolymorphicMapType_13450_20333_41318#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@11) null (WandMaskField_20333 pm_f_8@@5))) o2_8@@28 f_25@@28) (= (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@11) o2_8@@28 f_25@@28) (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@28 f_25@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| ExhaleHeap@@5) o2_8@@28 f_25@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@7) (IsWandField_20333_42483 pm_f_8@@5))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_12901) (ExhaleHeap@@6 T@PolymorphicMapType_12901) (Mask@@8 T@PolymorphicMapType_12922) (pm_f_8@@6 T@Field_12961_20334) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_12961_20334 Mask@@8 null pm_f_8@@6) (IsWandField_12961_42126 pm_f_8@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_8@@29 T@Ref) (f_25@@29 T@Field_12961_53) ) (!  (=> (select (|PolymorphicMapType_13450_12961_53#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@12) null (WandMaskField_12961 pm_f_8@@6))) o2_8@@29 f_25@@29) (= (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@12) o2_8@@29 f_25@@29) (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@29 f_25@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@29 f_25@@29))
)) (forall ((o2_8@@30 T@Ref) (f_25@@30 T@Field_12974_12975) ) (!  (=> (select (|PolymorphicMapType_13450_12961_12975#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@12) null (WandMaskField_12961 pm_f_8@@6))) o2_8@@30 f_25@@30) (= (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@12) o2_8@@30 f_25@@30) (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@30 f_25@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@30 f_25@@30))
))) (forall ((o2_8@@31 T@Ref) (f_25@@31 T@Field_19023_3253) ) (!  (=> (select (|PolymorphicMapType_13450_12961_3253#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@12) null (WandMaskField_12961 pm_f_8@@6))) o2_8@@31 f_25@@31) (= (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@12) o2_8@@31 f_25@@31) (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@31 f_25@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@31 f_25@@31))
))) (forall ((o2_8@@32 T@Ref) (f_25@@32 T@Field_12961_20334) ) (!  (=> (select (|PolymorphicMapType_13450_12961_20334#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@12) null (WandMaskField_12961 pm_f_8@@6))) o2_8@@32 f_25@@32) (= (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@12) o2_8@@32 f_25@@32) (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@32 f_25@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@32 f_25@@32))
))) (forall ((o2_8@@33 T@Ref) (f_25@@33 T@Field_12961_20351) ) (!  (=> (select (|PolymorphicMapType_13450_12961_40270#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@12) null (WandMaskField_12961 pm_f_8@@6))) o2_8@@33 f_25@@33) (= (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@12) o2_8@@33 f_25@@33) (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@33 f_25@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@33 f_25@@33))
))) (forall ((o2_8@@34 T@Ref) (f_25@@34 T@Field_20333_53) ) (!  (=> (select (|PolymorphicMapType_13450_20333_53#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@12) null (WandMaskField_12961 pm_f_8@@6))) o2_8@@34 f_25@@34) (= (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@12) o2_8@@34 f_25@@34) (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@34 f_25@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@34 f_25@@34))
))) (forall ((o2_8@@35 T@Ref) (f_25@@35 T@Field_20333_12975) ) (!  (=> (select (|PolymorphicMapType_13450_20333_12975#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@12) null (WandMaskField_12961 pm_f_8@@6))) o2_8@@35 f_25@@35) (= (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@12) o2_8@@35 f_25@@35) (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@35 f_25@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@35 f_25@@35))
))) (forall ((o2_8@@36 T@Ref) (f_25@@36 T@Field_20333_3253) ) (!  (=> (select (|PolymorphicMapType_13450_20333_3253#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@12) null (WandMaskField_12961 pm_f_8@@6))) o2_8@@36 f_25@@36) (= (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@12) o2_8@@36 f_25@@36) (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@36 f_25@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@36 f_25@@36))
))) (forall ((o2_8@@37 T@Ref) (f_25@@37 T@Field_20333_20334) ) (!  (=> (select (|PolymorphicMapType_13450_20333_20334#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@12) null (WandMaskField_12961 pm_f_8@@6))) o2_8@@37 f_25@@37) (= (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@12) o2_8@@37 f_25@@37) (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@37 f_25@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@37 f_25@@37))
))) (forall ((o2_8@@38 T@Ref) (f_25@@38 T@Field_20346_20351) ) (!  (=> (select (|PolymorphicMapType_13450_20333_41318#PolymorphicMapType_13450| (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@12) null (WandMaskField_12961 pm_f_8@@6))) o2_8@@38 f_25@@38) (= (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@12) o2_8@@38 f_25@@38) (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@38 f_25@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| ExhaleHeap@@6) o2_8@@38 f_25@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@8) (IsWandField_12961_42126 pm_f_8@@6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_12901) (Mask@@9 T@PolymorphicMapType_12922) (r_1@@7 T@Ref) (i@@5 Int) ) (!  (=> (and (state Heap@@13 Mask@@9) (< AssumeFunctionsAbove 0)) (= (fun Heap@@13 r_1@@7 i@@5) r_1@@7))
 :qid |stdinbpl.617:15|
 :skolemid |60|
 :pattern ( (state Heap@@13 Mask@@9) (fun Heap@@13 r_1@@7 i@@5))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_12901) (ExhaleHeap@@7 T@PolymorphicMapType_12901) (Mask@@10 T@PolymorphicMapType_12922) (o_23 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@10) (=> (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@14) o_23 $allocated) (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| ExhaleHeap@@7) o_23 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@10) (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| ExhaleHeap@@7) o_23 $allocated))
)))
(assert (forall ((p T@Field_20333_20334) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_20333_20333 p v_1 p w))
 :qid |stdinbpl.220:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_20333_20333 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_12961_20334) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_12961_12961 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.220:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12961_12961 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_21259) (s1 T@Seq_21259) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_21259|)) (not (= s1 |Seq#Empty_21259|))) (<= (|Seq#Length_21259| s0) n@@13)) (< n@@13 (|Seq#Length_21259| (|Seq#Append_21259| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_21259| s0)) (|Seq#Length_21259| s0)) n@@13) (= (|Seq#Index_21259| (|Seq#Append_21259| s0 s1) n@@13) (|Seq#Index_21259| s1 (|Seq#Sub| n@@13 (|Seq#Length_21259| s0))))))
 :qid |stdinbpl.289:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_21259| (|Seq#Append_21259| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3131) (s1@@0 T@Seq_3131) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3131|)) (not (= s1@@0 |Seq#Empty_3131|))) (<= (|Seq#Length_3131| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3131| (|Seq#Append_3131| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3131| s0@@0)) (|Seq#Length_3131| s0@@0)) n@@14) (= (|Seq#Index_3131| (|Seq#Append_3131| s0@@0 s1@@0) n@@14) (|Seq#Index_3131| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3131| s0@@0))))))
 :qid |stdinbpl.289:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3131| (|Seq#Append_3131| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_8364_3253 f_7)))
(assert  (not (IsWandField_8364_3253 f_7)))
(assert  (not (IsPredicateField_8364_3253 g)))
(assert  (not (IsWandField_8364_3253 g)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_12901) (ExhaleHeap@@8 T@PolymorphicMapType_12901) (Mask@@11 T@PolymorphicMapType_12922) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@11) (succHeap Heap@@15 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_12922) (o_2@@9 T@Ref) (f_4@@9 T@Field_20346_20351) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_8423_49415 f_4@@9))) (not (IsWandField_8423_49431 f_4@@9))) (<= (select (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_12922) (o_2@@10 T@Ref) (f_4@@10 T@Field_20333_12975) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_8423_12975 f_4@@10))) (not (IsWandField_8423_12975 f_4@@10))) (<= (select (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_12922) (o_2@@11 T@Ref) (f_4@@11 T@Field_20333_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_8423_53 f_4@@11))) (not (IsWandField_8423_53 f_4@@11))) (<= (select (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_12922) (o_2@@12 T@Ref) (f_4@@12 T@Field_20333_20334) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_8423_8424 f_4@@12))) (not (IsWandField_20333_42483 f_4@@12))) (<= (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_12922) (o_2@@13 T@Ref) (f_4@@13 T@Field_20333_3253) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_8423_3253 f_4@@13))) (not (IsWandField_8423_3253 f_4@@13))) (<= (select (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_12922) (o_2@@14 T@Ref) (f_4@@14 T@Field_12961_20351) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_8364_48584 f_4@@14))) (not (IsWandField_8364_48600 f_4@@14))) (<= (select (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_12922) (o_2@@15 T@Ref) (f_4@@15 T@Field_12974_12975) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| Mask@@18) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_8364_12975 f_4@@15))) (not (IsWandField_8364_12975 f_4@@15))) (<= (select (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| Mask@@18) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| Mask@@18) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_12922) (o_2@@16 T@Ref) (f_4@@16 T@Field_12961_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| Mask@@19) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_8364_53 f_4@@16))) (not (IsWandField_8364_53 f_4@@16))) (<= (select (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| Mask@@19) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| Mask@@19) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_12922) (o_2@@17 T@Ref) (f_4@@17 T@Field_12961_20334) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| Mask@@20) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_12961_38786 f_4@@17))) (not (IsWandField_12961_42126 f_4@@17))) (<= (select (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| Mask@@20) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| Mask@@20) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_12922) (o_2@@18 T@Ref) (f_4@@18 T@Field_19023_3253) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| Mask@@21) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_8364_3253 f_4@@18))) (not (IsWandField_8364_3253 f_4@@18))) (<= (select (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| Mask@@21) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| Mask@@21) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_12922) (o_2@@19 T@Ref) (f_4@@19 T@Field_20346_20351) ) (! (= (HasDirectPerm_20333_38498 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20333_38498 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_12922) (o_2@@20 T@Ref) (f_4@@20 T@Field_20333_20334) ) (! (= (HasDirectPerm_20333_20334 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20333_20334 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_12922) (o_2@@21 T@Ref) (f_4@@21 T@Field_20333_3253) ) (! (= (HasDirectPerm_20333_3253 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20333_3253 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_12922) (o_2@@22 T@Ref) (f_4@@22 T@Field_20333_12975) ) (! (= (HasDirectPerm_20333_12975 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20333_12975 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_12922) (o_2@@23 T@Ref) (f_4@@23 T@Field_20333_53) ) (! (= (HasDirectPerm_20333_53 Mask@@26 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| Mask@@26) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20333_53 Mask@@26 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_12922) (o_2@@24 T@Ref) (f_4@@24 T@Field_12961_20351) ) (! (= (HasDirectPerm_12961_37337 Mask@@27 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| Mask@@27) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12961_37337 Mask@@27 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_12922) (o_2@@25 T@Ref) (f_4@@25 T@Field_12961_20334) ) (! (= (HasDirectPerm_12961_20334 Mask@@28 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| Mask@@28) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12961_20334 Mask@@28 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_12922) (o_2@@26 T@Ref) (f_4@@26 T@Field_19023_3253) ) (! (= (HasDirectPerm_12961_3253 Mask@@29 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| Mask@@29) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12961_3253 Mask@@29 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_12922) (o_2@@27 T@Ref) (f_4@@27 T@Field_12974_12975) ) (! (= (HasDirectPerm_12961_12975 Mask@@30 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| Mask@@30) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12961_12975 Mask@@30 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_12922) (o_2@@28 T@Ref) (f_4@@28 T@Field_12961_53) ) (! (= (HasDirectPerm_12961_53 Mask@@31 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| Mask@@31) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12961_53 Mask@@31 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.208:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3131| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.581:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3131| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_12901) (ExhaleHeap@@9 T@PolymorphicMapType_12901) (Mask@@32 T@PolymorphicMapType_12922) (o_23@@0 T@Ref) (f_25@@39 T@Field_20346_20351) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@32) (=> (HasDirectPerm_20333_38498 Mask@@32 o_23@@0 f_25@@39) (= (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@16) o_23@@0 f_25@@39) (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| ExhaleHeap@@9) o_23@@0 f_25@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@32) (select (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| ExhaleHeap@@9) o_23@@0 f_25@@39))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_12901) (ExhaleHeap@@10 T@PolymorphicMapType_12901) (Mask@@33 T@PolymorphicMapType_12922) (o_23@@1 T@Ref) (f_25@@40 T@Field_20333_20334) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@33) (=> (HasDirectPerm_20333_20334 Mask@@33 o_23@@1 f_25@@40) (= (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@17) o_23@@1 f_25@@40) (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| ExhaleHeap@@10) o_23@@1 f_25@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@33) (select (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| ExhaleHeap@@10) o_23@@1 f_25@@40))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_12901) (ExhaleHeap@@11 T@PolymorphicMapType_12901) (Mask@@34 T@PolymorphicMapType_12922) (o_23@@2 T@Ref) (f_25@@41 T@Field_20333_3253) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@34) (=> (HasDirectPerm_20333_3253 Mask@@34 o_23@@2 f_25@@41) (= (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@18) o_23@@2 f_25@@41) (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| ExhaleHeap@@11) o_23@@2 f_25@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@34) (select (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| ExhaleHeap@@11) o_23@@2 f_25@@41))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_12901) (ExhaleHeap@@12 T@PolymorphicMapType_12901) (Mask@@35 T@PolymorphicMapType_12922) (o_23@@3 T@Ref) (f_25@@42 T@Field_20333_12975) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@35) (=> (HasDirectPerm_20333_12975 Mask@@35 o_23@@3 f_25@@42) (= (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@19) o_23@@3 f_25@@42) (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| ExhaleHeap@@12) o_23@@3 f_25@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@35) (select (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| ExhaleHeap@@12) o_23@@3 f_25@@42))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_12901) (ExhaleHeap@@13 T@PolymorphicMapType_12901) (Mask@@36 T@PolymorphicMapType_12922) (o_23@@4 T@Ref) (f_25@@43 T@Field_20333_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@36) (=> (HasDirectPerm_20333_53 Mask@@36 o_23@@4 f_25@@43) (= (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@20) o_23@@4 f_25@@43) (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| ExhaleHeap@@13) o_23@@4 f_25@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@36) (select (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| ExhaleHeap@@13) o_23@@4 f_25@@43))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_12901) (ExhaleHeap@@14 T@PolymorphicMapType_12901) (Mask@@37 T@PolymorphicMapType_12922) (o_23@@5 T@Ref) (f_25@@44 T@Field_12961_20351) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@37) (=> (HasDirectPerm_12961_37337 Mask@@37 o_23@@5 f_25@@44) (= (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@21) o_23@@5 f_25@@44) (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| ExhaleHeap@@14) o_23@@5 f_25@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@37) (select (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| ExhaleHeap@@14) o_23@@5 f_25@@44))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_12901) (ExhaleHeap@@15 T@PolymorphicMapType_12901) (Mask@@38 T@PolymorphicMapType_12922) (o_23@@6 T@Ref) (f_25@@45 T@Field_12961_20334) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@38) (=> (HasDirectPerm_12961_20334 Mask@@38 o_23@@6 f_25@@45) (= (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@22) o_23@@6 f_25@@45) (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| ExhaleHeap@@15) o_23@@6 f_25@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@38) (select (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| ExhaleHeap@@15) o_23@@6 f_25@@45))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_12901) (ExhaleHeap@@16 T@PolymorphicMapType_12901) (Mask@@39 T@PolymorphicMapType_12922) (o_23@@7 T@Ref) (f_25@@46 T@Field_19023_3253) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@39) (=> (HasDirectPerm_12961_3253 Mask@@39 o_23@@7 f_25@@46) (= (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@23) o_23@@7 f_25@@46) (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| ExhaleHeap@@16) o_23@@7 f_25@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@39) (select (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| ExhaleHeap@@16) o_23@@7 f_25@@46))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_12901) (ExhaleHeap@@17 T@PolymorphicMapType_12901) (Mask@@40 T@PolymorphicMapType_12922) (o_23@@8 T@Ref) (f_25@@47 T@Field_12974_12975) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@40) (=> (HasDirectPerm_12961_12975 Mask@@40 o_23@@8 f_25@@47) (= (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@24) o_23@@8 f_25@@47) (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| ExhaleHeap@@17) o_23@@8 f_25@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@40) (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| ExhaleHeap@@17) o_23@@8 f_25@@47))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_12901) (ExhaleHeap@@18 T@PolymorphicMapType_12901) (Mask@@41 T@PolymorphicMapType_12922) (o_23@@9 T@Ref) (f_25@@48 T@Field_12961_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@41) (=> (HasDirectPerm_12961_53 Mask@@41 o_23@@9 f_25@@48) (= (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@25) o_23@@9 f_25@@48) (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| ExhaleHeap@@18) o_23@@9 f_25@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@41) (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| ExhaleHeap@@18) o_23@@9 f_25@@48))
)))
(assert (forall ((s0@@1 T@Seq_21259) (s1@@1 T@Seq_21259) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_21259|)) (not (= s1@@1 |Seq#Empty_21259|))) (= (|Seq#Length_21259| (|Seq#Append_21259| s0@@1 s1@@1)) (+ (|Seq#Length_21259| s0@@1) (|Seq#Length_21259| s1@@1))))
 :qid |stdinbpl.258:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_21259| (|Seq#Append_21259| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3131) (s1@@2 T@Seq_3131) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3131|)) (not (= s1@@2 |Seq#Empty_3131|))) (= (|Seq#Length_3131| (|Seq#Append_3131| s0@@2 s1@@2)) (+ (|Seq#Length_3131| s0@@2) (|Seq#Length_3131| s1@@2))))
 :qid |stdinbpl.258:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3131| (|Seq#Append_3131| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_20346_20351) ) (! (= (select (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_20333_12975) ) (! (= (select (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_20333_53) ) (! (= (select (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_20333_20334) ) (! (= (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_20333_3253) ) (! (= (select (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_12961_20351) ) (! (= (select (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_12974_12975) ) (! (= (select (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_12961_53) ) (! (= (select (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_12961_20334) ) (! (= (select (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_19023_3253) ) (! (= (select (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((s@@15 T@Seq_21259) (t@@1 T@Seq_21259) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_21259| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_21259| s@@15)) (|Seq#Length_21259| s@@15)) n@@15) (= (|Seq#Drop_21259| (|Seq#Append_21259| s@@15 t@@1) n@@15) (|Seq#Drop_21259| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_21259| s@@15))))))
 :qid |stdinbpl.415:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_21259| (|Seq#Append_21259| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3131) (t@@2 T@Seq_3131) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3131| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3131| s@@16)) (|Seq#Length_3131| s@@16)) n@@16) (= (|Seq#Drop_3131| (|Seq#Append_3131| s@@16 t@@2) n@@16) (|Seq#Drop_3131| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3131| s@@16))))))
 :qid |stdinbpl.415:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3131| (|Seq#Append_3131| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_12901) (r_1@@8 T@Ref) (i@@6 Int) ) (!  (and (= (fun Heap@@26 r_1@@8 i@@6) (|fun'| Heap@@26 r_1@@8 i@@6)) (dummyFunction_8390 (|fun#triggerStateless| r_1@@8 i@@6)))
 :qid |stdinbpl.607:15|
 :skolemid |58|
 :pattern ( (fun Heap@@26 r_1@@8 i@@6))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12922) (SummandMask1 T@PolymorphicMapType_12922) (SummandMask2 T@PolymorphicMapType_12922) (o_2@@39 T@Ref) (f_4@@39 T@Field_20346_20351) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12922_8423_47123#PolymorphicMapType_12922| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12922) (SummandMask1@@0 T@PolymorphicMapType_12922) (SummandMask2@@0 T@PolymorphicMapType_12922) (o_2@@40 T@Ref) (f_4@@40 T@Field_20333_12975) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12922_8423_12975#PolymorphicMapType_12922| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12922) (SummandMask1@@1 T@PolymorphicMapType_12922) (SummandMask2@@1 T@PolymorphicMapType_12922) (o_2@@41 T@Ref) (f_4@@41 T@Field_20333_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12922_8423_53#PolymorphicMapType_12922| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12922) (SummandMask1@@2 T@PolymorphicMapType_12922) (SummandMask2@@2 T@PolymorphicMapType_12922) (o_2@@42 T@Ref) (f_4@@42 T@Field_20333_20334) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12922_8423_8424#PolymorphicMapType_12922| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_12922) (SummandMask1@@3 T@PolymorphicMapType_12922) (SummandMask2@@3 T@PolymorphicMapType_12922) (o_2@@43 T@Ref) (f_4@@43 T@Field_20333_3253) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12922_8423_3253#PolymorphicMapType_12922| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_12922) (SummandMask1@@4 T@PolymorphicMapType_12922) (SummandMask2@@4 T@PolymorphicMapType_12922) (o_2@@44 T@Ref) (f_4@@44 T@Field_12961_20351) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12922_8364_46712#PolymorphicMapType_12922| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_12922) (SummandMask1@@5 T@PolymorphicMapType_12922) (SummandMask2@@5 T@PolymorphicMapType_12922) (o_2@@45 T@Ref) (f_4@@45 T@Field_12974_12975) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12922_8364_12975#PolymorphicMapType_12922| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_12922) (SummandMask1@@6 T@PolymorphicMapType_12922) (SummandMask2@@6 T@PolymorphicMapType_12922) (o_2@@46 T@Ref) (f_4@@46 T@Field_12961_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12922_8364_53#PolymorphicMapType_12922| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_12922) (SummandMask1@@7 T@PolymorphicMapType_12922) (SummandMask2@@7 T@PolymorphicMapType_12922) (o_2@@47 T@Ref) (f_4@@47 T@Field_12961_20334) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12922_8364_8424#PolymorphicMapType_12922| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_12922) (SummandMask1@@8 T@PolymorphicMapType_12922) (SummandMask2@@8 T@PolymorphicMapType_12922) (o_2@@48 T@Ref) (f_4@@48 T@Field_19023_3253) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12922_8364_3253#PolymorphicMapType_12922| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3131| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3131| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.580:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3131| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_21259) (b T@Seq_21259) ) (!  (=> (|Seq#Equal_21259| a b) (= a b))
 :qid |stdinbpl.553:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_21259| a b))
)))
(assert (forall ((a@@0 T@Seq_3131) (b@@0 T@Seq_3131) ) (!  (=> (|Seq#Equal_3131| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.553:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3131| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_21259) (i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_21259| s@@17))) (|Seq#ContainsTrigger_8450| s@@17 (|Seq#Index_21259| s@@17 i@@7)))
 :qid |stdinbpl.446:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_21259| s@@17 i@@7))
)))
(assert (forall ((s@@18 T@Seq_3131) (i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length_3131| s@@18))) (|Seq#ContainsTrigger_3131| s@@18 (|Seq#Index_3131| s@@18 i@@8)))
 :qid |stdinbpl.446:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3131| s@@18 i@@8))
)))
(assert (forall ((s0@@3 T@Seq_21259) (s1@@3 T@Seq_21259) ) (!  (and (=> (= s0@@3 |Seq#Empty_21259|) (= (|Seq#Append_21259| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_21259|) (= (|Seq#Append_21259| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.264:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_21259| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3131) (s1@@4 T@Seq_3131) ) (!  (and (=> (= s0@@4 |Seq#Empty_3131|) (= (|Seq#Append_3131| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3131|) (= (|Seq#Append_3131| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.264:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3131| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_21259| (|Seq#Singleton_21259| t@@3) 0) t@@3)
 :qid |stdinbpl.268:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_21259| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3131| (|Seq#Singleton_3131| t@@4) 0) t@@4)
 :qid |stdinbpl.268:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3131| t@@4))
)))
(assert (forall ((s@@19 T@Seq_21259) ) (! (<= 0 (|Seq#Length_21259| s@@19))
 :qid |stdinbpl.247:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_21259| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3131) ) (! (<= 0 (|Seq#Length_3131| s@@20))
 :qid |stdinbpl.247:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3131| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_21259) (s1@@5 T@Seq_21259) ) (!  (=> (|Seq#Equal_21259| s0@@5 s1@@5) (and (= (|Seq#Length_21259| s0@@5) (|Seq#Length_21259| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_21259| s0@@5))) (= (|Seq#Index_21259| s0@@5 j@@6) (|Seq#Index_21259| s1@@5 j@@6)))
 :qid |stdinbpl.543:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_21259| s0@@5 j@@6))
 :pattern ( (|Seq#Index_21259| s1@@5 j@@6))
))))
 :qid |stdinbpl.540:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_21259| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3131) (s1@@6 T@Seq_3131) ) (!  (=> (|Seq#Equal_3131| s0@@6 s1@@6) (and (= (|Seq#Length_3131| s0@@6) (|Seq#Length_3131| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3131| s0@@6))) (= (|Seq#Index_3131| s0@@6 j@@7) (|Seq#Index_3131| s1@@6 j@@7)))
 :qid |stdinbpl.543:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3131| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3131| s1@@6 j@@7))
))))
 :qid |stdinbpl.540:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3131| s0@@6 s1@@6))
)))
(assert (forall ((r_1@@9 T@Ref) ) (! (= (getPredWandId_8423_8424 (pred_3 r_1@@9)) 0)
 :qid |stdinbpl.717:15|
 :skolemid |68|
 :pattern ( (pred_3 r_1@@9))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_21259| (|Seq#Singleton_21259| t@@5)) 1)
 :qid |stdinbpl.255:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_21259| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3131| (|Seq#Singleton_3131| t@@6)) 1)
 :qid |stdinbpl.255:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3131| t@@6))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_12901) (Mask@@42 T@PolymorphicMapType_12922) (r_1@@10 T@Ref) ) (!  (=> (state Heap@@27 Mask@@42) (= (|fun2'| Heap@@27 r_1@@10) (|fun2#frame| EmptyFrame r_1@@10)))
 :qid |stdinbpl.675:15|
 :skolemid |65|
 :pattern ( (state Heap@@27 Mask@@42) (|fun2'| Heap@@27 r_1@@10))
)))
(assert (forall ((s@@21 T@Seq_21259) (t@@7 T@Seq_21259) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_21259| s@@21))) (= (|Seq#Take_21259| (|Seq#Append_21259| s@@21 t@@7) n@@17) (|Seq#Take_21259| s@@21 n@@17)))
 :qid |stdinbpl.397:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_21259| (|Seq#Append_21259| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3131) (t@@8 T@Seq_3131) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3131| s@@22))) (= (|Seq#Take_3131| (|Seq#Append_3131| s@@22 t@@8) n@@18) (|Seq#Take_3131| s@@22 n@@18)))
 :qid |stdinbpl.397:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3131| (|Seq#Append_3131| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_21259) (i@@9 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@9) (< i@@9 (|Seq#Length_21259| s@@23))) (= (|Seq#Length_21259| (|Seq#Update_21259| s@@23 i@@9 v@@2)) (|Seq#Length_21259| s@@23)))
 :qid |stdinbpl.296:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_21259| (|Seq#Update_21259| s@@23 i@@9 v@@2)))
 :pattern ( (|Seq#Length_21259| s@@23) (|Seq#Update_21259| s@@23 i@@9 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3131) (i@@10 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3131| s@@24))) (= (|Seq#Length_3131| (|Seq#Update_3131| s@@24 i@@10 v@@3)) (|Seq#Length_3131| s@@24)))
 :qid |stdinbpl.296:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3131| (|Seq#Update_3131| s@@24 i@@10 v@@3)))
 :pattern ( (|Seq#Length_3131| s@@24) (|Seq#Update_3131| s@@24 i@@10 v@@3))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_12901) (o_27 T@Ref) (f_30 T@Field_20346_20351) (v@@4 T@PolymorphicMapType_13450) ) (! (succHeap Heap@@28 (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@28) (store (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@28) o_27 f_30 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@28) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@28) (store (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@28) o_27 f_30 v@@4)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_12901) (o_27@@0 T@Ref) (f_30@@0 T@Field_20333_3253) (v@@5 Int) ) (! (succHeap Heap@@29 (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@29) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@29) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@29) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@29) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@29) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@29) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@29) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@29) (store (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@29) o_27@@0 f_30@@0 v@@5) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@29) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@29) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@29) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@29) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@29) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@29) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@29) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@29) (store (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@29) o_27@@0 f_30@@0 v@@5) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_12901) (o_27@@1 T@Ref) (f_30@@1 T@Field_20333_20334) (v@@6 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@30) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@30) (store (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@30) o_27@@1 f_30@@1 v@@6) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@30) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@30) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@30) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@30) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@30) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@30) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@30) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@30) (store (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@30) o_27@@1 f_30@@1 v@@6) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@30) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@30) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@30) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@30) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@30) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@30) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_12901) (o_27@@2 T@Ref) (f_30@@2 T@Field_20333_12975) (v@@7 T@Ref) ) (! (succHeap Heap@@31 (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@31) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@31) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@31) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@31) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@31) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@31) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@31) (store (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@31) o_27@@2 f_30@@2 v@@7) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@31) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@31) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@31) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@31) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@31) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@31) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@31) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@31) (store (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@31) o_27@@2 f_30@@2 v@@7) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@31) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_12901) (o_27@@3 T@Ref) (f_30@@3 T@Field_20333_53) (v@@8 Bool) ) (! (succHeap Heap@@32 (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@32) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@32) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@32) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@32) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@32) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@32) (store (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@32) o_27@@3 f_30@@3 v@@8) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@32) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@32) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@32) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@32) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@32) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@32) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@32) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@32) (store (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@32) o_27@@3 f_30@@3 v@@8) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@32) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@32) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_12901) (o_27@@4 T@Ref) (f_30@@4 T@Field_12961_20351) (v@@9 T@PolymorphicMapType_13450) ) (! (succHeap Heap@@33 (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@33) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@33) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@33) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@33) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@33) (store (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@33) o_27@@4 f_30@@4 v@@9) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@33) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@33) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@33) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@33) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@33) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@33) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@33) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@33) (store (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@33) o_27@@4 f_30@@4 v@@9) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@33) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@33) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@33) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_12901) (o_27@@5 T@Ref) (f_30@@5 T@Field_19023_3253) (v@@10 Int) ) (! (succHeap Heap@@34 (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@34) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@34) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@34) (store (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@34) o_27@@5 f_30@@5 v@@10) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@34) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@34) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@34) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@34) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@34) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@34) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@34) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@34) (store (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@34) o_27@@5 f_30@@5 v@@10) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@34) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@34) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@34) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@34) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@34) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_12901) (o_27@@6 T@Ref) (f_30@@6 T@Field_12961_20334) (v@@11 T@FrameType) ) (! (succHeap Heap@@35 (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@35) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@35) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@35) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@35) (store (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@35) o_27@@6 f_30@@6 v@@11) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@35) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@35) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@35) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@35) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@35) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@35) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@35) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@35) (store (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@35) o_27@@6 f_30@@6 v@@11) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@35) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@35) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@35) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@35) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_12901) (o_27@@7 T@Ref) (f_30@@7 T@Field_12974_12975) (v@@12 T@Ref) ) (! (succHeap Heap@@36 (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@36) (store (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@36) o_27@@7 f_30@@7 v@@12) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@36) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@36) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@36) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@36) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@36) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@36) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@36) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12901 (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@36) (store (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@36) o_27@@7 f_30@@7 v@@12) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@36) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@36) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@36) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@36) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@36) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@36) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@36) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_12901) (o_27@@8 T@Ref) (f_30@@8 T@Field_12961_53) (v@@13 Bool) ) (! (succHeap Heap@@37 (PolymorphicMapType_12901 (store (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@37) o_27@@8 f_30@@8 v@@13) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12901 (store (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@37) o_27@@8 f_30@@8 v@@13) (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_8423_8424#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_12961_3253#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_12961_20334#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_12961_37379#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_20333_53#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_20333_12975#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_20333_3253#PolymorphicMapType_12901| Heap@@37) (|PolymorphicMapType_12901_20333_38540#PolymorphicMapType_12901| Heap@@37)))
)))
(assert (forall ((r_1@@11 T@Ref) ) (! (= (PredicateMaskField_8423 (pred_3 r_1@@11)) (|pred#sm| r_1@@11))
 :qid |stdinbpl.709:15|
 :skolemid |66|
 :pattern ( (PredicateMaskField_8423 (pred_3 r_1@@11)))
)))
(assert (forall ((s@@25 T@Seq_21259) (t@@9 T@Seq_21259) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_21259| s@@25))) (= (|Seq#Drop_21259| (|Seq#Append_21259| s@@25 t@@9) n@@19) (|Seq#Append_21259| (|Seq#Drop_21259| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.411:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_21259| (|Seq#Append_21259| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3131) (t@@10 T@Seq_3131) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3131| s@@26))) (= (|Seq#Drop_3131| (|Seq#Append_3131| s@@26 t@@10) n@@20) (|Seq#Append_3131| (|Seq#Drop_3131| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.411:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3131| (|Seq#Append_3131| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_21259) (n@@21 Int) (i@@11 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@11)) (< i@@11 (|Seq#Length_21259| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@11 n@@21) n@@21) i@@11) (= (|Seq#Index_21259| (|Seq#Drop_21259| s@@27 n@@21) (|Seq#Sub| i@@11 n@@21)) (|Seq#Index_21259| s@@27 i@@11))))
 :qid |stdinbpl.347:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_21259| s@@27 n@@21) (|Seq#Index_21259| s@@27 i@@11))
)))
(assert (forall ((s@@28 T@Seq_3131) (n@@22 Int) (i@@12 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@12)) (< i@@12 (|Seq#Length_3131| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@12 n@@22) n@@22) i@@12) (= (|Seq#Index_3131| (|Seq#Drop_3131| s@@28 n@@22) (|Seq#Sub| i@@12 n@@22)) (|Seq#Index_3131| s@@28 i@@12))))
 :qid |stdinbpl.347:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3131| s@@28 n@@22) (|Seq#Index_3131| s@@28 i@@12))
)))
(assert (forall ((s0@@7 T@Seq_21259) (s1@@7 T@Seq_21259) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_21259|)) (not (= s1@@7 |Seq#Empty_21259|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_21259| s0@@7))) (= (|Seq#Index_21259| (|Seq#Append_21259| s0@@7 s1@@7) n@@23) (|Seq#Index_21259| s0@@7 n@@23)))
 :qid |stdinbpl.287:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_21259| (|Seq#Append_21259| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_21259| s0@@7 n@@23) (|Seq#Append_21259| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3131) (s1@@8 T@Seq_3131) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3131|)) (not (= s1@@8 |Seq#Empty_3131|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3131| s0@@8))) (= (|Seq#Index_3131| (|Seq#Append_3131| s0@@8 s1@@8) n@@24) (|Seq#Index_3131| s0@@8 n@@24)))
 :qid |stdinbpl.287:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3131| (|Seq#Append_3131| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3131| s0@@8 n@@24) (|Seq#Append_3131| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_21259) (s1@@9 T@Seq_21259) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_21259|)) (not (= s1@@9 |Seq#Empty_21259|))) (<= 0 m)) (< m (|Seq#Length_21259| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_21259| s0@@9)) (|Seq#Length_21259| s0@@9)) m) (= (|Seq#Index_21259| (|Seq#Append_21259| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_21259| s0@@9))) (|Seq#Index_21259| s1@@9 m))))
 :qid |stdinbpl.292:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_21259| s1@@9 m) (|Seq#Append_21259| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3131) (s1@@10 T@Seq_3131) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3131|)) (not (= s1@@10 |Seq#Empty_3131|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3131| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3131| s0@@10)) (|Seq#Length_3131| s0@@10)) m@@0) (= (|Seq#Index_3131| (|Seq#Append_3131| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3131| s0@@10))) (|Seq#Index_3131| s1@@10 m@@0))))
 :qid |stdinbpl.292:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3131| s1@@10 m@@0) (|Seq#Append_3131| s0@@10 s1@@10))
)))
(assert (forall ((o_27@@9 T@Ref) (f_24 T@Field_12974_12975) (Heap@@38 T@PolymorphicMapType_12901) ) (!  (=> (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@38) o_27@@9 $allocated) (select (|PolymorphicMapType_12901_8132_53#PolymorphicMapType_12901| Heap@@38) (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@38) o_27@@9 f_24) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12901_8135_8136#PolymorphicMapType_12901| Heap@@38) o_27@@9 f_24))
)))
(assert (forall ((s@@29 T@Seq_21259) (x@@3 T@Ref) (i@@13 Int) ) (!  (=> (and (and (<= 0 i@@13) (< i@@13 (|Seq#Length_21259| s@@29))) (= (|Seq#Index_21259| s@@29 i@@13) x@@3)) (|Seq#Contains_8450| s@@29 x@@3))
 :qid |stdinbpl.444:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_8450| s@@29 x@@3) (|Seq#Index_21259| s@@29 i@@13))
)))
(assert (forall ((s@@30 T@Seq_3131) (x@@4 Int) (i@@14 Int) ) (!  (=> (and (and (<= 0 i@@14) (< i@@14 (|Seq#Length_3131| s@@30))) (= (|Seq#Index_3131| s@@30 i@@14) x@@4)) (|Seq#Contains_3131| s@@30 x@@4))
 :qid |stdinbpl.444:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3131| s@@30 x@@4) (|Seq#Index_3131| s@@30 i@@14))
)))
(assert (forall ((s0@@11 T@Seq_21259) (s1@@11 T@Seq_21259) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_21259| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_21259| s0@@11 s1@@11))) (not (= (|Seq#Length_21259| s0@@11) (|Seq#Length_21259| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_21259| s0@@11 s1@@11))) (= (|Seq#Length_21259| s0@@11) (|Seq#Length_21259| s1@@11))) (= (|Seq#SkolemDiff_21259| s0@@11 s1@@11) (|Seq#SkolemDiff_21259| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_21259| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_21259| s0@@11 s1@@11) (|Seq#Length_21259| s0@@11))) (not (= (|Seq#Index_21259| s0@@11 (|Seq#SkolemDiff_21259| s0@@11 s1@@11)) (|Seq#Index_21259| s1@@11 (|Seq#SkolemDiff_21259| s0@@11 s1@@11))))))
 :qid |stdinbpl.548:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_21259| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3131) (s1@@12 T@Seq_3131) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3131| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3131| s0@@12 s1@@12))) (not (= (|Seq#Length_3131| s0@@12) (|Seq#Length_3131| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3131| s0@@12 s1@@12))) (= (|Seq#Length_3131| s0@@12) (|Seq#Length_3131| s1@@12))) (= (|Seq#SkolemDiff_3131| s0@@12 s1@@12) (|Seq#SkolemDiff_3131| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3131| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3131| s0@@12 s1@@12) (|Seq#Length_3131| s0@@12))) (not (= (|Seq#Index_3131| s0@@12 (|Seq#SkolemDiff_3131| s0@@12 s1@@12)) (|Seq#Index_3131| s1@@12 (|Seq#SkolemDiff_3131| s0@@12 s1@@12))))))
 :qid |stdinbpl.548:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3131| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_20333_20334) (v_1@@1 T@FrameType) (q T@Field_20333_20334) (w@@1 T@FrameType) (r T@Field_20333_20334) (u T@FrameType) ) (!  (=> (and (InsidePredicate_20333_20333 p@@2 v_1@@1 q w@@1) (InsidePredicate_20333_20333 q w@@1 r u)) (InsidePredicate_20333_20333 p@@2 v_1@@1 r u))
 :qid |stdinbpl.215:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20333_20333 p@@2 v_1@@1 q w@@1) (InsidePredicate_20333_20333 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_20333_20334) (v_1@@2 T@FrameType) (q@@0 T@Field_20333_20334) (w@@2 T@FrameType) (r@@0 T@Field_12961_20334) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_20333_20333 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_20333_12961 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_20333_12961 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.215:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20333_20333 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_20333_12961 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_20333_20334) (v_1@@3 T@FrameType) (q@@1 T@Field_12961_20334) (w@@3 T@FrameType) (r@@1 T@Field_20333_20334) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_20333_12961 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_12961_20333 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_20333_20333 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.215:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20333_12961 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_12961_20333 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_20333_20334) (v_1@@4 T@FrameType) (q@@2 T@Field_12961_20334) (w@@4 T@FrameType) (r@@2 T@Field_12961_20334) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_20333_12961 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_12961_12961 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_20333_12961 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.215:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20333_12961 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_12961_12961 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_12961_20334) (v_1@@5 T@FrameType) (q@@3 T@Field_20333_20334) (w@@5 T@FrameType) (r@@3 T@Field_20333_20334) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_12961_20333 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_20333_20333 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_12961_20333 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.215:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12961_20333 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_20333_20333 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_12961_20334) (v_1@@6 T@FrameType) (q@@4 T@Field_20333_20334) (w@@6 T@FrameType) (r@@4 T@Field_12961_20334) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_12961_20333 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_20333_12961 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_12961_12961 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.215:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12961_20333 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_20333_12961 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_12961_20334) (v_1@@7 T@FrameType) (q@@5 T@Field_12961_20334) (w@@7 T@FrameType) (r@@5 T@Field_20333_20334) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_12961_12961 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_12961_20333 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_12961_20333 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.215:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12961_12961 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_12961_20333 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_12961_20334) (v_1@@8 T@FrameType) (q@@6 T@Field_12961_20334) (w@@8 T@FrameType) (r@@6 T@Field_12961_20334) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_12961_12961 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_12961_12961 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_12961_12961 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.215:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12961_12961 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_12961_12961 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_12901) (Mask@@43 T@PolymorphicMapType_12922) (r_1@@12 T@Ref) ) (!  (=> (and (state Heap@@39 Mask@@43) (< AssumeFunctionsAbove 1)) (= (fun2 Heap@@39 r_1@@12) r_1@@12))
 :qid |stdinbpl.668:15|
 :skolemid |64|
 :pattern ( (state Heap@@39 Mask@@43) (fun2 Heap@@39 r_1@@12))
)))
(assert (forall ((s@@31 T@Seq_21259) ) (!  (=> (= (|Seq#Length_21259| s@@31) 0) (= s@@31 |Seq#Empty_21259|))
 :qid |stdinbpl.251:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_21259| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3131) ) (!  (=> (= (|Seq#Length_3131| s@@32) 0) (= s@@32 |Seq#Empty_3131|))
 :qid |stdinbpl.251:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3131| s@@32))
)))
(assert (forall ((s@@33 T@Seq_21259) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_21259| s@@33 n@@25) |Seq#Empty_21259|))
 :qid |stdinbpl.427:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_21259| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3131) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3131| s@@34 n@@26) |Seq#Empty_3131|))
 :qid |stdinbpl.427:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3131| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

