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
(declare-sort T@Field_30787_53 0)
(declare-sort T@Field_30800_30801 0)
(declare-sort T@Field_36827_36832 0)
(declare-sort T@Seq_36830 0)
(declare-sort T@Field_36941_3261 0)
(declare-sort T@Field_17014_100571 0)
(declare-sort T@Field_17014_100438 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_30748 0)) (((PolymorphicMapType_30748 (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| (Array T@Ref T@Field_36827_36832 Real)) (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| (Array T@Ref T@Field_36941_3261 Real)) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| (Array T@Ref T@Field_30787_53 Real)) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| (Array T@Ref T@Field_30800_30801 Real)) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| (Array T@Ref T@Field_17014_100438 Real)) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| (Array T@Ref T@Field_17014_100571 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_31276 0)) (((PolymorphicMapType_31276 (|PolymorphicMapType_31276_30787_53#PolymorphicMapType_31276| (Array T@Ref T@Field_30787_53 Bool)) (|PolymorphicMapType_31276_30787_30801#PolymorphicMapType_31276| (Array T@Ref T@Field_30800_30801 Bool)) (|PolymorphicMapType_31276_30787_36832#PolymorphicMapType_31276| (Array T@Ref T@Field_36827_36832 Bool)) (|PolymorphicMapType_31276_30787_3261#PolymorphicMapType_31276| (Array T@Ref T@Field_36941_3261 Bool)) (|PolymorphicMapType_31276_30787_100438#PolymorphicMapType_31276| (Array T@Ref T@Field_17014_100438 Bool)) (|PolymorphicMapType_31276_30787_101953#PolymorphicMapType_31276| (Array T@Ref T@Field_17014_100571 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_30727 0)) (((PolymorphicMapType_30727 (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| (Array T@Ref T@Field_30787_53 Bool)) (|PolymorphicMapType_30727_16809_16810#PolymorphicMapType_30727| (Array T@Ref T@Field_30800_30801 T@Ref)) (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| (Array T@Ref T@Field_36827_36832 T@Seq_36830)) (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| (Array T@Ref T@Field_36941_3261 Int)) (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| (Array T@Ref T@Field_17014_100571 T@PolymorphicMapType_31276)) (|PolymorphicMapType_30727_30787_100438#PolymorphicMapType_30727| (Array T@Ref T@Field_17014_100438 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_30787_53)
(declare-fun demo__ar () T@Field_36827_36832)
(declare-fun demo__tmp () T@Field_36827_36832)
(declare-fun Ref__Integer_value () T@Field_36941_3261)
(declare-fun |Seq#Length_17015| (T@Seq_36830) Int)
(declare-fun |Seq#Drop_17015| (T@Seq_36830 Int) T@Seq_36830)
(declare-sort T@Seq_3107 0)
(declare-fun |Seq#Length_3107| (T@Seq_3107) Int)
(declare-fun |Seq#Drop_3107| (T@Seq_3107 Int) T@Seq_3107)
(declare-fun succHeap (T@PolymorphicMapType_30727 T@PolymorphicMapType_30727) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_30727 T@PolymorphicMapType_30727) Bool)
(declare-fun state (T@PolymorphicMapType_30727 T@PolymorphicMapType_30748) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_30748) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_31276)
(declare-fun |demo__bin'| (T@PolymorphicMapType_30727 Int Int) Int)
(declare-fun dummyFunction_3526 (Int) Bool)
(declare-fun |demo__bin#triggerStateless| (Int Int) Int)
(declare-fun |Seq#Index_17015| (T@Seq_36830 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3107| (T@Seq_3107 Int) Int)
(declare-fun |demo__bin#frame| (T@FrameType Int Int) Int)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |Seq#Empty_17015| () T@Seq_36830)
(declare-fun |Seq#Empty_3107| () T@Seq_3107)
(declare-fun |Seq#Update_17015| (T@Seq_36830 Int T@Ref) T@Seq_36830)
(declare-fun |Seq#Update_3107| (T@Seq_3107 Int Int) T@Seq_3107)
(declare-fun |Seq#Take_17015| (T@Seq_36830 Int) T@Seq_36830)
(declare-fun |Seq#Take_3107| (T@Seq_3107 Int) T@Seq_3107)
(declare-fun |Seq#Contains_3107| (T@Seq_3107 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3107)
(declare-fun |Seq#Contains_36830| (T@Seq_36830 T@Ref) Bool)
(declare-fun |Seq#Skolem_36830| (T@Seq_36830 T@Ref) Int)
(declare-fun |Seq#Skolem_3107| (T@Seq_3107 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_30727 T@PolymorphicMapType_30727 T@PolymorphicMapType_30748) Bool)
(declare-fun IsPredicateField_17014_100529 (T@Field_17014_100438) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_17014 (T@Field_17014_100438) T@Field_17014_100571)
(declare-fun HasDirectPerm_17014_100502 (T@PolymorphicMapType_30748 T@Ref T@Field_17014_100438) Bool)
(declare-fun IsWandField_17014_102480 (T@Field_17014_100438) Bool)
(declare-fun WandMaskField_17014 (T@Field_17014_100438) T@Field_17014_100571)
(declare-fun |Seq#Singleton_17015| (T@Ref) T@Seq_36830)
(declare-fun |Seq#Singleton_3107| (Int) T@Seq_3107)
(declare-fun |Seq#Append_36830| (T@Seq_36830 T@Seq_36830) T@Seq_36830)
(declare-fun |Seq#Append_3107| (T@Seq_3107 T@Seq_3107) T@Seq_3107)
(declare-fun dummyHeap () T@PolymorphicMapType_30727)
(declare-fun ZeroMask () T@PolymorphicMapType_30748)
(declare-fun InsidePredicate_30787_30787 (T@Field_17014_100438 T@FrameType T@Field_17014_100438 T@FrameType) Bool)
(declare-fun IsPredicateField_17014_36854 (T@Field_36827_36832) Bool)
(declare-fun IsWandField_17014_36880 (T@Field_36827_36832) Bool)
(declare-fun IsPredicateField_17022_3261 (T@Field_36941_3261) Bool)
(declare-fun IsWandField_17022_3261 (T@Field_36941_3261) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_17014_106614 (T@Field_17014_100571) Bool)
(declare-fun IsWandField_17014_106630 (T@Field_17014_100571) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_17014_30801 (T@Field_30800_30801) Bool)
(declare-fun IsWandField_17014_30801 (T@Field_30800_30801) Bool)
(declare-fun IsPredicateField_17014_53 (T@Field_30787_53) Bool)
(declare-fun IsWandField_17014_53 (T@Field_30787_53) Bool)
(declare-fun HasDirectPerm_17014_107151 (T@PolymorphicMapType_30748 T@Ref T@Field_17014_100571) Bool)
(declare-fun HasDirectPerm_17014_30801 (T@PolymorphicMapType_30748 T@Ref T@Field_30800_30801) Bool)
(declare-fun HasDirectPerm_17014_53 (T@PolymorphicMapType_30748 T@Ref T@Field_30787_53) Bool)
(declare-fun HasDirectPerm_17022_3261 (T@PolymorphicMapType_30748 T@Ref T@Field_36941_3261) Bool)
(declare-fun HasDirectPerm_17014_38909 (T@PolymorphicMapType_30748 T@Ref T@Field_36827_36832) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun demo__bin (T@PolymorphicMapType_30727 Int Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_30748 T@PolymorphicMapType_30748 T@PolymorphicMapType_30748) Bool)
(declare-fun |Seq#Equal_3107| (T@Seq_3107 T@Seq_3107) Bool)
(declare-fun |Seq#Equal_17015| (T@Seq_36830 T@Seq_36830) Bool)
(declare-fun |Seq#ContainsTrigger_17015| (T@Seq_36830 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3107| (T@Seq_3107 Int) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#SkolemDiff_36830| (T@Seq_36830 T@Seq_36830) Int)
(declare-fun |Seq#SkolemDiff_3107| (T@Seq_3107 T@Seq_3107) Int)
(assert (distinct demo__ar demo__tmp)
)
(assert (forall ((s T@Seq_36830) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_17015| s)) (= (|Seq#Length_17015| (|Seq#Drop_17015| s n)) (- (|Seq#Length_17015| s) n))) (=> (< (|Seq#Length_17015| s) n) (= (|Seq#Length_17015| (|Seq#Drop_17015| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_17015| (|Seq#Drop_17015| s n)) (|Seq#Length_17015| s))))
 :qid |stdinbpl.318:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_17015| (|Seq#Drop_17015| s n)))
 :pattern ( (|Seq#Length_17015| s) (|Seq#Drop_17015| s n))
)))
(assert (forall ((s@@0 T@Seq_3107) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3107| s@@0)) (= (|Seq#Length_3107| (|Seq#Drop_3107| s@@0 n@@0)) (- (|Seq#Length_3107| s@@0) n@@0))) (=> (< (|Seq#Length_3107| s@@0) n@@0) (= (|Seq#Length_3107| (|Seq#Drop_3107| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3107| (|Seq#Drop_3107| s@@0 n@@0)) (|Seq#Length_3107| s@@0))))
 :qid |stdinbpl.318:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3107| (|Seq#Drop_3107| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3107| s@@0) (|Seq#Drop_3107| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_30727) (Heap1 T@PolymorphicMapType_30727) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_30727) (Mask T@PolymorphicMapType_30748) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_30727) (Heap1@@0 T@PolymorphicMapType_30727) (Heap2 T@PolymorphicMapType_30727) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_17014_100571) ) (!  (not (select (|PolymorphicMapType_31276_30787_101953#PolymorphicMapType_31276| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31276_30787_101953#PolymorphicMapType_31276| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_17014_100438) ) (!  (not (select (|PolymorphicMapType_31276_30787_100438#PolymorphicMapType_31276| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31276_30787_100438#PolymorphicMapType_31276| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_36941_3261) ) (!  (not (select (|PolymorphicMapType_31276_30787_3261#PolymorphicMapType_31276| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31276_30787_3261#PolymorphicMapType_31276| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_36827_36832) ) (!  (not (select (|PolymorphicMapType_31276_30787_36832#PolymorphicMapType_31276| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31276_30787_36832#PolymorphicMapType_31276| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_30800_30801) ) (!  (not (select (|PolymorphicMapType_31276_30787_30801#PolymorphicMapType_31276| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31276_30787_30801#PolymorphicMapType_31276| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_30787_53) ) (!  (not (select (|PolymorphicMapType_31276_30787_53#PolymorphicMapType_31276| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31276_30787_53#PolymorphicMapType_31276| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_30727) (N Int) (k Int) ) (! (dummyFunction_3526 (|demo__bin#triggerStateless| N k))
 :qid |stdinbpl.610:15|
 :skolemid |59|
 :pattern ( (|demo__bin'| Heap@@0 N k))
)))
(assert (forall ((s@@1 T@Seq_36830) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_17015| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_17015| (|Seq#Drop_17015| s@@1 n@@1) j) (|Seq#Index_17015| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.339:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_17015| (|Seq#Drop_17015| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3107) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3107| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3107| (|Seq#Drop_3107| s@@2 n@@2) j@@0) (|Seq#Index_3107| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.339:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3107| (|Seq#Drop_3107| s@@2 n@@2) j@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_30727) (Mask@@0 T@PolymorphicMapType_30748) (N@@0 Int) (k@@0 Int) ) (!  (=> (state Heap@@1 Mask@@0) (= (|demo__bin'| Heap@@1 N@@0 k@@0) (|demo__bin#frame| EmptyFrame N@@0 k@@0)))
 :qid |stdinbpl.623:15|
 :skolemid |61|
 :pattern ( (state Heap@@1 Mask@@0) (|demo__bin'| Heap@@1 N@@0 k@@0))
)))
(assert (= (|Seq#Length_17015| |Seq#Empty_17015|) 0))
(assert (= (|Seq#Length_3107| |Seq#Empty_3107|) 0))
(assert (forall ((s@@3 T@Seq_36830) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_17015| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_17015| (|Seq#Update_17015| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_17015| (|Seq#Update_17015| s@@3 i v) n@@3) (|Seq#Index_17015| s@@3 n@@3)))))
 :qid |stdinbpl.294:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_17015| (|Seq#Update_17015| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_17015| s@@3 n@@3) (|Seq#Update_17015| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3107) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3107| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3107| (|Seq#Update_3107| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3107| (|Seq#Update_3107| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3107| s@@4 n@@4)))))
 :qid |stdinbpl.294:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3107| (|Seq#Update_3107| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3107| s@@4 n@@4) (|Seq#Update_3107| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_36830) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_17015| s@@5)) (= (|Seq#Length_17015| (|Seq#Take_17015| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_17015| s@@5) n@@5) (= (|Seq#Length_17015| (|Seq#Take_17015| s@@5 n@@5)) (|Seq#Length_17015| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_17015| (|Seq#Take_17015| s@@5 n@@5)) 0)))
 :qid |stdinbpl.305:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_17015| (|Seq#Take_17015| s@@5 n@@5)))
 :pattern ( (|Seq#Take_17015| s@@5 n@@5) (|Seq#Length_17015| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3107) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3107| s@@6)) (= (|Seq#Length_3107| (|Seq#Take_3107| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3107| s@@6) n@@6) (= (|Seq#Length_3107| (|Seq#Take_3107| s@@6 n@@6)) (|Seq#Length_3107| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3107| (|Seq#Take_3107| s@@6 n@@6)) 0)))
 :qid |stdinbpl.305:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3107| (|Seq#Take_3107| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3107| s@@6 n@@6) (|Seq#Length_3107| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3107| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.579:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3107| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_36830) (x T@Ref) ) (!  (=> (|Seq#Contains_36830| s@@7 x) (and (and (<= 0 (|Seq#Skolem_36830| s@@7 x)) (< (|Seq#Skolem_36830| s@@7 x) (|Seq#Length_17015| s@@7))) (= (|Seq#Index_17015| s@@7 (|Seq#Skolem_36830| s@@7 x)) x)))
 :qid |stdinbpl.437:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_36830| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3107) (x@@0 Int) ) (!  (=> (|Seq#Contains_3107| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3107| s@@8 x@@0)) (< (|Seq#Skolem_3107| s@@8 x@@0) (|Seq#Length_3107| s@@8))) (= (|Seq#Index_3107| s@@8 (|Seq#Skolem_3107| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.437:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3107| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_36830) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_17015| s@@9 n@@7) s@@9))
 :qid |stdinbpl.421:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_17015| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3107) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3107| s@@10 n@@8) s@@10))
 :qid |stdinbpl.421:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3107| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.274:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.272:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_30727) (ExhaleHeap T@PolymorphicMapType_30727) (Mask@@1 T@PolymorphicMapType_30748) (pm_f_24 T@Field_17014_100438) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_17014_100502 Mask@@1 null pm_f_24) (IsPredicateField_17014_100529 pm_f_24)) (= (select (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@2) null (PredicateMaskField_17014 pm_f_24)) (select (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| ExhaleHeap) null (PredicateMaskField_17014 pm_f_24)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (IsPredicateField_17014_100529 pm_f_24) (select (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| ExhaleHeap) null (PredicateMaskField_17014 pm_f_24)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_30727) (ExhaleHeap@@0 T@PolymorphicMapType_30727) (Mask@@2 T@PolymorphicMapType_30748) (pm_f_24@@0 T@Field_17014_100438) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_17014_100502 Mask@@2 null pm_f_24@@0) (IsWandField_17014_102480 pm_f_24@@0)) (= (select (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@3) null (WandMaskField_17014 pm_f_24@@0)) (select (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| ExhaleHeap@@0) null (WandMaskField_17014 pm_f_24@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (IsWandField_17014_102480 pm_f_24@@0) (select (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| ExhaleHeap@@0) null (WandMaskField_17014 pm_f_24@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_36830| (|Seq#Singleton_17015| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.562:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_36830| (|Seq#Singleton_17015| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3107| (|Seq#Singleton_3107| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.562:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3107| (|Seq#Singleton_3107| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_36830) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_17015| s@@11))) (= (|Seq#Index_17015| (|Seq#Take_17015| s@@11 n@@9) j@@3) (|Seq#Index_17015| s@@11 j@@3)))
 :qid |stdinbpl.313:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_17015| (|Seq#Take_17015| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_17015| s@@11 j@@3) (|Seq#Take_17015| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3107) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3107| s@@12))) (= (|Seq#Index_3107| (|Seq#Take_3107| s@@12 n@@10) j@@4) (|Seq#Index_3107| s@@12 j@@4)))
 :qid |stdinbpl.313:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3107| (|Seq#Take_3107| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3107| s@@12 j@@4) (|Seq#Take_3107| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_36830) (t T@Seq_36830) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_17015| s@@13))) (< n@@11 (|Seq#Length_17015| (|Seq#Append_36830| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_17015| s@@13)) (|Seq#Length_17015| s@@13)) n@@11) (= (|Seq#Take_17015| (|Seq#Append_36830| s@@13 t) n@@11) (|Seq#Append_36830| s@@13 (|Seq#Take_17015| t (|Seq#Sub| n@@11 (|Seq#Length_17015| s@@13)))))))
 :qid |stdinbpl.398:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_17015| (|Seq#Append_36830| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3107) (t@@0 T@Seq_3107) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3107| s@@14))) (< n@@12 (|Seq#Length_3107| (|Seq#Append_3107| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3107| s@@14)) (|Seq#Length_3107| s@@14)) n@@12) (= (|Seq#Take_3107| (|Seq#Append_3107| s@@14 t@@0) n@@12) (|Seq#Append_3107| s@@14 (|Seq#Take_3107| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3107| s@@14)))))))
 :qid |stdinbpl.398:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3107| (|Seq#Append_3107| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_30727) (ExhaleHeap@@1 T@PolymorphicMapType_30727) (Mask@@3 T@PolymorphicMapType_30748) (o_52 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (=> (select (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| Heap@@4) o_52 $allocated) (select (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| ExhaleHeap@@1) o_52 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (select (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| ExhaleHeap@@1) o_52 $allocated))
)))
(assert (forall ((p T@Field_17014_100438) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_30787_30787 p v_1 p w))
 :qid |stdinbpl.216:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_30787_30787 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_36830) (s1 T@Seq_36830) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_17015|)) (not (= s1 |Seq#Empty_17015|))) (<= (|Seq#Length_17015| s0) n@@13)) (< n@@13 (|Seq#Length_17015| (|Seq#Append_36830| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_17015| s0)) (|Seq#Length_17015| s0)) n@@13) (= (|Seq#Index_17015| (|Seq#Append_36830| s0 s1) n@@13) (|Seq#Index_17015| s1 (|Seq#Sub| n@@13 (|Seq#Length_17015| s0))))))
 :qid |stdinbpl.285:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_17015| (|Seq#Append_36830| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3107) (s1@@0 T@Seq_3107) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3107|)) (not (= s1@@0 |Seq#Empty_3107|))) (<= (|Seq#Length_3107| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3107| (|Seq#Append_3107| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3107| s0@@0)) (|Seq#Length_3107| s0@@0)) n@@14) (= (|Seq#Index_3107| (|Seq#Append_3107| s0@@0 s1@@0) n@@14) (|Seq#Index_3107| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3107| s0@@0))))))
 :qid |stdinbpl.285:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3107| (|Seq#Append_3107| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_17014_36854 demo__ar)))
(assert  (not (IsWandField_17014_36880 demo__ar)))
(assert  (not (IsPredicateField_17014_36854 demo__tmp)))
(assert  (not (IsWandField_17014_36880 demo__tmp)))
(assert  (not (IsPredicateField_17022_3261 Ref__Integer_value)))
(assert  (not (IsWandField_17022_3261 Ref__Integer_value)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_30727) (ExhaleHeap@@2 T@PolymorphicMapType_30727) (Mask@@4 T@PolymorphicMapType_30748) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4) (succHeap Heap@@5 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_30748) (o_2@@5 T@Ref) (f_4@@5 T@Field_17014_100571) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_17014_106614 f_4@@5))) (not (IsWandField_17014_106630 f_4@@5))) (<= (select (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_30748) (o_2@@6 T@Ref) (f_4@@6 T@Field_17014_100438) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_17014_100529 f_4@@6))) (not (IsWandField_17014_102480 f_4@@6))) (<= (select (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_30748) (o_2@@7 T@Ref) (f_4@@7 T@Field_30800_30801) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_17014_30801 f_4@@7))) (not (IsWandField_17014_30801 f_4@@7))) (<= (select (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_30748) (o_2@@8 T@Ref) (f_4@@8 T@Field_30787_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_17014_53 f_4@@8))) (not (IsWandField_17014_53 f_4@@8))) (<= (select (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_30748) (o_2@@9 T@Ref) (f_4@@9 T@Field_36941_3261) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@@9) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_17022_3261 f_4@@9))) (not (IsWandField_17022_3261 f_4@@9))) (<= (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@@9) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@@9) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_30748) (o_2@@10 T@Ref) (f_4@@10 T@Field_36827_36832) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@@10) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_17014_36854 f_4@@10))) (not (IsWandField_17014_36880 f_4@@10))) (<= (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@@10) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@@10) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_30748) (o_2@@11 T@Ref) (f_4@@11 T@Field_17014_100571) ) (! (= (HasDirectPerm_17014_107151 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17014_107151 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_30748) (o_2@@12 T@Ref) (f_4@@12 T@Field_17014_100438) ) (! (= (HasDirectPerm_17014_100502 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17014_100502 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_30748) (o_2@@13 T@Ref) (f_4@@13 T@Field_30800_30801) ) (! (= (HasDirectPerm_17014_30801 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17014_30801 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_30748) (o_2@@14 T@Ref) (f_4@@14 T@Field_30787_53) ) (! (= (HasDirectPerm_17014_53 Mask@@14 o_2@@14 f_4@@14) (> (select (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@@14) o_2@@14 f_4@@14) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17014_53 Mask@@14 o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_30748) (o_2@@15 T@Ref) (f_4@@15 T@Field_36941_3261) ) (! (= (HasDirectPerm_17022_3261 Mask@@15 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@@15) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17022_3261 Mask@@15 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_30748) (o_2@@16 T@Ref) (f_4@@16 T@Field_36827_36832) ) (! (= (HasDirectPerm_17014_38909 Mask@@16 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@@16) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17014_38909 Mask@@16 o_2@@16 f_4@@16))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.204:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3107| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.577:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3107| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_30727) (ExhaleHeap@@3 T@PolymorphicMapType_30727) (Mask@@17 T@PolymorphicMapType_30748) (o_52@@0 T@Ref) (f_63 T@Field_17014_100571) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@17) (=> (HasDirectPerm_17014_107151 Mask@@17 o_52@@0 f_63) (= (select (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@6) o_52@@0 f_63) (select (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| ExhaleHeap@@3) o_52@@0 f_63))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@17) (select (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| ExhaleHeap@@3) o_52@@0 f_63))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_30727) (ExhaleHeap@@4 T@PolymorphicMapType_30727) (Mask@@18 T@PolymorphicMapType_30748) (o_52@@1 T@Ref) (f_63@@0 T@Field_17014_100438) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@18) (=> (HasDirectPerm_17014_100502 Mask@@18 o_52@@1 f_63@@0) (= (select (|PolymorphicMapType_30727_30787_100438#PolymorphicMapType_30727| Heap@@7) o_52@@1 f_63@@0) (select (|PolymorphicMapType_30727_30787_100438#PolymorphicMapType_30727| ExhaleHeap@@4) o_52@@1 f_63@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@18) (select (|PolymorphicMapType_30727_30787_100438#PolymorphicMapType_30727| ExhaleHeap@@4) o_52@@1 f_63@@0))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_30727) (ExhaleHeap@@5 T@PolymorphicMapType_30727) (Mask@@19 T@PolymorphicMapType_30748) (o_52@@2 T@Ref) (f_63@@1 T@Field_30800_30801) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@19) (=> (HasDirectPerm_17014_30801 Mask@@19 o_52@@2 f_63@@1) (= (select (|PolymorphicMapType_30727_16809_16810#PolymorphicMapType_30727| Heap@@8) o_52@@2 f_63@@1) (select (|PolymorphicMapType_30727_16809_16810#PolymorphicMapType_30727| ExhaleHeap@@5) o_52@@2 f_63@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@19) (select (|PolymorphicMapType_30727_16809_16810#PolymorphicMapType_30727| ExhaleHeap@@5) o_52@@2 f_63@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_30727) (ExhaleHeap@@6 T@PolymorphicMapType_30727) (Mask@@20 T@PolymorphicMapType_30748) (o_52@@3 T@Ref) (f_63@@2 T@Field_30787_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@20) (=> (HasDirectPerm_17014_53 Mask@@20 o_52@@3 f_63@@2) (= (select (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| Heap@@9) o_52@@3 f_63@@2) (select (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| ExhaleHeap@@6) o_52@@3 f_63@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@20) (select (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| ExhaleHeap@@6) o_52@@3 f_63@@2))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_30727) (ExhaleHeap@@7 T@PolymorphicMapType_30727) (Mask@@21 T@PolymorphicMapType_30748) (o_52@@4 T@Ref) (f_63@@3 T@Field_36941_3261) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@21) (=> (HasDirectPerm_17022_3261 Mask@@21 o_52@@4 f_63@@3) (= (select (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| Heap@@10) o_52@@4 f_63@@3) (select (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| ExhaleHeap@@7) o_52@@4 f_63@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@21) (select (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| ExhaleHeap@@7) o_52@@4 f_63@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_30727) (ExhaleHeap@@8 T@PolymorphicMapType_30727) (Mask@@22 T@PolymorphicMapType_30748) (o_52@@5 T@Ref) (f_63@@4 T@Field_36827_36832) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@22) (=> (HasDirectPerm_17014_38909 Mask@@22 o_52@@5 f_63@@4) (= (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@11) o_52@@5 f_63@@4) (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@@8) o_52@@5 f_63@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@22) (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@@8) o_52@@5 f_63@@4))
)))
(assert (forall ((s0@@1 T@Seq_36830) (s1@@1 T@Seq_36830) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_17015|)) (not (= s1@@1 |Seq#Empty_17015|))) (= (|Seq#Length_17015| (|Seq#Append_36830| s0@@1 s1@@1)) (+ (|Seq#Length_17015| s0@@1) (|Seq#Length_17015| s1@@1))))
 :qid |stdinbpl.254:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_17015| (|Seq#Append_36830| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3107) (s1@@2 T@Seq_3107) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3107|)) (not (= s1@@2 |Seq#Empty_3107|))) (= (|Seq#Length_3107| (|Seq#Append_3107| s0@@2 s1@@2)) (+ (|Seq#Length_3107| s0@@2) (|Seq#Length_3107| s1@@2))))
 :qid |stdinbpl.254:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3107| (|Seq#Append_3107| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_17014_100571) ) (! (= (select (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_17014_100438) ) (! (= (select (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_30800_30801) ) (! (= (select (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| ZeroMask) o_2@@19 f_4@@19) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| ZeroMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_30787_53) ) (! (= (select (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| ZeroMask) o_2@@20 f_4@@20) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| ZeroMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_36941_3261) ) (! (= (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| ZeroMask) o_2@@21 f_4@@21) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| ZeroMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_36827_36832) ) (! (= (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| ZeroMask) o_2@@22 f_4@@22) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| ZeroMask) o_2@@22 f_4@@22))
)))
(assert (forall ((s@@15 T@Seq_36830) (t@@1 T@Seq_36830) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_17015| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_17015| s@@15)) (|Seq#Length_17015| s@@15)) n@@15) (= (|Seq#Drop_17015| (|Seq#Append_36830| s@@15 t@@1) n@@15) (|Seq#Drop_17015| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_17015| s@@15))))))
 :qid |stdinbpl.411:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_17015| (|Seq#Append_36830| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3107) (t@@2 T@Seq_3107) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3107| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3107| s@@16)) (|Seq#Length_3107| s@@16)) n@@16) (= (|Seq#Drop_3107| (|Seq#Append_3107| s@@16 t@@2) n@@16) (|Seq#Drop_3107| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3107| s@@16))))))
 :qid |stdinbpl.411:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3107| (|Seq#Append_3107| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_30727) (N@@1 Int) (k@@1 Int) ) (!  (and (= (demo__bin Heap@@12 N@@1 k@@1) (|demo__bin'| Heap@@12 N@@1 k@@1)) (dummyFunction_3526 (|demo__bin#triggerStateless| N@@1 k@@1)))
 :qid |stdinbpl.606:15|
 :skolemid |58|
 :pattern ( (demo__bin Heap@@12 N@@1 k@@1))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_30748) (SummandMask1 T@PolymorphicMapType_30748) (SummandMask2 T@PolymorphicMapType_30748) (o_2@@23 T@Ref) (f_4@@23 T@Field_17014_100571) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| ResultMask) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| SummandMask1) o_2@@23 f_4@@23) (select (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| SummandMask2) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| ResultMask) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| SummandMask1) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| SummandMask2) o_2@@23 f_4@@23))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_30748) (SummandMask1@@0 T@PolymorphicMapType_30748) (SummandMask2@@0 T@PolymorphicMapType_30748) (o_2@@24 T@Ref) (f_4@@24 T@Field_17014_100438) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| ResultMask@@0) o_2@@24 f_4@@24) (+ (select (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| SummandMask1@@0) o_2@@24 f_4@@24) (select (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| SummandMask2@@0) o_2@@24 f_4@@24))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| ResultMask@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| SummandMask1@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| SummandMask2@@0) o_2@@24 f_4@@24))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_30748) (SummandMask1@@1 T@PolymorphicMapType_30748) (SummandMask2@@1 T@PolymorphicMapType_30748) (o_2@@25 T@Ref) (f_4@@25 T@Field_30800_30801) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| ResultMask@@1) o_2@@25 f_4@@25) (+ (select (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| SummandMask1@@1) o_2@@25 f_4@@25) (select (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| SummandMask2@@1) o_2@@25 f_4@@25))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| ResultMask@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| SummandMask1@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| SummandMask2@@1) o_2@@25 f_4@@25))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_30748) (SummandMask1@@2 T@PolymorphicMapType_30748) (SummandMask2@@2 T@PolymorphicMapType_30748) (o_2@@26 T@Ref) (f_4@@26 T@Field_30787_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| ResultMask@@2) o_2@@26 f_4@@26) (+ (select (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| SummandMask1@@2) o_2@@26 f_4@@26) (select (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| SummandMask2@@2) o_2@@26 f_4@@26))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| ResultMask@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| SummandMask1@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| SummandMask2@@2) o_2@@26 f_4@@26))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_30748) (SummandMask1@@3 T@PolymorphicMapType_30748) (SummandMask2@@3 T@PolymorphicMapType_30748) (o_2@@27 T@Ref) (f_4@@27 T@Field_36941_3261) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| ResultMask@@3) o_2@@27 f_4@@27) (+ (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| SummandMask1@@3) o_2@@27 f_4@@27) (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| SummandMask2@@3) o_2@@27 f_4@@27))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| ResultMask@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| SummandMask1@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| SummandMask2@@3) o_2@@27 f_4@@27))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_30748) (SummandMask1@@4 T@PolymorphicMapType_30748) (SummandMask2@@4 T@PolymorphicMapType_30748) (o_2@@28 T@Ref) (f_4@@28 T@Field_36827_36832) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| ResultMask@@4) o_2@@28 f_4@@28) (+ (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| SummandMask1@@4) o_2@@28 f_4@@28) (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| SummandMask2@@4) o_2@@28 f_4@@28))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| ResultMask@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| SummandMask1@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| SummandMask2@@4) o_2@@28 f_4@@28))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3107| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3107| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.576:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3107| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_3107) (b T@Seq_3107) ) (!  (=> (|Seq#Equal_3107| a b) (= a b))
 :qid |stdinbpl.549:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3107| a b))
)))
(assert (forall ((a@@0 T@Seq_36830) (b@@0 T@Seq_36830) ) (!  (=> (|Seq#Equal_17015| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.549:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_17015| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_36830) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_17015| s@@17))) (|Seq#ContainsTrigger_17015| s@@17 (|Seq#Index_17015| s@@17 i@@3)))
 :qid |stdinbpl.442:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_17015| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3107) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3107| s@@18))) (|Seq#ContainsTrigger_3107| s@@18 (|Seq#Index_3107| s@@18 i@@4)))
 :qid |stdinbpl.442:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3107| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_36830) (s1@@3 T@Seq_36830) ) (!  (and (=> (= s0@@3 |Seq#Empty_17015|) (= (|Seq#Append_36830| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_17015|) (= (|Seq#Append_36830| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.260:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_36830| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3107) (s1@@4 T@Seq_3107) ) (!  (and (=> (= s0@@4 |Seq#Empty_3107|) (= (|Seq#Append_3107| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3107|) (= (|Seq#Append_3107| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.260:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3107| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_17015| (|Seq#Singleton_17015| t@@3) 0) t@@3)
 :qid |stdinbpl.264:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_17015| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3107| (|Seq#Singleton_3107| t@@4) 0) t@@4)
 :qid |stdinbpl.264:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3107| t@@4))
)))
(assert (forall ((s@@19 T@Seq_36830) ) (! (<= 0 (|Seq#Length_17015| s@@19))
 :qid |stdinbpl.243:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_17015| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3107) ) (! (<= 0 (|Seq#Length_3107| s@@20))
 :qid |stdinbpl.243:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3107| s@@20))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_30727) (ExhaleHeap@@9 T@PolymorphicMapType_30727) (Mask@@23 T@PolymorphicMapType_30748) (pm_f_24@@1 T@Field_17014_100438) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@23) (=> (and (HasDirectPerm_17014_100502 Mask@@23 null pm_f_24@@1) (IsPredicateField_17014_100529 pm_f_24@@1)) (and (and (and (and (and (forall ((o2_24 T@Ref) (f_63@@5 T@Field_30787_53) ) (!  (=> (select (|PolymorphicMapType_31276_30787_53#PolymorphicMapType_31276| (select (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@13) null (PredicateMaskField_17014 pm_f_24@@1))) o2_24 f_63@@5) (= (select (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| Heap@@13) o2_24 f_63@@5) (select (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| ExhaleHeap@@9) o2_24 f_63@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| ExhaleHeap@@9) o2_24 f_63@@5))
)) (forall ((o2_24@@0 T@Ref) (f_63@@6 T@Field_30800_30801) ) (!  (=> (select (|PolymorphicMapType_31276_30787_30801#PolymorphicMapType_31276| (select (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@13) null (PredicateMaskField_17014 pm_f_24@@1))) o2_24@@0 f_63@@6) (= (select (|PolymorphicMapType_30727_16809_16810#PolymorphicMapType_30727| Heap@@13) o2_24@@0 f_63@@6) (select (|PolymorphicMapType_30727_16809_16810#PolymorphicMapType_30727| ExhaleHeap@@9) o2_24@@0 f_63@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30727_16809_16810#PolymorphicMapType_30727| ExhaleHeap@@9) o2_24@@0 f_63@@6))
))) (forall ((o2_24@@1 T@Ref) (f_63@@7 T@Field_36827_36832) ) (!  (=> (select (|PolymorphicMapType_31276_30787_36832#PolymorphicMapType_31276| (select (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@13) null (PredicateMaskField_17014 pm_f_24@@1))) o2_24@@1 f_63@@7) (= (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@13) o2_24@@1 f_63@@7) (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@@9) o2_24@@1 f_63@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@@9) o2_24@@1 f_63@@7))
))) (forall ((o2_24@@2 T@Ref) (f_63@@8 T@Field_36941_3261) ) (!  (=> (select (|PolymorphicMapType_31276_30787_3261#PolymorphicMapType_31276| (select (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@13) null (PredicateMaskField_17014 pm_f_24@@1))) o2_24@@2 f_63@@8) (= (select (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| Heap@@13) o2_24@@2 f_63@@8) (select (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| ExhaleHeap@@9) o2_24@@2 f_63@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| ExhaleHeap@@9) o2_24@@2 f_63@@8))
))) (forall ((o2_24@@3 T@Ref) (f_63@@9 T@Field_17014_100438) ) (!  (=> (select (|PolymorphicMapType_31276_30787_100438#PolymorphicMapType_31276| (select (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@13) null (PredicateMaskField_17014 pm_f_24@@1))) o2_24@@3 f_63@@9) (= (select (|PolymorphicMapType_30727_30787_100438#PolymorphicMapType_30727| Heap@@13) o2_24@@3 f_63@@9) (select (|PolymorphicMapType_30727_30787_100438#PolymorphicMapType_30727| ExhaleHeap@@9) o2_24@@3 f_63@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30727_30787_100438#PolymorphicMapType_30727| ExhaleHeap@@9) o2_24@@3 f_63@@9))
))) (forall ((o2_24@@4 T@Ref) (f_63@@10 T@Field_17014_100571) ) (!  (=> (select (|PolymorphicMapType_31276_30787_101953#PolymorphicMapType_31276| (select (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@13) null (PredicateMaskField_17014 pm_f_24@@1))) o2_24@@4 f_63@@10) (= (select (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@13) o2_24@@4 f_63@@10) (select (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| ExhaleHeap@@9) o2_24@@4 f_63@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| ExhaleHeap@@9) o2_24@@4 f_63@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@23) (IsPredicateField_17014_100529 pm_f_24@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_30727) (ExhaleHeap@@10 T@PolymorphicMapType_30727) (Mask@@24 T@PolymorphicMapType_30748) (pm_f_24@@2 T@Field_17014_100438) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@24) (=> (and (HasDirectPerm_17014_100502 Mask@@24 null pm_f_24@@2) (IsWandField_17014_102480 pm_f_24@@2)) (and (and (and (and (and (forall ((o2_24@@5 T@Ref) (f_63@@11 T@Field_30787_53) ) (!  (=> (select (|PolymorphicMapType_31276_30787_53#PolymorphicMapType_31276| (select (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@14) null (WandMaskField_17014 pm_f_24@@2))) o2_24@@5 f_63@@11) (= (select (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| Heap@@14) o2_24@@5 f_63@@11) (select (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| ExhaleHeap@@10) o2_24@@5 f_63@@11)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| ExhaleHeap@@10) o2_24@@5 f_63@@11))
)) (forall ((o2_24@@6 T@Ref) (f_63@@12 T@Field_30800_30801) ) (!  (=> (select (|PolymorphicMapType_31276_30787_30801#PolymorphicMapType_31276| (select (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@14) null (WandMaskField_17014 pm_f_24@@2))) o2_24@@6 f_63@@12) (= (select (|PolymorphicMapType_30727_16809_16810#PolymorphicMapType_30727| Heap@@14) o2_24@@6 f_63@@12) (select (|PolymorphicMapType_30727_16809_16810#PolymorphicMapType_30727| ExhaleHeap@@10) o2_24@@6 f_63@@12)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30727_16809_16810#PolymorphicMapType_30727| ExhaleHeap@@10) o2_24@@6 f_63@@12))
))) (forall ((o2_24@@7 T@Ref) (f_63@@13 T@Field_36827_36832) ) (!  (=> (select (|PolymorphicMapType_31276_30787_36832#PolymorphicMapType_31276| (select (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@14) null (WandMaskField_17014 pm_f_24@@2))) o2_24@@7 f_63@@13) (= (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@14) o2_24@@7 f_63@@13) (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@@10) o2_24@@7 f_63@@13)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@@10) o2_24@@7 f_63@@13))
))) (forall ((o2_24@@8 T@Ref) (f_63@@14 T@Field_36941_3261) ) (!  (=> (select (|PolymorphicMapType_31276_30787_3261#PolymorphicMapType_31276| (select (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@14) null (WandMaskField_17014 pm_f_24@@2))) o2_24@@8 f_63@@14) (= (select (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| Heap@@14) o2_24@@8 f_63@@14) (select (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| ExhaleHeap@@10) o2_24@@8 f_63@@14)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| ExhaleHeap@@10) o2_24@@8 f_63@@14))
))) (forall ((o2_24@@9 T@Ref) (f_63@@15 T@Field_17014_100438) ) (!  (=> (select (|PolymorphicMapType_31276_30787_100438#PolymorphicMapType_31276| (select (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@14) null (WandMaskField_17014 pm_f_24@@2))) o2_24@@9 f_63@@15) (= (select (|PolymorphicMapType_30727_30787_100438#PolymorphicMapType_30727| Heap@@14) o2_24@@9 f_63@@15) (select (|PolymorphicMapType_30727_30787_100438#PolymorphicMapType_30727| ExhaleHeap@@10) o2_24@@9 f_63@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30727_30787_100438#PolymorphicMapType_30727| ExhaleHeap@@10) o2_24@@9 f_63@@15))
))) (forall ((o2_24@@10 T@Ref) (f_63@@16 T@Field_17014_100571) ) (!  (=> (select (|PolymorphicMapType_31276_30787_101953#PolymorphicMapType_31276| (select (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@14) null (WandMaskField_17014 pm_f_24@@2))) o2_24@@10 f_63@@16) (= (select (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@14) o2_24@@10 f_63@@16) (select (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| ExhaleHeap@@10) o2_24@@10 f_63@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| ExhaleHeap@@10) o2_24@@10 f_63@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@24) (IsWandField_17014_102480 pm_f_24@@2))
)))
(assert (forall ((s0@@5 T@Seq_3107) (s1@@5 T@Seq_3107) ) (!  (=> (|Seq#Equal_3107| s0@@5 s1@@5) (and (= (|Seq#Length_3107| s0@@5) (|Seq#Length_3107| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_3107| s0@@5))) (= (|Seq#Index_3107| s0@@5 j@@6) (|Seq#Index_3107| s1@@5 j@@6)))
 :qid |stdinbpl.539:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3107| s0@@5 j@@6))
 :pattern ( (|Seq#Index_3107| s1@@5 j@@6))
))))
 :qid |stdinbpl.536:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3107| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_36830) (s1@@6 T@Seq_36830) ) (!  (=> (|Seq#Equal_17015| s0@@6 s1@@6) (and (= (|Seq#Length_17015| s0@@6) (|Seq#Length_17015| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_17015| s0@@6))) (= (|Seq#Index_17015| s0@@6 j@@7) (|Seq#Index_17015| s1@@6 j@@7)))
 :qid |stdinbpl.539:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_17015| s0@@6 j@@7))
 :pattern ( (|Seq#Index_17015| s1@@6 j@@7))
))))
 :qid |stdinbpl.536:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_17015| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_17015| (|Seq#Singleton_17015| t@@5)) 1)
 :qid |stdinbpl.251:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_17015| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3107| (|Seq#Singleton_3107| t@@6)) 1)
 :qid |stdinbpl.251:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3107| t@@6))
)))
(assert (forall ((s@@21 T@Seq_36830) (t@@7 T@Seq_36830) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_17015| s@@21))) (= (|Seq#Take_17015| (|Seq#Append_36830| s@@21 t@@7) n@@17) (|Seq#Take_17015| s@@21 n@@17)))
 :qid |stdinbpl.393:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_17015| (|Seq#Append_36830| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3107) (t@@8 T@Seq_3107) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3107| s@@22))) (= (|Seq#Take_3107| (|Seq#Append_3107| s@@22 t@@8) n@@18) (|Seq#Take_3107| s@@22 n@@18)))
 :qid |stdinbpl.393:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3107| (|Seq#Append_3107| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_36830) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_17015| s@@23))) (= (|Seq#Length_17015| (|Seq#Update_17015| s@@23 i@@5 v@@2)) (|Seq#Length_17015| s@@23)))
 :qid |stdinbpl.292:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_17015| (|Seq#Update_17015| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_17015| s@@23) (|Seq#Update_17015| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3107) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3107| s@@24))) (= (|Seq#Length_3107| (|Seq#Update_3107| s@@24 i@@6 v@@3)) (|Seq#Length_3107| s@@24)))
 :qid |stdinbpl.292:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3107| (|Seq#Update_3107| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3107| s@@24) (|Seq#Update_3107| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_30727) (Mask@@25 T@PolymorphicMapType_30748) (N@@2 Int) (k@@2 Int) ) (!  (=> (and (state Heap@@15 Mask@@25) (< AssumeFunctionsAbove 0)) (=> (and (and (>= N@@2 0) (<= 0 k@@2)) (<= k@@2 N@@2)) (= (demo__bin Heap@@15 N@@2 k@@2) (ite  (or (= k@@2 0) (or (= k@@2 N@@2) (<= N@@2 0))) 1 (+ (|demo__bin'| Heap@@15 (- N@@2 1) (- k@@2 1)) (|demo__bin'| Heap@@15 (- N@@2 1) k@@2))))))
 :qid |stdinbpl.616:15|
 :skolemid |60|
 :pattern ( (state Heap@@15 Mask@@25) (demo__bin Heap@@15 N@@2 k@@2))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_30727) (o_23 T@Ref) (f_65 T@Field_17014_100438) (v@@4 T@FrameType) ) (! (succHeap Heap@@16 (PolymorphicMapType_30727 (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| Heap@@16) (|PolymorphicMapType_30727_16809_16810#PolymorphicMapType_30727| Heap@@16) (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@16) (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| Heap@@16) (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@16) (store (|PolymorphicMapType_30727_30787_100438#PolymorphicMapType_30727| Heap@@16) o_23 f_65 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30727 (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| Heap@@16) (|PolymorphicMapType_30727_16809_16810#PolymorphicMapType_30727| Heap@@16) (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@16) (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| Heap@@16) (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@16) (store (|PolymorphicMapType_30727_30787_100438#PolymorphicMapType_30727| Heap@@16) o_23 f_65 v@@4)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_30727) (o_23@@0 T@Ref) (f_65@@0 T@Field_17014_100571) (v@@5 T@PolymorphicMapType_31276) ) (! (succHeap Heap@@17 (PolymorphicMapType_30727 (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| Heap@@17) (|PolymorphicMapType_30727_16809_16810#PolymorphicMapType_30727| Heap@@17) (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@17) (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| Heap@@17) (store (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@17) o_23@@0 f_65@@0 v@@5) (|PolymorphicMapType_30727_30787_100438#PolymorphicMapType_30727| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30727 (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| Heap@@17) (|PolymorphicMapType_30727_16809_16810#PolymorphicMapType_30727| Heap@@17) (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@17) (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| Heap@@17) (store (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@17) o_23@@0 f_65@@0 v@@5) (|PolymorphicMapType_30727_30787_100438#PolymorphicMapType_30727| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_30727) (o_23@@1 T@Ref) (f_65@@1 T@Field_36941_3261) (v@@6 Int) ) (! (succHeap Heap@@18 (PolymorphicMapType_30727 (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| Heap@@18) (|PolymorphicMapType_30727_16809_16810#PolymorphicMapType_30727| Heap@@18) (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@18) (store (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| Heap@@18) o_23@@1 f_65@@1 v@@6) (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@18) (|PolymorphicMapType_30727_30787_100438#PolymorphicMapType_30727| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30727 (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| Heap@@18) (|PolymorphicMapType_30727_16809_16810#PolymorphicMapType_30727| Heap@@18) (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@18) (store (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| Heap@@18) o_23@@1 f_65@@1 v@@6) (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@18) (|PolymorphicMapType_30727_30787_100438#PolymorphicMapType_30727| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_30727) (o_23@@2 T@Ref) (f_65@@2 T@Field_36827_36832) (v@@7 T@Seq_36830) ) (! (succHeap Heap@@19 (PolymorphicMapType_30727 (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| Heap@@19) (|PolymorphicMapType_30727_16809_16810#PolymorphicMapType_30727| Heap@@19) (store (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@19) o_23@@2 f_65@@2 v@@7) (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| Heap@@19) (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@19) (|PolymorphicMapType_30727_30787_100438#PolymorphicMapType_30727| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30727 (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| Heap@@19) (|PolymorphicMapType_30727_16809_16810#PolymorphicMapType_30727| Heap@@19) (store (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@19) o_23@@2 f_65@@2 v@@7) (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| Heap@@19) (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@19) (|PolymorphicMapType_30727_30787_100438#PolymorphicMapType_30727| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_30727) (o_23@@3 T@Ref) (f_65@@3 T@Field_30800_30801) (v@@8 T@Ref) ) (! (succHeap Heap@@20 (PolymorphicMapType_30727 (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| Heap@@20) (store (|PolymorphicMapType_30727_16809_16810#PolymorphicMapType_30727| Heap@@20) o_23@@3 f_65@@3 v@@8) (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@20) (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| Heap@@20) (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@20) (|PolymorphicMapType_30727_30787_100438#PolymorphicMapType_30727| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30727 (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| Heap@@20) (store (|PolymorphicMapType_30727_16809_16810#PolymorphicMapType_30727| Heap@@20) o_23@@3 f_65@@3 v@@8) (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@20) (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| Heap@@20) (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@20) (|PolymorphicMapType_30727_30787_100438#PolymorphicMapType_30727| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_30727) (o_23@@4 T@Ref) (f_65@@4 T@Field_30787_53) (v@@9 Bool) ) (! (succHeap Heap@@21 (PolymorphicMapType_30727 (store (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| Heap@@21) o_23@@4 f_65@@4 v@@9) (|PolymorphicMapType_30727_16809_16810#PolymorphicMapType_30727| Heap@@21) (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@21) (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| Heap@@21) (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@21) (|PolymorphicMapType_30727_30787_100438#PolymorphicMapType_30727| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30727 (store (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| Heap@@21) o_23@@4 f_65@@4 v@@9) (|PolymorphicMapType_30727_16809_16810#PolymorphicMapType_30727| Heap@@21) (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@21) (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| Heap@@21) (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@21) (|PolymorphicMapType_30727_30787_100438#PolymorphicMapType_30727| Heap@@21)))
)))
(assert (forall ((s@@25 T@Seq_36830) (t@@9 T@Seq_36830) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_17015| s@@25))) (= (|Seq#Drop_17015| (|Seq#Append_36830| s@@25 t@@9) n@@19) (|Seq#Append_36830| (|Seq#Drop_17015| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.407:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_17015| (|Seq#Append_36830| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3107) (t@@10 T@Seq_3107) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3107| s@@26))) (= (|Seq#Drop_3107| (|Seq#Append_3107| s@@26 t@@10) n@@20) (|Seq#Append_3107| (|Seq#Drop_3107| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.407:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3107| (|Seq#Append_3107| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_36830) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_17015| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_17015| (|Seq#Drop_17015| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_17015| s@@27 i@@7))))
 :qid |stdinbpl.343:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_17015| s@@27 n@@21) (|Seq#Index_17015| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3107) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3107| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3107| (|Seq#Drop_3107| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3107| s@@28 i@@8))))
 :qid |stdinbpl.343:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3107| s@@28 n@@22) (|Seq#Index_3107| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_36830) (s1@@7 T@Seq_36830) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_17015|)) (not (= s1@@7 |Seq#Empty_17015|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_17015| s0@@7))) (= (|Seq#Index_17015| (|Seq#Append_36830| s0@@7 s1@@7) n@@23) (|Seq#Index_17015| s0@@7 n@@23)))
 :qid |stdinbpl.283:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_17015| (|Seq#Append_36830| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_17015| s0@@7 n@@23) (|Seq#Append_36830| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3107) (s1@@8 T@Seq_3107) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3107|)) (not (= s1@@8 |Seq#Empty_3107|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3107| s0@@8))) (= (|Seq#Index_3107| (|Seq#Append_3107| s0@@8 s1@@8) n@@24) (|Seq#Index_3107| s0@@8 n@@24)))
 :qid |stdinbpl.283:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3107| (|Seq#Append_3107| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3107| s0@@8 n@@24) (|Seq#Append_3107| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_36830) (s1@@9 T@Seq_36830) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_17015|)) (not (= s1@@9 |Seq#Empty_17015|))) (<= 0 m)) (< m (|Seq#Length_17015| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_17015| s0@@9)) (|Seq#Length_17015| s0@@9)) m) (= (|Seq#Index_17015| (|Seq#Append_36830| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_17015| s0@@9))) (|Seq#Index_17015| s1@@9 m))))
 :qid |stdinbpl.288:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_17015| s1@@9 m) (|Seq#Append_36830| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3107) (s1@@10 T@Seq_3107) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3107|)) (not (= s1@@10 |Seq#Empty_3107|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3107| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3107| s0@@10)) (|Seq#Length_3107| s0@@10)) m@@0) (= (|Seq#Index_3107| (|Seq#Append_3107| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3107| s0@@10))) (|Seq#Index_3107| s1@@10 m@@0))))
 :qid |stdinbpl.288:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3107| s1@@10 m@@0) (|Seq#Append_3107| s0@@10 s1@@10))
)))
(assert (forall ((o_23@@5 T@Ref) (f_15 T@Field_30800_30801) (Heap@@22 T@PolymorphicMapType_30727) ) (!  (=> (select (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| Heap@@22) o_23@@5 $allocated) (select (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| Heap@@22) (select (|PolymorphicMapType_30727_16809_16810#PolymorphicMapType_30727| Heap@@22) o_23@@5 f_15) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_30727_16809_16810#PolymorphicMapType_30727| Heap@@22) o_23@@5 f_15))
)))
(assert (forall ((s@@29 T@Seq_36830) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_17015| s@@29))) (= (|Seq#Index_17015| s@@29 i@@9) x@@3)) (|Seq#Contains_36830| s@@29 x@@3))
 :qid |stdinbpl.440:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_36830| s@@29 x@@3) (|Seq#Index_17015| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3107) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3107| s@@30))) (= (|Seq#Index_3107| s@@30 i@@10) x@@4)) (|Seq#Contains_3107| s@@30 x@@4))
 :qid |stdinbpl.440:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3107| s@@30 x@@4) (|Seq#Index_3107| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_36830) (s1@@11 T@Seq_36830) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_17015| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_17015| s0@@11 s1@@11))) (not (= (|Seq#Length_17015| s0@@11) (|Seq#Length_17015| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_17015| s0@@11 s1@@11))) (= (|Seq#Length_17015| s0@@11) (|Seq#Length_17015| s1@@11))) (= (|Seq#SkolemDiff_36830| s0@@11 s1@@11) (|Seq#SkolemDiff_36830| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_36830| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_36830| s0@@11 s1@@11) (|Seq#Length_17015| s0@@11))) (not (= (|Seq#Index_17015| s0@@11 (|Seq#SkolemDiff_36830| s0@@11 s1@@11)) (|Seq#Index_17015| s1@@11 (|Seq#SkolemDiff_36830| s0@@11 s1@@11))))))
 :qid |stdinbpl.544:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_17015| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3107) (s1@@12 T@Seq_3107) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3107| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3107| s0@@12 s1@@12))) (not (= (|Seq#Length_3107| s0@@12) (|Seq#Length_3107| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3107| s0@@12 s1@@12))) (= (|Seq#Length_3107| s0@@12) (|Seq#Length_3107| s1@@12))) (= (|Seq#SkolemDiff_3107| s0@@12 s1@@12) (|Seq#SkolemDiff_3107| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3107| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3107| s0@@12 s1@@12) (|Seq#Length_3107| s0@@12))) (not (= (|Seq#Index_3107| s0@@12 (|Seq#SkolemDiff_3107| s0@@12 s1@@12)) (|Seq#Index_3107| s1@@12 (|Seq#SkolemDiff_3107| s0@@12 s1@@12))))))
 :qid |stdinbpl.544:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3107| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_17014_100438) (v_1@@0 T@FrameType) (q T@Field_17014_100438) (w@@0 T@FrameType) (r T@Field_17014_100438) (u T@FrameType) ) (!  (=> (and (InsidePredicate_30787_30787 p@@1 v_1@@0 q w@@0) (InsidePredicate_30787_30787 q w@@0 r u)) (InsidePredicate_30787_30787 p@@1 v_1@@0 r u))
 :qid |stdinbpl.211:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30787_30787 p@@1 v_1@@0 q w@@0) (InsidePredicate_30787_30787 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_36830) ) (!  (=> (= (|Seq#Length_17015| s@@31) 0) (= s@@31 |Seq#Empty_17015|))
 :qid |stdinbpl.247:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_17015| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3107) ) (!  (=> (= (|Seq#Length_3107| s@@32) 0) (= s@@32 |Seq#Empty_3107|))
 :qid |stdinbpl.247:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3107| s@@32))
)))
(assert (forall ((s@@33 T@Seq_36830) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_17015| s@@33 n@@25) |Seq#Empty_17015|))
 :qid |stdinbpl.423:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_17015| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3107) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3107| s@@34 n@@26) |Seq#Empty_3107|))
 :qid |stdinbpl.423:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3107| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun gsize () Int)
(declare-fun tid () Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_30727)
(declare-fun tcount () Int)
(declare-fun lid () Int)
(declare-fun gid () Int)
(declare-fun wildcard@2 () Real)
(declare-fun diz () T@Ref)
(declare-fun PostMask@0 () T@PolymorphicMapType_30748)
(declare-fun wildcard@3 () Real)
(declare-fun PostMask@1 () T@PolymorphicMapType_30748)
(declare-fun Mask@3 () T@PolymorphicMapType_30748)
(declare-fun Heap@@23 () T@PolymorphicMapType_30727)
(declare-fun PostMask@2 () T@PolymorphicMapType_30748)
(declare-fun N@0 () Int)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_30727)
(declare-fun Mask@7 () T@PolymorphicMapType_30748)
(declare-fun wildcard@6 () Real)
(declare-fun Mask@8 () T@PolymorphicMapType_30748)
(declare-fun wildcard@7 () Real)
(declare-fun Mask@9 () T@PolymorphicMapType_30748)
(declare-fun Mask@10 () T@PolymorphicMapType_30748)
(declare-fun Mask@11 () T@PolymorphicMapType_30748)
(declare-fun N@1 () Int)
(declare-fun Mask@34 () T@PolymorphicMapType_30748)
(declare-fun Mask@33 () T@PolymorphicMapType_30748)
(declare-fun ExhaleHeap@3 () T@PolymorphicMapType_30727)
(declare-fun Mask@32 () T@PolymorphicMapType_30748)
(declare-fun Mask@30 () T@PolymorphicMapType_30748)
(declare-fun wildcard@14 () Real)
(declare-fun Mask@31 () T@PolymorphicMapType_30748)
(declare-fun wildcard@15 () Real)
(declare-fun Mask@28 () T@PolymorphicMapType_30748)
(declare-fun Mask@29 () T@PolymorphicMapType_30748)
(declare-fun Heap@3 () T@PolymorphicMapType_30727)
(declare-fun Mask@27 () T@PolymorphicMapType_30748)
(declare-fun Mask@26 () T@PolymorphicMapType_30748)
(declare-fun Heap@2 () T@PolymorphicMapType_30727)
(declare-fun ExhaleHeap@2 () T@PolymorphicMapType_30727)
(declare-fun __flatten_6@1 () T@Ref)
(declare-fun __flatten_8@1 () T@Ref)
(declare-fun __flatten_9@1 () T@Ref)
(declare-fun __flatten_7@1 () Int)
(declare-fun Mask@24 () T@PolymorphicMapType_30748)
(declare-fun Mask@25 () T@PolymorphicMapType_30748)
(declare-fun Heap@1 () T@PolymorphicMapType_30727)
(declare-fun Mask@23 () T@PolymorphicMapType_30748)
(declare-fun Mask@15 () T@PolymorphicMapType_30748)
(declare-fun wildcard@8 () Real)
(declare-fun Mask@12 () T@PolymorphicMapType_30748)
(declare-fun wildcard@9 () Real)
(declare-fun Mask@13 () T@PolymorphicMapType_30748)
(declare-fun Mask@14 () T@PolymorphicMapType_30748)
(declare-fun __flatten_3@1 () T@Ref)
(declare-fun __flatten_5@1 () T@Ref)
(declare-fun __flatten_4@1 () Int)
(declare-fun Mask@22 () T@PolymorphicMapType_30748)
(declare-fun Mask@21 () T@PolymorphicMapType_30748)
(declare-fun wildcard@10 () Real)
(declare-fun Mask@16 () T@PolymorphicMapType_30748)
(declare-fun wildcard@11 () Real)
(declare-fun Mask@17 () T@PolymorphicMapType_30748)
(declare-fun Mask@18 () T@PolymorphicMapType_30748)
(declare-fun Mask@19 () T@PolymorphicMapType_30748)
(declare-fun wildcard@12 () Real)
(declare-fun Mask@20 () T@PolymorphicMapType_30748)
(declare-fun wildcard@13 () Real)
(declare-fun Mask@6 () T@PolymorphicMapType_30748)
(declare-fun Heap@0 () T@PolymorphicMapType_30727)
(declare-fun __flatten_9@0 () T@Ref)
(declare-fun __flatten_8@0 () T@Ref)
(declare-fun __flatten_6@0 () T@Ref)
(declare-fun __flatten_5@0 () T@Ref)
(declare-fun __flatten_3@0 () T@Ref)
(declare-fun Mask@5 () T@PolymorphicMapType_30748)
(declare-fun __flatten_1 () T@Ref)
(declare-fun __flatten_3 () T@Ref)
(declare-fun __flatten_5 () T@Ref)
(declare-fun __flatten_6 () T@Ref)
(declare-fun __flatten_8 () T@Ref)
(declare-fun __flatten_9 () T@Ref)
(declare-fun __flatten_1@0 () T@Ref)
(declare-fun wildcard@4 () Real)
(declare-fun Mask@4 () T@PolymorphicMapType_30748)
(declare-fun wildcard@5 () Real)
(declare-fun current_thread_id () Int)
(declare-fun wildcard@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_30748)
(declare-fun wildcard@1 () Real)
(declare-fun Mask@1 () T@PolymorphicMapType_30748)
(declare-fun Mask@2 () T@PolymorphicMapType_30748)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id demo__main_main)
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
 (=> (= (ControlFlow 0 0) 231) (let ((anon51_Else_correct true))
(let ((anon51_Then_correct  (and (=> (= (ControlFlow 0 204) (- 0 206)) (>= (- gsize 1) 0)) (=> (>= (- gsize 1) 0) (and (=> (= (ControlFlow 0 204) (- 0 205)) (<= 0 tid)) (=> (<= 0 tid) (=> (= (ControlFlow 0 204) (- 0 203)) (<= tid (- gsize 1)))))))))
(let ((anon50_Then_correct  (=> (and (and (and (and (state PostHeap@0 ZeroMask) (<= 0 tid)) (and (state PostHeap@0 ZeroMask) (< tid tcount))) (and (and (state PostHeap@0 ZeroMask) (= tid lid)) (and (state PostHeap@0 ZeroMask) (= tcount gsize)))) (and (and (and (state PostHeap@0 ZeroMask) (= gid 0)) (and (state PostHeap@0 ZeroMask) (> wildcard@2 NoPerm))) (and (and (not (= diz null)) (= PostMask@0 (PolymorphicMapType_30748 (store (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| ZeroMask) diz demo__ar (+ (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| ZeroMask) diz demo__ar) wildcard@2)) (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| ZeroMask) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| ZeroMask) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| ZeroMask) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| ZeroMask) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| ZeroMask)))) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0))))) (and (=> (= (ControlFlow 0 208) (- 0 221)) (HasDirectPerm_17014_38909 PostMask@0 diz demo__ar)) (=> (HasDirectPerm_17014_38909 PostMask@0 diz demo__ar) (=> (= (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| PostHeap@0) diz demo__ar)) gsize) (=> (and (state PostHeap@0 PostMask@0) (> wildcard@3 NoPerm)) (=> (and (and (not (= diz null)) (= PostMask@1 (PolymorphicMapType_30748 (store (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| PostMask@0) diz demo__tmp (+ (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| PostMask@0) diz demo__tmp) wildcard@3)) (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| PostMask@0) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| PostMask@0) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| PostMask@0) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| PostMask@0) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| PostMask@0)))) (and (state PostHeap@0 PostMask@1) (state PostHeap@0 PostMask@1))) (and (=> (= (ControlFlow 0 208) (- 0 220)) (HasDirectPerm_17014_38909 PostMask@1 diz demo__tmp)) (=> (HasDirectPerm_17014_38909 PostMask@1 diz demo__tmp) (=> (and (= (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| PostHeap@0) diz demo__tmp)) gsize) (state PostHeap@0 PostMask@1)) (and (=> (= (ControlFlow 0 208) (- 0 219)) (HasDirectPerm_17014_38909 PostMask@1 diz demo__ar)) (=> (HasDirectPerm_17014_38909 PostMask@1 diz demo__ar) (and (=> (= (ControlFlow 0 208) (- 0 218)) (HasDirectPerm_17014_38909 Mask@3 diz demo__ar)) (=> (HasDirectPerm_17014_38909 Mask@3 diz demo__ar) (=> (and (|Seq#Equal_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| PostHeap@0) diz demo__ar) (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@23) diz demo__ar)) (state PostHeap@0 PostMask@1)) (and (=> (= (ControlFlow 0 208) (- 0 217)) (HasDirectPerm_17014_38909 PostMask@1 diz demo__tmp)) (=> (HasDirectPerm_17014_38909 PostMask@1 diz demo__tmp) (and (=> (= (ControlFlow 0 208) (- 0 216)) (HasDirectPerm_17014_38909 Mask@3 diz demo__tmp)) (=> (HasDirectPerm_17014_38909 Mask@3 diz demo__tmp) (=> (and (and (|Seq#Equal_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| PostHeap@0) diz demo__tmp) (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@23) diz demo__tmp)) (state PostHeap@0 PostMask@1)) (and (> gsize 1) (state PostHeap@0 PostMask@1))) (and (=> (= (ControlFlow 0 208) (- 0 215)) (HasDirectPerm_17014_38909 PostMask@1 diz demo__ar)) (=> (HasDirectPerm_17014_38909 PostMask@1 diz demo__ar) (and (=> (= (ControlFlow 0 208) (- 0 214)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 208) (- 0 213)) (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| PostHeap@0) diz demo__ar)))) (=> (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| PostHeap@0) diz demo__ar))) (=> (not (= (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| PostHeap@0) diz demo__ar) tid) null)) (=> (and (and (= PostMask@2 (PolymorphicMapType_30748 (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| PostMask@1) (store (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| PostMask@1) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| PostHeap@0) diz demo__ar) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| PostMask@1) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| PostHeap@0) diz demo__ar) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| PostMask@1) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| PostMask@1) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| PostMask@1) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| PostMask@1))) (state PostHeap@0 PostMask@2)) (and (state PostHeap@0 PostMask@2) (state PostHeap@0 PostMask@2))) (and (=> (= (ControlFlow 0 208) (- 0 212)) (HasDirectPerm_17014_38909 PostMask@2 diz demo__ar)) (=> (HasDirectPerm_17014_38909 PostMask@2 diz demo__ar) (and (=> (= (ControlFlow 0 208) (- 0 211)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 208) (- 0 210)) (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| PostHeap@0) diz demo__ar)))) (=> (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| PostHeap@0) diz demo__ar))) (and (=> (= (ControlFlow 0 208) (- 0 209)) (HasDirectPerm_17022_3261 PostMask@2 (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| PostHeap@0) diz demo__ar) tid) Ref__Integer_value)) (=> (HasDirectPerm_17022_3261 PostMask@2 (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| PostHeap@0) diz demo__ar) tid) Ref__Integer_value) (and (=> (= (ControlFlow 0 208) 204) anon51_Then_correct) (=> (= (ControlFlow 0 208) 207) anon51_Else_correct)))))))))))))))))))))))))))))))))))))))
(let ((anon56_Then_correct  (and (=> (= (ControlFlow 0 160) (- 0 162)) (>= N@0 0)) (=> (>= N@0 0) (and (=> (= (ControlFlow 0 160) (- 0 161)) (<= 0 tid)) (=> (<= 0 tid) (=> (= (ControlFlow 0 160) (- 0 159)) (<= tid N@0))))))))
(let ((anon12_correct true))
(let ((anon55_Then_correct  (=> (< tid N@0) (and (=> (= (ControlFlow 0 163) 160) anon56_Then_correct) (=> (= (ControlFlow 0 163) 157) anon12_correct)))))
(let ((anon55_Else_correct  (=> (and (<= N@0 tid) (= (ControlFlow 0 158) 157)) anon12_correct)))
(let ((anon54_Then_correct  (=> (<= 0 tid) (=> (and (state ExhaleHeap@0 Mask@7) (< tid tcount)) (=> (and (and (state ExhaleHeap@0 Mask@7) (= tid lid)) (and (state ExhaleHeap@0 Mask@7) (= tcount gsize))) (=> (and (and (and (state ExhaleHeap@0 Mask@7) (= gid 0)) (and (state ExhaleHeap@0 Mask@7) (> wildcard@6 NoPerm))) (and (and (not (= diz null)) (= Mask@8 (PolymorphicMapType_30748 (store (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@7) diz demo__ar (+ (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@7) diz demo__ar) wildcard@6)) (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@7) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@7) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@7) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@7) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@7)))) (and (state ExhaleHeap@0 Mask@8) (state ExhaleHeap@0 Mask@8)))) (and (=> (= (ControlFlow 0 164) (- 0 176)) (HasDirectPerm_17014_38909 Mask@8 diz demo__ar)) (=> (HasDirectPerm_17014_38909 Mask@8 diz demo__ar) (=> (= (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar)) gsize) (=> (and (state ExhaleHeap@0 Mask@8) (> wildcard@7 NoPerm)) (=> (and (and (not (= diz null)) (= Mask@9 (PolymorphicMapType_30748 (store (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@8) diz demo__tmp (+ (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@8) diz demo__tmp) wildcard@7)) (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@8) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@8) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@8) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@8) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@8)))) (and (state ExhaleHeap@0 Mask@9) (state ExhaleHeap@0 Mask@9))) (and (=> (= (ControlFlow 0 164) (- 0 175)) (HasDirectPerm_17014_38909 Mask@9 diz demo__tmp)) (=> (HasDirectPerm_17014_38909 Mask@9 diz demo__tmp) (=> (and (and (and (= (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__tmp)) gsize) (state ExhaleHeap@0 Mask@9)) (and (> gsize 1) (state ExhaleHeap@0 Mask@9))) (and (and (< 0 N@0) (state ExhaleHeap@0 Mask@9)) (and (< N@0 gsize) (state ExhaleHeap@0 Mask@9)))) (and (=> (= (ControlFlow 0 164) (- 0 174)) (HasDirectPerm_17014_38909 Mask@9 diz demo__ar)) (=> (HasDirectPerm_17014_38909 Mask@9 diz demo__ar) (and (=> (= (ControlFlow 0 164) (- 0 173)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 164) (- 0 172)) (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar)))) (=> (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar))) (=> (and (and (not (= (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar) tid) null)) (= Mask@10 (PolymorphicMapType_30748 (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@9) (store (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@9) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@9) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@9) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@9) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@9) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@9)))) (and (state ExhaleHeap@0 Mask@10) (state ExhaleHeap@0 Mask@10))) (and (=> (= (ControlFlow 0 164) (- 0 171)) (HasDirectPerm_17014_38909 Mask@10 diz demo__tmp)) (=> (HasDirectPerm_17014_38909 Mask@10 diz demo__tmp) (and (=> (= (ControlFlow 0 164) (- 0 170)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 164) (- 0 169)) (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__tmp)))) (=> (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__tmp))) (=> (not (= (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__tmp) tid) null)) (=> (and (and (= Mask@11 (PolymorphicMapType_30748 (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@10) (store (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@10) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__tmp) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@10) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__tmp) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@10) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@10) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@10) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@10))) (state ExhaleHeap@0 Mask@11)) (and (state ExhaleHeap@0 Mask@11) (state ExhaleHeap@0 Mask@11))) (and (=> (= (ControlFlow 0 164) (- 0 168)) (HasDirectPerm_17014_38909 Mask@11 diz demo__ar)) (=> (HasDirectPerm_17014_38909 Mask@11 diz demo__ar) (and (=> (= (ControlFlow 0 164) (- 0 167)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 164) (- 0 166)) (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar)))) (=> (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar))) (and (=> (= (ControlFlow 0 164) (- 0 165)) (HasDirectPerm_17022_3261 Mask@11 (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar) tid) Ref__Integer_value)) (=> (HasDirectPerm_17022_3261 Mask@11 (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar) tid) Ref__Integer_value) (and (=> (= (ControlFlow 0 164) 163) anon55_Then_correct) (=> (= (ControlFlow 0 164) 158) anon55_Else_correct)))))))))))))))))))))))))))))))))))))))
(let ((anon59_Then_correct  (and (=> (= (ControlFlow 0 135) (- 0 137)) (>= N@0 0)) (=> (>= N@0 0) (and (=> (= (ControlFlow 0 135) (- 0 136)) (<= 0 tid)) (=> (<= 0 tid) (=> (= (ControlFlow 0 135) (- 0 134)) (<= tid N@0))))))))
(let ((anon64_Then_correct  (and (=> (= (ControlFlow 0 107) (- 0 109)) (>= N@0 0)) (=> (>= N@0 0) (and (=> (= (ControlFlow 0 107) (- 0 108)) (<= 0 (- tid 1))) (=> (<= 0 (- tid 1)) (=> (= (ControlFlow 0 107) (- 0 106)) (<= (- tid 1) N@0))))))))
(let ((anon68_Then_correct  (and (=> (= (ControlFlow 0 70) (- 0 72)) (>= N@1 0)) (=> (>= N@1 0) (and (=> (= (ControlFlow 0 70) (- 0 71)) (<= 0 tid)) (=> (<= 0 tid) (=> (= (ControlFlow 0 70) (- 0 69)) (<= tid N@1))))))))
(let ((anon67_Then_correct  (and (=> (= (ControlFlow 0 66) (- 0 68)) (>= (- N@1 1) 0)) (=> (>= (- N@1 1) 0) (and (=> (= (ControlFlow 0 66) (- 0 67)) (<= 0 tid)) (=> (<= 0 tid) (=> (= (ControlFlow 0 66) (- 0 65)) (<= tid (- N@1 1)))))))))
(let ((anon66_Then_correct  (and (=> (= (ControlFlow 0 62) (- 0 64)) (>= (- N@1 1) 0)) (=> (>= (- N@1 1) 0) (and (=> (= (ControlFlow 0 62) (- 0 63)) (<= 0 (- tid 1))) (=> (<= 0 (- tid 1)) (=> (= (ControlFlow 0 62) (- 0 61)) (<= (- tid 1) (- N@1 1)))))))))
(let ((anon46_correct  (=> (and (= Mask@34 (PolymorphicMapType_30748 (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@33) (store (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@33) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@3) diz demo__tmp) tid) Ref__Integer_value (- (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@33) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@3) diz demo__tmp) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@33) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@33) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@33) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@33))) (= (ControlFlow 0 20) (- 0 19))) (= (select (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| ExhaleHeap@3) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@3) diz demo__ar) tid) Ref__Integer_value) (ite (< tid N@1) (demo__bin ExhaleHeap@3 N@1 tid) 1)))))
(let ((anon73_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 23) 20)) anon46_correct)))
(let ((anon73_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (<= FullPerm (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@33) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@3) diz demo__tmp) tid) Ref__Integer_value))) (=> (<= FullPerm (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@33) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@3) diz demo__tmp) tid) Ref__Integer_value)) (=> (= (ControlFlow 0 21) 20) anon46_correct))))))
(let ((anon44_correct  (=> (= Mask@33 (PolymorphicMapType_30748 (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@32) (store (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@32) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@3) diz demo__ar) tid) Ref__Integer_value (- (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@32) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@3) diz demo__ar) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@32) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@32) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@32) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@32))) (and (=> (= (ControlFlow 0 24) 21) anon73_Then_correct) (=> (= (ControlFlow 0 24) 23) anon73_Else_correct)))))
(let ((anon72_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 27) 24)) anon44_correct)))
(let ((anon72_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 25) (- 0 26)) (<= FullPerm (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@32) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@3) diz demo__ar) tid) Ref__Integer_value))) (=> (<= FullPerm (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@32) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@3) diz demo__ar) tid) Ref__Integer_value)) (=> (= (ControlFlow 0 25) 24) anon44_correct))))))
(let ((anon42_correct  (=> (and (state ExhaleHeap@3 Mask@30) (state ExhaleHeap@3 Mask@30)) (and (=> (= (ControlFlow 0 28) (- 0 40)) (<= 0 tid)) (=> (<= 0 tid) (and (=> (= (ControlFlow 0 28) (- 0 39)) (< tid tcount)) (=> (< tid tcount) (and (=> (= (ControlFlow 0 28) (- 0 38)) (= tid lid)) (=> (= tid lid) (and (=> (= (ControlFlow 0 28) (- 0 37)) (= tcount gsize)) (=> (= tcount gsize) (and (=> (= (ControlFlow 0 28) (- 0 36)) (= gid 0)) (=> (= gid 0) (and (=> (= (ControlFlow 0 28) (- 0 35)) (> (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@30) diz demo__ar) NoPerm)) (=> (> (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@30) diz demo__ar) NoPerm) (=> (> wildcard@14 NoPerm) (=> (and (< wildcard@14 (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@30) diz demo__ar)) (= Mask@31 (PolymorphicMapType_30748 (store (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@30) diz demo__ar (- (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@30) diz demo__ar) wildcard@14)) (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@30) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@30) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@30) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@30) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@30)))) (and (=> (= (ControlFlow 0 28) (- 0 34)) (= (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@3) diz demo__ar)) gsize)) (=> (= (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@3) diz demo__ar)) gsize) (and (=> (= (ControlFlow 0 28) (- 0 33)) (> (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@31) diz demo__tmp) NoPerm)) (=> (> (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@31) diz demo__tmp) NoPerm) (=> (> wildcard@15 NoPerm) (=> (and (< wildcard@15 (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@31) diz demo__tmp)) (= Mask@32 (PolymorphicMapType_30748 (store (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@31) diz demo__tmp (- (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@31) diz demo__tmp) wildcard@15)) (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@31) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@31) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@31) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@31) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@31)))) (and (=> (= (ControlFlow 0 28) (- 0 32)) (= (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@3) diz demo__tmp)) gsize)) (=> (= (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@3) diz demo__tmp)) gsize) (and (=> (= (ControlFlow 0 28) (- 0 31)) (> gsize 1)) (=> (> gsize 1) (and (=> (= (ControlFlow 0 28) (- 0 30)) (< 0 N@1)) (=> (< 0 N@1) (and (=> (= (ControlFlow 0 28) (- 0 29)) (< N@1 gsize)) (=> (< N@1 gsize) (and (=> (= (ControlFlow 0 28) 25) anon72_Then_correct) (=> (= (ControlFlow 0 28) 27) anon72_Else_correct)))))))))))))))))))))))))))))))))
(let ((anon71_Else_correct  (=> (<= (- gsize 1) tid) (=> (and (= Mask@30 Mask@28) (= (ControlFlow 0 45) 28)) anon42_correct))))
(let ((anon71_Then_correct  (=> (< tid (- gsize 1)) (and (=> (= (ControlFlow 0 41) (- 0 44)) (HasDirectPerm_17014_38909 Mask@28 diz demo__tmp)) (=> (HasDirectPerm_17014_38909 Mask@28 diz demo__tmp) (and (=> (= (ControlFlow 0 41) (- 0 43)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 41) (- 0 42)) (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@3) diz demo__tmp)))) (=> (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@3) diz demo__tmp))) (=> (not (= (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@3) diz demo__tmp) tid) null)) (=> (and (and (= Mask@29 (PolymorphicMapType_30748 (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@28) (store (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@28) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@3) diz demo__tmp) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@28) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@3) diz demo__tmp) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@28) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@28) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@28) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@28))) (state ExhaleHeap@3 Mask@29)) (and (= Mask@30 Mask@29) (= (ControlFlow 0 41) 28))) anon42_correct)))))))))))
(let ((anon40_correct  (=> (IdenticalOnKnownLocations Heap@3 ExhaleHeap@3 Mask@28) (=> (and (state ExhaleHeap@3 Mask@28) (> gsize 1)) (=> (and (and (and (state ExhaleHeap@3 Mask@28) (state ExhaleHeap@3 Mask@28)) (and (< 0 N@1) (state ExhaleHeap@3 Mask@28))) (and (and (state ExhaleHeap@3 Mask@28) (< N@1 gsize)) (and (state ExhaleHeap@3 Mask@28) (state ExhaleHeap@3 Mask@28)))) (and (=> (= (ControlFlow 0 46) 41) anon71_Then_correct) (=> (= (ControlFlow 0 46) 45) anon71_Else_correct)))))))
(let ((anon39_correct  (=> (= Mask@27 (PolymorphicMapType_30748 (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@26) (store (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@26) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@3) diz demo__tmp) (- tid 1)) Ref__Integer_value (- (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@26) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@3) diz demo__tmp) (- tid 1)) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@26) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@26) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@26) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@26))) (=> (and (= Mask@28 Mask@27) (= (ControlFlow 0 48) 46)) anon40_correct))))
(let ((anon70_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 51) 48)) anon39_correct)))
(let ((anon70_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 49) (- 0 50)) (<= FullPerm (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@26) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@3) diz demo__tmp) (- tid 1)) Ref__Integer_value))) (=> (<= FullPerm (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@26) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@3) diz demo__tmp) (- tid 1)) Ref__Integer_value)) (=> (= (ControlFlow 0 49) 48) anon39_correct))))))
(let ((anon69_Then_correct  (=> (> tid 0) (and (=> (= (ControlFlow 0 52) (- 0 55)) (HasDirectPerm_17014_38909 Mask@26 diz demo__tmp)) (=> (HasDirectPerm_17014_38909 Mask@26 diz demo__tmp) (and (=> (= (ControlFlow 0 52) (- 0 54)) (>= (- tid 1) 0)) (=> (>= (- tid 1) 0) (and (=> (= (ControlFlow 0 52) (- 0 53)) (< (- tid 1) (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@3) diz demo__tmp)))) (=> (< (- tid 1) (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@3) diz demo__tmp))) (and (=> (= (ControlFlow 0 52) 49) anon70_Then_correct) (=> (= (ControlFlow 0 52) 51) anon70_Else_correct)))))))))))
(let ((anon69_Else_correct  (=> (>= 0 tid) (=> (and (= Mask@28 Mask@26) (= (ControlFlow 0 47) 46)) anon40_correct))))
(let ((anon36_correct  (=> (state Heap@3 Mask@26) (and (=> (= (ControlFlow 0 56) (- 0 59)) (> gsize 1)) (=> (> gsize 1) (=> (state Heap@3 Mask@26) (and (=> (= (ControlFlow 0 56) (- 0 58)) (< 0 N@1)) (=> (< 0 N@1) (=> (state Heap@3 Mask@26) (and (=> (= (ControlFlow 0 56) (- 0 57)) (< N@1 gsize)) (=> (< N@1 gsize) (=> (state Heap@3 Mask@26) (and (=> (= (ControlFlow 0 56) 52) anon69_Then_correct) (=> (= (ControlFlow 0 56) 47) anon69_Else_correct))))))))))))))
(let ((anon68_Else_correct  (and (=> (= (ControlFlow 0 73) (- 0 74)) (= (select (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| Heap@2) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@2) diz demo__ar) tid) Ref__Integer_value) (demo__bin Heap@2 N@1 tid))) (=> (= (select (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| Heap@2) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@2) diz demo__ar) tid) Ref__Integer_value) (demo__bin Heap@2 N@1 tid)) (=> (state Heap@2 Mask@26) (=> (and (= Heap@3 Heap@2) (= (ControlFlow 0 73) 56)) anon36_correct))))))
(let ((anon67_Else_correct  (and (=> (= (ControlFlow 0 75) (- 0 92)) (= (select (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| ExhaleHeap@2) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__ar) tid) Ref__Integer_value) (demo__bin ExhaleHeap@2 (- N@1 1) tid))) (=> (= (select (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| ExhaleHeap@2) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__ar) tid) Ref__Integer_value) (demo__bin ExhaleHeap@2 (- N@1 1) tid)) (=> (state ExhaleHeap@2 Mask@26) (and (=> (= (ControlFlow 0 75) (- 0 91)) (HasDirectPerm_17014_38909 Mask@26 diz demo__ar)) (=> (HasDirectPerm_17014_38909 Mask@26 diz demo__ar) (and (=> (= (ControlFlow 0 75) (- 0 90)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 75) (- 0 89)) (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__ar)))) (=> (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__ar))) (=> (and (= __flatten_6@1 (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__ar) tid)) (state ExhaleHeap@2 Mask@26)) (and (=> (= (ControlFlow 0 75) (- 0 88)) (HasDirectPerm_17014_38909 Mask@26 diz demo__tmp)) (=> (HasDirectPerm_17014_38909 Mask@26 diz demo__tmp) (and (=> (= (ControlFlow 0 75) (- 0 87)) (>= (- tid 1) 0)) (=> (>= (- tid 1) 0) (and (=> (= (ControlFlow 0 75) (- 0 86)) (< (- tid 1) (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__tmp)))) (=> (< (- tid 1) (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__tmp))) (=> (and (= __flatten_8@1 (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__tmp) (- tid 1))) (state ExhaleHeap@2 Mask@26)) (and (=> (= (ControlFlow 0 75) (- 0 85)) (HasDirectPerm_17014_38909 Mask@26 diz demo__ar)) (=> (HasDirectPerm_17014_38909 Mask@26 diz demo__ar) (and (=> (= (ControlFlow 0 75) (- 0 84)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 75) (- 0 83)) (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__ar)))) (=> (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__ar))) (=> (and (= __flatten_9@1 (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__ar) tid)) (state ExhaleHeap@2 Mask@26)) (and (=> (= (ControlFlow 0 75) (- 0 82)) (HasDirectPerm_17022_3261 Mask@26 __flatten_8@1 Ref__Integer_value)) (=> (HasDirectPerm_17022_3261 Mask@26 __flatten_8@1 Ref__Integer_value) (and (=> (= (ControlFlow 0 75) (- 0 81)) (HasDirectPerm_17022_3261 Mask@26 __flatten_9@1 Ref__Integer_value)) (=> (HasDirectPerm_17022_3261 Mask@26 __flatten_9@1 Ref__Integer_value) (=> (and (= __flatten_7@1 (+ (select (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| ExhaleHeap@2) __flatten_8@1 Ref__Integer_value) (select (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| ExhaleHeap@2) __flatten_9@1 Ref__Integer_value))) (state ExhaleHeap@2 Mask@26)) (and (=> (= (ControlFlow 0 75) (- 0 80)) (= FullPerm (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@26) __flatten_6@1 Ref__Integer_value))) (=> (= FullPerm (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@26) __flatten_6@1 Ref__Integer_value)) (=> (and (= Heap@2 (PolymorphicMapType_30727 (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| ExhaleHeap@2) (|PolymorphicMapType_30727_16809_16810#PolymorphicMapType_30727| ExhaleHeap@2) (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) (store (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| ExhaleHeap@2) __flatten_6@1 Ref__Integer_value __flatten_7@1) (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| ExhaleHeap@2) (|PolymorphicMapType_30727_30787_100438#PolymorphicMapType_30727| ExhaleHeap@2))) (state Heap@2 Mask@26)) (and (=> (= (ControlFlow 0 75) (- 0 79)) (HasDirectPerm_17014_38909 Mask@26 diz demo__ar)) (=> (HasDirectPerm_17014_38909 Mask@26 diz demo__ar) (and (=> (= (ControlFlow 0 75) (- 0 78)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 75) (- 0 77)) (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@2) diz demo__ar)))) (=> (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@2) diz demo__ar))) (and (=> (= (ControlFlow 0 75) (- 0 76)) (HasDirectPerm_17022_3261 Mask@26 (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@2) diz demo__ar) tid) Ref__Integer_value)) (=> (HasDirectPerm_17022_3261 Mask@26 (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@2) diz demo__ar) tid) Ref__Integer_value) (and (=> (= (ControlFlow 0 75) 70) anon68_Then_correct) (=> (= (ControlFlow 0 75) 73) anon68_Else_correct))))))))))))))))))))))))))))))))))))))))))))
(let ((anon66_Else_correct  (and (=> (= (ControlFlow 0 93) (- 0 98)) (= (select (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| ExhaleHeap@2) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__tmp) (- tid 1)) Ref__Integer_value) (demo__bin ExhaleHeap@2 (- N@1 1) (- tid 1)))) (=> (= (select (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| ExhaleHeap@2) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__tmp) (- tid 1)) Ref__Integer_value) (demo__bin ExhaleHeap@2 (- N@1 1) (- tid 1))) (and (=> (= (ControlFlow 0 93) (- 0 97)) (HasDirectPerm_17014_38909 Mask@26 diz demo__ar)) (=> (HasDirectPerm_17014_38909 Mask@26 diz demo__ar) (and (=> (= (ControlFlow 0 93) (- 0 96)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 93) (- 0 95)) (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__ar)))) (=> (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__ar))) (and (=> (= (ControlFlow 0 93) (- 0 94)) (HasDirectPerm_17022_3261 Mask@26 (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__ar) tid) Ref__Integer_value)) (=> (HasDirectPerm_17022_3261 Mask@26 (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__ar) tid) Ref__Integer_value) (and (=> (= (ControlFlow 0 93) 66) anon67_Then_correct) (=> (= (ControlFlow 0 93) 75) anon67_Else_correct))))))))))))))
(let ((anon65_Then_correct  (=> (and (< 0 tid) (< tid N@1)) (and (=> (= (ControlFlow 0 99) (- 0 103)) (HasDirectPerm_17014_38909 Mask@26 diz demo__tmp)) (=> (HasDirectPerm_17014_38909 Mask@26 diz demo__tmp) (and (=> (= (ControlFlow 0 99) (- 0 102)) (>= (- tid 1) 0)) (=> (>= (- tid 1) 0) (and (=> (= (ControlFlow 0 99) (- 0 101)) (< (- tid 1) (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__tmp)))) (=> (< (- tid 1) (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__tmp))) (and (=> (= (ControlFlow 0 99) (- 0 100)) (HasDirectPerm_17022_3261 Mask@26 (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__tmp) (- tid 1)) Ref__Integer_value)) (=> (HasDirectPerm_17022_3261 Mask@26 (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__tmp) (- tid 1)) Ref__Integer_value) (and (=> (= (ControlFlow 0 99) 62) anon66_Then_correct) (=> (= (ControlFlow 0 99) 93) anon66_Else_correct)))))))))))))
(let ((anon65_Else_correct  (=> (not (and (< 0 tid) (< tid N@1))) (=> (and (= Heap@3 ExhaleHeap@2) (= (ControlFlow 0 60) 56)) anon36_correct))))
(let ((anon28_correct  (=> (and (and (state ExhaleHeap@2 Mask@26) (state ExhaleHeap@2 Mask@26)) (and (= N@1 (+ N@0 1)) (state ExhaleHeap@2 Mask@26))) (and (=> (= (ControlFlow 0 104) 99) anon65_Then_correct) (=> (= (ControlFlow 0 104) 60) anon65_Else_correct)))))
(let ((anon64_Else_correct  (=> (and (= (select (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| ExhaleHeap@2) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__tmp) (- tid 1)) Ref__Integer_value) (demo__bin ExhaleHeap@2 N@0 (- tid 1))) (= (ControlFlow 0 110) 104)) anon28_correct)))
(let ((anon63_Then_correct  (=> (and (and (< 0 tid) (<= tid N@0)) (state ExhaleHeap@2 Mask@26)) (and (=> (= (ControlFlow 0 111) (- 0 115)) (HasDirectPerm_17014_38909 Mask@26 diz demo__tmp)) (=> (HasDirectPerm_17014_38909 Mask@26 diz demo__tmp) (and (=> (= (ControlFlow 0 111) (- 0 114)) (>= (- tid 1) 0)) (=> (>= (- tid 1) 0) (and (=> (= (ControlFlow 0 111) (- 0 113)) (< (- tid 1) (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__tmp)))) (=> (< (- tid 1) (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__tmp))) (and (=> (= (ControlFlow 0 111) (- 0 112)) (HasDirectPerm_17022_3261 Mask@26 (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__tmp) (- tid 1)) Ref__Integer_value)) (=> (HasDirectPerm_17022_3261 Mask@26 (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__tmp) (- tid 1)) Ref__Integer_value) (and (=> (= (ControlFlow 0 111) 107) anon64_Then_correct) (=> (= (ControlFlow 0 111) 110) anon64_Else_correct)))))))))))))
(let ((anon63_Else_correct  (=> (and (not (and (< 0 tid) (<= tid N@0))) (= (ControlFlow 0 105) 104)) anon28_correct)))
(let ((anon24_correct  (=> (and (state ExhaleHeap@2 Mask@26) (state ExhaleHeap@2 Mask@26)) (and (=> (= (ControlFlow 0 116) 111) anon63_Then_correct) (=> (= (ControlFlow 0 116) 105) anon63_Else_correct)))))
(let ((anon62_Else_correct  (=> (>= 0 tid) (=> (and (= Mask@26 Mask@24) (= (ControlFlow 0 121) 116)) anon24_correct))))
(let ((anon62_Then_correct  (=> (> tid 0) (and (=> (= (ControlFlow 0 117) (- 0 120)) (HasDirectPerm_17014_38909 Mask@24 diz demo__tmp)) (=> (HasDirectPerm_17014_38909 Mask@24 diz demo__tmp) (and (=> (= (ControlFlow 0 117) (- 0 119)) (>= (- tid 1) 0)) (=> (>= (- tid 1) 0) (and (=> (= (ControlFlow 0 117) (- 0 118)) (< (- tid 1) (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__tmp)))) (=> (< (- tid 1) (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__tmp))) (=> (not (= (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__tmp) (- tid 1)) null)) (=> (and (and (= Mask@25 (PolymorphicMapType_30748 (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@24) (store (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@24) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__tmp) (- tid 1)) Ref__Integer_value (+ (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@24) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@2) diz demo__tmp) (- tid 1)) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@24) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@24) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@24) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@24))) (state ExhaleHeap@2 Mask@25)) (and (= Mask@26 Mask@25) (= (ControlFlow 0 117) 116))) anon24_correct)))))))))))
(let ((anon22_correct  (=> (IdenticalOnKnownLocations Heap@1 ExhaleHeap@2 Mask@24) (=> (and (state ExhaleHeap@2 Mask@24) (> gsize 1)) (=> (and (and (and (state ExhaleHeap@2 Mask@24) (state ExhaleHeap@2 Mask@24)) (and (< 0 N@0) (state ExhaleHeap@2 Mask@24))) (and (and (state ExhaleHeap@2 Mask@24) (< N@0 gsize)) (and (state ExhaleHeap@2 Mask@24) (state ExhaleHeap@2 Mask@24)))) (and (=> (= (ControlFlow 0 122) 117) anon62_Then_correct) (=> (= (ControlFlow 0 122) 121) anon62_Else_correct)))))))
(let ((anon21_correct  (=> (= Mask@23 (PolymorphicMapType_30748 (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@15) (store (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@15) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@1) diz demo__tmp) tid) Ref__Integer_value (- (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@15) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@1) diz demo__tmp) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@15) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@15) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@15) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@15))) (=> (and (= Mask@24 Mask@23) (= (ControlFlow 0 124) 122)) anon22_correct))))
(let ((anon61_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 127) 124)) anon21_correct)))
(let ((anon61_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 125) (- 0 126)) (<= FullPerm (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@15) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@1) diz demo__tmp) tid) Ref__Integer_value))) (=> (<= FullPerm (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@15) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@1) diz demo__tmp) tid) Ref__Integer_value)) (=> (= (ControlFlow 0 125) 124) anon21_correct))))))
(let ((anon60_Then_correct  (=> (< tid (- gsize 1)) (and (=> (= (ControlFlow 0 128) (- 0 131)) (HasDirectPerm_17014_38909 Mask@15 diz demo__tmp)) (=> (HasDirectPerm_17014_38909 Mask@15 diz demo__tmp) (and (=> (= (ControlFlow 0 128) (- 0 130)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 128) (- 0 129)) (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@1) diz demo__tmp)))) (=> (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@1) diz demo__tmp))) (and (=> (= (ControlFlow 0 128) 125) anon61_Then_correct) (=> (= (ControlFlow 0 128) 127) anon61_Else_correct)))))))))))
(let ((anon60_Else_correct  (=> (<= (- gsize 1) tid) (=> (and (= Mask@24 Mask@15) (= (ControlFlow 0 123) 122)) anon22_correct))))
(let ((anon18_correct  (=> (state Heap@1 Mask@15) (and (=> (= (ControlFlow 0 132) 128) anon60_Then_correct) (=> (= (ControlFlow 0 132) 123) anon60_Else_correct)))))
(let ((anon59_Else_correct  (and (=> (= (ControlFlow 0 138) (- 0 139)) (= (select (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| Heap@1) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@1) diz demo__tmp) tid) Ref__Integer_value) (demo__bin Heap@1 N@0 tid))) (=> (= (select (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| Heap@1) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@1) diz demo__tmp) tid) Ref__Integer_value) (demo__bin Heap@1 N@0 tid)) (=> (= (ControlFlow 0 138) 132) anon18_correct)))))
(let ((anon58_Then_correct  (=> (and (<= 0 tid) (< tid N@0)) (and (=> (= (ControlFlow 0 140) (- 0 144)) (HasDirectPerm_17014_38909 Mask@15 diz demo__tmp)) (=> (HasDirectPerm_17014_38909 Mask@15 diz demo__tmp) (and (=> (= (ControlFlow 0 140) (- 0 143)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 140) (- 0 142)) (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@1) diz demo__tmp)))) (=> (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@1) diz demo__tmp))) (and (=> (= (ControlFlow 0 140) (- 0 141)) (HasDirectPerm_17022_3261 Mask@15 (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@1) diz demo__tmp) tid) Ref__Integer_value)) (=> (HasDirectPerm_17022_3261 Mask@15 (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@1) diz demo__tmp) tid) Ref__Integer_value) (and (=> (= (ControlFlow 0 140) 135) anon59_Then_correct) (=> (= (ControlFlow 0 140) 138) anon59_Else_correct)))))))))))))
(let ((anon58_Else_correct  (=> (and (not (and (<= 0 tid) (< tid N@0))) (= (ControlFlow 0 133) 132)) anon18_correct)))
(let ((anon57_Then_correct  (=> (and (state ExhaleHeap@0 ZeroMask) (<= 0 tid)) (=> (and (and (< tid tcount) (= tid lid)) (and (= tcount gsize) (= gid 0))) (=> (and (and (and (> wildcard@8 NoPerm) (not (= diz null))) (and (= Mask@12 (PolymorphicMapType_30748 (store (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| ZeroMask) diz demo__ar (+ (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| ZeroMask) diz demo__ar) wildcard@8)) (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| ZeroMask) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| ZeroMask) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| ZeroMask) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| ZeroMask) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| ZeroMask))) (state ExhaleHeap@0 Mask@12))) (and (and (= (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar)) gsize) (> wildcard@9 NoPerm)) (and (not (= diz null)) (= Mask@13 (PolymorphicMapType_30748 (store (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@12) diz demo__tmp (+ (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@12) diz demo__tmp) wildcard@9)) (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@12) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@12) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@12) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@12) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@12)))))) (=> (and (and (and (and (state ExhaleHeap@0 Mask@13) (= (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__tmp)) gsize)) (and (> gsize 1) (< 0 N@0))) (and (and (< N@0 gsize) (not (= (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar) tid) null))) (and (= Mask@14 (PolymorphicMapType_30748 (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@13) (store (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@13) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@13) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@13) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@13) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@13) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@13))) (state ExhaleHeap@0 Mask@14)))) (and (and (and (not (= (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__tmp) tid) null)) (= Mask@15 (PolymorphicMapType_30748 (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@14) (store (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@14) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__tmp) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@14) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__tmp) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@14) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@14) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@14) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@14)))) (and (state ExhaleHeap@0 Mask@15) (state ExhaleHeap@0 Mask@15))) (and (and (= (select (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| ExhaleHeap@0) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar) tid) Ref__Integer_value) (ite (< tid N@0) (demo__bin ExhaleHeap@0 N@0 tid) 1)) (state ExhaleHeap@0 Mask@15)) (and (< N@0 (- gsize 1)) (state ExhaleHeap@0 Mask@15))))) (and (=> (= (ControlFlow 0 145) (- 0 156)) (HasDirectPerm_17014_38909 Mask@15 diz demo__tmp)) (=> (HasDirectPerm_17014_38909 Mask@15 diz demo__tmp) (and (=> (= (ControlFlow 0 145) (- 0 155)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 145) (- 0 154)) (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__tmp)))) (=> (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__tmp))) (=> (and (= __flatten_3@1 (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__tmp) tid)) (state ExhaleHeap@0 Mask@15)) (and (=> (= (ControlFlow 0 145) (- 0 153)) (HasDirectPerm_17014_38909 Mask@15 diz demo__ar)) (=> (HasDirectPerm_17014_38909 Mask@15 diz demo__ar) (and (=> (= (ControlFlow 0 145) (- 0 152)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 145) (- 0 151)) (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar)))) (=> (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar))) (=> (and (= __flatten_5@1 (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar) tid)) (state ExhaleHeap@0 Mask@15)) (and (=> (= (ControlFlow 0 145) (- 0 150)) (HasDirectPerm_17022_3261 Mask@15 __flatten_5@1 Ref__Integer_value)) (=> (HasDirectPerm_17022_3261 Mask@15 __flatten_5@1 Ref__Integer_value) (=> (and (= __flatten_4@1 (select (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| ExhaleHeap@0) __flatten_5@1 Ref__Integer_value)) (state ExhaleHeap@0 Mask@15)) (and (=> (= (ControlFlow 0 145) (- 0 149)) (= FullPerm (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@15) __flatten_3@1 Ref__Integer_value))) (=> (= FullPerm (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@15) __flatten_3@1 Ref__Integer_value)) (=> (and (= Heap@1 (PolymorphicMapType_30727 (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| ExhaleHeap@0) (|PolymorphicMapType_30727_16809_16810#PolymorphicMapType_30727| ExhaleHeap@0) (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) (store (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| ExhaleHeap@0) __flatten_3@1 Ref__Integer_value __flatten_4@1) (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| ExhaleHeap@0) (|PolymorphicMapType_30727_30787_100438#PolymorphicMapType_30727| ExhaleHeap@0))) (state Heap@1 Mask@15)) (and (=> (= (ControlFlow 0 145) (- 0 148)) (> gsize 1)) (=> (> gsize 1) (=> (state Heap@1 Mask@15) (and (=> (= (ControlFlow 0 145) (- 0 147)) (< 0 N@0)) (=> (< 0 N@0) (=> (state Heap@1 Mask@15) (and (=> (= (ControlFlow 0 145) (- 0 146)) (< N@0 gsize)) (=> (< N@0 gsize) (=> (state Heap@1 Mask@15) (and (=> (= (ControlFlow 0 145) 140) anon58_Then_correct) (=> (= (ControlFlow 0 145) 133) anon58_Else_correct)))))))))))))))))))))))))))))))))))))
(let ((anon49_correct  (=> (and (= Mask@22 (PolymorphicMapType_30748 (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@21) (store (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@21) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar) tid) Ref__Integer_value (- (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@21) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@21) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@21) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@21) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@21))) (= (ControlFlow 0 2) (- 0 1))) (= (select (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| ExhaleHeap@0) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar) tid) Ref__Integer_value) (demo__bin ExhaleHeap@0 (- gsize 1) tid)))))
(let ((anon74_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 5) 2)) anon49_correct)))
(let ((anon74_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (<= FullPerm (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@21) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar) tid) Ref__Integer_value))) (=> (<= FullPerm (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@21) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar) tid) Ref__Integer_value)) (=> (= (ControlFlow 0 3) 2) anon49_correct))))))
(let ((anon57_Else_correct  (=> (and (not (< N@0 (- gsize 1))) (state ExhaleHeap@0 Mask@7)) (=> (and (and (<= 0 tid) (< tid tcount)) (and (= tid lid) (= tcount gsize))) (=> (and (and (and (= gid 0) (> wildcard@10 NoPerm)) (and (not (= diz null)) (= Mask@16 (PolymorphicMapType_30748 (store (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@7) diz demo__ar (+ (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@7) diz demo__ar) wildcard@10)) (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@7) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@7) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@7) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@7) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@7))))) (and (and (state ExhaleHeap@0 Mask@16) (= (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar)) gsize)) (and (> wildcard@11 NoPerm) (not (= diz null))))) (=> (and (and (and (and (= Mask@17 (PolymorphicMapType_30748 (store (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@16) diz demo__tmp (+ (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@16) diz demo__tmp) wildcard@11)) (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@16) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@16) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@16) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@16) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@16))) (state ExhaleHeap@0 Mask@17)) (and (= (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__tmp)) gsize) (> gsize 1))) (and (and (< 0 N@0) (< N@0 gsize)) (and (not (= (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar) tid) null)) (= Mask@18 (PolymorphicMapType_30748 (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@17) (store (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@17) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@17) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@17) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@17) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@17) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@17)))))) (and (and (and (state ExhaleHeap@0 Mask@18) (not (= (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__tmp) tid) null))) (and (= Mask@19 (PolymorphicMapType_30748 (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@18) (store (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@18) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__tmp) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@18) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__tmp) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@18) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@18) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@18) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@18))) (state ExhaleHeap@0 Mask@19))) (and (and (state ExhaleHeap@0 Mask@19) (= (select (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| ExhaleHeap@0) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar) tid) Ref__Integer_value) (ite (< tid N@0) (demo__bin ExhaleHeap@0 N@0 tid) 1))) (and (state ExhaleHeap@0 Mask@19) (state ExhaleHeap@0 Mask@19))))) (and (=> (= (ControlFlow 0 6) (- 0 18)) (<= 0 tid)) (=> (<= 0 tid) (and (=> (= (ControlFlow 0 6) (- 0 17)) (< tid tcount)) (=> (< tid tcount) (and (=> (= (ControlFlow 0 6) (- 0 16)) (= tid lid)) (=> (= tid lid) (and (=> (= (ControlFlow 0 6) (- 0 15)) (= tcount gsize)) (=> (= tcount gsize) (and (=> (= (ControlFlow 0 6) (- 0 14)) (= gid 0)) (=> (= gid 0) (and (=> (= (ControlFlow 0 6) (- 0 13)) (> (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@19) diz demo__ar) NoPerm)) (=> (> (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@19) diz demo__ar) NoPerm) (=> (> wildcard@12 NoPerm) (=> (and (< wildcard@12 (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@19) diz demo__ar)) (= Mask@20 (PolymorphicMapType_30748 (store (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@19) diz demo__ar (- (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@19) diz demo__ar) wildcard@12)) (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@19) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@19) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@19) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@19) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@19)))) (and (=> (= (ControlFlow 0 6) (- 0 12)) (= (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar)) gsize)) (=> (= (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar)) gsize) (and (=> (= (ControlFlow 0 6) (- 0 11)) (> (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@20) diz demo__tmp) NoPerm)) (=> (> (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@20) diz demo__tmp) NoPerm) (=> (> wildcard@13 NoPerm) (=> (and (< wildcard@13 (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@20) diz demo__tmp)) (= Mask@21 (PolymorphicMapType_30748 (store (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@20) diz demo__tmp (- (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@20) diz demo__tmp) wildcard@13)) (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@20) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@20) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@20) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@20) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@20)))) (and (=> (= (ControlFlow 0 6) (- 0 10)) (= (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__tmp)) gsize)) (=> (= (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__tmp)) gsize) (and (=> (= (ControlFlow 0 6) (- 0 9)) (|Seq#Equal_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar) (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@23) diz demo__ar))) (=> (|Seq#Equal_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__ar) (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@23) diz demo__ar)) (and (=> (= (ControlFlow 0 6) (- 0 8)) (|Seq#Equal_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__tmp) (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@23) diz demo__tmp))) (=> (|Seq#Equal_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| ExhaleHeap@0) diz demo__tmp) (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@23) diz demo__tmp)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (> gsize 1)) (=> (> gsize 1) (and (=> (= (ControlFlow 0 6) 3) anon74_Then_correct) (=> (= (ControlFlow 0 6) 5) anon74_Else_correct))))))))))))))))))))))))))))))))))))
(let ((anon8_correct  (=> (= Mask@7 (PolymorphicMapType_30748 (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@6) (store (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@6) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@0) diz demo__tmp) tid) Ref__Integer_value (- (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@6) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@0) diz demo__tmp) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@6) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@6) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@6) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@6))) (and (=> (= (ControlFlow 0 177) (- 0 178)) (= (select (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| Heap@0) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@0) diz demo__ar) tid) Ref__Integer_value) (ite (< tid 1) (demo__bin Heap@0 1 tid) 1))) (=> (= (select (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| Heap@0) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@0) diz demo__ar) tid) Ref__Integer_value) (ite (< tid 1) (demo__bin Heap@0 1 tid) 1)) (=> (and (IdenticalOnKnownLocations Heap@0 ExhaleHeap@0 Mask@7) (select (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| ExhaleHeap@0) __flatten_9@0 $allocated)) (=> (and (and (select (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| ExhaleHeap@0) __flatten_8@0 $allocated) (select (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| ExhaleHeap@0) __flatten_6@0 $allocated)) (and (select (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| ExhaleHeap@0) __flatten_5@0 $allocated) (select (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| ExhaleHeap@0) __flatten_3@0 $allocated))) (and (and (=> (= (ControlFlow 0 177) 164) anon54_Then_correct) (=> (= (ControlFlow 0 177) 145) anon57_Then_correct)) (=> (= (ControlFlow 0 177) 6) anon57_Else_correct)))))))))
(let ((anon53_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 181) 177)) anon8_correct)))
(let ((anon53_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 179) (- 0 180)) (<= FullPerm (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@6) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@0) diz demo__tmp) tid) Ref__Integer_value))) (=> (<= FullPerm (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@6) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@0) diz demo__tmp) tid) Ref__Integer_value)) (=> (= (ControlFlow 0 179) 177) anon8_correct))))))
(let ((anon6_correct  (=> (= Mask@6 (PolymorphicMapType_30748 (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@5) (store (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@5) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@0) diz demo__ar) tid) Ref__Integer_value (- (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@5) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@0) diz demo__ar) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@5) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@5) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@5) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@5))) (and (=> (= (ControlFlow 0 182) 179) anon53_Then_correct) (=> (= (ControlFlow 0 182) 181) anon53_Else_correct)))))
(let ((anon52_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 185) 182)) anon6_correct)))
(let ((anon52_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 183) (- 0 184)) (<= FullPerm (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@5) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@0) diz demo__ar) tid) Ref__Integer_value))) (=> (<= FullPerm (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@5) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@0) diz demo__ar) tid) Ref__Integer_value)) (=> (= (ControlFlow 0 183) 182) anon6_correct))))))
(let ((anon50_Else_correct  (=> (and (and (and (select (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| Heap@@23) __flatten_1 $allocated) (select (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| Heap@@23) __flatten_3 $allocated)) (and (select (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| Heap@@23) __flatten_5 $allocated) (select (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| Heap@@23) __flatten_6 $allocated))) (and (and (select (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| Heap@@23) __flatten_8 $allocated) (select (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| Heap@@23) __flatten_9 $allocated)) (and (state Heap@@23 Mask@3) (state Heap@@23 Mask@3)))) (and (=> (= (ControlFlow 0 186) (- 0 202)) (HasDirectPerm_17014_38909 Mask@3 diz demo__ar)) (=> (HasDirectPerm_17014_38909 Mask@3 diz demo__ar) (and (=> (= (ControlFlow 0 186) (- 0 201)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 186) (- 0 200)) (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@23) diz demo__ar)))) (=> (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@23) diz demo__ar))) (=> (= __flatten_1@0 (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@23) diz demo__ar) tid)) (=> (and (state Heap@@23 Mask@3) (state Heap@@23 Mask@3)) (and (=> (= (ControlFlow 0 186) (- 0 199)) (= FullPerm (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@3) __flatten_1@0 Ref__Integer_value))) (=> (= FullPerm (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@3) __flatten_1@0 Ref__Integer_value)) (=> (and (= Heap@0 (PolymorphicMapType_30727 (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| Heap@@23) (|PolymorphicMapType_30727_16809_16810#PolymorphicMapType_30727| Heap@@23) (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@23) (store (|PolymorphicMapType_30727_17022_3261#PolymorphicMapType_30727| Heap@@23) __flatten_1@0 Ref__Integer_value 1) (|PolymorphicMapType_30727_17014_100615#PolymorphicMapType_30727| Heap@@23) (|PolymorphicMapType_30727_30787_100438#PolymorphicMapType_30727| Heap@@23))) (state Heap@0 Mask@3)) (and (=> (= (ControlFlow 0 186) (- 0 198)) (<= 0 tid)) (=> (<= 0 tid) (and (=> (= (ControlFlow 0 186) (- 0 197)) (< tid tcount)) (=> (< tid tcount) (and (=> (= (ControlFlow 0 186) (- 0 196)) (= tid lid)) (=> (= tid lid) (and (=> (= (ControlFlow 0 186) (- 0 195)) (= tcount gsize)) (=> (= tcount gsize) (and (=> (= (ControlFlow 0 186) (- 0 194)) (= gid 0)) (=> (= gid 0) (and (=> (= (ControlFlow 0 186) (- 0 193)) (> (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@3) diz demo__ar) NoPerm)) (=> (> (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@3) diz demo__ar) NoPerm) (=> (> wildcard@4 NoPerm) (=> (and (< wildcard@4 (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@3) diz demo__ar)) (= Mask@4 (PolymorphicMapType_30748 (store (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@3) diz demo__ar (- (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@3) diz demo__ar) wildcard@4)) (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@3) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@3) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@3) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@3) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@3)))) (and (=> (= (ControlFlow 0 186) (- 0 192)) (= (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@0) diz demo__ar)) gsize)) (=> (= (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@0) diz demo__ar)) gsize) (and (=> (= (ControlFlow 0 186) (- 0 191)) (> (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@4) diz demo__tmp) NoPerm)) (=> (> (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@4) diz demo__tmp) NoPerm) (=> (> wildcard@5 NoPerm) (=> (and (< wildcard@5 (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@4) diz demo__tmp)) (= Mask@5 (PolymorphicMapType_30748 (store (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@4) diz demo__tmp (- (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@4) diz demo__tmp) wildcard@5)) (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@4) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@4) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@4) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@4) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@4)))) (and (=> (= (ControlFlow 0 186) (- 0 190)) (= (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@0) diz demo__tmp)) gsize)) (=> (= (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@0) diz demo__tmp)) gsize) (and (=> (= (ControlFlow 0 186) (- 0 189)) (> gsize 1)) (=> (> gsize 1) (and (=> (= (ControlFlow 0 186) (- 0 188)) (< 0 1)) (=> (< 0 1) (and (=> (= (ControlFlow 0 186) (- 0 187)) (< 1 gsize)) (=> (< 1 gsize) (and (=> (= (ControlFlow 0 186) 183) anon52_Then_correct) (=> (= (ControlFlow 0 186) 185) anon52_Else_correct))))))))))))))))))))))))))))))))))))))))))))
(let ((anon0_correct  (=> (state Heap@@23 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_30727_16806_53#PolymorphicMapType_30727| Heap@@23) diz $allocated) (not (= diz null))) (and (state Heap@@23 ZeroMask) (>= current_thread_id 0))) (=> (and (and (and (and (state Heap@@23 ZeroMask) (<= 0 tid)) (and (state Heap@@23 ZeroMask) (< tid tcount))) (and (and (state Heap@@23 ZeroMask) (= tid lid)) (and (state Heap@@23 ZeroMask) (= tcount gsize)))) (and (and (and (state Heap@@23 ZeroMask) (= gid 0)) (and (state Heap@@23 ZeroMask) (> wildcard@0 NoPerm))) (and (and (not (= diz null)) (= Mask@0 (PolymorphicMapType_30748 (store (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| ZeroMask) diz demo__ar (+ (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| ZeroMask) diz demo__ar) wildcard@0)) (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| ZeroMask) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| ZeroMask) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| ZeroMask) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| ZeroMask) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| ZeroMask)))) (and (state Heap@@23 Mask@0) (state Heap@@23 Mask@0))))) (and (=> (= (ControlFlow 0 222) (- 0 230)) (HasDirectPerm_17014_38909 Mask@0 diz demo__ar)) (=> (HasDirectPerm_17014_38909 Mask@0 diz demo__ar) (=> (= (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@23) diz demo__ar)) gsize) (=> (and (state Heap@@23 Mask@0) (> wildcard@1 NoPerm)) (=> (and (and (not (= diz null)) (= Mask@1 (PolymorphicMapType_30748 (store (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@0) diz demo__tmp (+ (select (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@0) diz demo__tmp) wildcard@1)) (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@0) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@0) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@0) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@0) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@0)))) (and (state Heap@@23 Mask@1) (state Heap@@23 Mask@1))) (and (=> (= (ControlFlow 0 222) (- 0 229)) (HasDirectPerm_17014_38909 Mask@1 diz demo__tmp)) (=> (HasDirectPerm_17014_38909 Mask@1 diz demo__tmp) (=> (and (and (= (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@23) diz demo__tmp)) gsize) (state Heap@@23 Mask@1)) (and (> gsize 1) (state Heap@@23 Mask@1))) (and (=> (= (ControlFlow 0 222) (- 0 228)) (HasDirectPerm_17014_38909 Mask@1 diz demo__ar)) (=> (HasDirectPerm_17014_38909 Mask@1 diz demo__ar) (and (=> (= (ControlFlow 0 222) (- 0 227)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 222) (- 0 226)) (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@23) diz demo__ar)))) (=> (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@23) diz demo__ar))) (=> (and (and (not (= (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@23) diz demo__ar) tid) null)) (= Mask@2 (PolymorphicMapType_30748 (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@1) (store (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@1) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@23) diz demo__ar) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@1) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@23) diz demo__ar) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@1) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@1) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@1) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@1)))) (and (state Heap@@23 Mask@2) (state Heap@@23 Mask@2))) (and (=> (= (ControlFlow 0 222) (- 0 225)) (HasDirectPerm_17014_38909 Mask@2 diz demo__tmp)) (=> (HasDirectPerm_17014_38909 Mask@2 diz demo__tmp) (and (=> (= (ControlFlow 0 222) (- 0 224)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 222) (- 0 223)) (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@23) diz demo__tmp)))) (=> (< tid (|Seq#Length_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@23) diz demo__tmp))) (=> (and (and (not (= (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@23) diz demo__tmp) tid) null)) (= Mask@3 (PolymorphicMapType_30748 (|PolymorphicMapType_30748_17014_38757#PolymorphicMapType_30748| Mask@2) (store (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@2) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@23) diz demo__tmp) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_30748_17022_3261#PolymorphicMapType_30748| Mask@2) (|Seq#Index_17015| (select (|PolymorphicMapType_30727_17014_38976#PolymorphicMapType_30727| Heap@@23) diz demo__tmp) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_30748_17014_53#PolymorphicMapType_30748| Mask@2) (|PolymorphicMapType_30748_17014_30801#PolymorphicMapType_30748| Mask@2) (|PolymorphicMapType_30748_17014_100438#PolymorphicMapType_30748| Mask@2) (|PolymorphicMapType_30748_17014_105265#PolymorphicMapType_30748| Mask@2)))) (and (state Heap@@23 Mask@3) (state Heap@@23 Mask@3))) (and (=> (= (ControlFlow 0 222) 208) anon50_Then_correct) (=> (= (ControlFlow 0 222) 186) anon50_Else_correct))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 231) 222)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
