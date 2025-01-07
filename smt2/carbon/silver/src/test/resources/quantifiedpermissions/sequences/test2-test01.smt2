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
(declare-sort T@Field_16068_53 0)
(declare-sort T@Field_16081_16082 0)
(declare-sort T@Field_22109_3274 0)
(declare-sort T@Field_10738_45474 0)
(declare-sort T@Field_10738_45341 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_16029 0)) (((PolymorphicMapType_16029 (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| (Array T@Ref T@Field_22109_3274 Real)) (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| (Array T@Ref T@Field_16068_53 Real)) (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| (Array T@Ref T@Field_16081_16082 Real)) (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| (Array T@Ref T@Field_10738_45341 Real)) (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| (Array T@Ref T@Field_10738_45474 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_16557 0)) (((PolymorphicMapType_16557 (|PolymorphicMapType_16557_16068_53#PolymorphicMapType_16557| (Array T@Ref T@Field_16068_53 Bool)) (|PolymorphicMapType_16557_16068_16082#PolymorphicMapType_16557| (Array T@Ref T@Field_16081_16082 Bool)) (|PolymorphicMapType_16557_16068_3274#PolymorphicMapType_16557| (Array T@Ref T@Field_22109_3274 Bool)) (|PolymorphicMapType_16557_16068_45341#PolymorphicMapType_16557| (Array T@Ref T@Field_10738_45341 Bool)) (|PolymorphicMapType_16557_16068_46652#PolymorphicMapType_16557| (Array T@Ref T@Field_10738_45474 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_16008 0)) (((PolymorphicMapType_16008 (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| (Array T@Ref T@Field_16068_53 Bool)) (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| (Array T@Ref T@Field_16081_16082 T@Ref)) (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| (Array T@Ref T@Field_22109_3274 Int)) (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| (Array T@Ref T@Field_10738_45474 T@PolymorphicMapType_16557)) (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| (Array T@Ref T@Field_10738_45341 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_16068_53)
(declare-fun f_7 () T@Field_22109_3274)
(declare-sort T@Seq_22154 0)
(declare-fun |Seq#Length_10744| (T@Seq_22154) Int)
(declare-fun |Seq#Drop_10744| (T@Seq_22154 Int) T@Seq_22154)
(declare-sort T@Seq_3152 0)
(declare-fun |Seq#Length_3152| (T@Seq_3152) Int)
(declare-fun |Seq#Drop_3152| (T@Seq_3152 Int) T@Seq_3152)
(declare-fun succHeap (T@PolymorphicMapType_16008 T@PolymorphicMapType_16008) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_16008 T@PolymorphicMapType_16008) Bool)
(declare-fun state (T@PolymorphicMapType_16008 T@PolymorphicMapType_16029) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_16029) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_16557)
(declare-fun |Seq#Index_10744| (T@Seq_22154 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3152| (T@Seq_3152 Int) Int)
(declare-fun |Seq#Empty_10744| () T@Seq_22154)
(declare-fun |Seq#Empty_3152| () T@Seq_3152)
(declare-fun |Seq#Update_10744| (T@Seq_22154 Int T@Ref) T@Seq_22154)
(declare-fun |Seq#Update_3152| (T@Seq_3152 Int Int) T@Seq_3152)
(declare-fun |Seq#Take_10744| (T@Seq_22154 Int) T@Seq_22154)
(declare-fun |Seq#Take_3152| (T@Seq_3152 Int) T@Seq_3152)
(declare-fun |Seq#Contains_3152| (T@Seq_3152 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3152)
(declare-fun |Seq#Contains_10798| (T@Seq_22154 T@Ref) Bool)
(declare-fun |Seq#Skolem_10798| (T@Seq_22154 T@Ref) Int)
(declare-fun |Seq#Skolem_3152| (T@Seq_3152 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_16008 T@PolymorphicMapType_16008 T@PolymorphicMapType_16029) Bool)
(declare-fun IsPredicateField_10738_45432 (T@Field_10738_45341) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_10738 (T@Field_10738_45341) T@Field_10738_45474)
(declare-fun HasDirectPerm_10738_45405 (T@PolymorphicMapType_16029 T@Ref T@Field_10738_45341) Bool)
(declare-fun IsWandField_10738_47179 (T@Field_10738_45341) Bool)
(declare-fun WandMaskField_10738 (T@Field_10738_45341) T@Field_10738_45474)
(declare-fun |Seq#Singleton_10744| (T@Ref) T@Seq_22154)
(declare-fun |Seq#Singleton_3152| (Int) T@Seq_3152)
(declare-fun |Seq#Append_22154| (T@Seq_22154 T@Seq_22154) T@Seq_22154)
(declare-fun |Seq#Append_3152| (T@Seq_3152 T@Seq_3152) T@Seq_3152)
(declare-fun dummyHeap () T@PolymorphicMapType_16008)
(declare-fun ZeroMask () T@PolymorphicMapType_16029)
(declare-fun InsidePredicate_16068_16068 (T@Field_10738_45341 T@FrameType T@Field_10738_45341 T@FrameType) Bool)
(declare-fun IsPredicateField_10738_3274 (T@Field_22109_3274) Bool)
(declare-fun IsWandField_10738_3274 (T@Field_22109_3274) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_10738_50725 (T@Field_10738_45474) Bool)
(declare-fun IsWandField_10738_50741 (T@Field_10738_45474) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_10738_16082 (T@Field_16081_16082) Bool)
(declare-fun IsWandField_10738_16082 (T@Field_16081_16082) Bool)
(declare-fun IsPredicateField_10738_53 (T@Field_16068_53) Bool)
(declare-fun IsWandField_10738_53 (T@Field_16068_53) Bool)
(declare-fun HasDirectPerm_10738_51179 (T@PolymorphicMapType_16029 T@Ref T@Field_10738_45474) Bool)
(declare-fun HasDirectPerm_10738_16082 (T@PolymorphicMapType_16029 T@Ref T@Field_16081_16082) Bool)
(declare-fun HasDirectPerm_10738_53 (T@PolymorphicMapType_16029 T@Ref T@Field_16068_53) Bool)
(declare-fun HasDirectPerm_10738_3274 (T@PolymorphicMapType_16029 T@Ref T@Field_22109_3274) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_16029 T@PolymorphicMapType_16029 T@PolymorphicMapType_16029) Bool)
(declare-fun |Seq#Equal_22154| (T@Seq_22154 T@Seq_22154) Bool)
(declare-fun |Seq#Equal_3152| (T@Seq_3152 T@Seq_3152) Bool)
(declare-fun |Seq#ContainsTrigger_10744| (T@Seq_22154 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3152| (T@Seq_3152 Int) Bool)
(declare-fun |Seq#SkolemDiff_22154| (T@Seq_22154 T@Seq_22154) Int)
(declare-fun |Seq#SkolemDiff_3152| (T@Seq_3152 T@Seq_3152) Int)
(assert (forall ((s T@Seq_22154) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_10744| s)) (= (|Seq#Length_10744| (|Seq#Drop_10744| s n)) (- (|Seq#Length_10744| s) n))) (=> (< (|Seq#Length_10744| s) n) (= (|Seq#Length_10744| (|Seq#Drop_10744| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_10744| (|Seq#Drop_10744| s n)) (|Seq#Length_10744| s))))
 :qid |stdinbpl.321:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_10744| (|Seq#Drop_10744| s n)))
 :pattern ( (|Seq#Length_10744| s) (|Seq#Drop_10744| s n))
)))
(assert (forall ((s@@0 T@Seq_3152) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3152| s@@0)) (= (|Seq#Length_3152| (|Seq#Drop_3152| s@@0 n@@0)) (- (|Seq#Length_3152| s@@0) n@@0))) (=> (< (|Seq#Length_3152| s@@0) n@@0) (= (|Seq#Length_3152| (|Seq#Drop_3152| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3152| (|Seq#Drop_3152| s@@0 n@@0)) (|Seq#Length_3152| s@@0))))
 :qid |stdinbpl.321:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3152| (|Seq#Drop_3152| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3152| s@@0) (|Seq#Drop_3152| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_16008) (Heap1 T@PolymorphicMapType_16008) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_16008) (Mask T@PolymorphicMapType_16029) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_16008) (Heap1@@0 T@PolymorphicMapType_16008) (Heap2 T@PolymorphicMapType_16008) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_10738_45474) ) (!  (not (select (|PolymorphicMapType_16557_16068_46652#PolymorphicMapType_16557| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16557_16068_46652#PolymorphicMapType_16557| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_10738_45341) ) (!  (not (select (|PolymorphicMapType_16557_16068_45341#PolymorphicMapType_16557| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16557_16068_45341#PolymorphicMapType_16557| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_22109_3274) ) (!  (not (select (|PolymorphicMapType_16557_16068_3274#PolymorphicMapType_16557| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16557_16068_3274#PolymorphicMapType_16557| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_16081_16082) ) (!  (not (select (|PolymorphicMapType_16557_16068_16082#PolymorphicMapType_16557| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16557_16068_16082#PolymorphicMapType_16557| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_16068_53) ) (!  (not (select (|PolymorphicMapType_16557_16068_53#PolymorphicMapType_16557| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16557_16068_53#PolymorphicMapType_16557| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_22154) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_10744| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_10744| (|Seq#Drop_10744| s@@1 n@@1) j) (|Seq#Index_10744| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.342:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_10744| (|Seq#Drop_10744| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3152) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3152| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3152| (|Seq#Drop_3152| s@@2 n@@2) j@@0) (|Seq#Index_3152| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.342:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3152| (|Seq#Drop_3152| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_10744| |Seq#Empty_10744|) 0))
(assert (= (|Seq#Length_3152| |Seq#Empty_3152|) 0))
(assert (forall ((s@@3 T@Seq_22154) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_10744| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_10744| (|Seq#Update_10744| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_10744| (|Seq#Update_10744| s@@3 i v) n@@3) (|Seq#Index_10744| s@@3 n@@3)))))
 :qid |stdinbpl.297:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_10744| (|Seq#Update_10744| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_10744| s@@3 n@@3) (|Seq#Update_10744| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3152) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3152| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3152| (|Seq#Update_3152| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3152| (|Seq#Update_3152| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3152| s@@4 n@@4)))))
 :qid |stdinbpl.297:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3152| (|Seq#Update_3152| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3152| s@@4 n@@4) (|Seq#Update_3152| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_22154) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_10744| s@@5)) (= (|Seq#Length_10744| (|Seq#Take_10744| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_10744| s@@5) n@@5) (= (|Seq#Length_10744| (|Seq#Take_10744| s@@5 n@@5)) (|Seq#Length_10744| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_10744| (|Seq#Take_10744| s@@5 n@@5)) 0)))
 :qid |stdinbpl.308:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_10744| (|Seq#Take_10744| s@@5 n@@5)))
 :pattern ( (|Seq#Take_10744| s@@5 n@@5) (|Seq#Length_10744| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3152) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3152| s@@6)) (= (|Seq#Length_3152| (|Seq#Take_3152| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3152| s@@6) n@@6) (= (|Seq#Length_3152| (|Seq#Take_3152| s@@6 n@@6)) (|Seq#Length_3152| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3152| (|Seq#Take_3152| s@@6 n@@6)) 0)))
 :qid |stdinbpl.308:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3152| (|Seq#Take_3152| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3152| s@@6 n@@6) (|Seq#Length_3152| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3152| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.582:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_22154) (x T@Ref) ) (!  (=> (|Seq#Contains_10798| s@@7 x) (and (and (<= 0 (|Seq#Skolem_10798| s@@7 x)) (< (|Seq#Skolem_10798| s@@7 x) (|Seq#Length_10744| s@@7))) (= (|Seq#Index_10744| s@@7 (|Seq#Skolem_10798| s@@7 x)) x)))
 :qid |stdinbpl.440:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_10798| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3152) (x@@0 Int) ) (!  (=> (|Seq#Contains_3152| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3152| s@@8 x@@0)) (< (|Seq#Skolem_3152| s@@8 x@@0) (|Seq#Length_3152| s@@8))) (= (|Seq#Index_3152| s@@8 (|Seq#Skolem_3152| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.440:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3152| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_22154) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_10744| s@@9 n@@7) s@@9))
 :qid |stdinbpl.424:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_10744| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3152) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3152| s@@10 n@@8) s@@10))
 :qid |stdinbpl.424:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3152| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.277:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.275:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_16008) (ExhaleHeap T@PolymorphicMapType_16008) (Mask@@0 T@PolymorphicMapType_16029) (pm_f_12 T@Field_10738_45341) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_10738_45405 Mask@@0 null pm_f_12) (IsPredicateField_10738_45432 pm_f_12)) (= (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@0) null (PredicateMaskField_10738 pm_f_12)) (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| ExhaleHeap) null (PredicateMaskField_10738 pm_f_12)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_10738_45432 pm_f_12) (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| ExhaleHeap) null (PredicateMaskField_10738 pm_f_12)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_16008) (ExhaleHeap@@0 T@PolymorphicMapType_16008) (Mask@@1 T@PolymorphicMapType_16029) (pm_f_12@@0 T@Field_10738_45341) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_10738_45405 Mask@@1 null pm_f_12@@0) (IsWandField_10738_47179 pm_f_12@@0)) (= (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@1) null (WandMaskField_10738 pm_f_12@@0)) (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| ExhaleHeap@@0) null (WandMaskField_10738 pm_f_12@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_10738_47179 pm_f_12@@0) (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| ExhaleHeap@@0) null (WandMaskField_10738 pm_f_12@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_10798| (|Seq#Singleton_10744| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.565:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_10798| (|Seq#Singleton_10744| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3152| (|Seq#Singleton_3152| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.565:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3152| (|Seq#Singleton_3152| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_22154) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_10744| s@@11))) (= (|Seq#Index_10744| (|Seq#Take_10744| s@@11 n@@9) j@@3) (|Seq#Index_10744| s@@11 j@@3)))
 :qid |stdinbpl.316:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_10744| (|Seq#Take_10744| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_10744| s@@11 j@@3) (|Seq#Take_10744| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3152) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3152| s@@12))) (= (|Seq#Index_3152| (|Seq#Take_3152| s@@12 n@@10) j@@4) (|Seq#Index_3152| s@@12 j@@4)))
 :qid |stdinbpl.316:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3152| (|Seq#Take_3152| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3152| s@@12 j@@4) (|Seq#Take_3152| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_22154) (t T@Seq_22154) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_10744| s@@13))) (< n@@11 (|Seq#Length_10744| (|Seq#Append_22154| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_10744| s@@13)) (|Seq#Length_10744| s@@13)) n@@11) (= (|Seq#Take_10744| (|Seq#Append_22154| s@@13 t) n@@11) (|Seq#Append_22154| s@@13 (|Seq#Take_10744| t (|Seq#Sub| n@@11 (|Seq#Length_10744| s@@13)))))))
 :qid |stdinbpl.401:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_10744| (|Seq#Append_22154| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3152) (t@@0 T@Seq_3152) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3152| s@@14))) (< n@@12 (|Seq#Length_3152| (|Seq#Append_3152| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3152| s@@14)) (|Seq#Length_3152| s@@14)) n@@12) (= (|Seq#Take_3152| (|Seq#Append_3152| s@@14 t@@0) n@@12) (|Seq#Append_3152| s@@14 (|Seq#Take_3152| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3152| s@@14)))))))
 :qid |stdinbpl.401:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3152| (|Seq#Append_3152| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_16008) (ExhaleHeap@@1 T@PolymorphicMapType_16008) (Mask@@2 T@PolymorphicMapType_16029) (o_13 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@2) o_13 $allocated) (select (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| ExhaleHeap@@1) o_13 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| ExhaleHeap@@1) o_13 $allocated))
)))
(assert (forall ((p T@Field_10738_45341) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_16068_16068 p v_1 p w))
 :qid |stdinbpl.219:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16068_16068 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_22154) (s1 T@Seq_22154) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_10744|)) (not (= s1 |Seq#Empty_10744|))) (<= (|Seq#Length_10744| s0) n@@13)) (< n@@13 (|Seq#Length_10744| (|Seq#Append_22154| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_10744| s0)) (|Seq#Length_10744| s0)) n@@13) (= (|Seq#Index_10744| (|Seq#Append_22154| s0 s1) n@@13) (|Seq#Index_10744| s1 (|Seq#Sub| n@@13 (|Seq#Length_10744| s0))))))
 :qid |stdinbpl.288:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_10744| (|Seq#Append_22154| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3152) (s1@@0 T@Seq_3152) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3152|)) (not (= s1@@0 |Seq#Empty_3152|))) (<= (|Seq#Length_3152| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3152| (|Seq#Append_3152| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3152| s0@@0)) (|Seq#Length_3152| s0@@0)) n@@14) (= (|Seq#Index_3152| (|Seq#Append_3152| s0@@0 s1@@0) n@@14) (|Seq#Index_3152| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3152| s0@@0))))))
 :qid |stdinbpl.288:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3152| (|Seq#Append_3152| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_10738_3274 f_7)))
(assert  (not (IsWandField_10738_3274 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_16008) (ExhaleHeap@@2 T@PolymorphicMapType_16008) (Mask@@3 T@PolymorphicMapType_16029) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_16029) (o_2@@4 T@Ref) (f_4@@4 T@Field_10738_45474) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_10738_50725 f_4@@4))) (not (IsWandField_10738_50741 f_4@@4))) (<= (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_16029) (o_2@@5 T@Ref) (f_4@@5 T@Field_10738_45341) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_10738_45432 f_4@@5))) (not (IsWandField_10738_47179 f_4@@5))) (<= (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_16029) (o_2@@6 T@Ref) (f_4@@6 T@Field_16081_16082) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_10738_16082 f_4@@6))) (not (IsWandField_10738_16082 f_4@@6))) (<= (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_16029) (o_2@@7 T@Ref) (f_4@@7 T@Field_16068_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_10738_53 f_4@@7))) (not (IsWandField_10738_53 f_4@@7))) (<= (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_16029) (o_2@@8 T@Ref) (f_4@@8 T@Field_22109_3274) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_10738_3274 f_4@@8))) (not (IsWandField_10738_3274 f_4@@8))) (<= (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_16029) (o_2@@9 T@Ref) (f_4@@9 T@Field_10738_45474) ) (! (= (HasDirectPerm_10738_51179 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10738_51179 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_16029) (o_2@@10 T@Ref) (f_4@@10 T@Field_10738_45341) ) (! (= (HasDirectPerm_10738_45405 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10738_45405 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_16029) (o_2@@11 T@Ref) (f_4@@11 T@Field_16081_16082) ) (! (= (HasDirectPerm_10738_16082 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10738_16082 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_16029) (o_2@@12 T@Ref) (f_4@@12 T@Field_16068_53) ) (! (= (HasDirectPerm_10738_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10738_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_16029) (o_2@@13 T@Ref) (f_4@@13 T@Field_22109_3274) ) (! (= (HasDirectPerm_10738_3274 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10738_3274 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_16008) (ExhaleHeap@@3 T@PolymorphicMapType_16008) (Mask@@14 T@PolymorphicMapType_16029) (pm_f_12@@1 T@Field_10738_45341) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_10738_45405 Mask@@14 null pm_f_12@@1) (IsPredicateField_10738_45432 pm_f_12@@1)) (and (and (and (and (forall ((o2_12 T@Ref) (f_18 T@Field_16068_53) ) (!  (=> (select (|PolymorphicMapType_16557_16068_53#PolymorphicMapType_16557| (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@4) null (PredicateMaskField_10738 pm_f_12@@1))) o2_12 f_18) (= (select (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@4) o2_12 f_18) (select (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| ExhaleHeap@@3) o2_12 f_18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| ExhaleHeap@@3) o2_12 f_18))
)) (forall ((o2_12@@0 T@Ref) (f_18@@0 T@Field_16081_16082) ) (!  (=> (select (|PolymorphicMapType_16557_16068_16082#PolymorphicMapType_16557| (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@4) null (PredicateMaskField_10738 pm_f_12@@1))) o2_12@@0 f_18@@0) (= (select (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@4) o2_12@@0 f_18@@0) (select (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| ExhaleHeap@@3) o2_12@@0 f_18@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| ExhaleHeap@@3) o2_12@@0 f_18@@0))
))) (forall ((o2_12@@1 T@Ref) (f_18@@1 T@Field_22109_3274) ) (!  (=> (select (|PolymorphicMapType_16557_16068_3274#PolymorphicMapType_16557| (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@4) null (PredicateMaskField_10738 pm_f_12@@1))) o2_12@@1 f_18@@1) (= (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@4) o2_12@@1 f_18@@1) (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| ExhaleHeap@@3) o2_12@@1 f_18@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| ExhaleHeap@@3) o2_12@@1 f_18@@1))
))) (forall ((o2_12@@2 T@Ref) (f_18@@2 T@Field_10738_45341) ) (!  (=> (select (|PolymorphicMapType_16557_16068_45341#PolymorphicMapType_16557| (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@4) null (PredicateMaskField_10738 pm_f_12@@1))) o2_12@@2 f_18@@2) (= (select (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| Heap@@4) o2_12@@2 f_18@@2) (select (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| ExhaleHeap@@3) o2_12@@2 f_18@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| ExhaleHeap@@3) o2_12@@2 f_18@@2))
))) (forall ((o2_12@@3 T@Ref) (f_18@@3 T@Field_10738_45474) ) (!  (=> (select (|PolymorphicMapType_16557_16068_46652#PolymorphicMapType_16557| (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@4) null (PredicateMaskField_10738 pm_f_12@@1))) o2_12@@3 f_18@@3) (= (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@4) o2_12@@3 f_18@@3) (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| ExhaleHeap@@3) o2_12@@3 f_18@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| ExhaleHeap@@3) o2_12@@3 f_18@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_10738_45432 pm_f_12@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_16008) (ExhaleHeap@@4 T@PolymorphicMapType_16008) (Mask@@15 T@PolymorphicMapType_16029) (pm_f_12@@2 T@Field_10738_45341) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_10738_45405 Mask@@15 null pm_f_12@@2) (IsWandField_10738_47179 pm_f_12@@2)) (and (and (and (and (forall ((o2_12@@4 T@Ref) (f_18@@4 T@Field_16068_53) ) (!  (=> (select (|PolymorphicMapType_16557_16068_53#PolymorphicMapType_16557| (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@5) null (WandMaskField_10738 pm_f_12@@2))) o2_12@@4 f_18@@4) (= (select (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@5) o2_12@@4 f_18@@4) (select (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| ExhaleHeap@@4) o2_12@@4 f_18@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| ExhaleHeap@@4) o2_12@@4 f_18@@4))
)) (forall ((o2_12@@5 T@Ref) (f_18@@5 T@Field_16081_16082) ) (!  (=> (select (|PolymorphicMapType_16557_16068_16082#PolymorphicMapType_16557| (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@5) null (WandMaskField_10738 pm_f_12@@2))) o2_12@@5 f_18@@5) (= (select (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@5) o2_12@@5 f_18@@5) (select (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| ExhaleHeap@@4) o2_12@@5 f_18@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| ExhaleHeap@@4) o2_12@@5 f_18@@5))
))) (forall ((o2_12@@6 T@Ref) (f_18@@6 T@Field_22109_3274) ) (!  (=> (select (|PolymorphicMapType_16557_16068_3274#PolymorphicMapType_16557| (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@5) null (WandMaskField_10738 pm_f_12@@2))) o2_12@@6 f_18@@6) (= (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@5) o2_12@@6 f_18@@6) (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| ExhaleHeap@@4) o2_12@@6 f_18@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| ExhaleHeap@@4) o2_12@@6 f_18@@6))
))) (forall ((o2_12@@7 T@Ref) (f_18@@7 T@Field_10738_45341) ) (!  (=> (select (|PolymorphicMapType_16557_16068_45341#PolymorphicMapType_16557| (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@5) null (WandMaskField_10738 pm_f_12@@2))) o2_12@@7 f_18@@7) (= (select (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| Heap@@5) o2_12@@7 f_18@@7) (select (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| ExhaleHeap@@4) o2_12@@7 f_18@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| ExhaleHeap@@4) o2_12@@7 f_18@@7))
))) (forall ((o2_12@@8 T@Ref) (f_18@@8 T@Field_10738_45474) ) (!  (=> (select (|PolymorphicMapType_16557_16068_46652#PolymorphicMapType_16557| (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@5) null (WandMaskField_10738 pm_f_12@@2))) o2_12@@8 f_18@@8) (= (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@5) o2_12@@8 f_18@@8) (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| ExhaleHeap@@4) o2_12@@8 f_18@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| ExhaleHeap@@4) o2_12@@8 f_18@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_10738_47179 pm_f_12@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.207:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3152| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.580:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3152| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_16008) (ExhaleHeap@@5 T@PolymorphicMapType_16008) (Mask@@16 T@PolymorphicMapType_16029) (o_13@@0 T@Ref) (f_18@@9 T@Field_10738_45474) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_10738_51179 Mask@@16 o_13@@0 f_18@@9) (= (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@6) o_13@@0 f_18@@9) (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| ExhaleHeap@@5) o_13@@0 f_18@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| ExhaleHeap@@5) o_13@@0 f_18@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_16008) (ExhaleHeap@@6 T@PolymorphicMapType_16008) (Mask@@17 T@PolymorphicMapType_16029) (o_13@@1 T@Ref) (f_18@@10 T@Field_10738_45341) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_10738_45405 Mask@@17 o_13@@1 f_18@@10) (= (select (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| Heap@@7) o_13@@1 f_18@@10) (select (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| ExhaleHeap@@6) o_13@@1 f_18@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| ExhaleHeap@@6) o_13@@1 f_18@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_16008) (ExhaleHeap@@7 T@PolymorphicMapType_16008) (Mask@@18 T@PolymorphicMapType_16029) (o_13@@2 T@Ref) (f_18@@11 T@Field_16081_16082) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_10738_16082 Mask@@18 o_13@@2 f_18@@11) (= (select (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@8) o_13@@2 f_18@@11) (select (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| ExhaleHeap@@7) o_13@@2 f_18@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| ExhaleHeap@@7) o_13@@2 f_18@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_16008) (ExhaleHeap@@8 T@PolymorphicMapType_16008) (Mask@@19 T@PolymorphicMapType_16029) (o_13@@3 T@Ref) (f_18@@12 T@Field_16068_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_10738_53 Mask@@19 o_13@@3 f_18@@12) (= (select (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@9) o_13@@3 f_18@@12) (select (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| ExhaleHeap@@8) o_13@@3 f_18@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| ExhaleHeap@@8) o_13@@3 f_18@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_16008) (ExhaleHeap@@9 T@PolymorphicMapType_16008) (Mask@@20 T@PolymorphicMapType_16029) (o_13@@4 T@Ref) (f_18@@13 T@Field_22109_3274) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_10738_3274 Mask@@20 o_13@@4 f_18@@13) (= (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@10) o_13@@4 f_18@@13) (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| ExhaleHeap@@9) o_13@@4 f_18@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| ExhaleHeap@@9) o_13@@4 f_18@@13))
)))
(assert (forall ((s0@@1 T@Seq_22154) (s1@@1 T@Seq_22154) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_10744|)) (not (= s1@@1 |Seq#Empty_10744|))) (= (|Seq#Length_10744| (|Seq#Append_22154| s0@@1 s1@@1)) (+ (|Seq#Length_10744| s0@@1) (|Seq#Length_10744| s1@@1))))
 :qid |stdinbpl.257:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_10744| (|Seq#Append_22154| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3152) (s1@@2 T@Seq_3152) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3152|)) (not (= s1@@2 |Seq#Empty_3152|))) (= (|Seq#Length_3152| (|Seq#Append_3152| s0@@2 s1@@2)) (+ (|Seq#Length_3152| s0@@2) (|Seq#Length_3152| s1@@2))))
 :qid |stdinbpl.257:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3152| (|Seq#Append_3152| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_10738_45474) ) (! (= (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_10738_45341) ) (! (= (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_16081_16082) ) (! (= (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_16068_53) ) (! (= (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_22109_3274) ) (! (= (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_22154) (t@@1 T@Seq_22154) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_10744| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_10744| s@@15)) (|Seq#Length_10744| s@@15)) n@@15) (= (|Seq#Drop_10744| (|Seq#Append_22154| s@@15 t@@1) n@@15) (|Seq#Drop_10744| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_10744| s@@15))))))
 :qid |stdinbpl.414:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_10744| (|Seq#Append_22154| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3152) (t@@2 T@Seq_3152) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3152| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3152| s@@16)) (|Seq#Length_3152| s@@16)) n@@16) (= (|Seq#Drop_3152| (|Seq#Append_3152| s@@16 t@@2) n@@16) (|Seq#Drop_3152| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3152| s@@16))))))
 :qid |stdinbpl.414:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3152| (|Seq#Append_3152| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_16029) (SummandMask1 T@PolymorphicMapType_16029) (SummandMask2 T@PolymorphicMapType_16029) (o_2@@19 T@Ref) (f_4@@19 T@Field_10738_45474) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_16029) (SummandMask1@@0 T@PolymorphicMapType_16029) (SummandMask2@@0 T@PolymorphicMapType_16029) (o_2@@20 T@Ref) (f_4@@20 T@Field_10738_45341) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_16029) (SummandMask1@@1 T@PolymorphicMapType_16029) (SummandMask2@@1 T@PolymorphicMapType_16029) (o_2@@21 T@Ref) (f_4@@21 T@Field_16081_16082) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_16029) (SummandMask1@@2 T@PolymorphicMapType_16029) (SummandMask2@@2 T@PolymorphicMapType_16029) (o_2@@22 T@Ref) (f_4@@22 T@Field_16068_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_16029) (SummandMask1@@3 T@PolymorphicMapType_16029) (SummandMask2@@3 T@PolymorphicMapType_16029) (o_2@@23 T@Ref) (f_4@@23 T@Field_22109_3274) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3152| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3152| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.579:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3152| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_22154) (b T@Seq_22154) ) (!  (=> (|Seq#Equal_22154| a b) (= a b))
 :qid |stdinbpl.552:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_22154| a b))
)))
(assert (forall ((a@@0 T@Seq_3152) (b@@0 T@Seq_3152) ) (!  (=> (|Seq#Equal_3152| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.552:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3152| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_22154) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_10744| s@@17))) (|Seq#ContainsTrigger_10744| s@@17 (|Seq#Index_10744| s@@17 i@@3)))
 :qid |stdinbpl.445:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_10744| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3152) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3152| s@@18))) (|Seq#ContainsTrigger_3152| s@@18 (|Seq#Index_3152| s@@18 i@@4)))
 :qid |stdinbpl.445:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3152| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_22154) (s1@@3 T@Seq_22154) ) (!  (and (=> (= s0@@3 |Seq#Empty_10744|) (= (|Seq#Append_22154| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_10744|) (= (|Seq#Append_22154| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.263:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_22154| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3152) (s1@@4 T@Seq_3152) ) (!  (and (=> (= s0@@4 |Seq#Empty_3152|) (= (|Seq#Append_3152| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3152|) (= (|Seq#Append_3152| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.263:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3152| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_10744| (|Seq#Singleton_10744| t@@3) 0) t@@3)
 :qid |stdinbpl.267:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_10744| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3152| (|Seq#Singleton_3152| t@@4) 0) t@@4)
 :qid |stdinbpl.267:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3152| t@@4))
)))
(assert (forall ((s@@19 T@Seq_22154) ) (! (<= 0 (|Seq#Length_10744| s@@19))
 :qid |stdinbpl.246:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_10744| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3152) ) (! (<= 0 (|Seq#Length_3152| s@@20))
 :qid |stdinbpl.246:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3152| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_22154) (s1@@5 T@Seq_22154) ) (!  (=> (|Seq#Equal_22154| s0@@5 s1@@5) (and (= (|Seq#Length_10744| s0@@5) (|Seq#Length_10744| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_10744| s0@@5))) (= (|Seq#Index_10744| s0@@5 j@@6) (|Seq#Index_10744| s1@@5 j@@6)))
 :qid |stdinbpl.542:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_10744| s0@@5 j@@6))
 :pattern ( (|Seq#Index_10744| s1@@5 j@@6))
))))
 :qid |stdinbpl.539:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_22154| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3152) (s1@@6 T@Seq_3152) ) (!  (=> (|Seq#Equal_3152| s0@@6 s1@@6) (and (= (|Seq#Length_3152| s0@@6) (|Seq#Length_3152| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3152| s0@@6))) (= (|Seq#Index_3152| s0@@6 j@@7) (|Seq#Index_3152| s1@@6 j@@7)))
 :qid |stdinbpl.542:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3152| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3152| s1@@6 j@@7))
))))
 :qid |stdinbpl.539:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3152| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_10744| (|Seq#Singleton_10744| t@@5)) 1)
 :qid |stdinbpl.254:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_10744| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3152| (|Seq#Singleton_3152| t@@6)) 1)
 :qid |stdinbpl.254:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3152| t@@6))
)))
(assert (forall ((s@@21 T@Seq_22154) (t@@7 T@Seq_22154) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_10744| s@@21))) (= (|Seq#Take_10744| (|Seq#Append_22154| s@@21 t@@7) n@@17) (|Seq#Take_10744| s@@21 n@@17)))
 :qid |stdinbpl.396:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_10744| (|Seq#Append_22154| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3152) (t@@8 T@Seq_3152) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3152| s@@22))) (= (|Seq#Take_3152| (|Seq#Append_3152| s@@22 t@@8) n@@18) (|Seq#Take_3152| s@@22 n@@18)))
 :qid |stdinbpl.396:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3152| (|Seq#Append_3152| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_22154) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_10744| s@@23))) (= (|Seq#Length_10744| (|Seq#Update_10744| s@@23 i@@5 v@@2)) (|Seq#Length_10744| s@@23)))
 :qid |stdinbpl.295:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_10744| (|Seq#Update_10744| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_10744| s@@23) (|Seq#Update_10744| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3152) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3152| s@@24))) (= (|Seq#Length_3152| (|Seq#Update_3152| s@@24 i@@6 v@@3)) (|Seq#Length_3152| s@@24)))
 :qid |stdinbpl.295:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3152| (|Seq#Update_3152| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3152| s@@24) (|Seq#Update_3152| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_16008) (o_34 T@Ref) (f_36 T@Field_10738_45341) (v@@4 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_16008 (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@11) (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@11) (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@11) (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@11) (store (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| Heap@@11) o_34 f_36 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16008 (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@11) (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@11) (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@11) (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@11) (store (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| Heap@@11) o_34 f_36 v@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_16008) (o_34@@0 T@Ref) (f_36@@0 T@Field_10738_45474) (v@@5 T@PolymorphicMapType_16557) ) (! (succHeap Heap@@12 (PolymorphicMapType_16008 (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@12) (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@12) (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@12) (store (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@12) o_34@@0 f_36@@0 v@@5) (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16008 (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@12) (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@12) (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@12) (store (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@12) o_34@@0 f_36@@0 v@@5) (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_16008) (o_34@@1 T@Ref) (f_36@@1 T@Field_22109_3274) (v@@6 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_16008 (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@13) (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@13) (store (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@13) o_34@@1 f_36@@1 v@@6) (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@13) (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16008 (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@13) (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@13) (store (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@13) o_34@@1 f_36@@1 v@@6) (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@13) (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_16008) (o_34@@2 T@Ref) (f_36@@2 T@Field_16081_16082) (v@@7 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_16008 (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@14) (store (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@14) o_34@@2 f_36@@2 v@@7) (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@14) (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@14) (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16008 (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@14) (store (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@14) o_34@@2 f_36@@2 v@@7) (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@14) (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@14) (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_16008) (o_34@@3 T@Ref) (f_36@@3 T@Field_16068_53) (v@@8 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_16008 (store (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@15) o_34@@3 f_36@@3 v@@8) (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@15) (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@15) (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@15) (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16008 (store (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@15) o_34@@3 f_36@@3 v@@8) (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@15) (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@15) (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@15) (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| Heap@@15)))
)))
(assert (forall ((s@@25 T@Seq_22154) (t@@9 T@Seq_22154) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_10744| s@@25))) (= (|Seq#Drop_10744| (|Seq#Append_22154| s@@25 t@@9) n@@19) (|Seq#Append_22154| (|Seq#Drop_10744| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.410:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_10744| (|Seq#Append_22154| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3152) (t@@10 T@Seq_3152) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3152| s@@26))) (= (|Seq#Drop_3152| (|Seq#Append_3152| s@@26 t@@10) n@@20) (|Seq#Append_3152| (|Seq#Drop_3152| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.410:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3152| (|Seq#Append_3152| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_22154) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_10744| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_10744| (|Seq#Drop_10744| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_10744| s@@27 i@@7))))
 :qid |stdinbpl.346:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_10744| s@@27 n@@21) (|Seq#Index_10744| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3152) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3152| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3152| (|Seq#Drop_3152| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3152| s@@28 i@@8))))
 :qid |stdinbpl.346:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3152| s@@28 n@@22) (|Seq#Index_3152| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_22154) (s1@@7 T@Seq_22154) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_10744|)) (not (= s1@@7 |Seq#Empty_10744|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_10744| s0@@7))) (= (|Seq#Index_10744| (|Seq#Append_22154| s0@@7 s1@@7) n@@23) (|Seq#Index_10744| s0@@7 n@@23)))
 :qid |stdinbpl.286:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_10744| (|Seq#Append_22154| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_10744| s0@@7 n@@23) (|Seq#Append_22154| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3152) (s1@@8 T@Seq_3152) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3152|)) (not (= s1@@8 |Seq#Empty_3152|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3152| s0@@8))) (= (|Seq#Index_3152| (|Seq#Append_3152| s0@@8 s1@@8) n@@24) (|Seq#Index_3152| s0@@8 n@@24)))
 :qid |stdinbpl.286:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3152| (|Seq#Append_3152| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3152| s0@@8 n@@24) (|Seq#Append_3152| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_22154) (s1@@9 T@Seq_22154) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_10744|)) (not (= s1@@9 |Seq#Empty_10744|))) (<= 0 m)) (< m (|Seq#Length_10744| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_10744| s0@@9)) (|Seq#Length_10744| s0@@9)) m) (= (|Seq#Index_10744| (|Seq#Append_22154| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_10744| s0@@9))) (|Seq#Index_10744| s1@@9 m))))
 :qid |stdinbpl.291:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_10744| s1@@9 m) (|Seq#Append_22154| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3152) (s1@@10 T@Seq_3152) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3152|)) (not (= s1@@10 |Seq#Empty_3152|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3152| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3152| s0@@10)) (|Seq#Length_3152| s0@@10)) m@@0) (= (|Seq#Index_3152| (|Seq#Append_3152| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3152| s0@@10))) (|Seq#Index_3152| s1@@10 m@@0))))
 :qid |stdinbpl.291:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3152| s1@@10 m@@0) (|Seq#Append_3152| s0@@10 s1@@10))
)))
(assert (forall ((o_34@@4 T@Ref) (f_40 T@Field_16081_16082) (Heap@@16 T@PolymorphicMapType_16008) ) (!  (=> (select (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@16) o_34@@4 $allocated) (select (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@16) (select (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@16) o_34@@4 f_40) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@16) o_34@@4 f_40))
)))
(assert (forall ((s@@29 T@Seq_22154) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_10744| s@@29))) (= (|Seq#Index_10744| s@@29 i@@9) x@@3)) (|Seq#Contains_10798| s@@29 x@@3))
 :qid |stdinbpl.443:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_10798| s@@29 x@@3) (|Seq#Index_10744| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3152) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3152| s@@30))) (= (|Seq#Index_3152| s@@30 i@@10) x@@4)) (|Seq#Contains_3152| s@@30 x@@4))
 :qid |stdinbpl.443:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3152| s@@30 x@@4) (|Seq#Index_3152| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_22154) (s1@@11 T@Seq_22154) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_22154| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_22154| s0@@11 s1@@11))) (not (= (|Seq#Length_10744| s0@@11) (|Seq#Length_10744| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_22154| s0@@11 s1@@11))) (= (|Seq#Length_10744| s0@@11) (|Seq#Length_10744| s1@@11))) (= (|Seq#SkolemDiff_22154| s0@@11 s1@@11) (|Seq#SkolemDiff_22154| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_22154| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_22154| s0@@11 s1@@11) (|Seq#Length_10744| s0@@11))) (not (= (|Seq#Index_10744| s0@@11 (|Seq#SkolemDiff_22154| s0@@11 s1@@11)) (|Seq#Index_10744| s1@@11 (|Seq#SkolemDiff_22154| s0@@11 s1@@11))))))
 :qid |stdinbpl.547:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_22154| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3152) (s1@@12 T@Seq_3152) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3152| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3152| s0@@12 s1@@12))) (not (= (|Seq#Length_3152| s0@@12) (|Seq#Length_3152| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3152| s0@@12 s1@@12))) (= (|Seq#Length_3152| s0@@12) (|Seq#Length_3152| s1@@12))) (= (|Seq#SkolemDiff_3152| s0@@12 s1@@12) (|Seq#SkolemDiff_3152| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3152| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3152| s0@@12 s1@@12) (|Seq#Length_3152| s0@@12))) (not (= (|Seq#Index_3152| s0@@12 (|Seq#SkolemDiff_3152| s0@@12 s1@@12)) (|Seq#Index_3152| s1@@12 (|Seq#SkolemDiff_3152| s0@@12 s1@@12))))))
 :qid |stdinbpl.547:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3152| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_10738_45341) (v_1@@0 T@FrameType) (q T@Field_10738_45341) (w@@0 T@FrameType) (r T@Field_10738_45341) (u T@FrameType) ) (!  (=> (and (InsidePredicate_16068_16068 p@@1 v_1@@0 q w@@0) (InsidePredicate_16068_16068 q w@@0 r u)) (InsidePredicate_16068_16068 p@@1 v_1@@0 r u))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16068_16068 p@@1 v_1@@0 q w@@0) (InsidePredicate_16068_16068 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_22154) ) (!  (=> (= (|Seq#Length_10744| s@@31) 0) (= s@@31 |Seq#Empty_10744|))
 :qid |stdinbpl.250:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_10744| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3152) ) (!  (=> (= (|Seq#Length_3152| s@@32) 0) (= s@@32 |Seq#Empty_3152|))
 :qid |stdinbpl.250:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3152| s@@32))
)))
(assert (forall ((s@@33 T@Seq_22154) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_10744| s@@33 n@@25) |Seq#Empty_10744|))
 :qid |stdinbpl.426:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_10744| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3152) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3152| s@@34 n@@26) |Seq#Empty_3152|))
 :qid |stdinbpl.426:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3152| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun s_2 () T@Seq_22154)
(declare-fun i_8 () Int)
(declare-fun t_2 () T@Seq_22154)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun QPMask@4 () T@PolymorphicMapType_16029)
(declare-fun PostHeap@0 () T@PolymorphicMapType_16008)
(declare-fun i_7 () Int)
(declare-fun neverTriggered5 (Int) Bool)
(declare-fun QPMask@1 () T@PolymorphicMapType_16029)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_16029)
(declare-fun neverTriggered6 (Int) Bool)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_16029)
(declare-fun Heap@@17 () T@PolymorphicMapType_16008)
(declare-fun i_6 () Int)
(declare-fun i1_18 () Int)
(declare-fun i2_8 () Int)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun i_2 () Int)
(declare-fun i1_17 () Int)
(declare-fun i2_7 () Int)
(set-info :boogie-vc-id test01)
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
 (=> (= (ControlFlow 0 0) 52) (let ((anon24_correct true))
(let ((anon39_Else_correct  (=> (and (not (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i_8)) (= (ControlFlow 0 41) 37)) anon24_correct)))
(let ((anon39_Then_correct  (=> (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i_8) (and (=> (= (ControlFlow 0 38) (- 0 40)) (>= i_8 0)) (=> (>= i_8 0) (and (=> (= (ControlFlow 0 38) (- 0 39)) (< i_8 (|Seq#Length_10744| s_2))) (=> (< i_8 (|Seq#Length_10744| s_2)) (=> (= (ControlFlow 0 38) 37) anon24_correct))))))))
(let ((anon38_Else_correct  (=> (= (ControlFlow 0 36) (- 0 35)) (forall ((i_7_1 Int) (i_7_2 Int) ) (!  (=> (and (and (and (and (not (= i_7_1 i_7_2)) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i_7_1)) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i_7_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_10744| s_2 i_7_1) (|Seq#Index_10744| s_2 i_7_2))))
 :qid |stdinbpl.828:15|
 :skolemid |78|
)))))
(let ((anon36_Else_correct  (and (=> (= (ControlFlow 0 42) (- 0 43)) (forall ((i_5 Int) (i_5_1 Int) ) (!  (=> (and (and (and (and (not (= i_5 i_5_1)) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_5)) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_5_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_10744| t_2 i_5) (|Seq#Index_10744| t_2 i_5_1))))
 :qid |stdinbpl.782:15|
 :skolemid |72|
))) (=> (forall ((i_5@@0 Int) (i_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_5@@0 i_5_1@@0)) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_5@@0)) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_5_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_10744| t_2 i_5@@0) (|Seq#Index_10744| t_2 i_5_1@@0))))
 :qid |stdinbpl.782:15|
 :skolemid |72|
)) (=> (and (and (forall ((i_5@@1 Int) ) (!  (=> (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_5@@1) (< NoPerm FullPerm)) (and (qpRange3 (|Seq#Index_10744| t_2 i_5@@1)) (= (invRecv3 (|Seq#Index_10744| t_2 i_5@@1)) i_5@@1)))
 :qid |stdinbpl.788:22|
 :skolemid |73|
 :pattern ( (|Seq#Index_10744| t_2 i_5@@1))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_5@@1))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_5@@1))
 :pattern ( (|Seq#Index_10744| t_2 i_5@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) (invRecv3 o_4)) (< NoPerm FullPerm)) (qpRange3 o_4)) (= (|Seq#Index_10744| t_2 (invRecv3 o_4)) o_4))
 :qid |stdinbpl.792:22|
 :skolemid |74|
 :pattern ( (invRecv3 o_4))
))) (and (forall ((i_5@@2 Int) ) (!  (=> (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_5@@2) (not (= (|Seq#Index_10744| t_2 i_5@@2) null)))
 :qid |stdinbpl.798:22|
 :skolemid |75|
 :pattern ( (|Seq#Index_10744| t_2 i_5@@2))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_5@@2))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_5@@2))
 :pattern ( (|Seq#Index_10744| t_2 i_5@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) (invRecv3 o_4@@0)) (< NoPerm FullPerm)) (qpRange3 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_10744| t_2 (invRecv3 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@4) o_4@@0 f_7) (+ (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| ZeroMask) o_4@@0 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) (invRecv3 o_4@@0)) (< NoPerm FullPerm)) (qpRange3 o_4@@0))) (= (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@4) o_4@@0 f_7) (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| ZeroMask) o_4@@0 f_7))))
 :qid |stdinbpl.804:22|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@4) o_4@@0 f_7))
)))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_16068_53) ) (!  (=> true (= (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| QPMask@4) o_4@@1 f_5)))
 :qid |stdinbpl.808:29|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| QPMask@4) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_16081_16082) ) (!  (=> true (= (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| QPMask@4) o_4@@2 f_5@@0)))
 :qid |stdinbpl.808:29|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| QPMask@4) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_22109_3274) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@4) o_4@@3 f_5@@1)))
 :qid |stdinbpl.808:29|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@4) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_10738_45341) ) (!  (=> true (= (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| QPMask@4) o_4@@4 f_5@@2)))
 :qid |stdinbpl.808:29|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| QPMask@4) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_10738_45474) ) (!  (=> true (= (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| QPMask@4) o_4@@5 f_5@@3)))
 :qid |stdinbpl.808:29|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| QPMask@4) o_4@@5 f_5@@3))
))) (and (state PostHeap@0 QPMask@4) (state PostHeap@0 QPMask@4))) (and (and (=> (= (ControlFlow 0 42) 36) anon38_Else_correct) (=> (= (ControlFlow 0 42) 38) anon39_Then_correct)) (=> (= (ControlFlow 0 42) 41) anon39_Else_correct))))))))
(let ((anon20_correct true))
(let ((anon37_Else_correct  (=> (and (not (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_7)) (= (ControlFlow 0 34) 30)) anon20_correct)))
(let ((anon37_Then_correct  (=> (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_7) (and (=> (= (ControlFlow 0 31) (- 0 33)) (>= i_7 0)) (=> (>= i_7 0) (and (=> (= (ControlFlow 0 31) (- 0 32)) (< i_7 (|Seq#Length_10744| t_2))) (=> (< i_7 (|Seq#Length_10744| t_2)) (=> (= (ControlFlow 0 31) 30) anon20_correct))))))))
(let ((anon35_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (and (=> (= (ControlFlow 0 44) 42) anon36_Else_correct) (=> (= (ControlFlow 0 44) 31) anon37_Then_correct)) (=> (= (ControlFlow 0 44) 34) anon37_Else_correct)))))
(let ((anon35_Else_correct  (and (=> (= (ControlFlow 0 26) (- 0 29)) (forall ((i_8_2 Int) (i_8_3 Int) ) (!  (=> (and (and (and (and (not (= i_8_2 i_8_3)) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_8_2)) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_8_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_10744| t_2 i_8_2) (|Seq#Index_10744| t_2 i_8_3))))
 :qid |stdinbpl.875:17|
 :skolemid |84|
 :pattern ( (neverTriggered5 i_8_2) (neverTriggered5 i_8_3))
))) (=> (forall ((i_8_2@@0 Int) (i_8_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_8_2@@0 i_8_3@@0)) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_8_2@@0)) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_8_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_10744| t_2 i_8_2@@0) (|Seq#Index_10744| t_2 i_8_3@@0))))
 :qid |stdinbpl.875:17|
 :skolemid |84|
 :pattern ( (neverTriggered5 i_8_2@@0) (neverTriggered5 i_8_3@@0))
)) (and (=> (= (ControlFlow 0 26) (- 0 28)) (forall ((i_8_2@@1 Int) ) (!  (=> (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_8_2@@1) (>= (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@1) (|Seq#Index_10744| t_2 i_8_2@@1) f_7) FullPerm))
 :qid |stdinbpl.882:17|
 :skolemid |85|
 :pattern ( (|Seq#Index_10744| t_2 i_8_2@@1))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_8_2@@1))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_8_2@@1))
 :pattern ( (|Seq#Index_10744| t_2 i_8_2@@1))
))) (=> (forall ((i_8_2@@2 Int) ) (!  (=> (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_8_2@@2) (>= (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@1) (|Seq#Index_10744| t_2 i_8_2@@2) f_7) FullPerm))
 :qid |stdinbpl.882:17|
 :skolemid |85|
 :pattern ( (|Seq#Index_10744| t_2 i_8_2@@2))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_8_2@@2))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_8_2@@2))
 :pattern ( (|Seq#Index_10744| t_2 i_8_2@@2))
)) (=> (forall ((i_8_2@@3 Int) ) (!  (=> (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_8_2@@3) (< NoPerm FullPerm)) (and (qpRange5 (|Seq#Index_10744| t_2 i_8_2@@3)) (= (invRecv5 (|Seq#Index_10744| t_2 i_8_2@@3)) i_8_2@@3)))
 :qid |stdinbpl.888:22|
 :skolemid |86|
 :pattern ( (|Seq#Index_10744| t_2 i_8_2@@3))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_8_2@@3))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_8_2@@3))
 :pattern ( (|Seq#Index_10744| t_2 i_8_2@@3))
)) (=> (and (forall ((o_4@@6 T@Ref) ) (!  (=> (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) (invRecv5 o_4@@6)) (and (< NoPerm FullPerm) (qpRange5 o_4@@6))) (= (|Seq#Index_10744| t_2 (invRecv5 o_4@@6)) o_4@@6))
 :qid |stdinbpl.892:22|
 :skolemid |87|
 :pattern ( (invRecv5 o_4@@6))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) (invRecv5 o_4@@7)) (and (< NoPerm FullPerm) (qpRange5 o_4@@7))) (and (= (|Seq#Index_10744| t_2 (invRecv5 o_4@@7)) o_4@@7) (= (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@2) o_4@@7 f_7) (- (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@1) o_4@@7 f_7) FullPerm)))) (=> (not (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) (invRecv5 o_4@@7)) (and (< NoPerm FullPerm) (qpRange5 o_4@@7)))) (= (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@2) o_4@@7 f_7) (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@1) o_4@@7 f_7))))
 :qid |stdinbpl.898:22|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@2) o_4@@7 f_7))
))) (=> (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_16068_53) ) (!  (=> true (= (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| QPMask@1) o_4@@8 f_5@@4) (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| QPMask@2) o_4@@8 f_5@@4)))
 :qid |stdinbpl.904:29|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| QPMask@2) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_16081_16082) ) (!  (=> true (= (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| QPMask@1) o_4@@9 f_5@@5) (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| QPMask@2) o_4@@9 f_5@@5)))
 :qid |stdinbpl.904:29|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| QPMask@2) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_22109_3274) ) (!  (=> (not (= f_5@@6 f_7)) (= (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@1) o_4@@10 f_5@@6) (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@2) o_4@@10 f_5@@6)))
 :qid |stdinbpl.904:29|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@2) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_10738_45341) ) (!  (=> true (= (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| QPMask@1) o_4@@11 f_5@@7) (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| QPMask@2) o_4@@11 f_5@@7)))
 :qid |stdinbpl.904:29|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| QPMask@2) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_10738_45474) ) (!  (=> true (= (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| QPMask@1) o_4@@12 f_5@@8) (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| QPMask@2) o_4@@12 f_5@@8)))
 :qid |stdinbpl.904:29|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| QPMask@2) o_4@@12 f_5@@8))
))) (and (=> (= (ControlFlow 0 26) (- 0 27)) (forall ((i_9_1 Int) (i_9_2 Int) ) (!  (=> (and (and (and (and (not (= i_9_1 i_9_2)) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i_9_1)) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i_9_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_10744| s_2 i_9_1) (|Seq#Index_10744| s_2 i_9_2))))
 :qid |stdinbpl.916:17|
 :skolemid |90|
 :pattern ( (neverTriggered6 i_9_1) (neverTriggered6 i_9_2))
))) (=> (forall ((i_9_1@@0 Int) (i_9_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_9_1@@0 i_9_2@@0)) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i_9_1@@0)) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i_9_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_10744| s_2 i_9_1@@0) (|Seq#Index_10744| s_2 i_9_2@@0))))
 :qid |stdinbpl.916:17|
 :skolemid |90|
 :pattern ( (neverTriggered6 i_9_1@@0) (neverTriggered6 i_9_2@@0))
)) (=> (= (ControlFlow 0 26) (- 0 25)) (forall ((i_9_1@@1 Int) ) (!  (=> (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i_9_1@@1) (>= (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@2) (|Seq#Index_10744| s_2 i_9_1@@1) f_7) FullPerm))
 :qid |stdinbpl.923:17|
 :skolemid |91|
 :pattern ( (|Seq#Index_10744| s_2 i_9_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i_9_1@@1))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i_9_1@@1))
 :pattern ( (|Seq#Index_10744| s_2 i_9_1@@1))
))))))))))))))
(let ((anon33_Else_correct  (and (=> (= (ControlFlow 0 45) (- 0 46)) (forall ((i_3 Int) (i_3_1 Int) ) (!  (=> (and (and (and (and (not (= i_3 i_3_1)) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_3)) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_10744| t_2 i_3) (|Seq#Index_10744| t_2 i_3_1))))
 :qid |stdinbpl.725:15|
 :skolemid |66|
))) (=> (forall ((i_3@@0 Int) (i_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3@@0 i_3_1@@0)) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_3@@0)) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_10744| t_2 i_3@@0) (|Seq#Index_10744| t_2 i_3_1@@0))))
 :qid |stdinbpl.725:15|
 :skolemid |66|
)) (=> (and (and (forall ((i_3@@1 Int) ) (!  (=> (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_3@@1) (< NoPerm FullPerm)) (and (qpRange2 (|Seq#Index_10744| t_2 i_3@@1)) (= (invRecv2 (|Seq#Index_10744| t_2 i_3@@1)) i_3@@1)))
 :qid |stdinbpl.731:22|
 :skolemid |67|
 :pattern ( (|Seq#Index_10744| t_2 i_3@@1))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_3@@1))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_3@@1))
 :pattern ( (|Seq#Index_10744| t_2 i_3@@1))
)) (forall ((o_4@@13 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) (invRecv2 o_4@@13)) (< NoPerm FullPerm)) (qpRange2 o_4@@13)) (= (|Seq#Index_10744| t_2 (invRecv2 o_4@@13)) o_4@@13))
 :qid |stdinbpl.735:22|
 :skolemid |68|
 :pattern ( (invRecv2 o_4@@13))
))) (and (forall ((i_3@@2 Int) ) (!  (=> (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_3@@2) (not (= (|Seq#Index_10744| t_2 i_3@@2) null)))
 :qid |stdinbpl.741:22|
 :skolemid |69|
 :pattern ( (|Seq#Index_10744| t_2 i_3@@2))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_3@@2))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_3@@2))
 :pattern ( (|Seq#Index_10744| t_2 i_3@@2))
)) (forall ((o_4@@14 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) (invRecv2 o_4@@14)) (< NoPerm FullPerm)) (qpRange2 o_4@@14)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_10744| t_2 (invRecv2 o_4@@14)) o_4@@14)) (= (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@1) o_4@@14 f_7) (+ (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@0) o_4@@14 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) (invRecv2 o_4@@14)) (< NoPerm FullPerm)) (qpRange2 o_4@@14))) (= (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@1) o_4@@14 f_7) (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@0) o_4@@14 f_7))))
 :qid |stdinbpl.747:22|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@1) o_4@@14 f_7))
)))) (=> (and (and (and (and (and (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_16068_53) ) (!  (=> true (= (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| QPMask@0) o_4@@15 f_5@@9) (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| QPMask@1) o_4@@15 f_5@@9)))
 :qid |stdinbpl.751:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| QPMask@0) o_4@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| QPMask@1) o_4@@15 f_5@@9))
)) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_16081_16082) ) (!  (=> true (= (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| QPMask@0) o_4@@16 f_5@@10) (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| QPMask@1) o_4@@16 f_5@@10)))
 :qid |stdinbpl.751:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| QPMask@0) o_4@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| QPMask@1) o_4@@16 f_5@@10))
))) (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_22109_3274) ) (!  (=> (not (= f_5@@11 f_7)) (= (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@0) o_4@@17 f_5@@11) (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@1) o_4@@17 f_5@@11)))
 :qid |stdinbpl.751:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@0) o_4@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@1) o_4@@17 f_5@@11))
))) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_10738_45341) ) (!  (=> true (= (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| QPMask@0) o_4@@18 f_5@@12) (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| QPMask@1) o_4@@18 f_5@@12)))
 :qid |stdinbpl.751:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| QPMask@0) o_4@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| QPMask@1) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_10738_45474) ) (!  (=> true (= (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| QPMask@0) o_4@@19 f_5@@13) (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| QPMask@1) o_4@@19 f_5@@13)))
 :qid |stdinbpl.751:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| QPMask@0) o_4@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| QPMask@1) o_4@@19 f_5@@13))
))) (and (state Heap@@17 QPMask@1) (state Heap@@17 QPMask@1))) (and (=> (= (ControlFlow 0 45) 44) anon35_Then_correct) (=> (= (ControlFlow 0 45) 26) anon35_Else_correct))))))))
(let ((anon15_correct true))
(let ((anon34_Else_correct  (=> (and (not (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_6)) (= (ControlFlow 0 24) 20)) anon15_correct)))
(let ((anon34_Then_correct  (=> (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i_6) (and (=> (= (ControlFlow 0 21) (- 0 23)) (>= i_6 0)) (=> (>= i_6 0) (and (=> (= (ControlFlow 0 21) (- 0 22)) (< i_6 (|Seq#Length_10744| t_2))) (=> (< i_6 (|Seq#Length_10744| t_2)) (=> (= (ControlFlow 0 21) 20) anon15_correct))))))))
(let ((anon31_Else_correct  (=> (and (forall ((i1_3 Int) (i2_3 Int) ) (!  (=> (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i1_3) (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i2_3) (not (= i1_3 i2_3)))) (not (= (|Seq#Index_10744| t_2 i1_3) (|Seq#Index_10744| t_2 i2_3))))
 :qid |stdinbpl.707:20|
 :skolemid |65|
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i1_3) (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i2_3))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i1_3) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i2_3))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i1_3) (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i2_3))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i1_3) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i2_3))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i1_3) (|Seq#Index_10744| t_2 i2_3))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i1_3) (|Seq#Index_10744| t_2 i2_3))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i2_3) (|Seq#Index_10744| t_2 i1_3))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i2_3) (|Seq#Index_10744| t_2 i1_3))
 :pattern ( (|Seq#Index_10744| t_2 i1_3) (|Seq#Index_10744| t_2 i2_3))
)) (state Heap@@17 QPMask@0)) (and (and (=> (= (ControlFlow 0 47) 45) anon33_Else_correct) (=> (= (ControlFlow 0 47) 21) anon34_Then_correct)) (=> (= (ControlFlow 0 47) 24) anon34_Else_correct)))))
(let ((anon11_correct true))
(let ((anon32_Else_correct  (=> (and (not (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i1_18) (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i2_8) (not (= i1_18 i2_8))))) (= (ControlFlow 0 19) 13)) anon11_correct)))
(let ((anon32_Then_correct  (=> (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i1_18) (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| t_2)) i2_8) (not (= i1_18 i2_8)))) (and (=> (= (ControlFlow 0 14) (- 0 18)) (>= i1_18 0)) (=> (>= i1_18 0) (and (=> (= (ControlFlow 0 14) (- 0 17)) (< i1_18 (|Seq#Length_10744| t_2))) (=> (< i1_18 (|Seq#Length_10744| t_2)) (and (=> (= (ControlFlow 0 14) (- 0 16)) (>= i2_8 0)) (=> (>= i2_8 0) (and (=> (= (ControlFlow 0 14) (- 0 15)) (< i2_8 (|Seq#Length_10744| t_2))) (=> (< i2_8 (|Seq#Length_10744| t_2)) (=> (= (ControlFlow 0 14) 13) anon11_correct))))))))))))
(let ((anon29_Else_correct  (and (=> (= (ControlFlow 0 48) (- 0 49)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i_1)) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_10744| s_2 i_1) (|Seq#Index_10744| s_2 i_1_1))))
 :qid |stdinbpl.659:15|
 :skolemid |59|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i_1@@0)) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_10744| s_2 i_1@@0) (|Seq#Index_10744| s_2 i_1_1@@0))))
 :qid |stdinbpl.659:15|
 :skolemid |59|
)) (=> (and (and (forall ((i_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i_1@@1) (< NoPerm FullPerm)) (and (qpRange1 (|Seq#Index_10744| s_2 i_1@@1)) (= (invRecv1 (|Seq#Index_10744| s_2 i_1@@1)) i_1@@1)))
 :qid |stdinbpl.665:22|
 :skolemid |60|
 :pattern ( (|Seq#Index_10744| s_2 i_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i_1@@1))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i_1@@1))
 :pattern ( (|Seq#Index_10744| s_2 i_1@@1))
)) (forall ((o_4@@20 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) (invRecv1 o_4@@20)) (< NoPerm FullPerm)) (qpRange1 o_4@@20)) (= (|Seq#Index_10744| s_2 (invRecv1 o_4@@20)) o_4@@20))
 :qid |stdinbpl.669:22|
 :skolemid |61|
 :pattern ( (invRecv1 o_4@@20))
))) (and (forall ((i_1@@2 Int) ) (!  (=> (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i_1@@2) (not (= (|Seq#Index_10744| s_2 i_1@@2) null)))
 :qid |stdinbpl.675:22|
 :skolemid |62|
 :pattern ( (|Seq#Index_10744| s_2 i_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i_1@@2))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i_1@@2))
 :pattern ( (|Seq#Index_10744| s_2 i_1@@2))
)) (forall ((o_4@@21 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) (invRecv1 o_4@@21)) (< NoPerm FullPerm)) (qpRange1 o_4@@21)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_10744| s_2 (invRecv1 o_4@@21)) o_4@@21)) (= (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@0) o_4@@21 f_7) (+ (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| ZeroMask) o_4@@21 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) (invRecv1 o_4@@21)) (< NoPerm FullPerm)) (qpRange1 o_4@@21))) (= (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@0) o_4@@21 f_7) (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| ZeroMask) o_4@@21 f_7))))
 :qid |stdinbpl.681:22|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@0) o_4@@21 f_7))
)))) (=> (and (and (and (and (and (forall ((o_4@@22 T@Ref) (f_5@@14 T@Field_16068_53) ) (!  (=> true (= (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| ZeroMask) o_4@@22 f_5@@14) (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| QPMask@0) o_4@@22 f_5@@14)))
 :qid |stdinbpl.685:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| ZeroMask) o_4@@22 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| QPMask@0) o_4@@22 f_5@@14))
)) (forall ((o_4@@23 T@Ref) (f_5@@15 T@Field_16081_16082) ) (!  (=> true (= (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| ZeroMask) o_4@@23 f_5@@15) (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| QPMask@0) o_4@@23 f_5@@15)))
 :qid |stdinbpl.685:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| ZeroMask) o_4@@23 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| QPMask@0) o_4@@23 f_5@@15))
))) (forall ((o_4@@24 T@Ref) (f_5@@16 T@Field_22109_3274) ) (!  (=> (not (= f_5@@16 f_7)) (= (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| ZeroMask) o_4@@24 f_5@@16) (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@0) o_4@@24 f_5@@16)))
 :qid |stdinbpl.685:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| ZeroMask) o_4@@24 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@0) o_4@@24 f_5@@16))
))) (forall ((o_4@@25 T@Ref) (f_5@@17 T@Field_10738_45341) ) (!  (=> true (= (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| ZeroMask) o_4@@25 f_5@@17) (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| QPMask@0) o_4@@25 f_5@@17)))
 :qid |stdinbpl.685:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| ZeroMask) o_4@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| QPMask@0) o_4@@25 f_5@@17))
))) (forall ((o_4@@26 T@Ref) (f_5@@18 T@Field_10738_45474) ) (!  (=> true (= (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| ZeroMask) o_4@@26 f_5@@18) (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| QPMask@0) o_4@@26 f_5@@18)))
 :qid |stdinbpl.685:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| ZeroMask) o_4@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| QPMask@0) o_4@@26 f_5@@18))
))) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (and (=> (= (ControlFlow 0 48) 47) anon31_Else_correct) (=> (= (ControlFlow 0 48) 14) anon32_Then_correct)) (=> (= (ControlFlow 0 48) 19) anon32_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon30_Else_correct  (=> (and (not (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i_2)) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon30_Then_correct  (=> (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i_2) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= i_2 0)) (=> (>= i_2 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< i_2 (|Seq#Length_10744| s_2))) (=> (< i_2 (|Seq#Length_10744| s_2)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon27_Else_correct  (=> (and (forall ((i1_1_1 Int) (i2_1_1 Int) ) (!  (=> (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i1_1_1) (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i2_1_1) (not (= i1_1_1 i2_1_1)))) (not (= (|Seq#Index_10744| s_2 i1_1_1) (|Seq#Index_10744| s_2 i2_1_1))))
 :qid |stdinbpl.641:20|
 :skolemid |58|
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i1_1_1) (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i2_1_1))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i1_1_1) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i2_1_1))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i1_1_1) (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i2_1_1))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i1_1_1) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i2_1_1))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i1_1_1) (|Seq#Index_10744| s_2 i2_1_1))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i1_1_1) (|Seq#Index_10744| s_2 i2_1_1))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i2_1_1) (|Seq#Index_10744| s_2 i1_1_1))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i2_1_1) (|Seq#Index_10744| s_2 i1_1_1))
 :pattern ( (|Seq#Index_10744| s_2 i1_1_1) (|Seq#Index_10744| s_2 i2_1_1))
)) (state Heap@@17 ZeroMask)) (and (and (=> (= (ControlFlow 0 50) 48) anon29_Else_correct) (=> (= (ControlFlow 0 50) 9) anon30_Then_correct)) (=> (= (ControlFlow 0 50) 12) anon30_Else_correct)))))
(let ((anon3_correct true))
(let ((anon28_Else_correct  (=> (and (not (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i1_17) (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i2_7) (not (= i1_17 i2_7))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon28_Then_correct  (=> (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i1_17) (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_2)) i2_7) (not (= i1_17 i2_7)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i1_17 0)) (=> (>= i1_17 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i1_17 (|Seq#Length_10744| s_2))) (=> (< i1_17 (|Seq#Length_10744| s_2)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= i2_7 0)) (=> (>= i2_7 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< i2_7 (|Seq#Length_10744| s_2))) (=> (< i2_7 (|Seq#Length_10744| s_2)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (and (=> (= (ControlFlow 0 51) 50) anon27_Else_correct) (=> (= (ControlFlow 0 51) 2) anon28_Then_correct)) (=> (= (ControlFlow 0 51) 7) anon28_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 52) 51) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
