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
(declare-sort T@Field_7446_53 0)
(declare-sort T@Field_7459_7460 0)
(declare-sort T@Field_13466_3013 0)
(declare-sort T@Field_7446_18852 0)
(declare-sort T@Field_7446_18719 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_7407 0)) (((PolymorphicMapType_7407 (|PolymorphicMapType_7407_4908_3013#PolymorphicMapType_7407| (Array T@Ref T@Field_13466_3013 Real)) (|PolymorphicMapType_7407_4908_53#PolymorphicMapType_7407| (Array T@Ref T@Field_7446_53 Real)) (|PolymorphicMapType_7407_4908_7460#PolymorphicMapType_7407| (Array T@Ref T@Field_7459_7460 Real)) (|PolymorphicMapType_7407_4908_18719#PolymorphicMapType_7407| (Array T@Ref T@Field_7446_18719 Real)) (|PolymorphicMapType_7407_4908_22974#PolymorphicMapType_7407| (Array T@Ref T@Field_7446_18852 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7935 0)) (((PolymorphicMapType_7935 (|PolymorphicMapType_7935_7446_53#PolymorphicMapType_7935| (Array T@Ref T@Field_7446_53 Bool)) (|PolymorphicMapType_7935_7446_7460#PolymorphicMapType_7935| (Array T@Ref T@Field_7459_7460 Bool)) (|PolymorphicMapType_7935_7446_3013#PolymorphicMapType_7935| (Array T@Ref T@Field_13466_3013 Bool)) (|PolymorphicMapType_7935_7446_18719#PolymorphicMapType_7935| (Array T@Ref T@Field_7446_18719 Bool)) (|PolymorphicMapType_7935_7446_20030#PolymorphicMapType_7935| (Array T@Ref T@Field_7446_18852 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7386 0)) (((PolymorphicMapType_7386 (|PolymorphicMapType_7386_4718_53#PolymorphicMapType_7386| (Array T@Ref T@Field_7446_53 Bool)) (|PolymorphicMapType_7386_4721_4722#PolymorphicMapType_7386| (Array T@Ref T@Field_7459_7460 T@Ref)) (|PolymorphicMapType_7386_4908_3013#PolymorphicMapType_7386| (Array T@Ref T@Field_13466_3013 Int)) (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| (Array T@Ref T@Field_7446_18852 T@PolymorphicMapType_7935)) (|PolymorphicMapType_7386_7446_18719#PolymorphicMapType_7386| (Array T@Ref T@Field_7446_18719 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_7446_53)
(declare-fun Ref__Integer_value () T@Field_13466_3013)
(declare-sort T@Seq_15521 0)
(declare-fun |Seq#Length_4932| (T@Seq_15521) Int)
(declare-fun |Seq#Drop_4932| (T@Seq_15521 Int) T@Seq_15521)
(declare-sort T@Seq_2891 0)
(declare-fun |Seq#Length_2891| (T@Seq_2891) Int)
(declare-fun |Seq#Drop_2891| (T@Seq_2891 Int) T@Seq_2891)
(declare-fun state (T@PolymorphicMapType_7386 T@PolymorphicMapType_7407) Bool)
(declare-fun |Ref__multidim_index_2'| (T@PolymorphicMapType_7386 Int Int Int Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Ref__multidim_index_2#trigger| (T@FrameType Int Int Int Int) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun succHeap (T@PolymorphicMapType_7386 T@PolymorphicMapType_7386) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7386 T@PolymorphicMapType_7386) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7407) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7935)
(declare-fun |Seq#Index_4932| (T@Seq_15521 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2891| (T@Seq_2891 Int) Int)
(declare-fun |Seq#Empty_4932| () T@Seq_15521)
(declare-fun |Seq#Empty_2891| () T@Seq_2891)
(declare-fun |Seq#Update_4932| (T@Seq_15521 Int T@Ref) T@Seq_15521)
(declare-fun |Seq#Update_2891| (T@Seq_2891 Int Int) T@Seq_2891)
(declare-fun |Seq#Take_4932| (T@Seq_15521 Int) T@Seq_15521)
(declare-fun |Seq#Take_2891| (T@Seq_2891 Int) T@Seq_2891)
(declare-fun |Seq#Contains_2891| (T@Seq_2891 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2891)
(declare-fun |Seq#Contains_15521| (T@Seq_15521 T@Ref) Bool)
(declare-fun |Seq#Skolem_15521| (T@Seq_15521 T@Ref) Int)
(declare-fun |Seq#Skolem_2891| (T@Seq_2891 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7386 T@PolymorphicMapType_7386 T@PolymorphicMapType_7407) Bool)
(declare-fun IsPredicateField_7446_18810 (T@Field_7446_18719) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7446 (T@Field_7446_18719) T@Field_7446_18852)
(declare-fun HasDirectPerm_7446_18783 (T@PolymorphicMapType_7407 T@Ref T@Field_7446_18719) Bool)
(declare-fun IsWandField_7446_20557 (T@Field_7446_18719) Bool)
(declare-fun WandMaskField_7446 (T@Field_7446_18719) T@Field_7446_18852)
(declare-fun |Seq#Singleton_4932| (T@Ref) T@Seq_15521)
(declare-fun |Seq#Singleton_2891| (Int) T@Seq_2891)
(declare-fun |Seq#Append_15521| (T@Seq_15521 T@Seq_15521) T@Seq_15521)
(declare-fun |Seq#Append_2891| (T@Seq_2891 T@Seq_2891) T@Seq_2891)
(declare-fun dummyHeap () T@PolymorphicMapType_7386)
(declare-fun ZeroMask () T@PolymorphicMapType_7407)
(declare-fun InsidePredicate_7446_7446 (T@Field_7446_18719 T@FrameType T@Field_7446_18719 T@FrameType) Bool)
(declare-fun IsPredicateField_4908_3013 (T@Field_13466_3013) Bool)
(declare-fun IsWandField_4908_3013 (T@Field_13466_3013) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4908_24103 (T@Field_7446_18852) Bool)
(declare-fun IsWandField_4908_24119 (T@Field_7446_18852) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4908_7460 (T@Field_7459_7460) Bool)
(declare-fun IsWandField_4908_7460 (T@Field_7459_7460) Bool)
(declare-fun IsPredicateField_4908_53 (T@Field_7446_53) Bool)
(declare-fun IsWandField_4908_53 (T@Field_7446_53) Bool)
(declare-fun HasDirectPerm_7446_24557 (T@PolymorphicMapType_7407 T@Ref T@Field_7446_18852) Bool)
(declare-fun HasDirectPerm_7446_3013 (T@PolymorphicMapType_7407 T@Ref T@Field_13466_3013) Bool)
(declare-fun HasDirectPerm_7446_7460 (T@PolymorphicMapType_7407 T@Ref T@Field_7459_7460) Bool)
(declare-fun HasDirectPerm_7446_53 (T@PolymorphicMapType_7407 T@Ref T@Field_7446_53) Bool)
(declare-fun dummyFunction_3693 (Int) Bool)
(declare-fun |Ref__multidim_index_2#triggerStateless| (Int Int Int Int) Int)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun Ref__multidim_index_2 (T@PolymorphicMapType_7386 Int Int Int Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_7407 T@PolymorphicMapType_7407 T@PolymorphicMapType_7407) Bool)
(declare-fun |Ref__multidim_index_2#frame| (T@FrameType Int Int Int Int) Int)
(declare-fun |Seq#Equal_15521| (T@Seq_15521 T@Seq_15521) Bool)
(declare-fun |Seq#Equal_2891| (T@Seq_2891 T@Seq_2891) Bool)
(declare-fun |Seq#ContainsTrigger_4932| (T@Seq_15521 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2891| (T@Seq_2891 Int) Bool)
(declare-fun |Seq#SkolemDiff_15521| (T@Seq_15521 T@Seq_15521) Int)
(declare-fun |Seq#SkolemDiff_2891| (T@Seq_2891 T@Seq_2891) Int)
(assert (forall ((s T@Seq_15521) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_4932| s)) (= (|Seq#Length_4932| (|Seq#Drop_4932| s n)) (- (|Seq#Length_4932| s) n))) (=> (< (|Seq#Length_4932| s) n) (= (|Seq#Length_4932| (|Seq#Drop_4932| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_4932| (|Seq#Drop_4932| s n)) (|Seq#Length_4932| s))))
 :qid |stdinbpl.291:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_4932| (|Seq#Drop_4932| s n)))
 :pattern ( (|Seq#Length_4932| s) (|Seq#Drop_4932| s n))
)))
(assert (forall ((s@@0 T@Seq_2891) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2891| s@@0)) (= (|Seq#Length_2891| (|Seq#Drop_2891| s@@0 n@@0)) (- (|Seq#Length_2891| s@@0) n@@0))) (=> (< (|Seq#Length_2891| s@@0) n@@0) (= (|Seq#Length_2891| (|Seq#Drop_2891| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2891| (|Seq#Drop_2891| s@@0 n@@0)) (|Seq#Length_2891| s@@0))))
 :qid |stdinbpl.291:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2891| (|Seq#Drop_2891| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2891| s@@0) (|Seq#Drop_2891| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_7386) (Mask T@PolymorphicMapType_7407) (N0 Int) (N1 Int) (i0 Int) (i1 Int) ) (!  (=> (and (state Heap Mask) (or (< AssumeFunctionsAbove 0) (|Ref__multidim_index_2#trigger| EmptyFrame N0 N1 i0 i1))) (=> (and (and (and (and (and (<= 0 i0) (< i0 N0)) (<= 0 N0)) (<= 0 i1)) (< i1 N1)) (<= 0 N1)) (= (|Ref__multidim_index_2'| Heap N0 N1 i0 i1) (+ (* i0 N1) i1))))
 :qid |stdinbpl.598:15|
 :skolemid |63|
 :pattern ( (state Heap Mask) (|Ref__multidim_index_2'| Heap N0 N1 i0 i1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7386) (Mask@@0 T@PolymorphicMapType_7407) (N0@@0 Int) (N1@@0 Int) (i0@@0 Int) (i1@@0 Int) ) (!  (=> (and (state Heap@@0 Mask@@0) (or (< AssumeFunctionsAbove 0) (|Ref__multidim_index_2#trigger| EmptyFrame N0@@0 N1@@0 i0@@0 i1@@0))) (=> (and (and (and (and (and (<= 0 i0@@0) (< i0@@0 N0@@0)) (<= 0 N0@@0)) (<= 0 i1@@0)) (< i1@@0 N1@@0)) (<= 0 N1@@0)) (< (mod (|Ref__multidim_index_2'| Heap@@0 N0@@0 N1@@0 i0@@0 i1@@0) N1@@0) N0@@0)))
 :qid |stdinbpl.606:15|
 :skolemid |65|
 :pattern ( (state Heap@@0 Mask@@0) (|Ref__multidim_index_2'| Heap@@0 N0@@0 N1@@0 i0@@0 i1@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_7386) (Heap1 T@PolymorphicMapType_7386) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7386) (Mask@@1 T@PolymorphicMapType_7407) ) (!  (=> (state Heap@@1 Mask@@1) (GoodMask Mask@@1))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@1 Mask@@1))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7386) (Heap1@@0 T@PolymorphicMapType_7386) (Heap2 T@PolymorphicMapType_7386) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_7446_18852) ) (!  (not (select (|PolymorphicMapType_7935_7446_20030#PolymorphicMapType_7935| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7935_7446_20030#PolymorphicMapType_7935| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_7446_18719) ) (!  (not (select (|PolymorphicMapType_7935_7446_18719#PolymorphicMapType_7935| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7935_7446_18719#PolymorphicMapType_7935| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_13466_3013) ) (!  (not (select (|PolymorphicMapType_7935_7446_3013#PolymorphicMapType_7935| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7935_7446_3013#PolymorphicMapType_7935| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7459_7460) ) (!  (not (select (|PolymorphicMapType_7935_7446_7460#PolymorphicMapType_7935| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7935_7446_7460#PolymorphicMapType_7935| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7446_53) ) (!  (not (select (|PolymorphicMapType_7935_7446_53#PolymorphicMapType_7935| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7935_7446_53#PolymorphicMapType_7935| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_15521) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_4932| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_4932| (|Seq#Drop_4932| s@@1 n@@1) j) (|Seq#Index_4932| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.312:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_4932| (|Seq#Drop_4932| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2891) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2891| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2891| (|Seq#Drop_2891| s@@2 n@@2) j@@0) (|Seq#Index_2891| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.312:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2891| (|Seq#Drop_2891| s@@2 n@@2) j@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7386) (Mask@@2 T@PolymorphicMapType_7407) (N0@@1 Int) (N1@@1 Int) (i0@@1 Int) (i1@@1 Int) ) (!  (=> (and (state Heap@@2 Mask@@2) (or (< AssumeFunctionsAbove 0) (|Ref__multidim_index_2#trigger| EmptyFrame N0@@1 N1@@1 i0@@1 i1@@1))) (=> (and (and (and (and (and (<= 0 i0@@1) (< i0@@1 N0@@1)) (<= 0 N0@@1)) (<= 0 i1@@1)) (< i1@@1 N1@@1)) (<= 0 N1@@1)) (= (mod (|Ref__multidim_index_2'| Heap@@2 N0@@1 N1@@1 i0@@1 i1@@1) N1@@1) i1@@1)))
 :qid |stdinbpl.602:15|
 :skolemid |64|
 :pattern ( (state Heap@@2 Mask@@2) (|Ref__multidim_index_2'| Heap@@2 N0@@1 N1@@1 i0@@1 i1@@1))
)))
(assert (= (|Seq#Length_4932| |Seq#Empty_4932|) 0))
(assert (= (|Seq#Length_2891| |Seq#Empty_2891|) 0))
(assert (forall ((s@@3 T@Seq_15521) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_4932| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_4932| (|Seq#Update_4932| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_4932| (|Seq#Update_4932| s@@3 i v) n@@3) (|Seq#Index_4932| s@@3 n@@3)))))
 :qid |stdinbpl.267:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_4932| (|Seq#Update_4932| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_4932| s@@3 n@@3) (|Seq#Update_4932| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_2891) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2891| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_2891| (|Seq#Update_2891| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_2891| (|Seq#Update_2891| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_2891| s@@4 n@@4)))))
 :qid |stdinbpl.267:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2891| (|Seq#Update_2891| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_2891| s@@4 n@@4) (|Seq#Update_2891| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_15521) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_4932| s@@5)) (= (|Seq#Length_4932| (|Seq#Take_4932| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_4932| s@@5) n@@5) (= (|Seq#Length_4932| (|Seq#Take_4932| s@@5 n@@5)) (|Seq#Length_4932| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_4932| (|Seq#Take_4932| s@@5 n@@5)) 0)))
 :qid |stdinbpl.278:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_4932| (|Seq#Take_4932| s@@5 n@@5)))
 :pattern ( (|Seq#Take_4932| s@@5 n@@5) (|Seq#Length_4932| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2891) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2891| s@@6)) (= (|Seq#Length_2891| (|Seq#Take_2891| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2891| s@@6) n@@6) (= (|Seq#Length_2891| (|Seq#Take_2891| s@@6 n@@6)) (|Seq#Length_2891| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2891| (|Seq#Take_2891| s@@6 n@@6)) 0)))
 :qid |stdinbpl.278:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2891| (|Seq#Take_2891| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2891| s@@6 n@@6) (|Seq#Length_2891| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2891| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.552:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2891| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_15521) (x T@Ref) ) (!  (=> (|Seq#Contains_15521| s@@7 x) (and (and (<= 0 (|Seq#Skolem_15521| s@@7 x)) (< (|Seq#Skolem_15521| s@@7 x) (|Seq#Length_4932| s@@7))) (= (|Seq#Index_4932| s@@7 (|Seq#Skolem_15521| s@@7 x)) x)))
 :qid |stdinbpl.410:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_15521| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2891) (x@@0 Int) ) (!  (=> (|Seq#Contains_2891| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2891| s@@8 x@@0)) (< (|Seq#Skolem_2891| s@@8 x@@0) (|Seq#Length_2891| s@@8))) (= (|Seq#Index_2891| s@@8 (|Seq#Skolem_2891| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.410:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2891| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_15521) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_4932| s@@9 n@@7) s@@9))
 :qid |stdinbpl.394:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_4932| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2891) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2891| s@@10 n@@8) s@@10))
 :qid |stdinbpl.394:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2891| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.247:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.245:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7386) (ExhaleHeap T@PolymorphicMapType_7386) (Mask@@3 T@PolymorphicMapType_7407) (pm_f_5 T@Field_7446_18719) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@3) (=> (and (HasDirectPerm_7446_18783 Mask@@3 null pm_f_5) (IsPredicateField_7446_18810 pm_f_5)) (= (select (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| Heap@@3) null (PredicateMaskField_7446 pm_f_5)) (select (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| ExhaleHeap) null (PredicateMaskField_7446 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@3) (IsPredicateField_7446_18810 pm_f_5) (select (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| ExhaleHeap) null (PredicateMaskField_7446 pm_f_5)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7386) (ExhaleHeap@@0 T@PolymorphicMapType_7386) (Mask@@4 T@PolymorphicMapType_7407) (pm_f_5@@0 T@Field_7446_18719) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@4) (=> (and (HasDirectPerm_7446_18783 Mask@@4 null pm_f_5@@0) (IsWandField_7446_20557 pm_f_5@@0)) (= (select (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| Heap@@4) null (WandMaskField_7446 pm_f_5@@0)) (select (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| ExhaleHeap@@0) null (WandMaskField_7446 pm_f_5@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@4) (IsWandField_7446_20557 pm_f_5@@0) (select (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| ExhaleHeap@@0) null (WandMaskField_7446 pm_f_5@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_15521| (|Seq#Singleton_4932| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.535:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_15521| (|Seq#Singleton_4932| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2891| (|Seq#Singleton_2891| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.535:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2891| (|Seq#Singleton_2891| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_15521) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_4932| s@@11))) (= (|Seq#Index_4932| (|Seq#Take_4932| s@@11 n@@9) j@@3) (|Seq#Index_4932| s@@11 j@@3)))
 :qid |stdinbpl.286:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_4932| (|Seq#Take_4932| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_4932| s@@11 j@@3) (|Seq#Take_4932| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2891) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2891| s@@12))) (= (|Seq#Index_2891| (|Seq#Take_2891| s@@12 n@@10) j@@4) (|Seq#Index_2891| s@@12 j@@4)))
 :qid |stdinbpl.286:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2891| (|Seq#Take_2891| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2891| s@@12 j@@4) (|Seq#Take_2891| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_15521) (t T@Seq_15521) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_4932| s@@13))) (< n@@11 (|Seq#Length_4932| (|Seq#Append_15521| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_4932| s@@13)) (|Seq#Length_4932| s@@13)) n@@11) (= (|Seq#Take_4932| (|Seq#Append_15521| s@@13 t) n@@11) (|Seq#Append_15521| s@@13 (|Seq#Take_4932| t (|Seq#Sub| n@@11 (|Seq#Length_4932| s@@13)))))))
 :qid |stdinbpl.371:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_4932| (|Seq#Append_15521| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2891) (t@@0 T@Seq_2891) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2891| s@@14))) (< n@@12 (|Seq#Length_2891| (|Seq#Append_2891| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2891| s@@14)) (|Seq#Length_2891| s@@14)) n@@12) (= (|Seq#Take_2891| (|Seq#Append_2891| s@@14 t@@0) n@@12) (|Seq#Append_2891| s@@14 (|Seq#Take_2891| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2891| s@@14)))))))
 :qid |stdinbpl.371:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2891| (|Seq#Append_2891| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7386) (ExhaleHeap@@1 T@PolymorphicMapType_7386) (Mask@@5 T@PolymorphicMapType_7407) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@5) (=> (select (|PolymorphicMapType_7386_4718_53#PolymorphicMapType_7386| Heap@@5) o_12 $allocated) (select (|PolymorphicMapType_7386_4718_53#PolymorphicMapType_7386| ExhaleHeap@@1) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@5) (select (|PolymorphicMapType_7386_4718_53#PolymorphicMapType_7386| ExhaleHeap@@1) o_12 $allocated))
)))
(assert (forall ((p T@Field_7446_18719) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7446_7446 p v_1 p w))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7446_7446 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_15521) (s1 T@Seq_15521) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_4932|)) (not (= s1 |Seq#Empty_4932|))) (<= (|Seq#Length_4932| s0) n@@13)) (< n@@13 (|Seq#Length_4932| (|Seq#Append_15521| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_4932| s0)) (|Seq#Length_4932| s0)) n@@13) (= (|Seq#Index_4932| (|Seq#Append_15521| s0 s1) n@@13) (|Seq#Index_4932| s1 (|Seq#Sub| n@@13 (|Seq#Length_4932| s0))))))
 :qid |stdinbpl.258:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_4932| (|Seq#Append_15521| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2891) (s1@@0 T@Seq_2891) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2891|)) (not (= s1@@0 |Seq#Empty_2891|))) (<= (|Seq#Length_2891| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2891| (|Seq#Append_2891| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2891| s0@@0)) (|Seq#Length_2891| s0@@0)) n@@14) (= (|Seq#Index_2891| (|Seq#Append_2891| s0@@0 s1@@0) n@@14) (|Seq#Index_2891| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2891| s0@@0))))))
 :qid |stdinbpl.258:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2891| (|Seq#Append_2891| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_4908_3013 Ref__Integer_value)))
(assert  (not (IsWandField_4908_3013 Ref__Integer_value)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7386) (ExhaleHeap@@2 T@PolymorphicMapType_7386) (Mask@@6 T@PolymorphicMapType_7407) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@6) (succHeap Heap@@6 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_7407) (o_2@@4 T@Ref) (f_4@@4 T@Field_7446_18852) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_7407_4908_22974#PolymorphicMapType_7407| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4908_24103 f_4@@4))) (not (IsWandField_4908_24119 f_4@@4))) (<= (select (|PolymorphicMapType_7407_4908_22974#PolymorphicMapType_7407| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_7407_4908_22974#PolymorphicMapType_7407| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_7407) (o_2@@5 T@Ref) (f_4@@5 T@Field_7446_18719) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_7407_4908_18719#PolymorphicMapType_7407| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_7446_18810 f_4@@5))) (not (IsWandField_7446_20557 f_4@@5))) (<= (select (|PolymorphicMapType_7407_4908_18719#PolymorphicMapType_7407| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_7407_4908_18719#PolymorphicMapType_7407| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_7407) (o_2@@6 T@Ref) (f_4@@6 T@Field_7459_7460) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_7407_4908_7460#PolymorphicMapType_7407| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_4908_7460 f_4@@6))) (not (IsWandField_4908_7460 f_4@@6))) (<= (select (|PolymorphicMapType_7407_4908_7460#PolymorphicMapType_7407| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_7407_4908_7460#PolymorphicMapType_7407| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7407) (o_2@@7 T@Ref) (f_4@@7 T@Field_7446_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_7407_4908_53#PolymorphicMapType_7407| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_4908_53 f_4@@7))) (not (IsWandField_4908_53 f_4@@7))) (<= (select (|PolymorphicMapType_7407_4908_53#PolymorphicMapType_7407| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_7407_4908_53#PolymorphicMapType_7407| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7407) (o_2@@8 T@Ref) (f_4@@8 T@Field_13466_3013) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_7407_4908_3013#PolymorphicMapType_7407| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4908_3013 f_4@@8))) (not (IsWandField_4908_3013 f_4@@8))) (<= (select (|PolymorphicMapType_7407_4908_3013#PolymorphicMapType_7407| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_7407_4908_3013#PolymorphicMapType_7407| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7407) (o_2@@9 T@Ref) (f_4@@9 T@Field_7446_18852) ) (! (= (HasDirectPerm_7446_24557 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_7407_4908_22974#PolymorphicMapType_7407| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7446_24557 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7407) (o_2@@10 T@Ref) (f_4@@10 T@Field_7446_18719) ) (! (= (HasDirectPerm_7446_18783 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_7407_4908_18719#PolymorphicMapType_7407| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7446_18783 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_7407) (o_2@@11 T@Ref) (f_4@@11 T@Field_13466_3013) ) (! (= (HasDirectPerm_7446_3013 Mask@@14 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_7407_4908_3013#PolymorphicMapType_7407| Mask@@14) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7446_3013 Mask@@14 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_7407) (o_2@@12 T@Ref) (f_4@@12 T@Field_7459_7460) ) (! (= (HasDirectPerm_7446_7460 Mask@@15 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_7407_4908_7460#PolymorphicMapType_7407| Mask@@15) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7446_7460 Mask@@15 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_7407) (o_2@@13 T@Ref) (f_4@@13 T@Field_7446_53) ) (! (= (HasDirectPerm_7446_53 Mask@@16 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_7407_4908_53#PolymorphicMapType_7407| Mask@@16) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7446_53 Mask@@16 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7386) (N0@@2 Int) (N1@@2 Int) (i0@@2 Int) (i1@@2 Int) ) (! (dummyFunction_3693 (|Ref__multidim_index_2#triggerStateless| N0@@2 N1@@2 i0@@2 i1@@2))
 :qid |stdinbpl.577:15|
 :skolemid |59|
 :pattern ( (|Ref__multidim_index_2'| Heap@@7 N0@@2 N1@@2 i0@@2 i1@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7386) (ExhaleHeap@@3 T@PolymorphicMapType_7386) (Mask@@17 T@PolymorphicMapType_7407) (pm_f_5@@1 T@Field_7446_18719) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@17) (=> (and (HasDirectPerm_7446_18783 Mask@@17 null pm_f_5@@1) (IsPredicateField_7446_18810 pm_f_5@@1)) (and (and (and (and (forall ((o2_5 T@Ref) (f_16 T@Field_7446_53) ) (!  (=> (select (|PolymorphicMapType_7935_7446_53#PolymorphicMapType_7935| (select (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| Heap@@8) null (PredicateMaskField_7446 pm_f_5@@1))) o2_5 f_16) (= (select (|PolymorphicMapType_7386_4718_53#PolymorphicMapType_7386| Heap@@8) o2_5 f_16) (select (|PolymorphicMapType_7386_4718_53#PolymorphicMapType_7386| ExhaleHeap@@3) o2_5 f_16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7386_4718_53#PolymorphicMapType_7386| ExhaleHeap@@3) o2_5 f_16))
)) (forall ((o2_5@@0 T@Ref) (f_16@@0 T@Field_7459_7460) ) (!  (=> (select (|PolymorphicMapType_7935_7446_7460#PolymorphicMapType_7935| (select (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| Heap@@8) null (PredicateMaskField_7446 pm_f_5@@1))) o2_5@@0 f_16@@0) (= (select (|PolymorphicMapType_7386_4721_4722#PolymorphicMapType_7386| Heap@@8) o2_5@@0 f_16@@0) (select (|PolymorphicMapType_7386_4721_4722#PolymorphicMapType_7386| ExhaleHeap@@3) o2_5@@0 f_16@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7386_4721_4722#PolymorphicMapType_7386| ExhaleHeap@@3) o2_5@@0 f_16@@0))
))) (forall ((o2_5@@1 T@Ref) (f_16@@1 T@Field_13466_3013) ) (!  (=> (select (|PolymorphicMapType_7935_7446_3013#PolymorphicMapType_7935| (select (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| Heap@@8) null (PredicateMaskField_7446 pm_f_5@@1))) o2_5@@1 f_16@@1) (= (select (|PolymorphicMapType_7386_4908_3013#PolymorphicMapType_7386| Heap@@8) o2_5@@1 f_16@@1) (select (|PolymorphicMapType_7386_4908_3013#PolymorphicMapType_7386| ExhaleHeap@@3) o2_5@@1 f_16@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7386_4908_3013#PolymorphicMapType_7386| ExhaleHeap@@3) o2_5@@1 f_16@@1))
))) (forall ((o2_5@@2 T@Ref) (f_16@@2 T@Field_7446_18719) ) (!  (=> (select (|PolymorphicMapType_7935_7446_18719#PolymorphicMapType_7935| (select (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| Heap@@8) null (PredicateMaskField_7446 pm_f_5@@1))) o2_5@@2 f_16@@2) (= (select (|PolymorphicMapType_7386_7446_18719#PolymorphicMapType_7386| Heap@@8) o2_5@@2 f_16@@2) (select (|PolymorphicMapType_7386_7446_18719#PolymorphicMapType_7386| ExhaleHeap@@3) o2_5@@2 f_16@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7386_7446_18719#PolymorphicMapType_7386| ExhaleHeap@@3) o2_5@@2 f_16@@2))
))) (forall ((o2_5@@3 T@Ref) (f_16@@3 T@Field_7446_18852) ) (!  (=> (select (|PolymorphicMapType_7935_7446_20030#PolymorphicMapType_7935| (select (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| Heap@@8) null (PredicateMaskField_7446 pm_f_5@@1))) o2_5@@3 f_16@@3) (= (select (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| Heap@@8) o2_5@@3 f_16@@3) (select (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| ExhaleHeap@@3) o2_5@@3 f_16@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| ExhaleHeap@@3) o2_5@@3 f_16@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@17) (IsPredicateField_7446_18810 pm_f_5@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7386) (ExhaleHeap@@4 T@PolymorphicMapType_7386) (Mask@@18 T@PolymorphicMapType_7407) (pm_f_5@@2 T@Field_7446_18719) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@18) (=> (and (HasDirectPerm_7446_18783 Mask@@18 null pm_f_5@@2) (IsWandField_7446_20557 pm_f_5@@2)) (and (and (and (and (forall ((o2_5@@4 T@Ref) (f_16@@4 T@Field_7446_53) ) (!  (=> (select (|PolymorphicMapType_7935_7446_53#PolymorphicMapType_7935| (select (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| Heap@@9) null (WandMaskField_7446 pm_f_5@@2))) o2_5@@4 f_16@@4) (= (select (|PolymorphicMapType_7386_4718_53#PolymorphicMapType_7386| Heap@@9) o2_5@@4 f_16@@4) (select (|PolymorphicMapType_7386_4718_53#PolymorphicMapType_7386| ExhaleHeap@@4) o2_5@@4 f_16@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7386_4718_53#PolymorphicMapType_7386| ExhaleHeap@@4) o2_5@@4 f_16@@4))
)) (forall ((o2_5@@5 T@Ref) (f_16@@5 T@Field_7459_7460) ) (!  (=> (select (|PolymorphicMapType_7935_7446_7460#PolymorphicMapType_7935| (select (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| Heap@@9) null (WandMaskField_7446 pm_f_5@@2))) o2_5@@5 f_16@@5) (= (select (|PolymorphicMapType_7386_4721_4722#PolymorphicMapType_7386| Heap@@9) o2_5@@5 f_16@@5) (select (|PolymorphicMapType_7386_4721_4722#PolymorphicMapType_7386| ExhaleHeap@@4) o2_5@@5 f_16@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7386_4721_4722#PolymorphicMapType_7386| ExhaleHeap@@4) o2_5@@5 f_16@@5))
))) (forall ((o2_5@@6 T@Ref) (f_16@@6 T@Field_13466_3013) ) (!  (=> (select (|PolymorphicMapType_7935_7446_3013#PolymorphicMapType_7935| (select (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| Heap@@9) null (WandMaskField_7446 pm_f_5@@2))) o2_5@@6 f_16@@6) (= (select (|PolymorphicMapType_7386_4908_3013#PolymorphicMapType_7386| Heap@@9) o2_5@@6 f_16@@6) (select (|PolymorphicMapType_7386_4908_3013#PolymorphicMapType_7386| ExhaleHeap@@4) o2_5@@6 f_16@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7386_4908_3013#PolymorphicMapType_7386| ExhaleHeap@@4) o2_5@@6 f_16@@6))
))) (forall ((o2_5@@7 T@Ref) (f_16@@7 T@Field_7446_18719) ) (!  (=> (select (|PolymorphicMapType_7935_7446_18719#PolymorphicMapType_7935| (select (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| Heap@@9) null (WandMaskField_7446 pm_f_5@@2))) o2_5@@7 f_16@@7) (= (select (|PolymorphicMapType_7386_7446_18719#PolymorphicMapType_7386| Heap@@9) o2_5@@7 f_16@@7) (select (|PolymorphicMapType_7386_7446_18719#PolymorphicMapType_7386| ExhaleHeap@@4) o2_5@@7 f_16@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7386_7446_18719#PolymorphicMapType_7386| ExhaleHeap@@4) o2_5@@7 f_16@@7))
))) (forall ((o2_5@@8 T@Ref) (f_16@@8 T@Field_7446_18852) ) (!  (=> (select (|PolymorphicMapType_7935_7446_20030#PolymorphicMapType_7935| (select (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| Heap@@9) null (WandMaskField_7446 pm_f_5@@2))) o2_5@@8 f_16@@8) (= (select (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| Heap@@9) o2_5@@8 f_16@@8) (select (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| ExhaleHeap@@4) o2_5@@8 f_16@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| ExhaleHeap@@4) o2_5@@8 f_16@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@18) (IsWandField_7446_20557 pm_f_5@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.177:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2891| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.550:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2891| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7386) (ExhaleHeap@@5 T@PolymorphicMapType_7386) (Mask@@19 T@PolymorphicMapType_7407) (o_12@@0 T@Ref) (f_16@@9 T@Field_7446_18852) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@19) (=> (HasDirectPerm_7446_24557 Mask@@19 o_12@@0 f_16@@9) (= (select (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| Heap@@10) o_12@@0 f_16@@9) (select (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| ExhaleHeap@@5) o_12@@0 f_16@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@19) (select (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| ExhaleHeap@@5) o_12@@0 f_16@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7386) (ExhaleHeap@@6 T@PolymorphicMapType_7386) (Mask@@20 T@PolymorphicMapType_7407) (o_12@@1 T@Ref) (f_16@@10 T@Field_7446_18719) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@20) (=> (HasDirectPerm_7446_18783 Mask@@20 o_12@@1 f_16@@10) (= (select (|PolymorphicMapType_7386_7446_18719#PolymorphicMapType_7386| Heap@@11) o_12@@1 f_16@@10) (select (|PolymorphicMapType_7386_7446_18719#PolymorphicMapType_7386| ExhaleHeap@@6) o_12@@1 f_16@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@20) (select (|PolymorphicMapType_7386_7446_18719#PolymorphicMapType_7386| ExhaleHeap@@6) o_12@@1 f_16@@10))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7386) (ExhaleHeap@@7 T@PolymorphicMapType_7386) (Mask@@21 T@PolymorphicMapType_7407) (o_12@@2 T@Ref) (f_16@@11 T@Field_13466_3013) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@21) (=> (HasDirectPerm_7446_3013 Mask@@21 o_12@@2 f_16@@11) (= (select (|PolymorphicMapType_7386_4908_3013#PolymorphicMapType_7386| Heap@@12) o_12@@2 f_16@@11) (select (|PolymorphicMapType_7386_4908_3013#PolymorphicMapType_7386| ExhaleHeap@@7) o_12@@2 f_16@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@21) (select (|PolymorphicMapType_7386_4908_3013#PolymorphicMapType_7386| ExhaleHeap@@7) o_12@@2 f_16@@11))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7386) (ExhaleHeap@@8 T@PolymorphicMapType_7386) (Mask@@22 T@PolymorphicMapType_7407) (o_12@@3 T@Ref) (f_16@@12 T@Field_7459_7460) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@22) (=> (HasDirectPerm_7446_7460 Mask@@22 o_12@@3 f_16@@12) (= (select (|PolymorphicMapType_7386_4721_4722#PolymorphicMapType_7386| Heap@@13) o_12@@3 f_16@@12) (select (|PolymorphicMapType_7386_4721_4722#PolymorphicMapType_7386| ExhaleHeap@@8) o_12@@3 f_16@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@22) (select (|PolymorphicMapType_7386_4721_4722#PolymorphicMapType_7386| ExhaleHeap@@8) o_12@@3 f_16@@12))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7386) (ExhaleHeap@@9 T@PolymorphicMapType_7386) (Mask@@23 T@PolymorphicMapType_7407) (o_12@@4 T@Ref) (f_16@@13 T@Field_7446_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@23) (=> (HasDirectPerm_7446_53 Mask@@23 o_12@@4 f_16@@13) (= (select (|PolymorphicMapType_7386_4718_53#PolymorphicMapType_7386| Heap@@14) o_12@@4 f_16@@13) (select (|PolymorphicMapType_7386_4718_53#PolymorphicMapType_7386| ExhaleHeap@@9) o_12@@4 f_16@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@23) (select (|PolymorphicMapType_7386_4718_53#PolymorphicMapType_7386| ExhaleHeap@@9) o_12@@4 f_16@@13))
)))
(assert (forall ((s0@@1 T@Seq_15521) (s1@@1 T@Seq_15521) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_4932|)) (not (= s1@@1 |Seq#Empty_4932|))) (= (|Seq#Length_4932| (|Seq#Append_15521| s0@@1 s1@@1)) (+ (|Seq#Length_4932| s0@@1) (|Seq#Length_4932| s1@@1))))
 :qid |stdinbpl.227:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_4932| (|Seq#Append_15521| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2891) (s1@@2 T@Seq_2891) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2891|)) (not (= s1@@2 |Seq#Empty_2891|))) (= (|Seq#Length_2891| (|Seq#Append_2891| s0@@2 s1@@2)) (+ (|Seq#Length_2891| s0@@2) (|Seq#Length_2891| s1@@2))))
 :qid |stdinbpl.227:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2891| (|Seq#Append_2891| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_7446_18852) ) (! (= (select (|PolymorphicMapType_7407_4908_22974#PolymorphicMapType_7407| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7407_4908_22974#PolymorphicMapType_7407| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_7446_18719) ) (! (= (select (|PolymorphicMapType_7407_4908_18719#PolymorphicMapType_7407| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7407_4908_18719#PolymorphicMapType_7407| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_7459_7460) ) (! (= (select (|PolymorphicMapType_7407_4908_7460#PolymorphicMapType_7407| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7407_4908_7460#PolymorphicMapType_7407| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_7446_53) ) (! (= (select (|PolymorphicMapType_7407_4908_53#PolymorphicMapType_7407| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7407_4908_53#PolymorphicMapType_7407| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_13466_3013) ) (! (= (select (|PolymorphicMapType_7407_4908_3013#PolymorphicMapType_7407| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7407_4908_3013#PolymorphicMapType_7407| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_15521) (t@@1 T@Seq_15521) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_4932| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_4932| s@@15)) (|Seq#Length_4932| s@@15)) n@@15) (= (|Seq#Drop_4932| (|Seq#Append_15521| s@@15 t@@1) n@@15) (|Seq#Drop_4932| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_4932| s@@15))))))
 :qid |stdinbpl.384:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_4932| (|Seq#Append_15521| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2891) (t@@2 T@Seq_2891) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2891| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2891| s@@16)) (|Seq#Length_2891| s@@16)) n@@16) (= (|Seq#Drop_2891| (|Seq#Append_2891| s@@16 t@@2) n@@16) (|Seq#Drop_2891| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2891| s@@16))))))
 :qid |stdinbpl.384:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2891| (|Seq#Append_2891| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7386) (N0@@3 Int) (N1@@3 Int) (i0@@3 Int) (i1@@3 Int) ) (!  (and (= (Ref__multidim_index_2 Heap@@15 N0@@3 N1@@3 i0@@3 i1@@3) (|Ref__multidim_index_2'| Heap@@15 N0@@3 N1@@3 i0@@3 i1@@3)) (dummyFunction_3693 (|Ref__multidim_index_2#triggerStateless| N0@@3 N1@@3 i0@@3 i1@@3)))
 :qid |stdinbpl.573:15|
 :skolemid |58|
 :pattern ( (Ref__multidim_index_2 Heap@@15 N0@@3 N1@@3 i0@@3 i1@@3))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7407) (SummandMask1 T@PolymorphicMapType_7407) (SummandMask2 T@PolymorphicMapType_7407) (o_2@@19 T@Ref) (f_4@@19 T@Field_7446_18852) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7407_4908_22974#PolymorphicMapType_7407| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_7407_4908_22974#PolymorphicMapType_7407| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_7407_4908_22974#PolymorphicMapType_7407| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7407_4908_22974#PolymorphicMapType_7407| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7407_4908_22974#PolymorphicMapType_7407| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7407_4908_22974#PolymorphicMapType_7407| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7407) (SummandMask1@@0 T@PolymorphicMapType_7407) (SummandMask2@@0 T@PolymorphicMapType_7407) (o_2@@20 T@Ref) (f_4@@20 T@Field_7446_18719) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7407_4908_18719#PolymorphicMapType_7407| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_7407_4908_18719#PolymorphicMapType_7407| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_7407_4908_18719#PolymorphicMapType_7407| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7407_4908_18719#PolymorphicMapType_7407| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7407_4908_18719#PolymorphicMapType_7407| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7407_4908_18719#PolymorphicMapType_7407| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7407) (SummandMask1@@1 T@PolymorphicMapType_7407) (SummandMask2@@1 T@PolymorphicMapType_7407) (o_2@@21 T@Ref) (f_4@@21 T@Field_7459_7460) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7407_4908_7460#PolymorphicMapType_7407| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_7407_4908_7460#PolymorphicMapType_7407| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_7407_4908_7460#PolymorphicMapType_7407| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7407_4908_7460#PolymorphicMapType_7407| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7407_4908_7460#PolymorphicMapType_7407| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7407_4908_7460#PolymorphicMapType_7407| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7407) (SummandMask1@@2 T@PolymorphicMapType_7407) (SummandMask2@@2 T@PolymorphicMapType_7407) (o_2@@22 T@Ref) (f_4@@22 T@Field_7446_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7407_4908_53#PolymorphicMapType_7407| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_7407_4908_53#PolymorphicMapType_7407| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_7407_4908_53#PolymorphicMapType_7407| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7407_4908_53#PolymorphicMapType_7407| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7407_4908_53#PolymorphicMapType_7407| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7407_4908_53#PolymorphicMapType_7407| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7407) (SummandMask1@@3 T@PolymorphicMapType_7407) (SummandMask2@@3 T@PolymorphicMapType_7407) (o_2@@23 T@Ref) (f_4@@23 T@Field_13466_3013) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7407_4908_3013#PolymorphicMapType_7407| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_7407_4908_3013#PolymorphicMapType_7407| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_7407_4908_3013#PolymorphicMapType_7407| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7407_4908_3013#PolymorphicMapType_7407| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7407_4908_3013#PolymorphicMapType_7407| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7407_4908_3013#PolymorphicMapType_7407| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7386) (Mask@@24 T@PolymorphicMapType_7407) (N0@@4 Int) (N1@@4 Int) (i0@@4 Int) (i1@@4 Int) ) (!  (=> (state Heap@@16 Mask@@24) (= (|Ref__multidim_index_2'| Heap@@16 N0@@4 N1@@4 i0@@4 i1@@4) (|Ref__multidim_index_2#frame| EmptyFrame N0@@4 N1@@4 i0@@4 i1@@4)))
 :qid |stdinbpl.584:15|
 :skolemid |60|
 :pattern ( (state Heap@@16 Mask@@24) (|Ref__multidim_index_2'| Heap@@16 N0@@4 N1@@4 i0@@4 i1@@4))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2891| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2891| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.549:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2891| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_15521) (b T@Seq_15521) ) (!  (=> (|Seq#Equal_15521| a b) (= a b))
 :qid |stdinbpl.522:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_15521| a b))
)))
(assert (forall ((a@@0 T@Seq_2891) (b@@0 T@Seq_2891) ) (!  (=> (|Seq#Equal_2891| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.522:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2891| a@@0 b@@0))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7386) (Mask@@25 T@PolymorphicMapType_7407) (N0@@5 Int) (N1@@5 Int) (i0@@5 Int) (i1@@5 Int) ) (!  (=> (and (state Heap@@17 Mask@@25) (or (< AssumeFunctionsAbove 0) (|Ref__multidim_index_2#trigger| EmptyFrame N0@@5 N1@@5 i0@@5 i1@@5))) (=> (and (and (and (and (and (<= 0 i0@@5) (< i0@@5 N0@@5)) (<= 0 N0@@5)) (<= 0 i1@@5)) (< i1@@5 N1@@5)) (<= 0 N1@@5)) (< (|Ref__multidim_index_2'| Heap@@17 N0@@5 N1@@5 i0@@5 i1@@5) (* N0@@5 N1@@5))))
 :qid |stdinbpl.594:15|
 :skolemid |62|
 :pattern ( (state Heap@@17 Mask@@25) (|Ref__multidim_index_2'| Heap@@17 N0@@5 N1@@5 i0@@5 i1@@5))
)))
(assert (forall ((s@@17 T@Seq_15521) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_4932| s@@17))) (|Seq#ContainsTrigger_4932| s@@17 (|Seq#Index_4932| s@@17 i@@3)))
 :qid |stdinbpl.415:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_4932| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_2891) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2891| s@@18))) (|Seq#ContainsTrigger_2891| s@@18 (|Seq#Index_2891| s@@18 i@@4)))
 :qid |stdinbpl.415:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2891| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_15521) (s1@@3 T@Seq_15521) ) (!  (and (=> (= s0@@3 |Seq#Empty_4932|) (= (|Seq#Append_15521| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_4932|) (= (|Seq#Append_15521| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.233:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_15521| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2891) (s1@@4 T@Seq_2891) ) (!  (and (=> (= s0@@4 |Seq#Empty_2891|) (= (|Seq#Append_2891| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2891|) (= (|Seq#Append_2891| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.233:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2891| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_4932| (|Seq#Singleton_4932| t@@3) 0) t@@3)
 :qid |stdinbpl.237:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_4932| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2891| (|Seq#Singleton_2891| t@@4) 0) t@@4)
 :qid |stdinbpl.237:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2891| t@@4))
)))
(assert (forall ((s@@19 T@Seq_15521) ) (! (<= 0 (|Seq#Length_4932| s@@19))
 :qid |stdinbpl.216:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_4932| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2891) ) (! (<= 0 (|Seq#Length_2891| s@@20))
 :qid |stdinbpl.216:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2891| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_15521) (s1@@5 T@Seq_15521) ) (!  (=> (|Seq#Equal_15521| s0@@5 s1@@5) (and (= (|Seq#Length_4932| s0@@5) (|Seq#Length_4932| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_4932| s0@@5))) (= (|Seq#Index_4932| s0@@5 j@@6) (|Seq#Index_4932| s1@@5 j@@6)))
 :qid |stdinbpl.512:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_4932| s0@@5 j@@6))
 :pattern ( (|Seq#Index_4932| s1@@5 j@@6))
))))
 :qid |stdinbpl.509:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_15521| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2891) (s1@@6 T@Seq_2891) ) (!  (=> (|Seq#Equal_2891| s0@@6 s1@@6) (and (= (|Seq#Length_2891| s0@@6) (|Seq#Length_2891| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2891| s0@@6))) (= (|Seq#Index_2891| s0@@6 j@@7) (|Seq#Index_2891| s1@@6 j@@7)))
 :qid |stdinbpl.512:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2891| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2891| s1@@6 j@@7))
))))
 :qid |stdinbpl.509:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2891| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_4932| (|Seq#Singleton_4932| t@@5)) 1)
 :qid |stdinbpl.224:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_4932| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2891| (|Seq#Singleton_2891| t@@6)) 1)
 :qid |stdinbpl.224:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2891| t@@6))
)))
(assert (forall ((s@@21 T@Seq_15521) (t@@7 T@Seq_15521) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_4932| s@@21))) (= (|Seq#Take_4932| (|Seq#Append_15521| s@@21 t@@7) n@@17) (|Seq#Take_4932| s@@21 n@@17)))
 :qid |stdinbpl.366:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_4932| (|Seq#Append_15521| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2891) (t@@8 T@Seq_2891) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2891| s@@22))) (= (|Seq#Take_2891| (|Seq#Append_2891| s@@22 t@@8) n@@18) (|Seq#Take_2891| s@@22 n@@18)))
 :qid |stdinbpl.366:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2891| (|Seq#Append_2891| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_15521) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_4932| s@@23))) (= (|Seq#Length_4932| (|Seq#Update_4932| s@@23 i@@5 v@@2)) (|Seq#Length_4932| s@@23)))
 :qid |stdinbpl.265:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_4932| (|Seq#Update_4932| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_4932| s@@23) (|Seq#Update_4932| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2891) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2891| s@@24))) (= (|Seq#Length_2891| (|Seq#Update_2891| s@@24 i@@6 v@@3)) (|Seq#Length_2891| s@@24)))
 :qid |stdinbpl.265:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2891| (|Seq#Update_2891| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_2891| s@@24) (|Seq#Update_2891| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7386) (o_11 T@Ref) (f_17 T@Field_7446_18719) (v@@4 T@FrameType) ) (! (succHeap Heap@@18 (PolymorphicMapType_7386 (|PolymorphicMapType_7386_4718_53#PolymorphicMapType_7386| Heap@@18) (|PolymorphicMapType_7386_4721_4722#PolymorphicMapType_7386| Heap@@18) (|PolymorphicMapType_7386_4908_3013#PolymorphicMapType_7386| Heap@@18) (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| Heap@@18) (store (|PolymorphicMapType_7386_7446_18719#PolymorphicMapType_7386| Heap@@18) o_11 f_17 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7386 (|PolymorphicMapType_7386_4718_53#PolymorphicMapType_7386| Heap@@18) (|PolymorphicMapType_7386_4721_4722#PolymorphicMapType_7386| Heap@@18) (|PolymorphicMapType_7386_4908_3013#PolymorphicMapType_7386| Heap@@18) (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| Heap@@18) (store (|PolymorphicMapType_7386_7446_18719#PolymorphicMapType_7386| Heap@@18) o_11 f_17 v@@4)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7386) (o_11@@0 T@Ref) (f_17@@0 T@Field_7446_18852) (v@@5 T@PolymorphicMapType_7935) ) (! (succHeap Heap@@19 (PolymorphicMapType_7386 (|PolymorphicMapType_7386_4718_53#PolymorphicMapType_7386| Heap@@19) (|PolymorphicMapType_7386_4721_4722#PolymorphicMapType_7386| Heap@@19) (|PolymorphicMapType_7386_4908_3013#PolymorphicMapType_7386| Heap@@19) (store (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| Heap@@19) o_11@@0 f_17@@0 v@@5) (|PolymorphicMapType_7386_7446_18719#PolymorphicMapType_7386| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7386 (|PolymorphicMapType_7386_4718_53#PolymorphicMapType_7386| Heap@@19) (|PolymorphicMapType_7386_4721_4722#PolymorphicMapType_7386| Heap@@19) (|PolymorphicMapType_7386_4908_3013#PolymorphicMapType_7386| Heap@@19) (store (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| Heap@@19) o_11@@0 f_17@@0 v@@5) (|PolymorphicMapType_7386_7446_18719#PolymorphicMapType_7386| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_7386) (o_11@@1 T@Ref) (f_17@@1 T@Field_13466_3013) (v@@6 Int) ) (! (succHeap Heap@@20 (PolymorphicMapType_7386 (|PolymorphicMapType_7386_4718_53#PolymorphicMapType_7386| Heap@@20) (|PolymorphicMapType_7386_4721_4722#PolymorphicMapType_7386| Heap@@20) (store (|PolymorphicMapType_7386_4908_3013#PolymorphicMapType_7386| Heap@@20) o_11@@1 f_17@@1 v@@6) (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| Heap@@20) (|PolymorphicMapType_7386_7446_18719#PolymorphicMapType_7386| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7386 (|PolymorphicMapType_7386_4718_53#PolymorphicMapType_7386| Heap@@20) (|PolymorphicMapType_7386_4721_4722#PolymorphicMapType_7386| Heap@@20) (store (|PolymorphicMapType_7386_4908_3013#PolymorphicMapType_7386| Heap@@20) o_11@@1 f_17@@1 v@@6) (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| Heap@@20) (|PolymorphicMapType_7386_7446_18719#PolymorphicMapType_7386| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_7386) (o_11@@2 T@Ref) (f_17@@2 T@Field_7459_7460) (v@@7 T@Ref) ) (! (succHeap Heap@@21 (PolymorphicMapType_7386 (|PolymorphicMapType_7386_4718_53#PolymorphicMapType_7386| Heap@@21) (store (|PolymorphicMapType_7386_4721_4722#PolymorphicMapType_7386| Heap@@21) o_11@@2 f_17@@2 v@@7) (|PolymorphicMapType_7386_4908_3013#PolymorphicMapType_7386| Heap@@21) (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| Heap@@21) (|PolymorphicMapType_7386_7446_18719#PolymorphicMapType_7386| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7386 (|PolymorphicMapType_7386_4718_53#PolymorphicMapType_7386| Heap@@21) (store (|PolymorphicMapType_7386_4721_4722#PolymorphicMapType_7386| Heap@@21) o_11@@2 f_17@@2 v@@7) (|PolymorphicMapType_7386_4908_3013#PolymorphicMapType_7386| Heap@@21) (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| Heap@@21) (|PolymorphicMapType_7386_7446_18719#PolymorphicMapType_7386| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_7386) (o_11@@3 T@Ref) (f_17@@3 T@Field_7446_53) (v@@8 Bool) ) (! (succHeap Heap@@22 (PolymorphicMapType_7386 (store (|PolymorphicMapType_7386_4718_53#PolymorphicMapType_7386| Heap@@22) o_11@@3 f_17@@3 v@@8) (|PolymorphicMapType_7386_4721_4722#PolymorphicMapType_7386| Heap@@22) (|PolymorphicMapType_7386_4908_3013#PolymorphicMapType_7386| Heap@@22) (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| Heap@@22) (|PolymorphicMapType_7386_7446_18719#PolymorphicMapType_7386| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7386 (store (|PolymorphicMapType_7386_4718_53#PolymorphicMapType_7386| Heap@@22) o_11@@3 f_17@@3 v@@8) (|PolymorphicMapType_7386_4721_4722#PolymorphicMapType_7386| Heap@@22) (|PolymorphicMapType_7386_4908_3013#PolymorphicMapType_7386| Heap@@22) (|PolymorphicMapType_7386_7446_18896#PolymorphicMapType_7386| Heap@@22) (|PolymorphicMapType_7386_7446_18719#PolymorphicMapType_7386| Heap@@22)))
)))
(assert (forall ((s@@25 T@Seq_15521) (t@@9 T@Seq_15521) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_4932| s@@25))) (= (|Seq#Drop_4932| (|Seq#Append_15521| s@@25 t@@9) n@@19) (|Seq#Append_15521| (|Seq#Drop_4932| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.380:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_4932| (|Seq#Append_15521| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2891) (t@@10 T@Seq_2891) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2891| s@@26))) (= (|Seq#Drop_2891| (|Seq#Append_2891| s@@26 t@@10) n@@20) (|Seq#Append_2891| (|Seq#Drop_2891| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.380:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2891| (|Seq#Append_2891| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_15521) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_4932| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_4932| (|Seq#Drop_4932| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_4932| s@@27 i@@7))))
 :qid |stdinbpl.316:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_4932| s@@27 n@@21) (|Seq#Index_4932| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_2891) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_2891| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_2891| (|Seq#Drop_2891| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_2891| s@@28 i@@8))))
 :qid |stdinbpl.316:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2891| s@@28 n@@22) (|Seq#Index_2891| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_15521) (s1@@7 T@Seq_15521) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_4932|)) (not (= s1@@7 |Seq#Empty_4932|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_4932| s0@@7))) (= (|Seq#Index_4932| (|Seq#Append_15521| s0@@7 s1@@7) n@@23) (|Seq#Index_4932| s0@@7 n@@23)))
 :qid |stdinbpl.256:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_4932| (|Seq#Append_15521| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_4932| s0@@7 n@@23) (|Seq#Append_15521| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2891) (s1@@8 T@Seq_2891) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2891|)) (not (= s1@@8 |Seq#Empty_2891|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2891| s0@@8))) (= (|Seq#Index_2891| (|Seq#Append_2891| s0@@8 s1@@8) n@@24) (|Seq#Index_2891| s0@@8 n@@24)))
 :qid |stdinbpl.256:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2891| (|Seq#Append_2891| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2891| s0@@8 n@@24) (|Seq#Append_2891| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_15521) (s1@@9 T@Seq_15521) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_4932|)) (not (= s1@@9 |Seq#Empty_4932|))) (<= 0 m)) (< m (|Seq#Length_4932| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_4932| s0@@9)) (|Seq#Length_4932| s0@@9)) m) (= (|Seq#Index_4932| (|Seq#Append_15521| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_4932| s0@@9))) (|Seq#Index_4932| s1@@9 m))))
 :qid |stdinbpl.261:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_4932| s1@@9 m) (|Seq#Append_15521| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2891) (s1@@10 T@Seq_2891) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2891|)) (not (= s1@@10 |Seq#Empty_2891|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2891| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2891| s0@@10)) (|Seq#Length_2891| s0@@10)) m@@0) (= (|Seq#Index_2891| (|Seq#Append_2891| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2891| s0@@10))) (|Seq#Index_2891| s1@@10 m@@0))))
 :qid |stdinbpl.261:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2891| s1@@10 m@@0) (|Seq#Append_2891| s0@@10 s1@@10))
)))
(assert (forall ((o_11@@4 T@Ref) (f_10 T@Field_7459_7460) (Heap@@23 T@PolymorphicMapType_7386) ) (!  (=> (select (|PolymorphicMapType_7386_4718_53#PolymorphicMapType_7386| Heap@@23) o_11@@4 $allocated) (select (|PolymorphicMapType_7386_4718_53#PolymorphicMapType_7386| Heap@@23) (select (|PolymorphicMapType_7386_4721_4722#PolymorphicMapType_7386| Heap@@23) o_11@@4 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7386_4721_4722#PolymorphicMapType_7386| Heap@@23) o_11@@4 f_10))
)))
(assert (forall ((s@@29 T@Seq_15521) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_4932| s@@29))) (= (|Seq#Index_4932| s@@29 i@@9) x@@3)) (|Seq#Contains_15521| s@@29 x@@3))
 :qid |stdinbpl.413:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_15521| s@@29 x@@3) (|Seq#Index_4932| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_2891) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2891| s@@30))) (= (|Seq#Index_2891| s@@30 i@@10) x@@4)) (|Seq#Contains_2891| s@@30 x@@4))
 :qid |stdinbpl.413:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2891| s@@30 x@@4) (|Seq#Index_2891| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_15521) (s1@@11 T@Seq_15521) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_15521| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_15521| s0@@11 s1@@11))) (not (= (|Seq#Length_4932| s0@@11) (|Seq#Length_4932| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_15521| s0@@11 s1@@11))) (= (|Seq#Length_4932| s0@@11) (|Seq#Length_4932| s1@@11))) (= (|Seq#SkolemDiff_15521| s0@@11 s1@@11) (|Seq#SkolemDiff_15521| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_15521| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_15521| s0@@11 s1@@11) (|Seq#Length_4932| s0@@11))) (not (= (|Seq#Index_4932| s0@@11 (|Seq#SkolemDiff_15521| s0@@11 s1@@11)) (|Seq#Index_4932| s1@@11 (|Seq#SkolemDiff_15521| s0@@11 s1@@11))))))
 :qid |stdinbpl.517:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_15521| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2891) (s1@@12 T@Seq_2891) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2891| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2891| s0@@12 s1@@12))) (not (= (|Seq#Length_2891| s0@@12) (|Seq#Length_2891| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2891| s0@@12 s1@@12))) (= (|Seq#Length_2891| s0@@12) (|Seq#Length_2891| s1@@12))) (= (|Seq#SkolemDiff_2891| s0@@12 s1@@12) (|Seq#SkolemDiff_2891| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2891| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2891| s0@@12 s1@@12) (|Seq#Length_2891| s0@@12))) (not (= (|Seq#Index_2891| s0@@12 (|Seq#SkolemDiff_2891| s0@@12 s1@@12)) (|Seq#Index_2891| s1@@12 (|Seq#SkolemDiff_2891| s0@@12 s1@@12))))))
 :qid |stdinbpl.517:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2891| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_7446_18719) (v_1@@0 T@FrameType) (q T@Field_7446_18719) (w@@0 T@FrameType) (r T@Field_7446_18719) (u T@FrameType) ) (!  (=> (and (InsidePredicate_7446_7446 p@@1 v_1@@0 q w@@0) (InsidePredicate_7446_7446 q w@@0 r u)) (InsidePredicate_7446_7446 p@@1 v_1@@0 r u))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7446_7446 p@@1 v_1@@0 q w@@0) (InsidePredicate_7446_7446 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_15521) ) (!  (=> (= (|Seq#Length_4932| s@@31) 0) (= s@@31 |Seq#Empty_4932|))
 :qid |stdinbpl.220:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_4932| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2891) ) (!  (=> (= (|Seq#Length_2891| s@@32) 0) (= s@@32 |Seq#Empty_2891|))
 :qid |stdinbpl.220:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2891| s@@32))
)))
(assert (forall ((s@@33 T@Seq_15521) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_4932| s@@33 n@@25) |Seq#Empty_4932|))
 :qid |stdinbpl.396:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_4932| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2891) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2891| s@@34 n@@26) |Seq#Empty_2891|))
 :qid |stdinbpl.396:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2891| s@@34 n@@26))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_7386) (Mask@@26 T@PolymorphicMapType_7407) (N0@@6 Int) (N1@@6 Int) (i0@@6 Int) (i1@@6 Int) ) (!  (=> (and (state Heap@@24 Mask@@26) (or (< AssumeFunctionsAbove 0) (|Ref__multidim_index_2#trigger| EmptyFrame N0@@6 N1@@6 i0@@6 i1@@6))) (=> (and (and (and (and (and (<= 0 i0@@6) (< i0@@6 N0@@6)) (<= 0 N0@@6)) (<= 0 i1@@6)) (< i1@@6 N1@@6)) (<= 0 N1@@6)) (<= 0 (|Ref__multidim_index_2'| Heap@@24 N0@@6 N1@@6 i0@@6 i1@@6))))
 :qid |stdinbpl.590:15|
 :skolemid |61|
 :pattern ( (state Heap@@24 Mask@@26) (|Ref__multidim_index_2'| Heap@@24 N0@@6 N1@@6 i0@@6 i1@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@25 () T@PolymorphicMapType_7386)
(declare-fun i0@@7 () Int)
(declare-fun N0@@7 () Int)
(declare-fun i1@@7 () Int)
(declare-fun N1@@7 () Int)
(declare-fun Result () Int)
(set-info :boogie-vc-id |Ref__multidim_index_2#definedness|)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (state Heap@@25 ZeroMask) (=> (and (and (not AssumePermUpperBound) (= AssumeFunctionsAbove 0)) (and (<= 0 i0@@7) (state Heap@@25 ZeroMask))) (=> (and (and (and (and (< i0@@7 N0@@7) (state Heap@@25 ZeroMask)) (and (<= 0 N0@@7) (state Heap@@25 ZeroMask))) (and (and (<= 0 i1@@7) (state Heap@@25 ZeroMask)) (and (< i1@@7 N1@@7) (state Heap@@25 ZeroMask)))) (and (and (and (<= 0 N1@@7) (state Heap@@25 ZeroMask)) (and (<= 0 Result) (state Heap@@25 ZeroMask))) (and (and (< Result (* N0@@7 N1@@7)) (state Heap@@25 ZeroMask)) (and (= Result (+ (* i0@@7 N1@@7) i1@@7)) (state Heap@@25 ZeroMask))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (not (= N1@@7 0))) (=> (not (= N1@@7 0)) (=> (= (mod Result N1@@7) i1@@7) (=> (and (state Heap@@25 ZeroMask) (= (ControlFlow 0 2) (- 0 1))) (not (= N1@@7 0)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
