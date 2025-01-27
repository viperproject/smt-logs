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
(declare-sort T@Field_9304_53 0)
(declare-sort T@Field_9317_9318 0)
(declare-sort T@Field_15325_3018 0)
(declare-sort T@Field_15373_15374 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_15387_15392 0)
(declare-sort T@Field_5740_5745 0)
(declare-sort T@Field_5740_15392 0)
(declare-sort T@Field_5744_3018 0)
(declare-sort T@Field_5744_53 0)
(declare-sort T@Field_5744_9318 0)
(declare-datatypes ((T@PolymorphicMapType_9265 0)) (((PolymorphicMapType_9265 (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| (Array T@Ref T@Field_15325_3018 Real)) (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| (Array T@Ref T@Field_15373_15374 Real)) (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| (Array T@Ref T@Field_5740_5745 Real)) (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| (Array T@Ref T@Field_9304_53 Real)) (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| (Array T@Ref T@Field_9317_9318 Real)) (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| (Array T@Ref T@Field_5740_15392 Real)) (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| (Array T@Ref T@Field_5744_3018 Real)) (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| (Array T@Ref T@Field_5744_53 Real)) (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| (Array T@Ref T@Field_5744_9318 Real)) (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| (Array T@Ref T@Field_15387_15392 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9793 0)) (((PolymorphicMapType_9793 (|PolymorphicMapType_9793_5740_3018#PolymorphicMapType_9793| (Array T@Ref T@Field_15325_3018 Bool)) (|PolymorphicMapType_9793_5740_53#PolymorphicMapType_9793| (Array T@Ref T@Field_9304_53 Bool)) (|PolymorphicMapType_9793_5740_9318#PolymorphicMapType_9793| (Array T@Ref T@Field_9317_9318 Bool)) (|PolymorphicMapType_9793_5740_15374#PolymorphicMapType_9793| (Array T@Ref T@Field_5740_5745 Bool)) (|PolymorphicMapType_9793_5740_29726#PolymorphicMapType_9793| (Array T@Ref T@Field_5740_15392 Bool)) (|PolymorphicMapType_9793_15373_3018#PolymorphicMapType_9793| (Array T@Ref T@Field_5744_3018 Bool)) (|PolymorphicMapType_9793_15373_53#PolymorphicMapType_9793| (Array T@Ref T@Field_5744_53 Bool)) (|PolymorphicMapType_9793_15373_9318#PolymorphicMapType_9793| (Array T@Ref T@Field_5744_9318 Bool)) (|PolymorphicMapType_9793_15373_15374#PolymorphicMapType_9793| (Array T@Ref T@Field_15373_15374 Bool)) (|PolymorphicMapType_9793_15373_30774#PolymorphicMapType_9793| (Array T@Ref T@Field_15387_15392 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9244 0)) (((PolymorphicMapType_9244 (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| (Array T@Ref T@Field_9304_53 Bool)) (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| (Array T@Ref T@Field_9317_9318 T@Ref)) (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| (Array T@Ref T@Field_15325_3018 Int)) (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| (Array T@Ref T@Field_15373_15374 T@FrameType)) (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| (Array T@Ref T@Field_15387_15392 T@PolymorphicMapType_9793)) (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| (Array T@Ref T@Field_5740_5745 T@FrameType)) (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| (Array T@Ref T@Field_5740_15392 T@PolymorphicMapType_9793)) (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| (Array T@Ref T@Field_5744_3018 Int)) (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| (Array T@Ref T@Field_5744_53 Bool)) (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| (Array T@Ref T@Field_5744_9318 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_9304_53)
(declare-fun f_7 () T@Field_15325_3018)
(declare-sort T@Seq_16741 0)
(declare-fun |Seq#Length_5787| (T@Seq_16741) Int)
(declare-fun |Seq#Drop_5787| (T@Seq_16741 Int) T@Seq_16741)
(declare-sort T@Seq_2896 0)
(declare-fun |Seq#Length_2896| (T@Seq_2896) Int)
(declare-fun |Seq#Drop_2896| (T@Seq_2896 Int) T@Seq_2896)
(declare-fun succHeap (T@PolymorphicMapType_9244 T@PolymorphicMapType_9244) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9244 T@PolymorphicMapType_9244) Bool)
(declare-fun state (T@PolymorphicMapType_9244 T@PolymorphicMapType_9265) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9265) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9793)
(declare-fun Pair (T@Ref T@Ref) T@Field_15373_15374)
(declare-fun IsPredicateField_5744_5745 (T@Field_15373_15374) Bool)
(declare-fun |Pair#trigger_5744| (T@PolymorphicMapType_9244 T@Field_15373_15374) Bool)
(declare-fun |Pair#everUsed_5744| (T@Field_15373_15374) Bool)
(declare-fun |Seq#Index_5787| (T@Seq_16741 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2896| (T@Seq_2896 Int) Int)
(declare-fun |Seq#Empty_5787| () T@Seq_16741)
(declare-fun |Seq#Empty_2896| () T@Seq_2896)
(declare-fun |Seq#Update_5787| (T@Seq_16741 Int T@Ref) T@Seq_16741)
(declare-fun |Seq#Update_2896| (T@Seq_2896 Int Int) T@Seq_2896)
(declare-fun |Seq#Take_5787| (T@Seq_16741 Int) T@Seq_16741)
(declare-fun |Seq#Take_2896| (T@Seq_2896 Int) T@Seq_2896)
(declare-fun |Seq#Contains_2896| (T@Seq_2896 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2896)
(declare-fun |Seq#Contains_16741| (T@Seq_16741 T@Ref) Bool)
(declare-fun |Seq#Skolem_16741| (T@Seq_16741 T@Ref) Int)
(declare-fun |Seq#Skolem_2896| (T@Seq_2896 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9244 T@PolymorphicMapType_9244 T@PolymorphicMapType_9265) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5744 (T@Field_15373_15374) T@Field_15387_15392)
(declare-fun HasDirectPerm_5744_5745 (T@PolymorphicMapType_9265 T@Ref T@Field_15373_15374) Bool)
(declare-fun IsPredicateField_5740_28254 (T@Field_5740_5745) Bool)
(declare-fun PredicateMaskField_5740 (T@Field_5740_5745) T@Field_5740_15392)
(declare-fun HasDirectPerm_5740_5745 (T@PolymorphicMapType_9265 T@Ref T@Field_5740_5745) Bool)
(declare-fun IsWandField_5744_31939 (T@Field_15373_15374) Bool)
(declare-fun WandMaskField_5744 (T@Field_15373_15374) T@Field_15387_15392)
(declare-fun IsWandField_5740_31582 (T@Field_5740_5745) Bool)
(declare-fun WandMaskField_5740 (T@Field_5740_5745) T@Field_5740_15392)
(declare-fun |Seq#Singleton_5787| (T@Ref) T@Seq_16741)
(declare-fun |Seq#Singleton_2896| (Int) T@Seq_2896)
(declare-fun |Pair#sm| (T@Ref T@Ref) T@Field_15387_15392)
(declare-fun |Seq#Append_16741| (T@Seq_16741 T@Seq_16741) T@Seq_16741)
(declare-fun |Seq#Append_2896| (T@Seq_2896 T@Seq_2896) T@Seq_2896)
(declare-fun dummyHeap () T@PolymorphicMapType_9244)
(declare-fun ZeroMask () T@PolymorphicMapType_9265)
(declare-fun InsidePredicate_15373_15373 (T@Field_15373_15374 T@FrameType T@Field_15373_15374 T@FrameType) Bool)
(declare-fun InsidePredicate_9304_9304 (T@Field_5740_5745 T@FrameType T@Field_5740_5745 T@FrameType) Bool)
(declare-fun IsPredicateField_5740_3018 (T@Field_15325_3018) Bool)
(declare-fun IsWandField_5740_3018 (T@Field_15325_3018) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5744_38871 (T@Field_15387_15392) Bool)
(declare-fun IsWandField_5744_38887 (T@Field_15387_15392) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5744_9318 (T@Field_5744_9318) Bool)
(declare-fun IsWandField_5744_9318 (T@Field_5744_9318) Bool)
(declare-fun IsPredicateField_5744_53 (T@Field_5744_53) Bool)
(declare-fun IsWandField_5744_53 (T@Field_5744_53) Bool)
(declare-fun IsPredicateField_5744_3018 (T@Field_5744_3018) Bool)
(declare-fun IsWandField_5744_3018 (T@Field_5744_3018) Bool)
(declare-fun IsPredicateField_5740_38040 (T@Field_5740_15392) Bool)
(declare-fun IsWandField_5740_38056 (T@Field_5740_15392) Bool)
(declare-fun IsPredicateField_5740_9318 (T@Field_9317_9318) Bool)
(declare-fun IsWandField_5740_9318 (T@Field_9317_9318) Bool)
(declare-fun IsPredicateField_5740_53 (T@Field_9304_53) Bool)
(declare-fun IsWandField_5740_53 (T@Field_9304_53) Bool)
(declare-fun HasDirectPerm_5744_28009 (T@PolymorphicMapType_9265 T@Ref T@Field_15387_15392) Bool)
(declare-fun HasDirectPerm_5744_9318 (T@PolymorphicMapType_9265 T@Ref T@Field_5744_9318) Bool)
(declare-fun HasDirectPerm_5744_53 (T@PolymorphicMapType_9265 T@Ref T@Field_5744_53) Bool)
(declare-fun HasDirectPerm_5744_3018 (T@PolymorphicMapType_9265 T@Ref T@Field_5744_3018) Bool)
(declare-fun HasDirectPerm_5740_26868 (T@PolymorphicMapType_9265 T@Ref T@Field_5740_15392) Bool)
(declare-fun HasDirectPerm_5740_9318 (T@PolymorphicMapType_9265 T@Ref T@Field_9317_9318) Bool)
(declare-fun HasDirectPerm_5740_53 (T@PolymorphicMapType_9265 T@Ref T@Field_9304_53) Bool)
(declare-fun HasDirectPerm_5740_3018 (T@PolymorphicMapType_9265 T@Ref T@Field_15325_3018) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9265 T@PolymorphicMapType_9265 T@PolymorphicMapType_9265) Bool)
(declare-fun |Seq#Equal_16741| (T@Seq_16741 T@Seq_16741) Bool)
(declare-fun |Seq#Equal_2896| (T@Seq_2896 T@Seq_2896) Bool)
(declare-fun |Seq#ContainsTrigger_5787| (T@Seq_16741 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2896| (T@Seq_2896 Int) Bool)
(declare-fun getPredWandId_5744_5745 (T@Field_15373_15374) Int)
(declare-fun |Seq#SkolemDiff_16741| (T@Seq_16741 T@Seq_16741) Int)
(declare-fun |Seq#SkolemDiff_2896| (T@Seq_2896 T@Seq_2896) Int)
(declare-fun InsidePredicate_15373_9304 (T@Field_15373_15374 T@FrameType T@Field_5740_5745 T@FrameType) Bool)
(declare-fun InsidePredicate_9304_15373 (T@Field_5740_5745 T@FrameType T@Field_15373_15374 T@FrameType) Bool)
(assert (forall ((s T@Seq_16741) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_5787| s)) (= (|Seq#Length_5787| (|Seq#Drop_5787| s n)) (- (|Seq#Length_5787| s) n))) (=> (< (|Seq#Length_5787| s) n) (= (|Seq#Length_5787| (|Seq#Drop_5787| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_5787| (|Seq#Drop_5787| s n)) (|Seq#Length_5787| s))))
 :qid |stdinbpl.288:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_5787| (|Seq#Drop_5787| s n)))
 :pattern ( (|Seq#Length_5787| s) (|Seq#Drop_5787| s n))
)))
(assert (forall ((s@@0 T@Seq_2896) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2896| s@@0)) (= (|Seq#Length_2896| (|Seq#Drop_2896| s@@0 n@@0)) (- (|Seq#Length_2896| s@@0) n@@0))) (=> (< (|Seq#Length_2896| s@@0) n@@0) (= (|Seq#Length_2896| (|Seq#Drop_2896| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2896| (|Seq#Drop_2896| s@@0 n@@0)) (|Seq#Length_2896| s@@0))))
 :qid |stdinbpl.288:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2896| (|Seq#Drop_2896| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2896| s@@0) (|Seq#Drop_2896| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_9244) (Heap1 T@PolymorphicMapType_9244) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9244) (Mask T@PolymorphicMapType_9265) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9244) (Heap1@@0 T@PolymorphicMapType_9244) (Heap2 T@PolymorphicMapType_9244) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_15387_15392) ) (!  (not (select (|PolymorphicMapType_9793_15373_30774#PolymorphicMapType_9793| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9793_15373_30774#PolymorphicMapType_9793| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_15373_15374) ) (!  (not (select (|PolymorphicMapType_9793_15373_15374#PolymorphicMapType_9793| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9793_15373_15374#PolymorphicMapType_9793| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5744_9318) ) (!  (not (select (|PolymorphicMapType_9793_15373_9318#PolymorphicMapType_9793| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9793_15373_9318#PolymorphicMapType_9793| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5744_53) ) (!  (not (select (|PolymorphicMapType_9793_15373_53#PolymorphicMapType_9793| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9793_15373_53#PolymorphicMapType_9793| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5744_3018) ) (!  (not (select (|PolymorphicMapType_9793_15373_3018#PolymorphicMapType_9793| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9793_15373_3018#PolymorphicMapType_9793| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_5740_15392) ) (!  (not (select (|PolymorphicMapType_9793_5740_29726#PolymorphicMapType_9793| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9793_5740_29726#PolymorphicMapType_9793| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_5740_5745) ) (!  (not (select (|PolymorphicMapType_9793_5740_15374#PolymorphicMapType_9793| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9793_5740_15374#PolymorphicMapType_9793| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_9317_9318) ) (!  (not (select (|PolymorphicMapType_9793_5740_9318#PolymorphicMapType_9793| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9793_5740_9318#PolymorphicMapType_9793| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_9304_53) ) (!  (not (select (|PolymorphicMapType_9793_5740_53#PolymorphicMapType_9793| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9793_5740_53#PolymorphicMapType_9793| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_15325_3018) ) (!  (not (select (|PolymorphicMapType_9793_5740_3018#PolymorphicMapType_9793| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9793_5740_3018#PolymorphicMapType_9793| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((x T@Ref) (y T@Ref) ) (! (IsPredicateField_5744_5745 (Pair x y))
 :qid |stdinbpl.574:15|
 :skolemid |59|
 :pattern ( (Pair x y))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9244) (x@@0 T@Ref) (y@@0 T@Ref) ) (! (|Pair#everUsed_5744| (Pair x@@0 y@@0))
 :qid |stdinbpl.593:15|
 :skolemid |63|
 :pattern ( (|Pair#trigger_5744| Heap@@0 (Pair x@@0 y@@0)))
)))
(assert (forall ((s@@1 T@Seq_16741) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_5787| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_5787| (|Seq#Drop_5787| s@@1 n@@1) j) (|Seq#Index_5787| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.309:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_5787| (|Seq#Drop_5787| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2896) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2896| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2896| (|Seq#Drop_2896| s@@2 n@@2) j@@0) (|Seq#Index_2896| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.309:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2896| (|Seq#Drop_2896| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_5787| |Seq#Empty_5787|) 0))
(assert (= (|Seq#Length_2896| |Seq#Empty_2896|) 0))
(assert (forall ((s@@3 T@Seq_16741) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_5787| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_5787| (|Seq#Update_5787| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_5787| (|Seq#Update_5787| s@@3 i v) n@@3) (|Seq#Index_5787| s@@3 n@@3)))))
 :qid |stdinbpl.264:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_5787| (|Seq#Update_5787| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_5787| s@@3 n@@3) (|Seq#Update_5787| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_2896) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2896| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_2896| (|Seq#Update_2896| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_2896| (|Seq#Update_2896| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_2896| s@@4 n@@4)))))
 :qid |stdinbpl.264:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2896| (|Seq#Update_2896| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_2896| s@@4 n@@4) (|Seq#Update_2896| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_16741) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_5787| s@@5)) (= (|Seq#Length_5787| (|Seq#Take_5787| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_5787| s@@5) n@@5) (= (|Seq#Length_5787| (|Seq#Take_5787| s@@5 n@@5)) (|Seq#Length_5787| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_5787| (|Seq#Take_5787| s@@5 n@@5)) 0)))
 :qid |stdinbpl.275:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_5787| (|Seq#Take_5787| s@@5 n@@5)))
 :pattern ( (|Seq#Take_5787| s@@5 n@@5) (|Seq#Length_5787| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2896) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2896| s@@6)) (= (|Seq#Length_2896| (|Seq#Take_2896| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2896| s@@6) n@@6) (= (|Seq#Length_2896| (|Seq#Take_2896| s@@6 n@@6)) (|Seq#Length_2896| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2896| (|Seq#Take_2896| s@@6 n@@6)) 0)))
 :qid |stdinbpl.275:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2896| (|Seq#Take_2896| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2896| s@@6 n@@6) (|Seq#Length_2896| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2896| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.549:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2896| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_16741) (x@@1 T@Ref) ) (!  (=> (|Seq#Contains_16741| s@@7 x@@1) (and (and (<= 0 (|Seq#Skolem_16741| s@@7 x@@1)) (< (|Seq#Skolem_16741| s@@7 x@@1) (|Seq#Length_5787| s@@7))) (= (|Seq#Index_5787| s@@7 (|Seq#Skolem_16741| s@@7 x@@1)) x@@1)))
 :qid |stdinbpl.407:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_16741| s@@7 x@@1))
)))
(assert (forall ((s@@8 T@Seq_2896) (x@@2 Int) ) (!  (=> (|Seq#Contains_2896| s@@8 x@@2) (and (and (<= 0 (|Seq#Skolem_2896| s@@8 x@@2)) (< (|Seq#Skolem_2896| s@@8 x@@2) (|Seq#Length_2896| s@@8))) (= (|Seq#Index_2896| s@@8 (|Seq#Skolem_2896| s@@8 x@@2)) x@@2)))
 :qid |stdinbpl.407:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2896| s@@8 x@@2))
)))
(assert (forall ((s@@9 T@Seq_16741) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_5787| s@@9 n@@7) s@@9))
 :qid |stdinbpl.391:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_5787| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2896) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2896| s@@10 n@@8) s@@10))
 :qid |stdinbpl.391:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2896| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.244:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.242:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9244) (ExhaleHeap T@PolymorphicMapType_9244) (Mask@@0 T@PolymorphicMapType_9265) (pm_f_1 T@Field_15373_15374) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5744_5745 Mask@@0 null pm_f_1) (IsPredicateField_5744_5745 pm_f_1)) (= (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@1) null (PredicateMaskField_5744 pm_f_1)) (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| ExhaleHeap) null (PredicateMaskField_5744 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_5744_5745 pm_f_1) (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| ExhaleHeap) null (PredicateMaskField_5744 pm_f_1)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9244) (ExhaleHeap@@0 T@PolymorphicMapType_9244) (Mask@@1 T@PolymorphicMapType_9265) (pm_f_1@@0 T@Field_5740_5745) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5740_5745 Mask@@1 null pm_f_1@@0) (IsPredicateField_5740_28254 pm_f_1@@0)) (= (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@2) null (PredicateMaskField_5740 pm_f_1@@0)) (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| ExhaleHeap@@0) null (PredicateMaskField_5740 pm_f_1@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_5740_28254 pm_f_1@@0) (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| ExhaleHeap@@0) null (PredicateMaskField_5740 pm_f_1@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9244) (ExhaleHeap@@1 T@PolymorphicMapType_9244) (Mask@@2 T@PolymorphicMapType_9265) (pm_f_1@@1 T@Field_15373_15374) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5744_5745 Mask@@2 null pm_f_1@@1) (IsWandField_5744_31939 pm_f_1@@1)) (= (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@3) null (WandMaskField_5744 pm_f_1@@1)) (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| ExhaleHeap@@1) null (WandMaskField_5744 pm_f_1@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_5744_31939 pm_f_1@@1) (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| ExhaleHeap@@1) null (WandMaskField_5744 pm_f_1@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9244) (ExhaleHeap@@2 T@PolymorphicMapType_9244) (Mask@@3 T@PolymorphicMapType_9265) (pm_f_1@@2 T@Field_5740_5745) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5740_5745 Mask@@3 null pm_f_1@@2) (IsWandField_5740_31582 pm_f_1@@2)) (= (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@4) null (WandMaskField_5740 pm_f_1@@2)) (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| ExhaleHeap@@2) null (WandMaskField_5740 pm_f_1@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_5740_31582 pm_f_1@@2) (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| ExhaleHeap@@2) null (WandMaskField_5740 pm_f_1@@2)))
)))
(assert (forall ((x@@3 T@Ref) (y@@1 T@Ref) ) (! (= (|Seq#Contains_16741| (|Seq#Singleton_5787| x@@3) y@@1) (= x@@3 y@@1))
 :qid |stdinbpl.532:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_16741| (|Seq#Singleton_5787| x@@3) y@@1))
)))
(assert (forall ((x@@4 Int) (y@@2 Int) ) (! (= (|Seq#Contains_2896| (|Seq#Singleton_2896| x@@4) y@@2) (= x@@4 y@@2))
 :qid |stdinbpl.532:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2896| (|Seq#Singleton_2896| x@@4) y@@2))
)))
(assert (forall ((x@@5 T@Ref) (y@@3 T@Ref) (x2 T@Ref) (y2 T@Ref) ) (!  (=> (= (Pair x@@5 y@@3) (Pair x2 y2)) (and (= x@@5 x2) (= y@@3 y2)))
 :qid |stdinbpl.584:15|
 :skolemid |61|
 :pattern ( (Pair x@@5 y@@3) (Pair x2 y2))
)))
(assert (forall ((x@@6 T@Ref) (y@@4 T@Ref) (x2@@0 T@Ref) (y2@@0 T@Ref) ) (!  (=> (= (|Pair#sm| x@@6 y@@4) (|Pair#sm| x2@@0 y2@@0)) (and (= x@@6 x2@@0) (= y@@4 y2@@0)))
 :qid |stdinbpl.588:15|
 :skolemid |62|
 :pattern ( (|Pair#sm| x@@6 y@@4) (|Pair#sm| x2@@0 y2@@0))
)))
(assert (forall ((s@@11 T@Seq_16741) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_5787| s@@11))) (= (|Seq#Index_5787| (|Seq#Take_5787| s@@11 n@@9) j@@3) (|Seq#Index_5787| s@@11 j@@3)))
 :qid |stdinbpl.283:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_5787| (|Seq#Take_5787| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_5787| s@@11 j@@3) (|Seq#Take_5787| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2896) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2896| s@@12))) (= (|Seq#Index_2896| (|Seq#Take_2896| s@@12 n@@10) j@@4) (|Seq#Index_2896| s@@12 j@@4)))
 :qid |stdinbpl.283:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2896| (|Seq#Take_2896| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2896| s@@12 j@@4) (|Seq#Take_2896| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_16741) (t T@Seq_16741) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_5787| s@@13))) (< n@@11 (|Seq#Length_5787| (|Seq#Append_16741| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_5787| s@@13)) (|Seq#Length_5787| s@@13)) n@@11) (= (|Seq#Take_5787| (|Seq#Append_16741| s@@13 t) n@@11) (|Seq#Append_16741| s@@13 (|Seq#Take_5787| t (|Seq#Sub| n@@11 (|Seq#Length_5787| s@@13)))))))
 :qid |stdinbpl.368:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_5787| (|Seq#Append_16741| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2896) (t@@0 T@Seq_2896) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2896| s@@14))) (< n@@12 (|Seq#Length_2896| (|Seq#Append_2896| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2896| s@@14)) (|Seq#Length_2896| s@@14)) n@@12) (= (|Seq#Take_2896| (|Seq#Append_2896| s@@14 t@@0) n@@12) (|Seq#Append_2896| s@@14 (|Seq#Take_2896| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2896| s@@14)))))))
 :qid |stdinbpl.368:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2896| (|Seq#Append_2896| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9244) (ExhaleHeap@@3 T@PolymorphicMapType_9244) (Mask@@4 T@PolymorphicMapType_9265) (pm_f_1@@3 T@Field_15373_15374) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_5744_5745 Mask@@4 null pm_f_1@@3) (IsPredicateField_5744_5745 pm_f_1@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_1 T@Ref) (f_9 T@Field_15325_3018) ) (!  (=> (select (|PolymorphicMapType_9793_5740_3018#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@5) null (PredicateMaskField_5744 pm_f_1@@3))) o2_1 f_9) (= (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@5) o2_1 f_9) (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| ExhaleHeap@@3) o2_1 f_9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| ExhaleHeap@@3) o2_1 f_9))
)) (forall ((o2_1@@0 T@Ref) (f_9@@0 T@Field_9304_53) ) (!  (=> (select (|PolymorphicMapType_9793_5740_53#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@5) null (PredicateMaskField_5744 pm_f_1@@3))) o2_1@@0 f_9@@0) (= (select (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@5) o2_1@@0 f_9@@0) (select (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| ExhaleHeap@@3) o2_1@@0 f_9@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| ExhaleHeap@@3) o2_1@@0 f_9@@0))
))) (forall ((o2_1@@1 T@Ref) (f_9@@1 T@Field_9317_9318) ) (!  (=> (select (|PolymorphicMapType_9793_5740_9318#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@5) null (PredicateMaskField_5744 pm_f_1@@3))) o2_1@@1 f_9@@1) (= (select (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@@5) o2_1@@1 f_9@@1) (select (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| ExhaleHeap@@3) o2_1@@1 f_9@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| ExhaleHeap@@3) o2_1@@1 f_9@@1))
))) (forall ((o2_1@@2 T@Ref) (f_9@@2 T@Field_5740_5745) ) (!  (=> (select (|PolymorphicMapType_9793_5740_15374#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@5) null (PredicateMaskField_5744 pm_f_1@@3))) o2_1@@2 f_9@@2) (= (select (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| Heap@@5) o2_1@@2 f_9@@2) (select (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| ExhaleHeap@@3) o2_1@@2 f_9@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| ExhaleHeap@@3) o2_1@@2 f_9@@2))
))) (forall ((o2_1@@3 T@Ref) (f_9@@3 T@Field_5740_15392) ) (!  (=> (select (|PolymorphicMapType_9793_5740_29726#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@5) null (PredicateMaskField_5744 pm_f_1@@3))) o2_1@@3 f_9@@3) (= (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@5) o2_1@@3 f_9@@3) (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| ExhaleHeap@@3) o2_1@@3 f_9@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| ExhaleHeap@@3) o2_1@@3 f_9@@3))
))) (forall ((o2_1@@4 T@Ref) (f_9@@4 T@Field_5744_3018) ) (!  (=> (select (|PolymorphicMapType_9793_15373_3018#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@5) null (PredicateMaskField_5744 pm_f_1@@3))) o2_1@@4 f_9@@4) (= (select (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| Heap@@5) o2_1@@4 f_9@@4) (select (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| ExhaleHeap@@3) o2_1@@4 f_9@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| ExhaleHeap@@3) o2_1@@4 f_9@@4))
))) (forall ((o2_1@@5 T@Ref) (f_9@@5 T@Field_5744_53) ) (!  (=> (select (|PolymorphicMapType_9793_15373_53#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@5) null (PredicateMaskField_5744 pm_f_1@@3))) o2_1@@5 f_9@@5) (= (select (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| Heap@@5) o2_1@@5 f_9@@5) (select (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| ExhaleHeap@@3) o2_1@@5 f_9@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| ExhaleHeap@@3) o2_1@@5 f_9@@5))
))) (forall ((o2_1@@6 T@Ref) (f_9@@6 T@Field_5744_9318) ) (!  (=> (select (|PolymorphicMapType_9793_15373_9318#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@5) null (PredicateMaskField_5744 pm_f_1@@3))) o2_1@@6 f_9@@6) (= (select (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| Heap@@5) o2_1@@6 f_9@@6) (select (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| ExhaleHeap@@3) o2_1@@6 f_9@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| ExhaleHeap@@3) o2_1@@6 f_9@@6))
))) (forall ((o2_1@@7 T@Ref) (f_9@@7 T@Field_15373_15374) ) (!  (=> (select (|PolymorphicMapType_9793_15373_15374#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@5) null (PredicateMaskField_5744 pm_f_1@@3))) o2_1@@7 f_9@@7) (= (select (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@@5) o2_1@@7 f_9@@7) (select (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| ExhaleHeap@@3) o2_1@@7 f_9@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| ExhaleHeap@@3) o2_1@@7 f_9@@7))
))) (forall ((o2_1@@8 T@Ref) (f_9@@8 T@Field_15387_15392) ) (!  (=> (select (|PolymorphicMapType_9793_15373_30774#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@5) null (PredicateMaskField_5744 pm_f_1@@3))) o2_1@@8 f_9@@8) (= (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@5) o2_1@@8 f_9@@8) (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| ExhaleHeap@@3) o2_1@@8 f_9@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| ExhaleHeap@@3) o2_1@@8 f_9@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_5744_5745 pm_f_1@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9244) (ExhaleHeap@@4 T@PolymorphicMapType_9244) (Mask@@5 T@PolymorphicMapType_9265) (pm_f_1@@4 T@Field_5740_5745) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_5740_5745 Mask@@5 null pm_f_1@@4) (IsPredicateField_5740_28254 pm_f_1@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_1@@9 T@Ref) (f_9@@9 T@Field_15325_3018) ) (!  (=> (select (|PolymorphicMapType_9793_5740_3018#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@6) null (PredicateMaskField_5740 pm_f_1@@4))) o2_1@@9 f_9@@9) (= (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@6) o2_1@@9 f_9@@9) (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| ExhaleHeap@@4) o2_1@@9 f_9@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| ExhaleHeap@@4) o2_1@@9 f_9@@9))
)) (forall ((o2_1@@10 T@Ref) (f_9@@10 T@Field_9304_53) ) (!  (=> (select (|PolymorphicMapType_9793_5740_53#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@6) null (PredicateMaskField_5740 pm_f_1@@4))) o2_1@@10 f_9@@10) (= (select (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@6) o2_1@@10 f_9@@10) (select (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| ExhaleHeap@@4) o2_1@@10 f_9@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| ExhaleHeap@@4) o2_1@@10 f_9@@10))
))) (forall ((o2_1@@11 T@Ref) (f_9@@11 T@Field_9317_9318) ) (!  (=> (select (|PolymorphicMapType_9793_5740_9318#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@6) null (PredicateMaskField_5740 pm_f_1@@4))) o2_1@@11 f_9@@11) (= (select (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@@6) o2_1@@11 f_9@@11) (select (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| ExhaleHeap@@4) o2_1@@11 f_9@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| ExhaleHeap@@4) o2_1@@11 f_9@@11))
))) (forall ((o2_1@@12 T@Ref) (f_9@@12 T@Field_5740_5745) ) (!  (=> (select (|PolymorphicMapType_9793_5740_15374#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@6) null (PredicateMaskField_5740 pm_f_1@@4))) o2_1@@12 f_9@@12) (= (select (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| Heap@@6) o2_1@@12 f_9@@12) (select (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| ExhaleHeap@@4) o2_1@@12 f_9@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| ExhaleHeap@@4) o2_1@@12 f_9@@12))
))) (forall ((o2_1@@13 T@Ref) (f_9@@13 T@Field_5740_15392) ) (!  (=> (select (|PolymorphicMapType_9793_5740_29726#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@6) null (PredicateMaskField_5740 pm_f_1@@4))) o2_1@@13 f_9@@13) (= (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@6) o2_1@@13 f_9@@13) (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| ExhaleHeap@@4) o2_1@@13 f_9@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| ExhaleHeap@@4) o2_1@@13 f_9@@13))
))) (forall ((o2_1@@14 T@Ref) (f_9@@14 T@Field_5744_3018) ) (!  (=> (select (|PolymorphicMapType_9793_15373_3018#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@6) null (PredicateMaskField_5740 pm_f_1@@4))) o2_1@@14 f_9@@14) (= (select (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| Heap@@6) o2_1@@14 f_9@@14) (select (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| ExhaleHeap@@4) o2_1@@14 f_9@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| ExhaleHeap@@4) o2_1@@14 f_9@@14))
))) (forall ((o2_1@@15 T@Ref) (f_9@@15 T@Field_5744_53) ) (!  (=> (select (|PolymorphicMapType_9793_15373_53#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@6) null (PredicateMaskField_5740 pm_f_1@@4))) o2_1@@15 f_9@@15) (= (select (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| Heap@@6) o2_1@@15 f_9@@15) (select (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| ExhaleHeap@@4) o2_1@@15 f_9@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| ExhaleHeap@@4) o2_1@@15 f_9@@15))
))) (forall ((o2_1@@16 T@Ref) (f_9@@16 T@Field_5744_9318) ) (!  (=> (select (|PolymorphicMapType_9793_15373_9318#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@6) null (PredicateMaskField_5740 pm_f_1@@4))) o2_1@@16 f_9@@16) (= (select (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| Heap@@6) o2_1@@16 f_9@@16) (select (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| ExhaleHeap@@4) o2_1@@16 f_9@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| ExhaleHeap@@4) o2_1@@16 f_9@@16))
))) (forall ((o2_1@@17 T@Ref) (f_9@@17 T@Field_15373_15374) ) (!  (=> (select (|PolymorphicMapType_9793_15373_15374#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@6) null (PredicateMaskField_5740 pm_f_1@@4))) o2_1@@17 f_9@@17) (= (select (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@@6) o2_1@@17 f_9@@17) (select (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| ExhaleHeap@@4) o2_1@@17 f_9@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| ExhaleHeap@@4) o2_1@@17 f_9@@17))
))) (forall ((o2_1@@18 T@Ref) (f_9@@18 T@Field_15387_15392) ) (!  (=> (select (|PolymorphicMapType_9793_15373_30774#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@6) null (PredicateMaskField_5740 pm_f_1@@4))) o2_1@@18 f_9@@18) (= (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@6) o2_1@@18 f_9@@18) (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| ExhaleHeap@@4) o2_1@@18 f_9@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| ExhaleHeap@@4) o2_1@@18 f_9@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_5740_28254 pm_f_1@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9244) (ExhaleHeap@@5 T@PolymorphicMapType_9244) (Mask@@6 T@PolymorphicMapType_9265) (pm_f_1@@5 T@Field_15373_15374) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_5744_5745 Mask@@6 null pm_f_1@@5) (IsWandField_5744_31939 pm_f_1@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_1@@19 T@Ref) (f_9@@19 T@Field_15325_3018) ) (!  (=> (select (|PolymorphicMapType_9793_5740_3018#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@7) null (WandMaskField_5744 pm_f_1@@5))) o2_1@@19 f_9@@19) (= (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@7) o2_1@@19 f_9@@19) (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| ExhaleHeap@@5) o2_1@@19 f_9@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| ExhaleHeap@@5) o2_1@@19 f_9@@19))
)) (forall ((o2_1@@20 T@Ref) (f_9@@20 T@Field_9304_53) ) (!  (=> (select (|PolymorphicMapType_9793_5740_53#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@7) null (WandMaskField_5744 pm_f_1@@5))) o2_1@@20 f_9@@20) (= (select (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@7) o2_1@@20 f_9@@20) (select (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| ExhaleHeap@@5) o2_1@@20 f_9@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| ExhaleHeap@@5) o2_1@@20 f_9@@20))
))) (forall ((o2_1@@21 T@Ref) (f_9@@21 T@Field_9317_9318) ) (!  (=> (select (|PolymorphicMapType_9793_5740_9318#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@7) null (WandMaskField_5744 pm_f_1@@5))) o2_1@@21 f_9@@21) (= (select (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@@7) o2_1@@21 f_9@@21) (select (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| ExhaleHeap@@5) o2_1@@21 f_9@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| ExhaleHeap@@5) o2_1@@21 f_9@@21))
))) (forall ((o2_1@@22 T@Ref) (f_9@@22 T@Field_5740_5745) ) (!  (=> (select (|PolymorphicMapType_9793_5740_15374#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@7) null (WandMaskField_5744 pm_f_1@@5))) o2_1@@22 f_9@@22) (= (select (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| Heap@@7) o2_1@@22 f_9@@22) (select (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| ExhaleHeap@@5) o2_1@@22 f_9@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| ExhaleHeap@@5) o2_1@@22 f_9@@22))
))) (forall ((o2_1@@23 T@Ref) (f_9@@23 T@Field_5740_15392) ) (!  (=> (select (|PolymorphicMapType_9793_5740_29726#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@7) null (WandMaskField_5744 pm_f_1@@5))) o2_1@@23 f_9@@23) (= (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@7) o2_1@@23 f_9@@23) (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| ExhaleHeap@@5) o2_1@@23 f_9@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| ExhaleHeap@@5) o2_1@@23 f_9@@23))
))) (forall ((o2_1@@24 T@Ref) (f_9@@24 T@Field_5744_3018) ) (!  (=> (select (|PolymorphicMapType_9793_15373_3018#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@7) null (WandMaskField_5744 pm_f_1@@5))) o2_1@@24 f_9@@24) (= (select (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| Heap@@7) o2_1@@24 f_9@@24) (select (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| ExhaleHeap@@5) o2_1@@24 f_9@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| ExhaleHeap@@5) o2_1@@24 f_9@@24))
))) (forall ((o2_1@@25 T@Ref) (f_9@@25 T@Field_5744_53) ) (!  (=> (select (|PolymorphicMapType_9793_15373_53#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@7) null (WandMaskField_5744 pm_f_1@@5))) o2_1@@25 f_9@@25) (= (select (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| Heap@@7) o2_1@@25 f_9@@25) (select (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| ExhaleHeap@@5) o2_1@@25 f_9@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| ExhaleHeap@@5) o2_1@@25 f_9@@25))
))) (forall ((o2_1@@26 T@Ref) (f_9@@26 T@Field_5744_9318) ) (!  (=> (select (|PolymorphicMapType_9793_15373_9318#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@7) null (WandMaskField_5744 pm_f_1@@5))) o2_1@@26 f_9@@26) (= (select (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| Heap@@7) o2_1@@26 f_9@@26) (select (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| ExhaleHeap@@5) o2_1@@26 f_9@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| ExhaleHeap@@5) o2_1@@26 f_9@@26))
))) (forall ((o2_1@@27 T@Ref) (f_9@@27 T@Field_15373_15374) ) (!  (=> (select (|PolymorphicMapType_9793_15373_15374#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@7) null (WandMaskField_5744 pm_f_1@@5))) o2_1@@27 f_9@@27) (= (select (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@@7) o2_1@@27 f_9@@27) (select (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| ExhaleHeap@@5) o2_1@@27 f_9@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| ExhaleHeap@@5) o2_1@@27 f_9@@27))
))) (forall ((o2_1@@28 T@Ref) (f_9@@28 T@Field_15387_15392) ) (!  (=> (select (|PolymorphicMapType_9793_15373_30774#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@7) null (WandMaskField_5744 pm_f_1@@5))) o2_1@@28 f_9@@28) (= (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@7) o2_1@@28 f_9@@28) (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| ExhaleHeap@@5) o2_1@@28 f_9@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| ExhaleHeap@@5) o2_1@@28 f_9@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_5744_31939 pm_f_1@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9244) (ExhaleHeap@@6 T@PolymorphicMapType_9244) (Mask@@7 T@PolymorphicMapType_9265) (pm_f_1@@6 T@Field_5740_5745) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_5740_5745 Mask@@7 null pm_f_1@@6) (IsWandField_5740_31582 pm_f_1@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_1@@29 T@Ref) (f_9@@29 T@Field_15325_3018) ) (!  (=> (select (|PolymorphicMapType_9793_5740_3018#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@8) null (WandMaskField_5740 pm_f_1@@6))) o2_1@@29 f_9@@29) (= (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@8) o2_1@@29 f_9@@29) (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| ExhaleHeap@@6) o2_1@@29 f_9@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| ExhaleHeap@@6) o2_1@@29 f_9@@29))
)) (forall ((o2_1@@30 T@Ref) (f_9@@30 T@Field_9304_53) ) (!  (=> (select (|PolymorphicMapType_9793_5740_53#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@8) null (WandMaskField_5740 pm_f_1@@6))) o2_1@@30 f_9@@30) (= (select (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@8) o2_1@@30 f_9@@30) (select (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| ExhaleHeap@@6) o2_1@@30 f_9@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| ExhaleHeap@@6) o2_1@@30 f_9@@30))
))) (forall ((o2_1@@31 T@Ref) (f_9@@31 T@Field_9317_9318) ) (!  (=> (select (|PolymorphicMapType_9793_5740_9318#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@8) null (WandMaskField_5740 pm_f_1@@6))) o2_1@@31 f_9@@31) (= (select (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@@8) o2_1@@31 f_9@@31) (select (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| ExhaleHeap@@6) o2_1@@31 f_9@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| ExhaleHeap@@6) o2_1@@31 f_9@@31))
))) (forall ((o2_1@@32 T@Ref) (f_9@@32 T@Field_5740_5745) ) (!  (=> (select (|PolymorphicMapType_9793_5740_15374#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@8) null (WandMaskField_5740 pm_f_1@@6))) o2_1@@32 f_9@@32) (= (select (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| Heap@@8) o2_1@@32 f_9@@32) (select (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| ExhaleHeap@@6) o2_1@@32 f_9@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| ExhaleHeap@@6) o2_1@@32 f_9@@32))
))) (forall ((o2_1@@33 T@Ref) (f_9@@33 T@Field_5740_15392) ) (!  (=> (select (|PolymorphicMapType_9793_5740_29726#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@8) null (WandMaskField_5740 pm_f_1@@6))) o2_1@@33 f_9@@33) (= (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@8) o2_1@@33 f_9@@33) (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| ExhaleHeap@@6) o2_1@@33 f_9@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| ExhaleHeap@@6) o2_1@@33 f_9@@33))
))) (forall ((o2_1@@34 T@Ref) (f_9@@34 T@Field_5744_3018) ) (!  (=> (select (|PolymorphicMapType_9793_15373_3018#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@8) null (WandMaskField_5740 pm_f_1@@6))) o2_1@@34 f_9@@34) (= (select (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| Heap@@8) o2_1@@34 f_9@@34) (select (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| ExhaleHeap@@6) o2_1@@34 f_9@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| ExhaleHeap@@6) o2_1@@34 f_9@@34))
))) (forall ((o2_1@@35 T@Ref) (f_9@@35 T@Field_5744_53) ) (!  (=> (select (|PolymorphicMapType_9793_15373_53#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@8) null (WandMaskField_5740 pm_f_1@@6))) o2_1@@35 f_9@@35) (= (select (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| Heap@@8) o2_1@@35 f_9@@35) (select (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| ExhaleHeap@@6) o2_1@@35 f_9@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| ExhaleHeap@@6) o2_1@@35 f_9@@35))
))) (forall ((o2_1@@36 T@Ref) (f_9@@36 T@Field_5744_9318) ) (!  (=> (select (|PolymorphicMapType_9793_15373_9318#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@8) null (WandMaskField_5740 pm_f_1@@6))) o2_1@@36 f_9@@36) (= (select (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| Heap@@8) o2_1@@36 f_9@@36) (select (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| ExhaleHeap@@6) o2_1@@36 f_9@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| ExhaleHeap@@6) o2_1@@36 f_9@@36))
))) (forall ((o2_1@@37 T@Ref) (f_9@@37 T@Field_15373_15374) ) (!  (=> (select (|PolymorphicMapType_9793_15373_15374#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@8) null (WandMaskField_5740 pm_f_1@@6))) o2_1@@37 f_9@@37) (= (select (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@@8) o2_1@@37 f_9@@37) (select (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| ExhaleHeap@@6) o2_1@@37 f_9@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| ExhaleHeap@@6) o2_1@@37 f_9@@37))
))) (forall ((o2_1@@38 T@Ref) (f_9@@38 T@Field_15387_15392) ) (!  (=> (select (|PolymorphicMapType_9793_15373_30774#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@8) null (WandMaskField_5740 pm_f_1@@6))) o2_1@@38 f_9@@38) (= (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@8) o2_1@@38 f_9@@38) (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| ExhaleHeap@@6) o2_1@@38 f_9@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| ExhaleHeap@@6) o2_1@@38 f_9@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_5740_31582 pm_f_1@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9244) (ExhaleHeap@@7 T@PolymorphicMapType_9244) (Mask@@8 T@PolymorphicMapType_9265) (o_4 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@9) o_4 $allocated) (select (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| ExhaleHeap@@7) o_4 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| ExhaleHeap@@7) o_4 $allocated))
)))
(assert (forall ((p T@Field_15373_15374) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_15373_15373 p v_1 p w))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15373_15373 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_5740_5745) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_9304_9304 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9304_9304 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_16741) (s1 T@Seq_16741) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_5787|)) (not (= s1 |Seq#Empty_5787|))) (<= (|Seq#Length_5787| s0) n@@13)) (< n@@13 (|Seq#Length_5787| (|Seq#Append_16741| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_5787| s0)) (|Seq#Length_5787| s0)) n@@13) (= (|Seq#Index_5787| (|Seq#Append_16741| s0 s1) n@@13) (|Seq#Index_5787| s1 (|Seq#Sub| n@@13 (|Seq#Length_5787| s0))))))
 :qid |stdinbpl.255:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_5787| (|Seq#Append_16741| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2896) (s1@@0 T@Seq_2896) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2896|)) (not (= s1@@0 |Seq#Empty_2896|))) (<= (|Seq#Length_2896| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2896| (|Seq#Append_2896| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2896| s0@@0)) (|Seq#Length_2896| s0@@0)) n@@14) (= (|Seq#Index_2896| (|Seq#Append_2896| s0@@0 s1@@0) n@@14) (|Seq#Index_2896| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2896| s0@@0))))))
 :qid |stdinbpl.255:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2896| (|Seq#Append_2896| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_5740_3018 f_7)))
(assert  (not (IsWandField_5740_3018 f_7)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9244) (ExhaleHeap@@8 T@PolymorphicMapType_9244) (Mask@@9 T@PolymorphicMapType_9265) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_9265) (o_2@@9 T@Ref) (f_4@@9 T@Field_15387_15392) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5744_38871 f_4@@9))) (not (IsWandField_5744_38887 f_4@@9))) (<= (select (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9265) (o_2@@10 T@Ref) (f_4@@10 T@Field_5744_9318) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5744_9318 f_4@@10))) (not (IsWandField_5744_9318 f_4@@10))) (<= (select (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9265) (o_2@@11 T@Ref) (f_4@@11 T@Field_5744_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5744_53 f_4@@11))) (not (IsWandField_5744_53 f_4@@11))) (<= (select (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9265) (o_2@@12 T@Ref) (f_4@@12 T@Field_15373_15374) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5744_5745 f_4@@12))) (not (IsWandField_5744_31939 f_4@@12))) (<= (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_9265) (o_2@@13 T@Ref) (f_4@@13 T@Field_5744_3018) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5744_3018 f_4@@13))) (not (IsWandField_5744_3018 f_4@@13))) (<= (select (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_9265) (o_2@@14 T@Ref) (f_4@@14 T@Field_5740_15392) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5740_38040 f_4@@14))) (not (IsWandField_5740_38056 f_4@@14))) (<= (select (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_9265) (o_2@@15 T@Ref) (f_4@@15 T@Field_9317_9318) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5740_9318 f_4@@15))) (not (IsWandField_5740_9318 f_4@@15))) (<= (select (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_9265) (o_2@@16 T@Ref) (f_4@@16 T@Field_9304_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5740_53 f_4@@16))) (not (IsWandField_5740_53 f_4@@16))) (<= (select (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_9265) (o_2@@17 T@Ref) (f_4@@17 T@Field_5740_5745) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5740_28254 f_4@@17))) (not (IsWandField_5740_31582 f_4@@17))) (<= (select (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_9265) (o_2@@18 T@Ref) (f_4@@18 T@Field_15325_3018) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5740_3018 f_4@@18))) (not (IsWandField_5740_3018 f_4@@18))) (<= (select (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_9265) (o_2@@19 T@Ref) (f_4@@19 T@Field_15387_15392) ) (! (= (HasDirectPerm_5744_28009 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5744_28009 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_9265) (o_2@@20 T@Ref) (f_4@@20 T@Field_5744_9318) ) (! (= (HasDirectPerm_5744_9318 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5744_9318 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_9265) (o_2@@21 T@Ref) (f_4@@21 T@Field_5744_53) ) (! (= (HasDirectPerm_5744_53 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5744_53 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_9265) (o_2@@22 T@Ref) (f_4@@22 T@Field_15373_15374) ) (! (= (HasDirectPerm_5744_5745 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5744_5745 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_9265) (o_2@@23 T@Ref) (f_4@@23 T@Field_5744_3018) ) (! (= (HasDirectPerm_5744_3018 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5744_3018 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_9265) (o_2@@24 T@Ref) (f_4@@24 T@Field_5740_15392) ) (! (= (HasDirectPerm_5740_26868 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5740_26868 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_9265) (o_2@@25 T@Ref) (f_4@@25 T@Field_9317_9318) ) (! (= (HasDirectPerm_5740_9318 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5740_9318 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_9265) (o_2@@26 T@Ref) (f_4@@26 T@Field_9304_53) ) (! (= (HasDirectPerm_5740_53 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5740_53 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_9265) (o_2@@27 T@Ref) (f_4@@27 T@Field_5740_5745) ) (! (= (HasDirectPerm_5740_5745 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5740_5745 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_9265) (o_2@@28 T@Ref) (f_4@@28 T@Field_15325_3018) ) (! (= (HasDirectPerm_5740_3018 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5740_3018 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.174:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2896| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.547:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2896| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9244) (ExhaleHeap@@9 T@PolymorphicMapType_9244) (Mask@@30 T@PolymorphicMapType_9265) (o_4@@0 T@Ref) (f_9@@39 T@Field_15387_15392) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_5744_28009 Mask@@30 o_4@@0 f_9@@39) (= (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@11) o_4@@0 f_9@@39) (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| ExhaleHeap@@9) o_4@@0 f_9@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| ExhaleHeap@@9) o_4@@0 f_9@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9244) (ExhaleHeap@@10 T@PolymorphicMapType_9244) (Mask@@31 T@PolymorphicMapType_9265) (o_4@@1 T@Ref) (f_9@@40 T@Field_5744_9318) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_5744_9318 Mask@@31 o_4@@1 f_9@@40) (= (select (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| Heap@@12) o_4@@1 f_9@@40) (select (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| ExhaleHeap@@10) o_4@@1 f_9@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| ExhaleHeap@@10) o_4@@1 f_9@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9244) (ExhaleHeap@@11 T@PolymorphicMapType_9244) (Mask@@32 T@PolymorphicMapType_9265) (o_4@@2 T@Ref) (f_9@@41 T@Field_5744_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_5744_53 Mask@@32 o_4@@2 f_9@@41) (= (select (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| Heap@@13) o_4@@2 f_9@@41) (select (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| ExhaleHeap@@11) o_4@@2 f_9@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| ExhaleHeap@@11) o_4@@2 f_9@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9244) (ExhaleHeap@@12 T@PolymorphicMapType_9244) (Mask@@33 T@PolymorphicMapType_9265) (o_4@@3 T@Ref) (f_9@@42 T@Field_15373_15374) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_5744_5745 Mask@@33 o_4@@3 f_9@@42) (= (select (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@@14) o_4@@3 f_9@@42) (select (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| ExhaleHeap@@12) o_4@@3 f_9@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| ExhaleHeap@@12) o_4@@3 f_9@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9244) (ExhaleHeap@@13 T@PolymorphicMapType_9244) (Mask@@34 T@PolymorphicMapType_9265) (o_4@@4 T@Ref) (f_9@@43 T@Field_5744_3018) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_5744_3018 Mask@@34 o_4@@4 f_9@@43) (= (select (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| Heap@@15) o_4@@4 f_9@@43) (select (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| ExhaleHeap@@13) o_4@@4 f_9@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| ExhaleHeap@@13) o_4@@4 f_9@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9244) (ExhaleHeap@@14 T@PolymorphicMapType_9244) (Mask@@35 T@PolymorphicMapType_9265) (o_4@@5 T@Ref) (f_9@@44 T@Field_5740_15392) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_5740_26868 Mask@@35 o_4@@5 f_9@@44) (= (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@16) o_4@@5 f_9@@44) (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| ExhaleHeap@@14) o_4@@5 f_9@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| ExhaleHeap@@14) o_4@@5 f_9@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9244) (ExhaleHeap@@15 T@PolymorphicMapType_9244) (Mask@@36 T@PolymorphicMapType_9265) (o_4@@6 T@Ref) (f_9@@45 T@Field_9317_9318) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_5740_9318 Mask@@36 o_4@@6 f_9@@45) (= (select (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@@17) o_4@@6 f_9@@45) (select (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| ExhaleHeap@@15) o_4@@6 f_9@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| ExhaleHeap@@15) o_4@@6 f_9@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_9244) (ExhaleHeap@@16 T@PolymorphicMapType_9244) (Mask@@37 T@PolymorphicMapType_9265) (o_4@@7 T@Ref) (f_9@@46 T@Field_9304_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_5740_53 Mask@@37 o_4@@7 f_9@@46) (= (select (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@18) o_4@@7 f_9@@46) (select (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| ExhaleHeap@@16) o_4@@7 f_9@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| ExhaleHeap@@16) o_4@@7 f_9@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_9244) (ExhaleHeap@@17 T@PolymorphicMapType_9244) (Mask@@38 T@PolymorphicMapType_9265) (o_4@@8 T@Ref) (f_9@@47 T@Field_5740_5745) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_5740_5745 Mask@@38 o_4@@8 f_9@@47) (= (select (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| Heap@@19) o_4@@8 f_9@@47) (select (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| ExhaleHeap@@17) o_4@@8 f_9@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| ExhaleHeap@@17) o_4@@8 f_9@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_9244) (ExhaleHeap@@18 T@PolymorphicMapType_9244) (Mask@@39 T@PolymorphicMapType_9265) (o_4@@9 T@Ref) (f_9@@48 T@Field_15325_3018) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_5740_3018 Mask@@39 o_4@@9 f_9@@48) (= (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@20) o_4@@9 f_9@@48) (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| ExhaleHeap@@18) o_4@@9 f_9@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| ExhaleHeap@@18) o_4@@9 f_9@@48))
)))
(assert (forall ((s0@@1 T@Seq_16741) (s1@@1 T@Seq_16741) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_5787|)) (not (= s1@@1 |Seq#Empty_5787|))) (= (|Seq#Length_5787| (|Seq#Append_16741| s0@@1 s1@@1)) (+ (|Seq#Length_5787| s0@@1) (|Seq#Length_5787| s1@@1))))
 :qid |stdinbpl.224:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_5787| (|Seq#Append_16741| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2896) (s1@@2 T@Seq_2896) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2896|)) (not (= s1@@2 |Seq#Empty_2896|))) (= (|Seq#Length_2896| (|Seq#Append_2896| s0@@2 s1@@2)) (+ (|Seq#Length_2896| s0@@2) (|Seq#Length_2896| s1@@2))))
 :qid |stdinbpl.224:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2896| (|Seq#Append_2896| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_15387_15392) ) (! (= (select (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_5744_9318) ) (! (= (select (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_5744_53) ) (! (= (select (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_15373_15374) ) (! (= (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_5744_3018) ) (! (= (select (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_5740_15392) ) (! (= (select (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_9317_9318) ) (! (= (select (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_9304_53) ) (! (= (select (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_5740_5745) ) (! (= (select (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_15325_3018) ) (! (= (select (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((s@@15 T@Seq_16741) (t@@1 T@Seq_16741) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_5787| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_5787| s@@15)) (|Seq#Length_5787| s@@15)) n@@15) (= (|Seq#Drop_5787| (|Seq#Append_16741| s@@15 t@@1) n@@15) (|Seq#Drop_5787| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_5787| s@@15))))))
 :qid |stdinbpl.381:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_5787| (|Seq#Append_16741| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2896) (t@@2 T@Seq_2896) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2896| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2896| s@@16)) (|Seq#Length_2896| s@@16)) n@@16) (= (|Seq#Drop_2896| (|Seq#Append_2896| s@@16 t@@2) n@@16) (|Seq#Drop_2896| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2896| s@@16))))))
 :qid |stdinbpl.381:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2896| (|Seq#Append_2896| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9265) (SummandMask1 T@PolymorphicMapType_9265) (SummandMask2 T@PolymorphicMapType_9265) (o_2@@39 T@Ref) (f_4@@39 T@Field_15387_15392) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9265) (SummandMask1@@0 T@PolymorphicMapType_9265) (SummandMask2@@0 T@PolymorphicMapType_9265) (o_2@@40 T@Ref) (f_4@@40 T@Field_5744_9318) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9265) (SummandMask1@@1 T@PolymorphicMapType_9265) (SummandMask2@@1 T@PolymorphicMapType_9265) (o_2@@41 T@Ref) (f_4@@41 T@Field_5744_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9265) (SummandMask1@@2 T@PolymorphicMapType_9265) (SummandMask2@@2 T@PolymorphicMapType_9265) (o_2@@42 T@Ref) (f_4@@42 T@Field_15373_15374) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9265) (SummandMask1@@3 T@PolymorphicMapType_9265) (SummandMask2@@3 T@PolymorphicMapType_9265) (o_2@@43 T@Ref) (f_4@@43 T@Field_5744_3018) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_9265) (SummandMask1@@4 T@PolymorphicMapType_9265) (SummandMask2@@4 T@PolymorphicMapType_9265) (o_2@@44 T@Ref) (f_4@@44 T@Field_5740_15392) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_9265) (SummandMask1@@5 T@PolymorphicMapType_9265) (SummandMask2@@5 T@PolymorphicMapType_9265) (o_2@@45 T@Ref) (f_4@@45 T@Field_9317_9318) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_9265) (SummandMask1@@6 T@PolymorphicMapType_9265) (SummandMask2@@6 T@PolymorphicMapType_9265) (o_2@@46 T@Ref) (f_4@@46 T@Field_9304_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_9265) (SummandMask1@@7 T@PolymorphicMapType_9265) (SummandMask2@@7 T@PolymorphicMapType_9265) (o_2@@47 T@Ref) (f_4@@47 T@Field_5740_5745) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_9265) (SummandMask1@@8 T@PolymorphicMapType_9265) (SummandMask2@@8 T@PolymorphicMapType_9265) (o_2@@48 T@Ref) (f_4@@48 T@Field_15325_3018) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2896| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2896| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.546:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2896| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_16741) (b T@Seq_16741) ) (!  (=> (|Seq#Equal_16741| a b) (= a b))
 :qid |stdinbpl.519:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_16741| a b))
)))
(assert (forall ((a@@0 T@Seq_2896) (b@@0 T@Seq_2896) ) (!  (=> (|Seq#Equal_2896| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.519:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2896| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_16741) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_5787| s@@17))) (|Seq#ContainsTrigger_5787| s@@17 (|Seq#Index_5787| s@@17 i@@3)))
 :qid |stdinbpl.412:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_5787| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_2896) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2896| s@@18))) (|Seq#ContainsTrigger_2896| s@@18 (|Seq#Index_2896| s@@18 i@@4)))
 :qid |stdinbpl.412:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2896| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_16741) (s1@@3 T@Seq_16741) ) (!  (and (=> (= s0@@3 |Seq#Empty_5787|) (= (|Seq#Append_16741| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_5787|) (= (|Seq#Append_16741| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.230:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_16741| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2896) (s1@@4 T@Seq_2896) ) (!  (and (=> (= s0@@4 |Seq#Empty_2896|) (= (|Seq#Append_2896| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2896|) (= (|Seq#Append_2896| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.230:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2896| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_5787| (|Seq#Singleton_5787| t@@3) 0) t@@3)
 :qid |stdinbpl.234:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_5787| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2896| (|Seq#Singleton_2896| t@@4) 0) t@@4)
 :qid |stdinbpl.234:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2896| t@@4))
)))
(assert (forall ((s@@19 T@Seq_16741) ) (! (<= 0 (|Seq#Length_5787| s@@19))
 :qid |stdinbpl.213:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_5787| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2896) ) (! (<= 0 (|Seq#Length_2896| s@@20))
 :qid |stdinbpl.213:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2896| s@@20))
)))
(assert (forall ((x@@7 T@Ref) (y@@5 T@Ref) ) (! (= (getPredWandId_5744_5745 (Pair x@@7 y@@5)) 0)
 :qid |stdinbpl.578:15|
 :skolemid |60|
 :pattern ( (Pair x@@7 y@@5))
)))
(assert (forall ((s0@@5 T@Seq_16741) (s1@@5 T@Seq_16741) ) (!  (=> (|Seq#Equal_16741| s0@@5 s1@@5) (and (= (|Seq#Length_5787| s0@@5) (|Seq#Length_5787| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_5787| s0@@5))) (= (|Seq#Index_5787| s0@@5 j@@6) (|Seq#Index_5787| s1@@5 j@@6)))
 :qid |stdinbpl.509:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_5787| s0@@5 j@@6))
 :pattern ( (|Seq#Index_5787| s1@@5 j@@6))
))))
 :qid |stdinbpl.506:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_16741| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2896) (s1@@6 T@Seq_2896) ) (!  (=> (|Seq#Equal_2896| s0@@6 s1@@6) (and (= (|Seq#Length_2896| s0@@6) (|Seq#Length_2896| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2896| s0@@6))) (= (|Seq#Index_2896| s0@@6 j@@7) (|Seq#Index_2896| s1@@6 j@@7)))
 :qid |stdinbpl.509:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2896| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2896| s1@@6 j@@7))
))))
 :qid |stdinbpl.506:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2896| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_5787| (|Seq#Singleton_5787| t@@5)) 1)
 :qid |stdinbpl.221:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_5787| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2896| (|Seq#Singleton_2896| t@@6)) 1)
 :qid |stdinbpl.221:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2896| t@@6))
)))
(assert (forall ((x@@8 T@Ref) (y@@6 T@Ref) ) (! (= (PredicateMaskField_5744 (Pair x@@8 y@@6)) (|Pair#sm| x@@8 y@@6))
 :qid |stdinbpl.570:15|
 :skolemid |58|
 :pattern ( (PredicateMaskField_5744 (Pair x@@8 y@@6)))
)))
(assert (forall ((s@@21 T@Seq_16741) (t@@7 T@Seq_16741) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_5787| s@@21))) (= (|Seq#Take_5787| (|Seq#Append_16741| s@@21 t@@7) n@@17) (|Seq#Take_5787| s@@21 n@@17)))
 :qid |stdinbpl.363:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_5787| (|Seq#Append_16741| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2896) (t@@8 T@Seq_2896) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2896| s@@22))) (= (|Seq#Take_2896| (|Seq#Append_2896| s@@22 t@@8) n@@18) (|Seq#Take_2896| s@@22 n@@18)))
 :qid |stdinbpl.363:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2896| (|Seq#Append_2896| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_16741) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_5787| s@@23))) (= (|Seq#Length_5787| (|Seq#Update_5787| s@@23 i@@5 v@@2)) (|Seq#Length_5787| s@@23)))
 :qid |stdinbpl.262:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_5787| (|Seq#Update_5787| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_5787| s@@23) (|Seq#Update_5787| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2896) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2896| s@@24))) (= (|Seq#Length_2896| (|Seq#Update_2896| s@@24 i@@6 v@@3)) (|Seq#Length_2896| s@@24)))
 :qid |stdinbpl.262:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2896| (|Seq#Update_2896| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_2896| s@@24) (|Seq#Update_2896| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_9244) (o_3 T@Ref) (f_10 T@Field_15387_15392) (v@@4 T@PolymorphicMapType_9793) ) (! (succHeap Heap@@21 (PolymorphicMapType_9244 (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@21) (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@@21) (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@21) (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@@21) (store (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@21) o_3 f_10 v@@4) (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| Heap@@21) (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@21) (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| Heap@@21) (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| Heap@@21) (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9244 (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@21) (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@@21) (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@21) (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@@21) (store (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@21) o_3 f_10 v@@4) (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| Heap@@21) (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@21) (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| Heap@@21) (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| Heap@@21) (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_9244) (o_3@@0 T@Ref) (f_10@@0 T@Field_15373_15374) (v@@5 T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_9244 (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@22) (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@@22) (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@22) (store (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@@22) o_3@@0 f_10@@0 v@@5) (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@22) (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| Heap@@22) (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@22) (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| Heap@@22) (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| Heap@@22) (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9244 (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@22) (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@@22) (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@22) (store (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@@22) o_3@@0 f_10@@0 v@@5) (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@22) (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| Heap@@22) (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@22) (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| Heap@@22) (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| Heap@@22) (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_9244) (o_3@@1 T@Ref) (f_10@@1 T@Field_5744_3018) (v@@6 Int) ) (! (succHeap Heap@@23 (PolymorphicMapType_9244 (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@23) (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@@23) (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@23) (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@@23) (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@23) (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| Heap@@23) (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@23) (store (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| Heap@@23) o_3@@1 f_10@@1 v@@6) (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| Heap@@23) (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9244 (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@23) (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@@23) (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@23) (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@@23) (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@23) (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| Heap@@23) (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@23) (store (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| Heap@@23) o_3@@1 f_10@@1 v@@6) (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| Heap@@23) (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_9244) (o_3@@2 T@Ref) (f_10@@2 T@Field_5744_9318) (v@@7 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_9244 (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@24) (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@@24) (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@24) (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@@24) (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@24) (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| Heap@@24) (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@24) (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| Heap@@24) (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| Heap@@24) (store (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| Heap@@24) o_3@@2 f_10@@2 v@@7)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9244 (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@24) (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@@24) (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@24) (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@@24) (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@24) (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| Heap@@24) (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@24) (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| Heap@@24) (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| Heap@@24) (store (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| Heap@@24) o_3@@2 f_10@@2 v@@7)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_9244) (o_3@@3 T@Ref) (f_10@@3 T@Field_5744_53) (v@@8 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_9244 (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@25) (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@@25) (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@25) (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@@25) (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@25) (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| Heap@@25) (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@25) (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| Heap@@25) (store (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| Heap@@25) o_3@@3 f_10@@3 v@@8) (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9244 (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@25) (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@@25) (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@25) (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@@25) (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@25) (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| Heap@@25) (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@25) (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| Heap@@25) (store (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| Heap@@25) o_3@@3 f_10@@3 v@@8) (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_9244) (o_3@@4 T@Ref) (f_10@@4 T@Field_5740_15392) (v@@9 T@PolymorphicMapType_9793) ) (! (succHeap Heap@@26 (PolymorphicMapType_9244 (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@26) (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@@26) (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@26) (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@@26) (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@26) (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| Heap@@26) (store (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@26) o_3@@4 f_10@@4 v@@9) (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| Heap@@26) (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| Heap@@26) (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9244 (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@26) (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@@26) (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@26) (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@@26) (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@26) (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| Heap@@26) (store (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@26) o_3@@4 f_10@@4 v@@9) (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| Heap@@26) (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| Heap@@26) (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_9244) (o_3@@5 T@Ref) (f_10@@5 T@Field_5740_5745) (v@@10 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_9244 (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@27) (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@@27) (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@27) (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@@27) (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@27) (store (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| Heap@@27) o_3@@5 f_10@@5 v@@10) (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@27) (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| Heap@@27) (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| Heap@@27) (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9244 (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@27) (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@@27) (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@27) (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@@27) (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@27) (store (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| Heap@@27) o_3@@5 f_10@@5 v@@10) (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@27) (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| Heap@@27) (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| Heap@@27) (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_9244) (o_3@@6 T@Ref) (f_10@@6 T@Field_15325_3018) (v@@11 Int) ) (! (succHeap Heap@@28 (PolymorphicMapType_9244 (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@28) (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@@28) (store (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@28) o_3@@6 f_10@@6 v@@11) (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@@28) (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@28) (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| Heap@@28) (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@28) (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| Heap@@28) (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| Heap@@28) (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9244 (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@28) (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@@28) (store (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@28) o_3@@6 f_10@@6 v@@11) (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@@28) (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@28) (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| Heap@@28) (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@28) (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| Heap@@28) (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| Heap@@28) (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_9244) (o_3@@7 T@Ref) (f_10@@7 T@Field_9317_9318) (v@@12 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_9244 (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@29) (store (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@@29) o_3@@7 f_10@@7 v@@12) (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@29) (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@@29) (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@29) (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| Heap@@29) (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@29) (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| Heap@@29) (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| Heap@@29) (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9244 (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@29) (store (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@@29) o_3@@7 f_10@@7 v@@12) (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@29) (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@@29) (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@29) (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| Heap@@29) (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@29) (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| Heap@@29) (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| Heap@@29) (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_9244) (o_3@@8 T@Ref) (f_10@@8 T@Field_9304_53) (v@@13 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_9244 (store (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@30) o_3@@8 f_10@@8 v@@13) (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@@30) (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@30) (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@@30) (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@30) (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| Heap@@30) (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@30) (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| Heap@@30) (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| Heap@@30) (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9244 (store (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@30) o_3@@8 f_10@@8 v@@13) (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@@30) (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@30) (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@@30) (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@30) (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| Heap@@30) (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@30) (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| Heap@@30) (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| Heap@@30) (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| Heap@@30)))
)))
(assert (forall ((s@@25 T@Seq_16741) (t@@9 T@Seq_16741) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_5787| s@@25))) (= (|Seq#Drop_5787| (|Seq#Append_16741| s@@25 t@@9) n@@19) (|Seq#Append_16741| (|Seq#Drop_5787| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.377:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_5787| (|Seq#Append_16741| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2896) (t@@10 T@Seq_2896) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2896| s@@26))) (= (|Seq#Drop_2896| (|Seq#Append_2896| s@@26 t@@10) n@@20) (|Seq#Append_2896| (|Seq#Drop_2896| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.377:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2896| (|Seq#Append_2896| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_16741) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_5787| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_5787| (|Seq#Drop_5787| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_5787| s@@27 i@@7))))
 :qid |stdinbpl.313:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_5787| s@@27 n@@21) (|Seq#Index_5787| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_2896) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_2896| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_2896| (|Seq#Drop_2896| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_2896| s@@28 i@@8))))
 :qid |stdinbpl.313:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2896| s@@28 n@@22) (|Seq#Index_2896| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_16741) (s1@@7 T@Seq_16741) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_5787|)) (not (= s1@@7 |Seq#Empty_5787|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_5787| s0@@7))) (= (|Seq#Index_5787| (|Seq#Append_16741| s0@@7 s1@@7) n@@23) (|Seq#Index_5787| s0@@7 n@@23)))
 :qid |stdinbpl.253:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_5787| (|Seq#Append_16741| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_5787| s0@@7 n@@23) (|Seq#Append_16741| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2896) (s1@@8 T@Seq_2896) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2896|)) (not (= s1@@8 |Seq#Empty_2896|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2896| s0@@8))) (= (|Seq#Index_2896| (|Seq#Append_2896| s0@@8 s1@@8) n@@24) (|Seq#Index_2896| s0@@8 n@@24)))
 :qid |stdinbpl.253:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2896| (|Seq#Append_2896| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2896| s0@@8 n@@24) (|Seq#Append_2896| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_16741) (s1@@9 T@Seq_16741) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_5787|)) (not (= s1@@9 |Seq#Empty_5787|))) (<= 0 m)) (< m (|Seq#Length_5787| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_5787| s0@@9)) (|Seq#Length_5787| s0@@9)) m) (= (|Seq#Index_5787| (|Seq#Append_16741| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_5787| s0@@9))) (|Seq#Index_5787| s1@@9 m))))
 :qid |stdinbpl.258:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_5787| s1@@9 m) (|Seq#Append_16741| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2896) (s1@@10 T@Seq_2896) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2896|)) (not (= s1@@10 |Seq#Empty_2896|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2896| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2896| s0@@10)) (|Seq#Length_2896| s0@@10)) m@@0) (= (|Seq#Index_2896| (|Seq#Append_2896| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2896| s0@@10))) (|Seq#Index_2896| s1@@10 m@@0))))
 :qid |stdinbpl.258:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2896| s1@@10 m@@0) (|Seq#Append_2896| s0@@10 s1@@10))
)))
(assert (forall ((o_3@@9 T@Ref) (f_8 T@Field_9317_9318) (Heap@@31 T@PolymorphicMapType_9244) ) (!  (=> (select (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@31) o_3@@9 $allocated) (select (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@31) (select (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@@31) o_3@@9 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@@31) o_3@@9 f_8))
)))
(assert (forall ((s@@29 T@Seq_16741) (x@@9 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_5787| s@@29))) (= (|Seq#Index_5787| s@@29 i@@9) x@@9)) (|Seq#Contains_16741| s@@29 x@@9))
 :qid |stdinbpl.410:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_16741| s@@29 x@@9) (|Seq#Index_5787| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_2896) (x@@10 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2896| s@@30))) (= (|Seq#Index_2896| s@@30 i@@10) x@@10)) (|Seq#Contains_2896| s@@30 x@@10))
 :qid |stdinbpl.410:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2896| s@@30 x@@10) (|Seq#Index_2896| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_16741) (s1@@11 T@Seq_16741) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_16741| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_16741| s0@@11 s1@@11))) (not (= (|Seq#Length_5787| s0@@11) (|Seq#Length_5787| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_16741| s0@@11 s1@@11))) (= (|Seq#Length_5787| s0@@11) (|Seq#Length_5787| s1@@11))) (= (|Seq#SkolemDiff_16741| s0@@11 s1@@11) (|Seq#SkolemDiff_16741| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_16741| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_16741| s0@@11 s1@@11) (|Seq#Length_5787| s0@@11))) (not (= (|Seq#Index_5787| s0@@11 (|Seq#SkolemDiff_16741| s0@@11 s1@@11)) (|Seq#Index_5787| s1@@11 (|Seq#SkolemDiff_16741| s0@@11 s1@@11))))))
 :qid |stdinbpl.514:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_16741| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2896) (s1@@12 T@Seq_2896) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2896| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2896| s0@@12 s1@@12))) (not (= (|Seq#Length_2896| s0@@12) (|Seq#Length_2896| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2896| s0@@12 s1@@12))) (= (|Seq#Length_2896| s0@@12) (|Seq#Length_2896| s1@@12))) (= (|Seq#SkolemDiff_2896| s0@@12 s1@@12) (|Seq#SkolemDiff_2896| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2896| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2896| s0@@12 s1@@12) (|Seq#Length_2896| s0@@12))) (not (= (|Seq#Index_2896| s0@@12 (|Seq#SkolemDiff_2896| s0@@12 s1@@12)) (|Seq#Index_2896| s1@@12 (|Seq#SkolemDiff_2896| s0@@12 s1@@12))))))
 :qid |stdinbpl.514:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2896| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_15373_15374) (v_1@@1 T@FrameType) (q T@Field_15373_15374) (w@@1 T@FrameType) (r T@Field_15373_15374) (u T@FrameType) ) (!  (=> (and (InsidePredicate_15373_15373 p@@2 v_1@@1 q w@@1) (InsidePredicate_15373_15373 q w@@1 r u)) (InsidePredicate_15373_15373 p@@2 v_1@@1 r u))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15373_15373 p@@2 v_1@@1 q w@@1) (InsidePredicate_15373_15373 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_15373_15374) (v_1@@2 T@FrameType) (q@@0 T@Field_15373_15374) (w@@2 T@FrameType) (r@@0 T@Field_5740_5745) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_15373_15373 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_15373_9304 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_15373_9304 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15373_15373 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_15373_9304 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_15373_15374) (v_1@@3 T@FrameType) (q@@1 T@Field_5740_5745) (w@@3 T@FrameType) (r@@1 T@Field_15373_15374) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_15373_9304 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_9304_15373 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_15373_15373 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15373_9304 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_9304_15373 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_15373_15374) (v_1@@4 T@FrameType) (q@@2 T@Field_5740_5745) (w@@4 T@FrameType) (r@@2 T@Field_5740_5745) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_15373_9304 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_9304_9304 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_15373_9304 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15373_9304 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_9304_9304 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_5740_5745) (v_1@@5 T@FrameType) (q@@3 T@Field_15373_15374) (w@@5 T@FrameType) (r@@3 T@Field_15373_15374) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_9304_15373 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_15373_15373 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_9304_15373 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9304_15373 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_15373_15373 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_5740_5745) (v_1@@6 T@FrameType) (q@@4 T@Field_15373_15374) (w@@6 T@FrameType) (r@@4 T@Field_5740_5745) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_9304_15373 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_15373_9304 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_9304_9304 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9304_15373 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_15373_9304 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_5740_5745) (v_1@@7 T@FrameType) (q@@5 T@Field_5740_5745) (w@@7 T@FrameType) (r@@5 T@Field_15373_15374) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_9304_9304 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_9304_15373 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_9304_15373 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9304_9304 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_9304_15373 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_5740_5745) (v_1@@8 T@FrameType) (q@@6 T@Field_5740_5745) (w@@8 T@FrameType) (r@@6 T@Field_5740_5745) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_9304_9304 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_9304_9304 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_9304_9304 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9304_9304 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_9304_9304 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((s@@31 T@Seq_16741) ) (!  (=> (= (|Seq#Length_5787| s@@31) 0) (= s@@31 |Seq#Empty_5787|))
 :qid |stdinbpl.217:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_5787| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2896) ) (!  (=> (= (|Seq#Length_2896| s@@32) 0) (= s@@32 |Seq#Empty_2896|))
 :qid |stdinbpl.217:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2896| s@@32))
)))
(assert (forall ((s@@33 T@Seq_16741) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_5787| s@@33 n@@25) |Seq#Empty_5787|))
 :qid |stdinbpl.393:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_5787| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2896) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2896| s@@34 n@@26) |Seq#Empty_2896|))
 :qid |stdinbpl.393:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2896| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_9265)
(declare-fun Mask@4 () T@PolymorphicMapType_9265)
(declare-fun s_1 () T@Seq_16741)
(declare-fun i_8_1 () Int)
(declare-fun t_2 () T@Seq_16741)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_9265)
(declare-fun Heap@1 () T@PolymorphicMapType_9244)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_9265)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_3018 (Int) T@FrameType)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_9265)
(declare-fun i_14 () Int)
(declare-fun UnfoldingMask@4 () T@PolymorphicMapType_9265)
(declare-fun UnfoldingMask@5 () T@PolymorphicMapType_9265)
(declare-fun Heap@2 () T@PolymorphicMapType_9244)
(declare-fun Heap@3 () T@PolymorphicMapType_9244)
(declare-fun x@@11 () T@Ref)
(declare-fun Mask@3 () T@PolymorphicMapType_9265)
(declare-fun Mask@2 () T@PolymorphicMapType_9265)
(declare-fun y@@7 () T@Ref)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_9244)
(declare-fun Heap@0 () T@PolymorphicMapType_9244)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@1 () T@PolymorphicMapType_9265)
(declare-fun Mask@0 () T@PolymorphicMapType_9265)
(declare-fun QPMask@0 () T@PolymorphicMapType_9265)
(declare-fun perm_temp_quasihavoc_@0 () Real)
(declare-fun Heap@@32 () T@PolymorphicMapType_9244)
(declare-fun UnfoldingMask@6 () T@PolymorphicMapType_9265)
(declare-fun i_4 () Int)
(declare-fun UnfoldingMask@7 () T@PolymorphicMapType_9265)
(declare-fun UnfoldingMask@8 () T@PolymorphicMapType_9265)
(declare-fun Heap@4 () T@PolymorphicMapType_9244)
(declare-fun Heap@5 () T@PolymorphicMapType_9244)
(declare-fun neverTriggered1 (Int) Bool)
(declare-fun invRecv1 (T@Ref T@Ref) Int)
(declare-fun qpRange1 (T@Ref T@Ref) Bool)
(declare-fun getPredWandId_5740_3018 (T@Field_15325_3018) Int)
(declare-fun getPredWandId_5740_5745 (T@Field_5740_5745) Int)
(declare-fun getPredWandId_5740_53 (T@Field_9304_53) Int)
(declare-fun getPredWandId_5740_9318 (T@Field_9317_9318) Int)
(declare-fun getPredWandId_5740_50176 (T@Field_5740_15392) Int)
(declare-fun getPredWandId_5744_3018 (T@Field_5744_3018) Int)
(declare-fun getPredWandId_5744_53 (T@Field_5744_53) Int)
(declare-fun getPredWandId_5744_9318 (T@Field_5744_9318) Int)
(declare-fun getPredWandId_5744_50985 (T@Field_15387_15392) Int)
(declare-fun i_3 () Int)
(declare-fun i_18 () Int)
(declare-fun j_14 () Int)
(set-info :boogie-vc-id foo_3)
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
 (=> (= (ControlFlow 0 0) 72) (let ((anon31_correct true))
(let ((anon30_correct  (=> (= UnfoldingMask@0 (PolymorphicMapType_9265 (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| Mask@4) (store (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| Mask@4) null (Pair (|Seq#Index_5787| s_1 i_8_1) (|Seq#Index_5787| t_2 i_8_1)) (- (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| Mask@4) null (Pair (|Seq#Index_5787| s_1 i_8_1) (|Seq#Index_5787| t_2 i_8_1))) FullPerm)) (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| Mask@4) (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| Mask@4) (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| Mask@4) (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| Mask@4) (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| Mask@4) (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| Mask@4) (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| Mask@4) (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| Mask@4))) (=> (and (and (and (not (= (|Seq#Index_5787| s_1 i_8_1) null)) (= UnfoldingMask@1 (PolymorphicMapType_9265 (store (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| UnfoldingMask@0) (|Seq#Index_5787| s_1 i_8_1) f_7 (+ (select (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| UnfoldingMask@0) (|Seq#Index_5787| s_1 i_8_1) f_7) FullPerm)) (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| UnfoldingMask@0) (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| UnfoldingMask@0) (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| UnfoldingMask@0) (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| UnfoldingMask@0) (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| UnfoldingMask@0) (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| UnfoldingMask@0) (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| UnfoldingMask@0) (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| UnfoldingMask@0) (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| UnfoldingMask@0)))) (and (state Heap@1 UnfoldingMask@1) (not (= (|Seq#Index_5787| t_2 i_8_1) null)))) (and (and (= UnfoldingMask@2 (PolymorphicMapType_9265 (store (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| UnfoldingMask@1) (|Seq#Index_5787| t_2 i_8_1) f_7 (+ (select (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| UnfoldingMask@1) (|Seq#Index_5787| t_2 i_8_1) f_7) FullPerm)) (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| UnfoldingMask@1) (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| UnfoldingMask@1) (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| UnfoldingMask@1) (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| UnfoldingMask@1) (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| UnfoldingMask@1) (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| UnfoldingMask@1) (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| UnfoldingMask@1) (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| UnfoldingMask@1) (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| UnfoldingMask@1))) (state Heap@1 UnfoldingMask@2)) (and (= (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@1) (|Seq#Index_5787| s_1 i_8_1) f_7) (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@1) (|Seq#Index_5787| t_2 i_8_1) f_7)) (state Heap@1 UnfoldingMask@2)))) (and (=> (= (ControlFlow 0 46) (- 0 47)) (= (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@1) (|Seq#Index_5787| s_1 i_8_1) f_7) i_8_1)) (=> (= (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@1) (|Seq#Index_5787| s_1 i_8_1) f_7) i_8_1) (=> (= (ControlFlow 0 46) 44) anon31_correct)))))))
(let ((anon48_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 50) 46)) anon30_correct)))
(let ((anon48_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 48) (- 0 49)) (<= FullPerm (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| Mask@4) null (Pair (|Seq#Index_5787| s_1 i_8_1) (|Seq#Index_5787| t_2 i_8_1))))) (=> (<= FullPerm (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| Mask@4) null (Pair (|Seq#Index_5787| s_1 i_8_1) (|Seq#Index_5787| t_2 i_8_1)))) (=> (= (ControlFlow 0 48) 46) anon30_correct))))))
(let ((anon47_Then_correct  (=> (and (and (<= 1 i_8_1) (< i_8_1 (|Seq#Length_5787| s_1))) (and (|Pair#trigger_5744| Heap@1 (Pair (|Seq#Index_5787| s_1 i_8_1) (|Seq#Index_5787| t_2 i_8_1))) (= (select (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@1) null (Pair (|Seq#Index_5787| s_1 i_8_1) (|Seq#Index_5787| t_2 i_8_1))) (CombineFrames (FrameFragment_3018 (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@1) (|Seq#Index_5787| s_1 i_8_1) f_7)) (FrameFragment_3018 (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@1) (|Seq#Index_5787| t_2 i_8_1) f_7)))))) (and (=> (= (ControlFlow 0 51) 48) anon48_Then_correct) (=> (= (ControlFlow 0 51) 50) anon48_Else_correct)))))
(let ((anon47_Else_correct  (=> (and (not (and (<= 1 i_8_1) (< i_8_1 (|Seq#Length_5787| s_1)))) (= (ControlFlow 0 45) 44)) anon31_correct)))
(let ((anon25_correct true))
(let ((anon24_correct  (=> (= UnfoldingMask@3 (PolymorphicMapType_9265 (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| Mask@4) (store (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| Mask@4) null (Pair (|Seq#Index_5787| s_1 i_14) (|Seq#Index_5787| t_2 i_14)) (- (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| Mask@4) null (Pair (|Seq#Index_5787| s_1 i_14) (|Seq#Index_5787| t_2 i_14))) FullPerm)) (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| Mask@4) (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| Mask@4) (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| Mask@4) (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| Mask@4) (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| Mask@4) (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| Mask@4) (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| Mask@4) (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| Mask@4))) (=> (and (and (and (not (= (|Seq#Index_5787| s_1 i_14) null)) (= UnfoldingMask@4 (PolymorphicMapType_9265 (store (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| UnfoldingMask@3) (|Seq#Index_5787| s_1 i_14) f_7 (+ (select (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| UnfoldingMask@3) (|Seq#Index_5787| s_1 i_14) f_7) FullPerm)) (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| UnfoldingMask@3) (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| UnfoldingMask@3) (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| UnfoldingMask@3) (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| UnfoldingMask@3) (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| UnfoldingMask@3) (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| UnfoldingMask@3) (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| UnfoldingMask@3) (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| UnfoldingMask@3) (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| UnfoldingMask@3)))) (and (state Heap@1 UnfoldingMask@4) (not (= (|Seq#Index_5787| t_2 i_14) null)))) (and (and (= UnfoldingMask@5 (PolymorphicMapType_9265 (store (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| UnfoldingMask@4) (|Seq#Index_5787| t_2 i_14) f_7 (+ (select (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| UnfoldingMask@4) (|Seq#Index_5787| t_2 i_14) f_7) FullPerm)) (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| UnfoldingMask@4) (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| UnfoldingMask@4) (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| UnfoldingMask@4) (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| UnfoldingMask@4) (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| UnfoldingMask@4) (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| UnfoldingMask@4) (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| UnfoldingMask@4) (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| UnfoldingMask@4) (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| UnfoldingMask@4))) (state Heap@1 UnfoldingMask@5)) (and (= (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@1) (|Seq#Index_5787| s_1 i_14) f_7) (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@1) (|Seq#Index_5787| t_2 i_14) f_7)) (state Heap@1 UnfoldingMask@5)))) (and (=> (= (ControlFlow 0 32) (- 0 39)) (>= i_14 0)) (=> (>= i_14 0) (and (=> (= (ControlFlow 0 32) (- 0 38)) (< i_14 (|Seq#Length_5787| s_1))) (=> (< i_14 (|Seq#Length_5787| s_1)) (and (=> (= (ControlFlow 0 32) (- 0 37)) (>= i_14 0)) (=> (>= i_14 0) (and (=> (= (ControlFlow 0 32) (- 0 36)) (< i_14 (|Seq#Length_5787| t_2))) (=> (< i_14 (|Seq#Length_5787| t_2)) (and (=> (= (ControlFlow 0 32) (- 0 35)) (>= i_14 0)) (=> (>= i_14 0) (and (=> (= (ControlFlow 0 32) (- 0 34)) (< i_14 (|Seq#Length_5787| s_1))) (=> (< i_14 (|Seq#Length_5787| s_1)) (and (=> (= (ControlFlow 0 32) (- 0 33)) (HasDirectPerm_5740_3018 UnfoldingMask@5 (|Seq#Index_5787| s_1 i_14) f_7)) (=> (HasDirectPerm_5740_3018 UnfoldingMask@5 (|Seq#Index_5787| s_1 i_14) f_7) (=> (and (and (= Heap@2 (PolymorphicMapType_9244 (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@1) (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@1) (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@1) (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@1) (store (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@1) null (|Pair#sm| (|Seq#Index_5787| s_1 i_14) (|Seq#Index_5787| t_2 i_14)) (PolymorphicMapType_9793 (store (|PolymorphicMapType_9793_5740_3018#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@1) null (|Pair#sm| (|Seq#Index_5787| s_1 i_14) (|Seq#Index_5787| t_2 i_14)))) (|Seq#Index_5787| s_1 i_14) f_7 true) (|PolymorphicMapType_9793_5740_53#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@1) null (|Pair#sm| (|Seq#Index_5787| s_1 i_14) (|Seq#Index_5787| t_2 i_14)))) (|PolymorphicMapType_9793_5740_9318#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@1) null (|Pair#sm| (|Seq#Index_5787| s_1 i_14) (|Seq#Index_5787| t_2 i_14)))) (|PolymorphicMapType_9793_5740_15374#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@1) null (|Pair#sm| (|Seq#Index_5787| s_1 i_14) (|Seq#Index_5787| t_2 i_14)))) (|PolymorphicMapType_9793_5740_29726#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@1) null (|Pair#sm| (|Seq#Index_5787| s_1 i_14) (|Seq#Index_5787| t_2 i_14)))) (|PolymorphicMapType_9793_15373_3018#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@1) null (|Pair#sm| (|Seq#Index_5787| s_1 i_14) (|Seq#Index_5787| t_2 i_14)))) (|PolymorphicMapType_9793_15373_53#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@1) null (|Pair#sm| (|Seq#Index_5787| s_1 i_14) (|Seq#Index_5787| t_2 i_14)))) (|PolymorphicMapType_9793_15373_9318#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@1) null (|Pair#sm| (|Seq#Index_5787| s_1 i_14) (|Seq#Index_5787| t_2 i_14)))) (|PolymorphicMapType_9793_15373_15374#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@1) null (|Pair#sm| (|Seq#Index_5787| s_1 i_14) (|Seq#Index_5787| t_2 i_14)))) (|PolymorphicMapType_9793_15373_30774#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@1) null (|Pair#sm| (|Seq#Index_5787| s_1 i_14) (|Seq#Index_5787| t_2 i_14)))))) (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| Heap@1) (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@1) (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| Heap@1) (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| Heap@1) (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| Heap@1))) (= Heap@3 (PolymorphicMapType_9244 (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@2) (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@2) (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@2) (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@2) (store (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@2) null (|Pair#sm| (|Seq#Index_5787| s_1 i_14) (|Seq#Index_5787| t_2 i_14)) (PolymorphicMapType_9793 (store (|PolymorphicMapType_9793_5740_3018#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@2) null (|Pair#sm| (|Seq#Index_5787| s_1 i_14) (|Seq#Index_5787| t_2 i_14)))) (|Seq#Index_5787| t_2 i_14) f_7 true) (|PolymorphicMapType_9793_5740_53#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@2) null (|Pair#sm| (|Seq#Index_5787| s_1 i_14) (|Seq#Index_5787| t_2 i_14)))) (|PolymorphicMapType_9793_5740_9318#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@2) null (|Pair#sm| (|Seq#Index_5787| s_1 i_14) (|Seq#Index_5787| t_2 i_14)))) (|PolymorphicMapType_9793_5740_15374#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@2) null (|Pair#sm| (|Seq#Index_5787| s_1 i_14) (|Seq#Index_5787| t_2 i_14)))) (|PolymorphicMapType_9793_5740_29726#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@2) null (|Pair#sm| (|Seq#Index_5787| s_1 i_14) (|Seq#Index_5787| t_2 i_14)))) (|PolymorphicMapType_9793_15373_3018#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@2) null (|Pair#sm| (|Seq#Index_5787| s_1 i_14) (|Seq#Index_5787| t_2 i_14)))) (|PolymorphicMapType_9793_15373_53#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@2) null (|Pair#sm| (|Seq#Index_5787| s_1 i_14) (|Seq#Index_5787| t_2 i_14)))) (|PolymorphicMapType_9793_15373_9318#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@2) null (|Pair#sm| (|Seq#Index_5787| s_1 i_14) (|Seq#Index_5787| t_2 i_14)))) (|PolymorphicMapType_9793_15373_15374#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@2) null (|Pair#sm| (|Seq#Index_5787| s_1 i_14) (|Seq#Index_5787| t_2 i_14)))) (|PolymorphicMapType_9793_15373_30774#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@2) null (|Pair#sm| (|Seq#Index_5787| s_1 i_14) (|Seq#Index_5787| t_2 i_14)))))) (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| Heap@2) (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@2) (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| Heap@2) (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| Heap@2) (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| Heap@2)))) (and (state Heap@3 Mask@4) (= (ControlFlow 0 32) 30))) anon25_correct)))))))))))))))))))
(let ((anon45_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 42) 32)) anon24_correct)))
(let ((anon45_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 40) (- 0 41)) (<= FullPerm (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| Mask@4) null (Pair (|Seq#Index_5787| s_1 i_14) (|Seq#Index_5787| t_2 i_14))))) (=> (<= FullPerm (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| Mask@4) null (Pair (|Seq#Index_5787| s_1 i_14) (|Seq#Index_5787| t_2 i_14)))) (=> (= (ControlFlow 0 40) 32) anon24_correct))))))
(let ((anon44_Then_correct  (=> (and (and (<= 1 i_14) (< i_14 (|Seq#Length_5787| s_1))) (and (|Pair#trigger_5744| Heap@1 (Pair (|Seq#Index_5787| s_1 i_14) (|Seq#Index_5787| t_2 i_14))) (= (select (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@1) null (Pair (|Seq#Index_5787| s_1 i_14) (|Seq#Index_5787| t_2 i_14))) (CombineFrames (FrameFragment_3018 (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@1) (|Seq#Index_5787| s_1 i_14) f_7)) (FrameFragment_3018 (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@1) (|Seq#Index_5787| t_2 i_14) f_7)))))) (and (=> (= (ControlFlow 0 43) 40) anon45_Then_correct) (=> (= (ControlFlow 0 43) 42) anon45_Else_correct)))))
(let ((anon44_Else_correct  (=> (and (not (and (<= 1 i_14) (< i_14 (|Seq#Length_5787| s_1)))) (= (ControlFlow 0 31) 30)) anon25_correct)))
(let ((anon46_Else_correct true))
(let ((anon20_correct  (=> (not (= x@@11 null)) (=> (and (and (and (= Mask@3 (PolymorphicMapType_9265 (store (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| Mask@2) x@@11 f_7 (+ (select (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| Mask@2) x@@11 f_7) FullPerm)) (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| Mask@2) (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| Mask@2) (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| Mask@2) (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| Mask@2) (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| Mask@2) (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| Mask@2) (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| Mask@2) (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| Mask@2) (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| Mask@2))) (state Heap@1 Mask@3)) (and (not (= y@@7 null)) (= Mask@4 (PolymorphicMapType_9265 (store (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| Mask@3) y@@7 f_7 (+ (select (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| Mask@3) y@@7 f_7) FullPerm)) (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| Mask@3) (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| Mask@3) (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| Mask@3) (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| Mask@3) (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| Mask@3) (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| Mask@3) (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| Mask@3) (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| Mask@3) (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| Mask@3))))) (and (and (state Heap@1 Mask@4) (= (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@1) x@@11 f_7) (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@1) y@@7 f_7))) (and (state Heap@1 Mask@4) (state Heap@1 Mask@4)))) (and (and (and (and (=> (= (ControlFlow 0 52) 29) anon46_Else_correct) (=> (= (ControlFlow 0 52) 51) anon47_Then_correct)) (=> (= (ControlFlow 0 52) 45) anon47_Else_correct)) (=> (= (ControlFlow 0 52) 43) anon44_Then_correct)) (=> (= (ControlFlow 0 52) 31) anon44_Else_correct))))))
(let ((anon42_Else_correct  (=> (HasDirectPerm_5744_5745 Mask@2 null (Pair x@@11 y@@7)) (=> (and (= Heap@1 ExhaleHeap@0) (= (ControlFlow 0 54) 52)) anon20_correct))))
(let ((anon42_Then_correct  (=> (and (and (not (HasDirectPerm_5744_5745 Mask@2 null (Pair x@@11 y@@7))) (= Heap@0 (PolymorphicMapType_9244 (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| ExhaleHeap@0) (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| ExhaleHeap@0) (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| ExhaleHeap@0) (store (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| ExhaleHeap@0) null (Pair x@@11 y@@7) newVersion@0) (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| ExhaleHeap@0) (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| ExhaleHeap@0) (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| ExhaleHeap@0) (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| ExhaleHeap@0) (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| ExhaleHeap@0) (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| ExhaleHeap@0)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 53) 52))) anon20_correct)))
(let ((anon18_correct  (=> (= Mask@2 (PolymorphicMapType_9265 (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| Mask@1) (store (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| Mask@1) null (Pair x@@11 y@@7) (- (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| Mask@1) null (Pair x@@11 y@@7)) FullPerm)) (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| Mask@1) (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| Mask@1) (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| Mask@1) (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| Mask@1) (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| Mask@1) (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| Mask@1) (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| Mask@1) (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| Mask@1))) (and (=> (= (ControlFlow 0 55) 53) anon42_Then_correct) (=> (= (ControlFlow 0 55) 54) anon42_Else_correct)))))
(let ((anon41_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 58) 55)) anon18_correct)))
(let ((anon41_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 56) (- 0 57)) (<= FullPerm (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| Mask@1) null (Pair x@@11 y@@7)))) (=> (<= FullPerm (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| Mask@1) null (Pair x@@11 y@@7))) (=> (= (ControlFlow 0 56) 55) anon18_correct))))))
(let ((anon16_correct  (=> (= Mask@0 (PolymorphicMapType_9265 (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| QPMask@0) (store (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| QPMask@0) null (Pair x@@11 y@@7) (- (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| QPMask@0) null (Pair x@@11 y@@7)) perm_temp_quasihavoc_@0)) (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| QPMask@0) (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| QPMask@0) (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| QPMask@0) (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| QPMask@0) (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| QPMask@0) (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| QPMask@0) (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| QPMask@0) (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| QPMask@0))) (=> (and (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@0 Mask@0) (state ExhaleHeap@0 Mask@0)) (and (=> (= (ControlFlow 0 59) (- 0 60)) (>= perm_temp_quasihavoc_@0 NoPerm)) (=> (>= perm_temp_quasihavoc_@0 NoPerm) (=> (and (= Mask@1 (PolymorphicMapType_9265 (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| Mask@0) (store (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| Mask@0) null (Pair x@@11 y@@7) (+ (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| Mask@0) null (Pair x@@11 y@@7)) perm_temp_quasihavoc_@0)) (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| Mask@0) (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| Mask@0) (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| Mask@0) (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| Mask@0) (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| Mask@0) (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| Mask@0) (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| Mask@0) (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| Mask@0))) (state ExhaleHeap@0 Mask@1)) (=> (and (and (state ExhaleHeap@0 Mask@1) (state ExhaleHeap@0 Mask@1)) (and (|Pair#trigger_5744| ExhaleHeap@0 (Pair x@@11 y@@7)) (= (select (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| ExhaleHeap@0) null (Pair x@@11 y@@7)) (CombineFrames (FrameFragment_3018 (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| ExhaleHeap@0) x@@11 f_7)) (FrameFragment_3018 (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| ExhaleHeap@0) y@@7 f_7)))))) (and (=> (= (ControlFlow 0 59) 56) anon41_Then_correct) (=> (= (ControlFlow 0 59) 58) anon41_Else_correct))))))))))
(let ((anon40_Else_correct  (=> (and (= perm_temp_quasihavoc_@0 NoPerm) (= (ControlFlow 0 63) 59)) anon16_correct)))
(let ((anon40_Then_correct  (=> (not (= perm_temp_quasihavoc_@0 NoPerm)) (and (=> (= (ControlFlow 0 61) (- 0 62)) (<= perm_temp_quasihavoc_@0 (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| QPMask@0) null (Pair x@@11 y@@7)))) (=> (<= perm_temp_quasihavoc_@0 (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| QPMask@0) null (Pair x@@11 y@@7))) (=> (= (ControlFlow 0 61) 59) anon16_correct))))))
(let ((anon37_Else_correct  (=> (and (forall ((i_6_2 Int) ) (!  (=> (and (<= 0 i_6_2) (< i_6_2 (|Seq#Length_5787| s_1))) (= (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@32) (|Seq#Index_5787| s_1 i_6_2) f_7) i_6_2))
 :qid |stdinbpl.789:20|
 :skolemid |71|
 :pattern ( (|Seq#Index_5787| s_1 i_6_2))
 :pattern ( (|Seq#Index_5787| t_2 i_6_2))
)) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 64) (- 0 67)) (< 0 (|Seq#Length_5787| s_1))) (=> (< 0 (|Seq#Length_5787| s_1)) (=> (= x@@11 (|Seq#Index_5787| s_1 0)) (and (=> (= (ControlFlow 0 64) (- 0 66)) (< 0 (|Seq#Length_5787| t_2))) (=> (< 0 (|Seq#Length_5787| t_2)) (=> (and (and (= y@@7 (|Seq#Index_5787| t_2 0)) (state Heap@@32 QPMask@0)) (and (= perm_temp_quasihavoc_@0 (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| QPMask@0) null (Pair x@@11 y@@7))) (state Heap@@32 QPMask@0))) (and (=> (= (ControlFlow 0 64) (- 0 65)) (>= perm_temp_quasihavoc_@0 NoPerm)) (=> (>= perm_temp_quasihavoc_@0 NoPerm) (and (=> (= (ControlFlow 0 64) 61) anon40_Then_correct) (=> (= (ControlFlow 0 64) 63) anon40_Else_correct)))))))))))))
(let ((anon13_correct true))
(let ((anon12_correct  (=> (= UnfoldingMask@6 (PolymorphicMapType_9265 (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| QPMask@0) (store (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| QPMask@0) null (Pair (|Seq#Index_5787| s_1 i_4) (|Seq#Index_5787| t_2 i_4)) (- (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| QPMask@0) null (Pair (|Seq#Index_5787| s_1 i_4) (|Seq#Index_5787| t_2 i_4))) FullPerm)) (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| QPMask@0) (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| QPMask@0) (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| QPMask@0) (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| QPMask@0) (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| QPMask@0) (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| QPMask@0) (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| QPMask@0) (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| QPMask@0))) (=> (and (and (and (not (= (|Seq#Index_5787| s_1 i_4) null)) (= UnfoldingMask@7 (PolymorphicMapType_9265 (store (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| UnfoldingMask@6) (|Seq#Index_5787| s_1 i_4) f_7 (+ (select (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| UnfoldingMask@6) (|Seq#Index_5787| s_1 i_4) f_7) FullPerm)) (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| UnfoldingMask@6) (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| UnfoldingMask@6) (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| UnfoldingMask@6) (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| UnfoldingMask@6) (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| UnfoldingMask@6) (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| UnfoldingMask@6) (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| UnfoldingMask@6) (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| UnfoldingMask@6) (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| UnfoldingMask@6)))) (and (state Heap@@32 UnfoldingMask@7) (not (= (|Seq#Index_5787| t_2 i_4) null)))) (and (and (= UnfoldingMask@8 (PolymorphicMapType_9265 (store (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| UnfoldingMask@7) (|Seq#Index_5787| t_2 i_4) f_7 (+ (select (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| UnfoldingMask@7) (|Seq#Index_5787| t_2 i_4) f_7) FullPerm)) (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| UnfoldingMask@7) (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| UnfoldingMask@7) (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| UnfoldingMask@7) (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| UnfoldingMask@7) (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| UnfoldingMask@7) (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| UnfoldingMask@7) (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| UnfoldingMask@7) (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| UnfoldingMask@7) (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| UnfoldingMask@7))) (state Heap@@32 UnfoldingMask@8)) (and (= (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@32) (|Seq#Index_5787| s_1 i_4) f_7) (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@32) (|Seq#Index_5787| t_2 i_4) f_7)) (state Heap@@32 UnfoldingMask@8)))) (and (=> (= (ControlFlow 0 17) (- 0 24)) (>= i_4 0)) (=> (>= i_4 0) (and (=> (= (ControlFlow 0 17) (- 0 23)) (< i_4 (|Seq#Length_5787| s_1))) (=> (< i_4 (|Seq#Length_5787| s_1)) (and (=> (= (ControlFlow 0 17) (- 0 22)) (>= i_4 0)) (=> (>= i_4 0) (and (=> (= (ControlFlow 0 17) (- 0 21)) (< i_4 (|Seq#Length_5787| t_2))) (=> (< i_4 (|Seq#Length_5787| t_2)) (and (=> (= (ControlFlow 0 17) (- 0 20)) (>= i_4 0)) (=> (>= i_4 0) (and (=> (= (ControlFlow 0 17) (- 0 19)) (< i_4 (|Seq#Length_5787| s_1))) (=> (< i_4 (|Seq#Length_5787| s_1)) (and (=> (= (ControlFlow 0 17) (- 0 18)) (HasDirectPerm_5740_3018 UnfoldingMask@8 (|Seq#Index_5787| s_1 i_4) f_7)) (=> (HasDirectPerm_5740_3018 UnfoldingMask@8 (|Seq#Index_5787| s_1 i_4) f_7) (=> (and (and (= Heap@4 (PolymorphicMapType_9244 (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@32) (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@@32) (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@32) (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@@32) (store (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@32) null (|Pair#sm| (|Seq#Index_5787| s_1 i_4) (|Seq#Index_5787| t_2 i_4)) (PolymorphicMapType_9793 (store (|PolymorphicMapType_9793_5740_3018#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@32) null (|Pair#sm| (|Seq#Index_5787| s_1 i_4) (|Seq#Index_5787| t_2 i_4)))) (|Seq#Index_5787| s_1 i_4) f_7 true) (|PolymorphicMapType_9793_5740_53#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@32) null (|Pair#sm| (|Seq#Index_5787| s_1 i_4) (|Seq#Index_5787| t_2 i_4)))) (|PolymorphicMapType_9793_5740_9318#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@32) null (|Pair#sm| (|Seq#Index_5787| s_1 i_4) (|Seq#Index_5787| t_2 i_4)))) (|PolymorphicMapType_9793_5740_15374#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@32) null (|Pair#sm| (|Seq#Index_5787| s_1 i_4) (|Seq#Index_5787| t_2 i_4)))) (|PolymorphicMapType_9793_5740_29726#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@32) null (|Pair#sm| (|Seq#Index_5787| s_1 i_4) (|Seq#Index_5787| t_2 i_4)))) (|PolymorphicMapType_9793_15373_3018#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@32) null (|Pair#sm| (|Seq#Index_5787| s_1 i_4) (|Seq#Index_5787| t_2 i_4)))) (|PolymorphicMapType_9793_15373_53#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@32) null (|Pair#sm| (|Seq#Index_5787| s_1 i_4) (|Seq#Index_5787| t_2 i_4)))) (|PolymorphicMapType_9793_15373_9318#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@32) null (|Pair#sm| (|Seq#Index_5787| s_1 i_4) (|Seq#Index_5787| t_2 i_4)))) (|PolymorphicMapType_9793_15373_15374#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@32) null (|Pair#sm| (|Seq#Index_5787| s_1 i_4) (|Seq#Index_5787| t_2 i_4)))) (|PolymorphicMapType_9793_15373_30774#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@@32) null (|Pair#sm| (|Seq#Index_5787| s_1 i_4) (|Seq#Index_5787| t_2 i_4)))))) (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| Heap@@32) (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@@32) (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| Heap@@32) (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| Heap@@32) (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| Heap@@32))) (= Heap@5 (PolymorphicMapType_9244 (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@4) (|PolymorphicMapType_9244_5551_5552#PolymorphicMapType_9244| Heap@4) (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@4) (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@4) (store (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@4) null (|Pair#sm| (|Seq#Index_5787| s_1 i_4) (|Seq#Index_5787| t_2 i_4)) (PolymorphicMapType_9793 (store (|PolymorphicMapType_9793_5740_3018#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@4) null (|Pair#sm| (|Seq#Index_5787| s_1 i_4) (|Seq#Index_5787| t_2 i_4)))) (|Seq#Index_5787| t_2 i_4) f_7 true) (|PolymorphicMapType_9793_5740_53#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@4) null (|Pair#sm| (|Seq#Index_5787| s_1 i_4) (|Seq#Index_5787| t_2 i_4)))) (|PolymorphicMapType_9793_5740_9318#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@4) null (|Pair#sm| (|Seq#Index_5787| s_1 i_4) (|Seq#Index_5787| t_2 i_4)))) (|PolymorphicMapType_9793_5740_15374#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@4) null (|Pair#sm| (|Seq#Index_5787| s_1 i_4) (|Seq#Index_5787| t_2 i_4)))) (|PolymorphicMapType_9793_5740_29726#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@4) null (|Pair#sm| (|Seq#Index_5787| s_1 i_4) (|Seq#Index_5787| t_2 i_4)))) (|PolymorphicMapType_9793_15373_3018#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@4) null (|Pair#sm| (|Seq#Index_5787| s_1 i_4) (|Seq#Index_5787| t_2 i_4)))) (|PolymorphicMapType_9793_15373_53#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@4) null (|Pair#sm| (|Seq#Index_5787| s_1 i_4) (|Seq#Index_5787| t_2 i_4)))) (|PolymorphicMapType_9793_15373_9318#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@4) null (|Pair#sm| (|Seq#Index_5787| s_1 i_4) (|Seq#Index_5787| t_2 i_4)))) (|PolymorphicMapType_9793_15373_15374#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@4) null (|Pair#sm| (|Seq#Index_5787| s_1 i_4) (|Seq#Index_5787| t_2 i_4)))) (|PolymorphicMapType_9793_15373_30774#PolymorphicMapType_9793| (select (|PolymorphicMapType_9244_5749_20100#PolymorphicMapType_9244| Heap@4) null (|Pair#sm| (|Seq#Index_5787| s_1 i_4) (|Seq#Index_5787| t_2 i_4)))))) (|PolymorphicMapType_9244_5740_5745#PolymorphicMapType_9244| Heap@4) (|PolymorphicMapType_9244_5740_26910#PolymorphicMapType_9244| Heap@4) (|PolymorphicMapType_9244_5744_3018#PolymorphicMapType_9244| Heap@4) (|PolymorphicMapType_9244_5744_53#PolymorphicMapType_9244| Heap@4) (|PolymorphicMapType_9244_5744_9318#PolymorphicMapType_9244| Heap@4)))) (and (state Heap@5 QPMask@0) (= (ControlFlow 0 17) 15))) anon13_correct)))))))))))))))))))
(let ((anon39_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 27) 17)) anon12_correct)))
(let ((anon39_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 25) (- 0 26)) (<= FullPerm (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| QPMask@0) null (Pair (|Seq#Index_5787| s_1 i_4) (|Seq#Index_5787| t_2 i_4))))) (=> (<= FullPerm (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| QPMask@0) null (Pair (|Seq#Index_5787| s_1 i_4) (|Seq#Index_5787| t_2 i_4)))) (=> (= (ControlFlow 0 25) 17) anon12_correct))))))
(let ((anon38_Then_correct  (=> (and (and (<= 0 i_4) (< i_4 (|Seq#Length_5787| s_1))) (and (|Pair#trigger_5744| Heap@@32 (Pair (|Seq#Index_5787| s_1 i_4) (|Seq#Index_5787| t_2 i_4))) (= (select (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@@32) null (Pair (|Seq#Index_5787| s_1 i_4) (|Seq#Index_5787| t_2 i_4))) (CombineFrames (FrameFragment_3018 (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@32) (|Seq#Index_5787| s_1 i_4) f_7)) (FrameFragment_3018 (select (|PolymorphicMapType_9244_5740_3018#PolymorphicMapType_9244| Heap@@32) (|Seq#Index_5787| t_2 i_4) f_7)))))) (and (=> (= (ControlFlow 0 28) 25) anon39_Then_correct) (=> (= (ControlFlow 0 28) 27) anon39_Else_correct)))))
(let ((anon38_Else_correct  (=> (and (not (and (<= 0 i_4) (< i_4 (|Seq#Length_5787| s_1)))) (= (ControlFlow 0 16) 15)) anon13_correct)))
(let ((anon35_Else_correct  (and (=> (= (ControlFlow 0 68) (- 0 69)) (forall ((i_3_2 Int) (i_3_3 Int) ) (!  (=> (and (and (and (and (not (= i_3_2 i_3_3)) (and (<= 0 i_3_2) (< i_3_2 (|Seq#Length_5787| s_1)))) (and (<= 0 i_3_3) (< i_3_3 (|Seq#Length_5787| s_1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= (|Seq#Index_5787| s_1 i_3_2) (|Seq#Index_5787| s_1 i_3_3))) (not (= (|Seq#Index_5787| t_2 i_3_2) (|Seq#Index_5787| t_2 i_3_3)))))
 :qid |stdinbpl.708:17|
 :skolemid |65|
 :pattern ( (neverTriggered1 i_3_2) (neverTriggered1 i_3_3))
))) (=> (forall ((i_3_2@@0 Int) (i_3_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3_2@@0 i_3_3@@0)) (and (<= 0 i_3_2@@0) (< i_3_2@@0 (|Seq#Length_5787| s_1)))) (and (<= 0 i_3_3@@0) (< i_3_3@@0 (|Seq#Length_5787| s_1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= (|Seq#Index_5787| s_1 i_3_2@@0) (|Seq#Index_5787| s_1 i_3_3@@0))) (not (= (|Seq#Index_5787| t_2 i_3_2@@0) (|Seq#Index_5787| t_2 i_3_3@@0)))))
 :qid |stdinbpl.708:17|
 :skolemid |65|
 :pattern ( (neverTriggered1 i_3_2@@0) (neverTriggered1 i_3_3@@0))
)) (=> (forall ((i_3_2@@1 Int) ) (!  (=> (and (and (<= 0 i_3_2@@1) (< i_3_2@@1 (|Seq#Length_5787| s_1))) (< NoPerm FullPerm)) (and (= (invRecv1 (|Seq#Index_5787| s_1 i_3_2@@1) (|Seq#Index_5787| t_2 i_3_2@@1)) i_3_2@@1) (qpRange1 (|Seq#Index_5787| s_1 i_3_2@@1) (|Seq#Index_5787| t_2 i_3_2@@1))))
 :qid |stdinbpl.714:22|
 :skolemid |66|
 :pattern ( (select (|PolymorphicMapType_9244_5744_5745#PolymorphicMapType_9244| Heap@@32) null (Pair (|Seq#Index_5787| s_1 i_3_2@@1) (|Seq#Index_5787| t_2 i_3_2@@1))))
 :pattern ( (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| ZeroMask) null (Pair (|Seq#Index_5787| s_1 i_3_2@@1) (|Seq#Index_5787| t_2 i_3_2@@1))))
 :pattern ( (|Seq#Index_5787| s_1 i_3_2@@1))
 :pattern ( (|Seq#Index_5787| t_2 i_3_2@@1))
)) (=> (and (forall ((x_1_1_1 T@Ref) (y_1_1_1 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv1 x_1_1_1 y_1_1_1)) (< (invRecv1 x_1_1_1 y_1_1_1) (|Seq#Length_5787| s_1))) (< NoPerm FullPerm)) (qpRange1 x_1_1_1 y_1_1_1)) (and (= (|Seq#Index_5787| s_1 (invRecv1 x_1_1_1 y_1_1_1)) x_1_1_1) (= (|Seq#Index_5787| t_2 (invRecv1 x_1_1_1 y_1_1_1)) y_1_1_1)))
 :qid |stdinbpl.718:22|
 :skolemid |67|
 :pattern ( (invRecv1 x_1_1_1 y_1_1_1))
)) (forall ((x_1_1_1@@0 T@Ref) (y_1_1_1@@0 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv1 x_1_1_1@@0 y_1_1_1@@0)) (< (invRecv1 x_1_1_1@@0 y_1_1_1@@0) (|Seq#Length_5787| s_1))) (< NoPerm FullPerm)) (qpRange1 x_1_1_1@@0 y_1_1_1@@0)) (and (=> (< NoPerm FullPerm) (and (= (|Seq#Index_5787| s_1 (invRecv1 x_1_1_1@@0 y_1_1_1@@0)) x_1_1_1@@0) (= (|Seq#Index_5787| t_2 (invRecv1 x_1_1_1@@0 y_1_1_1@@0)) y_1_1_1@@0))) (= (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| QPMask@0) null (Pair x_1_1_1@@0 y_1_1_1@@0)) (+ (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| ZeroMask) null (Pair x_1_1_1@@0 y_1_1_1@@0)) FullPerm))))
 :qid |stdinbpl.724:22|
 :skolemid |68|
 :pattern ( (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| QPMask@0) null (Pair x_1_1_1@@0 y_1_1_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9 T@Ref) (f_5 T@Field_15325_3018) ) (!  (=> (or (or (not (= o_9 null)) (not (IsPredicateField_5740_3018 f_5))) (not (= (getPredWandId_5740_3018 f_5) 0))) (= (select (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| ZeroMask) o_9 f_5) (select (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| QPMask@0) o_9 f_5)))
 :qid |stdinbpl.730:29|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| ZeroMask) o_9 f_5))
 :pattern ( (select (|PolymorphicMapType_9265_5740_3018#PolymorphicMapType_9265| QPMask@0) o_9 f_5))
)) (forall ((o_9@@0 T@Ref) (f_5@@0 T@Field_5740_5745) ) (!  (=> (or (or (not (= o_9@@0 null)) (not (IsPredicateField_5740_28254 f_5@@0))) (not (= (getPredWandId_5740_5745 f_5@@0) 0))) (= (select (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| ZeroMask) o_9@@0 f_5@@0) (select (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| QPMask@0) o_9@@0 f_5@@0)))
 :qid |stdinbpl.730:29|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| ZeroMask) o_9@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_9265_5740_5745#PolymorphicMapType_9265| QPMask@0) o_9@@0 f_5@@0))
))) (forall ((o_9@@1 T@Ref) (f_5@@1 T@Field_9304_53) ) (!  (=> (or (or (not (= o_9@@1 null)) (not (IsPredicateField_5740_53 f_5@@1))) (not (= (getPredWandId_5740_53 f_5@@1) 0))) (= (select (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| ZeroMask) o_9@@1 f_5@@1) (select (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| QPMask@0) o_9@@1 f_5@@1)))
 :qid |stdinbpl.730:29|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| ZeroMask) o_9@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_9265_5740_53#PolymorphicMapType_9265| QPMask@0) o_9@@1 f_5@@1))
))) (forall ((o_9@@2 T@Ref) (f_5@@2 T@Field_9317_9318) ) (!  (=> (or (or (not (= o_9@@2 null)) (not (IsPredicateField_5740_9318 f_5@@2))) (not (= (getPredWandId_5740_9318 f_5@@2) 0))) (= (select (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| ZeroMask) o_9@@2 f_5@@2) (select (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| QPMask@0) o_9@@2 f_5@@2)))
 :qid |stdinbpl.730:29|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| ZeroMask) o_9@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_9265_5740_9318#PolymorphicMapType_9265| QPMask@0) o_9@@2 f_5@@2))
))) (forall ((o_9@@3 T@Ref) (f_5@@3 T@Field_5740_15392) ) (!  (=> (or (or (not (= o_9@@3 null)) (not (IsPredicateField_5740_38040 f_5@@3))) (not (= (getPredWandId_5740_50176 f_5@@3) 0))) (= (select (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| ZeroMask) o_9@@3 f_5@@3) (select (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| QPMask@0) o_9@@3 f_5@@3)))
 :qid |stdinbpl.730:29|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| ZeroMask) o_9@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_9265_5740_36168#PolymorphicMapType_9265| QPMask@0) o_9@@3 f_5@@3))
))) (forall ((o_9@@4 T@Ref) (f_5@@4 T@Field_5744_3018) ) (!  (=> (or (or (not (= o_9@@4 null)) (not (IsPredicateField_5744_3018 f_5@@4))) (not (= (getPredWandId_5744_3018 f_5@@4) 0))) (= (select (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| ZeroMask) o_9@@4 f_5@@4) (select (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| QPMask@0) o_9@@4 f_5@@4)))
 :qid |stdinbpl.730:29|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| ZeroMask) o_9@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_9265_5744_3018#PolymorphicMapType_9265| QPMask@0) o_9@@4 f_5@@4))
))) (forall ((o_9@@5 T@Ref) (f_5@@5 T@Field_15373_15374) ) (!  (=> (or (or (not (= o_9@@5 null)) (not (IsPredicateField_5744_5745 f_5@@5))) (not (= (getPredWandId_5744_5745 f_5@@5) 0))) (= (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| ZeroMask) o_9@@5 f_5@@5) (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| QPMask@0) o_9@@5 f_5@@5)))
 :qid |stdinbpl.730:29|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| ZeroMask) o_9@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| QPMask@0) o_9@@5 f_5@@5))
))) (forall ((o_9@@6 T@Ref) (f_5@@6 T@Field_5744_53) ) (!  (=> (or (or (not (= o_9@@6 null)) (not (IsPredicateField_5744_53 f_5@@6))) (not (= (getPredWandId_5744_53 f_5@@6) 0))) (= (select (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| ZeroMask) o_9@@6 f_5@@6) (select (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| QPMask@0) o_9@@6 f_5@@6)))
 :qid |stdinbpl.730:29|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| ZeroMask) o_9@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_9265_5744_53#PolymorphicMapType_9265| QPMask@0) o_9@@6 f_5@@6))
))) (forall ((o_9@@7 T@Ref) (f_5@@7 T@Field_5744_9318) ) (!  (=> (or (or (not (= o_9@@7 null)) (not (IsPredicateField_5744_9318 f_5@@7))) (not (= (getPredWandId_5744_9318 f_5@@7) 0))) (= (select (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| ZeroMask) o_9@@7 f_5@@7) (select (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| QPMask@0) o_9@@7 f_5@@7)))
 :qid |stdinbpl.730:29|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| ZeroMask) o_9@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_9265_5744_9318#PolymorphicMapType_9265| QPMask@0) o_9@@7 f_5@@7))
))) (forall ((o_9@@8 T@Ref) (f_5@@8 T@Field_15387_15392) ) (!  (=> (or (or (not (= o_9@@8 null)) (not (IsPredicateField_5744_38871 f_5@@8))) (not (= (getPredWandId_5744_50985 f_5@@8) 0))) (= (select (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| ZeroMask) o_9@@8 f_5@@8) (select (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| QPMask@0) o_9@@8 f_5@@8)))
 :qid |stdinbpl.730:29|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| ZeroMask) o_9@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_9265_5744_36579#PolymorphicMapType_9265| QPMask@0) o_9@@8 f_5@@8))
))) (forall ((x_1_1_1@@1 T@Ref) (y_1_1_1@@1 T@Ref) ) (!  (=> (not (and (and (and (<= 0 (invRecv1 x_1_1_1@@1 y_1_1_1@@1)) (< (invRecv1 x_1_1_1@@1 y_1_1_1@@1) (|Seq#Length_5787| s_1))) (< NoPerm FullPerm)) (qpRange1 x_1_1_1@@1 y_1_1_1@@1))) (= (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| QPMask@0) null (Pair x_1_1_1@@1 y_1_1_1@@1)) (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| ZeroMask) null (Pair x_1_1_1@@1 y_1_1_1@@1))))
 :qid |stdinbpl.734:22|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_9265_5744_5745#PolymorphicMapType_9265| QPMask@0) null (Pair x_1_1_1@@1 y_1_1_1@@1)))
))) (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0))) (and (and (=> (= (ControlFlow 0 68) 64) anon37_Else_correct) (=> (= (ControlFlow 0 68) 28) anon38_Then_correct)) (=> (= (ControlFlow 0 68) 16) anon38_Else_correct)))))))))
(let ((anon7_correct true))
(let ((anon36_Else_correct  (=> (and (not (and (<= 0 i_3) (< i_3 (|Seq#Length_5787| s_1)))) (= (ControlFlow 0 14) 8)) anon7_correct)))
(let ((anon36_Then_correct  (=> (and (<= 0 i_3) (< i_3 (|Seq#Length_5787| s_1))) (and (=> (= (ControlFlow 0 9) (- 0 13)) (>= i_3 0)) (=> (>= i_3 0) (and (=> (= (ControlFlow 0 9) (- 0 12)) (< i_3 (|Seq#Length_5787| s_1))) (=> (< i_3 (|Seq#Length_5787| s_1)) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= i_3 0)) (=> (>= i_3 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< i_3 (|Seq#Length_5787| t_2))) (=> (< i_3 (|Seq#Length_5787| t_2)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))))))
(let ((anon33_Else_correct  (=> (and (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (<= 0 i_1) (and (< i_1 j_1) (< j_1 (|Seq#Length_5787| s_1)))) (not (= (|Seq#Index_5787| s_1 i_1) (|Seq#Index_5787| s_1 j_1))))
 :qid |stdinbpl.684:20|
 :skolemid |64|
 :pattern ( (|Seq#Index_5787| s_1 i_1) (|Seq#Index_5787| s_1 j_1))
)) (state Heap@@32 ZeroMask)) (and (and (=> (= (ControlFlow 0 70) 68) anon35_Else_correct) (=> (= (ControlFlow 0 70) 9) anon36_Then_correct)) (=> (= (ControlFlow 0 70) 14) anon36_Else_correct)))))
(let ((anon3_correct true))
(let ((anon34_Else_correct  (=> (and (not (and (<= 0 i_18) (and (< i_18 j_14) (< j_14 (|Seq#Length_5787| s_1))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon34_Then_correct  (=> (and (<= 0 i_18) (and (< i_18 j_14) (< j_14 (|Seq#Length_5787| s_1)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i_18 0)) (=> (>= i_18 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i_18 (|Seq#Length_5787| s_1))) (=> (< i_18 (|Seq#Length_5787| s_1)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_14 0)) (=> (>= j_14 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_14 (|Seq#Length_5787| s_1))) (=> (< j_14 (|Seq#Length_5787| s_1)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (state Heap@@32 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@32) x@@11 $allocated)) (=> (and (and (select (|PolymorphicMapType_9244_5548_53#PolymorphicMapType_9244| Heap@@32) y@@7 $allocated) (= (|Seq#Length_5787| s_1) (|Seq#Length_5787| t_2))) (and (>= (|Seq#Length_5787| s_1) 2) (state Heap@@32 ZeroMask))) (and (and (=> (= (ControlFlow 0 71) 70) anon33_Else_correct) (=> (= (ControlFlow 0 71) 2) anon34_Then_correct)) (=> (= (ControlFlow 0 71) 7) anon34_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 72) 71) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 46) (- 47))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
