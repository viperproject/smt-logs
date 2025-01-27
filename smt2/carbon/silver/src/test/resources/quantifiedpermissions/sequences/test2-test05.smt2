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
(assert (forall ((Heap@@0 T@PolymorphicMapType_16008) (ExhaleHeap T@PolymorphicMapType_16008) (Mask@@0 T@PolymorphicMapType_16029) (pm_f_37 T@Field_10738_45341) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_10738_45405 Mask@@0 null pm_f_37) (IsPredicateField_10738_45432 pm_f_37)) (= (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@0) null (PredicateMaskField_10738 pm_f_37)) (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| ExhaleHeap) null (PredicateMaskField_10738 pm_f_37)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_10738_45432 pm_f_37) (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| ExhaleHeap) null (PredicateMaskField_10738 pm_f_37)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_16008) (ExhaleHeap@@0 T@PolymorphicMapType_16008) (Mask@@1 T@PolymorphicMapType_16029) (pm_f_37@@0 T@Field_10738_45341) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_10738_45405 Mask@@1 null pm_f_37@@0) (IsWandField_10738_47179 pm_f_37@@0)) (= (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@1) null (WandMaskField_10738 pm_f_37@@0)) (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| ExhaleHeap@@0) null (WandMaskField_10738 pm_f_37@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_10738_47179 pm_f_37@@0) (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| ExhaleHeap@@0) null (WandMaskField_10738 pm_f_37@@0)))
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
(assert (forall ((Heap@@2 T@PolymorphicMapType_16008) (ExhaleHeap@@1 T@PolymorphicMapType_16008) (Mask@@2 T@PolymorphicMapType_16029) (o_20 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@2) o_20 $allocated) (select (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| ExhaleHeap@@1) o_20 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| ExhaleHeap@@1) o_20 $allocated))
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
(assert (forall ((Heap@@4 T@PolymorphicMapType_16008) (ExhaleHeap@@3 T@PolymorphicMapType_16008) (Mask@@14 T@PolymorphicMapType_16029) (pm_f_37@@1 T@Field_10738_45341) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_10738_45405 Mask@@14 null pm_f_37@@1) (IsPredicateField_10738_45432 pm_f_37@@1)) (and (and (and (and (forall ((o2_37 T@Ref) (f_29 T@Field_16068_53) ) (!  (=> (select (|PolymorphicMapType_16557_16068_53#PolymorphicMapType_16557| (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@4) null (PredicateMaskField_10738 pm_f_37@@1))) o2_37 f_29) (= (select (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@4) o2_37 f_29) (select (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| ExhaleHeap@@3) o2_37 f_29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| ExhaleHeap@@3) o2_37 f_29))
)) (forall ((o2_37@@0 T@Ref) (f_29@@0 T@Field_16081_16082) ) (!  (=> (select (|PolymorphicMapType_16557_16068_16082#PolymorphicMapType_16557| (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@4) null (PredicateMaskField_10738 pm_f_37@@1))) o2_37@@0 f_29@@0) (= (select (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@4) o2_37@@0 f_29@@0) (select (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| ExhaleHeap@@3) o2_37@@0 f_29@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| ExhaleHeap@@3) o2_37@@0 f_29@@0))
))) (forall ((o2_37@@1 T@Ref) (f_29@@1 T@Field_22109_3274) ) (!  (=> (select (|PolymorphicMapType_16557_16068_3274#PolymorphicMapType_16557| (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@4) null (PredicateMaskField_10738 pm_f_37@@1))) o2_37@@1 f_29@@1) (= (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@4) o2_37@@1 f_29@@1) (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| ExhaleHeap@@3) o2_37@@1 f_29@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| ExhaleHeap@@3) o2_37@@1 f_29@@1))
))) (forall ((o2_37@@2 T@Ref) (f_29@@2 T@Field_10738_45341) ) (!  (=> (select (|PolymorphicMapType_16557_16068_45341#PolymorphicMapType_16557| (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@4) null (PredicateMaskField_10738 pm_f_37@@1))) o2_37@@2 f_29@@2) (= (select (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| Heap@@4) o2_37@@2 f_29@@2) (select (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| ExhaleHeap@@3) o2_37@@2 f_29@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| ExhaleHeap@@3) o2_37@@2 f_29@@2))
))) (forall ((o2_37@@3 T@Ref) (f_29@@3 T@Field_10738_45474) ) (!  (=> (select (|PolymorphicMapType_16557_16068_46652#PolymorphicMapType_16557| (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@4) null (PredicateMaskField_10738 pm_f_37@@1))) o2_37@@3 f_29@@3) (= (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@4) o2_37@@3 f_29@@3) (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| ExhaleHeap@@3) o2_37@@3 f_29@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| ExhaleHeap@@3) o2_37@@3 f_29@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_10738_45432 pm_f_37@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_16008) (ExhaleHeap@@4 T@PolymorphicMapType_16008) (Mask@@15 T@PolymorphicMapType_16029) (pm_f_37@@2 T@Field_10738_45341) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_10738_45405 Mask@@15 null pm_f_37@@2) (IsWandField_10738_47179 pm_f_37@@2)) (and (and (and (and (forall ((o2_37@@4 T@Ref) (f_29@@4 T@Field_16068_53) ) (!  (=> (select (|PolymorphicMapType_16557_16068_53#PolymorphicMapType_16557| (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@5) null (WandMaskField_10738 pm_f_37@@2))) o2_37@@4 f_29@@4) (= (select (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@5) o2_37@@4 f_29@@4) (select (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| ExhaleHeap@@4) o2_37@@4 f_29@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| ExhaleHeap@@4) o2_37@@4 f_29@@4))
)) (forall ((o2_37@@5 T@Ref) (f_29@@5 T@Field_16081_16082) ) (!  (=> (select (|PolymorphicMapType_16557_16068_16082#PolymorphicMapType_16557| (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@5) null (WandMaskField_10738 pm_f_37@@2))) o2_37@@5 f_29@@5) (= (select (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@5) o2_37@@5 f_29@@5) (select (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| ExhaleHeap@@4) o2_37@@5 f_29@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| ExhaleHeap@@4) o2_37@@5 f_29@@5))
))) (forall ((o2_37@@6 T@Ref) (f_29@@6 T@Field_22109_3274) ) (!  (=> (select (|PolymorphicMapType_16557_16068_3274#PolymorphicMapType_16557| (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@5) null (WandMaskField_10738 pm_f_37@@2))) o2_37@@6 f_29@@6) (= (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@5) o2_37@@6 f_29@@6) (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| ExhaleHeap@@4) o2_37@@6 f_29@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| ExhaleHeap@@4) o2_37@@6 f_29@@6))
))) (forall ((o2_37@@7 T@Ref) (f_29@@7 T@Field_10738_45341) ) (!  (=> (select (|PolymorphicMapType_16557_16068_45341#PolymorphicMapType_16557| (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@5) null (WandMaskField_10738 pm_f_37@@2))) o2_37@@7 f_29@@7) (= (select (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| Heap@@5) o2_37@@7 f_29@@7) (select (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| ExhaleHeap@@4) o2_37@@7 f_29@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| ExhaleHeap@@4) o2_37@@7 f_29@@7))
))) (forall ((o2_37@@8 T@Ref) (f_29@@8 T@Field_10738_45474) ) (!  (=> (select (|PolymorphicMapType_16557_16068_46652#PolymorphicMapType_16557| (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@5) null (WandMaskField_10738 pm_f_37@@2))) o2_37@@8 f_29@@8) (= (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@5) o2_37@@8 f_29@@8) (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| ExhaleHeap@@4) o2_37@@8 f_29@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| ExhaleHeap@@4) o2_37@@8 f_29@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_10738_47179 pm_f_37@@2))
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
(assert (forall ((Heap@@6 T@PolymorphicMapType_16008) (ExhaleHeap@@5 T@PolymorphicMapType_16008) (Mask@@16 T@PolymorphicMapType_16029) (o_20@@0 T@Ref) (f_29@@9 T@Field_10738_45474) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_10738_51179 Mask@@16 o_20@@0 f_29@@9) (= (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@6) o_20@@0 f_29@@9) (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| ExhaleHeap@@5) o_20@@0 f_29@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| ExhaleHeap@@5) o_20@@0 f_29@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_16008) (ExhaleHeap@@6 T@PolymorphicMapType_16008) (Mask@@17 T@PolymorphicMapType_16029) (o_20@@1 T@Ref) (f_29@@10 T@Field_10738_45341) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_10738_45405 Mask@@17 o_20@@1 f_29@@10) (= (select (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| Heap@@7) o_20@@1 f_29@@10) (select (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| ExhaleHeap@@6) o_20@@1 f_29@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| ExhaleHeap@@6) o_20@@1 f_29@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_16008) (ExhaleHeap@@7 T@PolymorphicMapType_16008) (Mask@@18 T@PolymorphicMapType_16029) (o_20@@2 T@Ref) (f_29@@11 T@Field_16081_16082) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_10738_16082 Mask@@18 o_20@@2 f_29@@11) (= (select (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@8) o_20@@2 f_29@@11) (select (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| ExhaleHeap@@7) o_20@@2 f_29@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| ExhaleHeap@@7) o_20@@2 f_29@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_16008) (ExhaleHeap@@8 T@PolymorphicMapType_16008) (Mask@@19 T@PolymorphicMapType_16029) (o_20@@3 T@Ref) (f_29@@12 T@Field_16068_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_10738_53 Mask@@19 o_20@@3 f_29@@12) (= (select (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@9) o_20@@3 f_29@@12) (select (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| ExhaleHeap@@8) o_20@@3 f_29@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| ExhaleHeap@@8) o_20@@3 f_29@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_16008) (ExhaleHeap@@9 T@PolymorphicMapType_16008) (Mask@@20 T@PolymorphicMapType_16029) (o_20@@4 T@Ref) (f_29@@13 T@Field_22109_3274) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_10738_3274 Mask@@20 o_20@@4 f_29@@13) (= (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@10) o_20@@4 f_29@@13) (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| ExhaleHeap@@9) o_20@@4 f_29@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| ExhaleHeap@@9) o_20@@4 f_29@@13))
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
(assert (forall ((Heap@@11 T@PolymorphicMapType_16008) (o_13 T@Ref) (f_66 T@Field_10738_45341) (v@@4 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_16008 (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@11) (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@11) (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@11) (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@11) (store (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| Heap@@11) o_13 f_66 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16008 (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@11) (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@11) (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@11) (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@11) (store (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| Heap@@11) o_13 f_66 v@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_16008) (o_13@@0 T@Ref) (f_66@@0 T@Field_10738_45474) (v@@5 T@PolymorphicMapType_16557) ) (! (succHeap Heap@@12 (PolymorphicMapType_16008 (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@12) (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@12) (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@12) (store (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@12) o_13@@0 f_66@@0 v@@5) (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16008 (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@12) (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@12) (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@12) (store (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@12) o_13@@0 f_66@@0 v@@5) (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_16008) (o_13@@1 T@Ref) (f_66@@1 T@Field_22109_3274) (v@@6 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_16008 (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@13) (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@13) (store (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@13) o_13@@1 f_66@@1 v@@6) (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@13) (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16008 (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@13) (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@13) (store (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@13) o_13@@1 f_66@@1 v@@6) (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@13) (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_16008) (o_13@@2 T@Ref) (f_66@@2 T@Field_16081_16082) (v@@7 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_16008 (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@14) (store (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@14) o_13@@2 f_66@@2 v@@7) (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@14) (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@14) (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16008 (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@14) (store (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@14) o_13@@2 f_66@@2 v@@7) (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@14) (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@14) (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_16008) (o_13@@3 T@Ref) (f_66@@3 T@Field_16068_53) (v@@8 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_16008 (store (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@15) o_13@@3 f_66@@3 v@@8) (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@15) (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@15) (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@15) (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16008 (store (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@15) o_13@@3 f_66@@3 v@@8) (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@15) (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@15) (|PolymorphicMapType_16008_10738_45518#PolymorphicMapType_16008| Heap@@15) (|PolymorphicMapType_16008_16068_45341#PolymorphicMapType_16008| Heap@@15)))
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
(assert (forall ((o_13@@4 T@Ref) (f_20 T@Field_16081_16082) (Heap@@16 T@PolymorphicMapType_16008) ) (!  (=> (select (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@16) o_13@@4 $allocated) (select (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@16) (select (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@16) o_13@@4 f_20) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_16008_10529_10530#PolymorphicMapType_16008| Heap@@16) o_13@@4 f_20))
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
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun v_2@0 () Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_16029)
(declare-fun x@@5 () T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_16029)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_16008)
(declare-fun Heap@@17 () T@PolymorphicMapType_16008)
(declare-fun neverTriggered12 (Int) Bool)
(declare-fun s_1 () T@Seq_22154)
(declare-fun qpRange12 (T@Ref) Bool)
(declare-fun invRecv12 (T@Ref) Int)
(declare-fun i_24 () Int)
(declare-fun i_23 () Int)
(declare-fun qpRange11 (T@Ref) Bool)
(declare-fun invRecv11 (T@Ref) Int)
(declare-fun i_13 () Int)
(declare-fun i1_27 () Int)
(declare-fun i2_18 () Int)
(set-info :boogie-vc-id test05)
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
 (=> (= (ControlFlow 0 0) 49) (let ((anon22_correct true))
(let ((anon33_Else_correct  (=> (and (< 0 v_2@0) (= (ControlFlow 0 39) 34)) anon22_correct)))
(let ((anon33_Then_correct  (=> (<= v_2@0 0) (and (=> (= (ControlFlow 0 35) (- 0 38)) (HasDirectPerm_10738_3274 QPMask@1 x@@5 f_7)) (=> (HasDirectPerm_10738_3274 QPMask@1 x@@5 f_7) (and (=> (= (ControlFlow 0 35) (- 0 37)) (HasDirectPerm_10738_3274 QPMask@0 x@@5 f_7)) (=> (HasDirectPerm_10738_3274 QPMask@0 x@@5 f_7) (and (=> (= (ControlFlow 0 35) (- 0 36)) (= (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| ExhaleHeap@0) x@@5 f_7) (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@17) x@@5 f_7))) (=> (= (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| ExhaleHeap@0) x@@5 f_7) (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@17) x@@5 f_7)) (=> (and (state ExhaleHeap@0 QPMask@1) (= (ControlFlow 0 35) 34)) anon22_correct))))))))))
(let ((anon30_Else_correct  (and (=> (= (ControlFlow 0 40) (- 0 42)) (forall ((i_5_1 Int) (i_5_2 Int) ) (!  (=> (and (and (and (and (not (= i_5_1 i_5_2)) (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_5_1) (> (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@17) (|Seq#Index_10744| s_1 i_5_1) f_7) 5))) (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_5_2) (> (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@17) (|Seq#Index_10744| s_1 i_5_2) f_7) 5))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_10744| s_1 i_5_1) (|Seq#Index_10744| s_1 i_5_2))))
 :qid |stdinbpl.1567:17|
 :skolemid |132|
 :pattern ( (neverTriggered12 i_5_1) (neverTriggered12 i_5_2))
))) (=> (forall ((i_5_1@@0 Int) (i_5_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_5_1@@0 i_5_2@@0)) (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_5_1@@0) (> (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@17) (|Seq#Index_10744| s_1 i_5_1@@0) f_7) 5))) (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_5_2@@0) (> (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@17) (|Seq#Index_10744| s_1 i_5_2@@0) f_7) 5))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_10744| s_1 i_5_1@@0) (|Seq#Index_10744| s_1 i_5_2@@0))))
 :qid |stdinbpl.1567:17|
 :skolemid |132|
 :pattern ( (neverTriggered12 i_5_1@@0) (neverTriggered12 i_5_2@@0))
)) (and (=> (= (ControlFlow 0 40) (- 0 41)) (forall ((i_5_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_5_1@@1) (> (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@17) (|Seq#Index_10744| s_1 i_5_1@@1) f_7) 5)) (>= (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@0) (|Seq#Index_10744| s_1 i_5_1@@1) f_7) FullPerm))
 :qid |stdinbpl.1574:17|
 :skolemid |133|
 :pattern ( (|Seq#Index_10744| s_1 i_5_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_5_1@@1))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_5_1@@1))
 :pattern ( (|Seq#Index_10744| s_1 i_5_1@@1))
))) (=> (forall ((i_5_1@@2 Int) ) (!  (=> (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_5_1@@2) (> (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@17) (|Seq#Index_10744| s_1 i_5_1@@2) f_7) 5)) (>= (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@0) (|Seq#Index_10744| s_1 i_5_1@@2) f_7) FullPerm))
 :qid |stdinbpl.1574:17|
 :skolemid |133|
 :pattern ( (|Seq#Index_10744| s_1 i_5_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_5_1@@2))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_5_1@@2))
 :pattern ( (|Seq#Index_10744| s_1 i_5_1@@2))
)) (=> (forall ((i_5_1@@3 Int) ) (!  (=> (and (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_5_1@@3) (> (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@17) (|Seq#Index_10744| s_1 i_5_1@@3) f_7) 5)) (< NoPerm FullPerm)) (and (qpRange12 (|Seq#Index_10744| s_1 i_5_1@@3)) (= (invRecv12 (|Seq#Index_10744| s_1 i_5_1@@3)) i_5_1@@3)))
 :qid |stdinbpl.1580:22|
 :skolemid |134|
 :pattern ( (|Seq#Index_10744| s_1 i_5_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_5_1@@3))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_5_1@@3))
 :pattern ( (|Seq#Index_10744| s_1 i_5_1@@3))
)) (=> (and (forall ((o_9 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) (invRecv12 o_9)) (> (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@17) (|Seq#Index_10744| s_1 (invRecv12 o_9)) f_7) 5)) (and (< NoPerm FullPerm) (qpRange12 o_9))) (= (|Seq#Index_10744| s_1 (invRecv12 o_9)) o_9))
 :qid |stdinbpl.1584:22|
 :skolemid |135|
 :pattern ( (invRecv12 o_9))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) (invRecv12 o_9@@0)) (> (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@17) (|Seq#Index_10744| s_1 (invRecv12 o_9@@0)) f_7) 5)) (and (< NoPerm FullPerm) (qpRange12 o_9@@0))) (and (= (|Seq#Index_10744| s_1 (invRecv12 o_9@@0)) o_9@@0) (= (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@1) o_9@@0 f_7) (- (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@0) o_9@@0 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) (invRecv12 o_9@@0)) (> (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@17) (|Seq#Index_10744| s_1 (invRecv12 o_9@@0)) f_7) 5)) (and (< NoPerm FullPerm) (qpRange12 o_9@@0)))) (= (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@1) o_9@@0 f_7) (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@0) o_9@@0 f_7))))
 :qid |stdinbpl.1590:22|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@1) o_9@@0 f_7))
))) (=> (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_16068_53) ) (!  (=> true (= (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| QPMask@0) o_9@@1 f_5) (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| QPMask@1) o_9@@1 f_5)))
 :qid |stdinbpl.1596:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| QPMask@1) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_16081_16082) ) (!  (=> true (= (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| QPMask@0) o_9@@2 f_5@@0) (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| QPMask@1) o_9@@2 f_5@@0)))
 :qid |stdinbpl.1596:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| QPMask@1) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_22109_3274) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@0) o_9@@3 f_5@@1) (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@1) o_9@@3 f_5@@1)))
 :qid |stdinbpl.1596:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@1) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_10738_45341) ) (!  (=> true (= (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| QPMask@0) o_9@@4 f_5@@2) (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| QPMask@1) o_9@@4 f_5@@2)))
 :qid |stdinbpl.1596:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| QPMask@1) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_10738_45474) ) (!  (=> true (= (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| QPMask@0) o_9@@5 f_5@@3) (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| QPMask@1) o_9@@5 f_5@@3)))
 :qid |stdinbpl.1596:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| QPMask@1) o_9@@5 f_5@@3))
))) (and (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@0 QPMask@1) (state ExhaleHeap@0 QPMask@1))) (and (=> (= (ControlFlow 0 40) 35) anon33_Then_correct) (=> (= (ControlFlow 0 40) 39) anon33_Else_correct)))))))))))
(let ((anon19_correct true))
(let ((anon32_Else_correct  (=> (and (not (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_24) (> (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@17) (|Seq#Index_10744| s_1 i_24) f_7) 5))) (= (ControlFlow 0 28) 24)) anon19_correct)))
(let ((anon32_Then_correct  (=> (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_24) (> (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@17) (|Seq#Index_10744| s_1 i_24) f_7) 5)) (and (=> (= (ControlFlow 0 25) (- 0 27)) (>= i_24 0)) (=> (>= i_24 0) (and (=> (= (ControlFlow 0 25) (- 0 26)) (< i_24 (|Seq#Length_10744| s_1))) (=> (< i_24 (|Seq#Length_10744| s_1)) (=> (= (ControlFlow 0 25) 24) anon19_correct))))))))
(let ((anon31_Else_correct  (=> (not (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_24)) (and (=> (= (ControlFlow 0 33) 25) anon32_Then_correct) (=> (= (ControlFlow 0 33) 28) anon32_Else_correct)))))
(let ((anon31_Then_correct  (=> (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_24) (and (=> (= (ControlFlow 0 29) (- 0 32)) (>= i_24 0)) (=> (>= i_24 0) (and (=> (= (ControlFlow 0 29) (- 0 31)) (< i_24 (|Seq#Length_10744| s_1))) (=> (< i_24 (|Seq#Length_10744| s_1)) (and (=> (= (ControlFlow 0 29) (- 0 30)) (HasDirectPerm_10738_3274 QPMask@0 (|Seq#Index_10744| s_1 i_24) f_7)) (=> (HasDirectPerm_10738_3274 QPMask@0 (|Seq#Index_10744| s_1 i_24) f_7) (and (=> (= (ControlFlow 0 29) 25) anon32_Then_correct) (=> (= (ControlFlow 0 29) 28) anon32_Else_correct)))))))))))
(let ((anon27_Else_correct  (=> (and (and (forall ((i_3_2 Int) ) (!  (=> (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_3_2) (> (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@17) (|Seq#Index_10744| s_1 i_3_2) f_7) 0)) (> (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@17) (|Seq#Index_10744| s_1 i_3_2) f_7) 5))
 :qid |stdinbpl.1513:20|
 :skolemid |131|
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_3_2))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_3_2))
 :pattern ( (|Seq#Index_10744| s_1 i_3_2))
)) (state Heap@@17 QPMask@0)) (and (|Seq#Contains_10798| s_1 x@@5) (state Heap@@17 QPMask@0))) (and (=> (= (ControlFlow 0 43) (- 0 44)) (HasDirectPerm_10738_3274 QPMask@0 x@@5 f_7)) (=> (HasDirectPerm_10738_3274 QPMask@0 x@@5 f_7) (=> (and (= v_2@0 (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@17) x@@5 f_7)) (state Heap@@17 QPMask@0)) (and (and (=> (= (ControlFlow 0 43) 40) anon30_Else_correct) (=> (= (ControlFlow 0 43) 29) anon31_Then_correct)) (=> (= (ControlFlow 0 43) 33) anon31_Else_correct))))))))
(let ((anon13_correct true))
(let ((anon29_Else_correct  (=> (and (not (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_23) (> (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@17) (|Seq#Index_10744| s_1 i_23) f_7) 0))) (= (ControlFlow 0 18) 13)) anon13_correct)))
(let ((anon29_Then_correct  (=> (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_23) (> (select (|PolymorphicMapType_16008_10738_3274#PolymorphicMapType_16008| Heap@@17) (|Seq#Index_10744| s_1 i_23) f_7) 0)) (and (=> (= (ControlFlow 0 14) (- 0 17)) (>= i_23 0)) (=> (>= i_23 0) (and (=> (= (ControlFlow 0 14) (- 0 16)) (< i_23 (|Seq#Length_10744| s_1))) (=> (< i_23 (|Seq#Length_10744| s_1)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (HasDirectPerm_10738_3274 QPMask@0 (|Seq#Index_10744| s_1 i_23) f_7)) (=> (HasDirectPerm_10738_3274 QPMask@0 (|Seq#Index_10744| s_1 i_23) f_7) (=> (= (ControlFlow 0 14) 13) anon13_correct))))))))))
(let ((anon28_Else_correct  (=> (not (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_23)) (and (=> (= (ControlFlow 0 23) 14) anon29_Then_correct) (=> (= (ControlFlow 0 23) 18) anon29_Else_correct)))))
(let ((anon28_Then_correct  (=> (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_23) (and (=> (= (ControlFlow 0 19) (- 0 22)) (>= i_23 0)) (=> (>= i_23 0) (and (=> (= (ControlFlow 0 19) (- 0 21)) (< i_23 (|Seq#Length_10744| s_1))) (=> (< i_23 (|Seq#Length_10744| s_1)) (and (=> (= (ControlFlow 0 19) (- 0 20)) (HasDirectPerm_10738_3274 QPMask@0 (|Seq#Index_10744| s_1 i_23) f_7)) (=> (HasDirectPerm_10738_3274 QPMask@0 (|Seq#Index_10744| s_1 i_23) f_7) (and (=> (= (ControlFlow 0 19) 14) anon29_Then_correct) (=> (= (ControlFlow 0 19) 18) anon29_Else_correct)))))))))))
(let ((anon25_Else_correct  (and (=> (= (ControlFlow 0 45) (- 0 46)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_1)) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_10744| s_1 i_1) (|Seq#Index_10744| s_1 i_1_1))))
 :qid |stdinbpl.1459:15|
 :skolemid |125|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_1@@0)) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_10744| s_1 i_1@@0) (|Seq#Index_10744| s_1 i_1_1@@0))))
 :qid |stdinbpl.1459:15|
 :skolemid |125|
)) (=> (and (and (forall ((i_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_1@@1) (< NoPerm FullPerm)) (and (qpRange11 (|Seq#Index_10744| s_1 i_1@@1)) (= (invRecv11 (|Seq#Index_10744| s_1 i_1@@1)) i_1@@1)))
 :qid |stdinbpl.1465:22|
 :skolemid |126|
 :pattern ( (|Seq#Index_10744| s_1 i_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_1@@1))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_1@@1))
 :pattern ( (|Seq#Index_10744| s_1 i_1@@1))
)) (forall ((o_9@@6 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) (invRecv11 o_9@@6)) (< NoPerm FullPerm)) (qpRange11 o_9@@6)) (= (|Seq#Index_10744| s_1 (invRecv11 o_9@@6)) o_9@@6))
 :qid |stdinbpl.1469:22|
 :skolemid |127|
 :pattern ( (invRecv11 o_9@@6))
))) (and (forall ((i_1@@2 Int) ) (!  (=> (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_1@@2) (not (= (|Seq#Index_10744| s_1 i_1@@2) null)))
 :qid |stdinbpl.1475:22|
 :skolemid |128|
 :pattern ( (|Seq#Index_10744| s_1 i_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_1@@2))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_1@@2))
 :pattern ( (|Seq#Index_10744| s_1 i_1@@2))
)) (forall ((o_9@@7 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) (invRecv11 o_9@@7)) (< NoPerm FullPerm)) (qpRange11 o_9@@7)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_10744| s_1 (invRecv11 o_9@@7)) o_9@@7)) (= (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@0) o_9@@7 f_7) (+ (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| ZeroMask) o_9@@7 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) (invRecv11 o_9@@7)) (< NoPerm FullPerm)) (qpRange11 o_9@@7))) (= (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@0) o_9@@7 f_7) (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| ZeroMask) o_9@@7 f_7))))
 :qid |stdinbpl.1481:22|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@0) o_9@@7 f_7))
)))) (=> (and (and (and (and (and (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_16068_53) ) (!  (=> true (= (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| ZeroMask) o_9@@8 f_5@@4) (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| QPMask@0) o_9@@8 f_5@@4)))
 :qid |stdinbpl.1485:29|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| ZeroMask) o_9@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_16029_10738_53#PolymorphicMapType_16029| QPMask@0) o_9@@8 f_5@@4))
)) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_16081_16082) ) (!  (=> true (= (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| ZeroMask) o_9@@9 f_5@@5) (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| QPMask@0) o_9@@9 f_5@@5)))
 :qid |stdinbpl.1485:29|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| ZeroMask) o_9@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_16029_10738_16082#PolymorphicMapType_16029| QPMask@0) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_22109_3274) ) (!  (=> (not (= f_5@@6 f_7)) (= (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| ZeroMask) o_9@@10 f_5@@6) (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@0) o_9@@10 f_5@@6)))
 :qid |stdinbpl.1485:29|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| ZeroMask) o_9@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_16029_10738_3274#PolymorphicMapType_16029| QPMask@0) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_10738_45341) ) (!  (=> true (= (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| ZeroMask) o_9@@11 f_5@@7) (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| QPMask@0) o_9@@11 f_5@@7)))
 :qid |stdinbpl.1485:29|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| ZeroMask) o_9@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_16029_10738_45341#PolymorphicMapType_16029| QPMask@0) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_10738_45474) ) (!  (=> true (= (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| ZeroMask) o_9@@12 f_5@@8) (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| QPMask@0) o_9@@12 f_5@@8)))
 :qid |stdinbpl.1485:29|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| ZeroMask) o_9@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_16029_10738_49596#PolymorphicMapType_16029| QPMask@0) o_9@@12 f_5@@8))
))) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (and (=> (= (ControlFlow 0 45) 43) anon27_Else_correct) (=> (= (ControlFlow 0 45) 19) anon28_Then_correct)) (=> (= (ControlFlow 0 45) 23) anon28_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon26_Else_correct  (=> (and (not (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_13)) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon26_Then_correct  (=> (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i_13) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= i_13 0)) (=> (>= i_13 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< i_13 (|Seq#Length_10744| s_1))) (=> (< i_13 (|Seq#Length_10744| s_1)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon23_Else_correct  (=> (and (forall ((i1_1 Int) (i2_1 Int) ) (!  (=> (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i1_1) (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i2_1) (not (= i1_1 i2_1)))) (not (= (|Seq#Index_10744| s_1 i1_1) (|Seq#Index_10744| s_1 i2_1))))
 :qid |stdinbpl.1441:20|
 :skolemid |124|
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i1_1) (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i2_1))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i1_1) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i2_1))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i1_1) (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i2_1))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i1_1) (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i2_1))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i1_1) (|Seq#Index_10744| s_1 i2_1))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i1_1) (|Seq#Index_10744| s_1 i2_1))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i2_1) (|Seq#Index_10744| s_1 i1_1))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i2_1) (|Seq#Index_10744| s_1 i1_1))
 :pattern ( (|Seq#Index_10744| s_1 i1_1) (|Seq#Index_10744| s_1 i2_1))
)) (state Heap@@17 ZeroMask)) (and (and (=> (= (ControlFlow 0 47) 45) anon25_Else_correct) (=> (= (ControlFlow 0 47) 9) anon26_Then_correct)) (=> (= (ControlFlow 0 47) 12) anon26_Else_correct)))))
(let ((anon3_correct true))
(let ((anon24_Else_correct  (=> (and (not (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i1_27) (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i2_18) (not (= i1_27 i2_18))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon24_Then_correct  (=> (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i1_27) (and (|Seq#Contains_3152| (|Seq#Range| 0 (|Seq#Length_10744| s_1)) i2_18) (not (= i1_27 i2_18)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i1_27 0)) (=> (>= i1_27 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i1_27 (|Seq#Length_10744| s_1))) (=> (< i1_27 (|Seq#Length_10744| s_1)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= i2_18 0)) (=> (>= i2_18 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< i2_18 (|Seq#Length_10744| s_1))) (=> (< i2_18 (|Seq#Length_10744| s_1)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_16008_10526_53#PolymorphicMapType_16008| Heap@@17) x@@5 $allocated)) (and (and (=> (= (ControlFlow 0 48) 47) anon23_Else_correct) (=> (= (ControlFlow 0 48) 2) anon24_Then_correct)) (=> (= (ControlFlow 0 48) 7) anon24_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 49) 48) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
