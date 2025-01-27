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
(declare-sort T@Field_12892_53 0)
(declare-sort T@Field_12905_12906 0)
(declare-sort T@Field_18933_3274 0)
(declare-sort T@Field_8664_35840 0)
(declare-sort T@Field_8664_35707 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_12853 0)) (((PolymorphicMapType_12853 (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| (Array T@Ref T@Field_18933_3274 Real)) (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| (Array T@Ref T@Field_12892_53 Real)) (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| (Array T@Ref T@Field_12905_12906 Real)) (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| (Array T@Ref T@Field_8664_35707 Real)) (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| (Array T@Ref T@Field_8664_35840 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13381 0)) (((PolymorphicMapType_13381 (|PolymorphicMapType_13381_12892_53#PolymorphicMapType_13381| (Array T@Ref T@Field_12892_53 Bool)) (|PolymorphicMapType_13381_12892_12906#PolymorphicMapType_13381| (Array T@Ref T@Field_12905_12906 Bool)) (|PolymorphicMapType_13381_12892_3274#PolymorphicMapType_13381| (Array T@Ref T@Field_18933_3274 Bool)) (|PolymorphicMapType_13381_12892_35707#PolymorphicMapType_13381| (Array T@Ref T@Field_8664_35707 Bool)) (|PolymorphicMapType_13381_12892_37018#PolymorphicMapType_13381| (Array T@Ref T@Field_8664_35840 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12832 0)) (((PolymorphicMapType_12832 (|PolymorphicMapType_12832_8452_53#PolymorphicMapType_12832| (Array T@Ref T@Field_12892_53 Bool)) (|PolymorphicMapType_12832_8455_8456#PolymorphicMapType_12832| (Array T@Ref T@Field_12905_12906 T@Ref)) (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| (Array T@Ref T@Field_18933_3274 Int)) (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| (Array T@Ref T@Field_8664_35840 T@PolymorphicMapType_13381)) (|PolymorphicMapType_12832_12892_35707#PolymorphicMapType_12832| (Array T@Ref T@Field_8664_35707 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_12892_53)
(declare-fun f_7 () T@Field_18933_3274)
(declare-sort T@Seq_18978 0)
(declare-fun |Seq#Length_8668| (T@Seq_18978) Int)
(declare-fun |Seq#Drop_8668| (T@Seq_18978 Int) T@Seq_18978)
(declare-sort T@Seq_3152 0)
(declare-fun |Seq#Length_3152| (T@Seq_3152) Int)
(declare-fun |Seq#Drop_3152| (T@Seq_3152 Int) T@Seq_3152)
(declare-fun succHeap (T@PolymorphicMapType_12832 T@PolymorphicMapType_12832) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_12832 T@PolymorphicMapType_12832) Bool)
(declare-fun state (T@PolymorphicMapType_12832 T@PolymorphicMapType_12853) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_12853) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_13381)
(declare-fun |Seq#Index_8668| (T@Seq_18978 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3152| (T@Seq_3152 Int) Int)
(declare-fun |Seq#Empty_8668| () T@Seq_18978)
(declare-fun |Seq#Empty_3152| () T@Seq_3152)
(declare-fun |Seq#Update_8668| (T@Seq_18978 Int T@Ref) T@Seq_18978)
(declare-fun |Seq#Update_3152| (T@Seq_3152 Int Int) T@Seq_3152)
(declare-fun |Seq#Take_8668| (T@Seq_18978 Int) T@Seq_18978)
(declare-fun |Seq#Take_3152| (T@Seq_3152 Int) T@Seq_3152)
(declare-fun |Seq#Contains_3152| (T@Seq_3152 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3152)
(declare-fun |Seq#Contains_18978| (T@Seq_18978 T@Ref) Bool)
(declare-fun |Seq#Skolem_18978| (T@Seq_18978 T@Ref) Int)
(declare-fun |Seq#Skolem_3152| (T@Seq_3152 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_12832 T@PolymorphicMapType_12832 T@PolymorphicMapType_12853) Bool)
(declare-fun IsPredicateField_8664_35798 (T@Field_8664_35707) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_8664 (T@Field_8664_35707) T@Field_8664_35840)
(declare-fun HasDirectPerm_8664_35771 (T@PolymorphicMapType_12853 T@Ref T@Field_8664_35707) Bool)
(declare-fun IsWandField_8664_37545 (T@Field_8664_35707) Bool)
(declare-fun WandMaskField_8664 (T@Field_8664_35707) T@Field_8664_35840)
(declare-fun |Seq#Singleton_8668| (T@Ref) T@Seq_18978)
(declare-fun |Seq#Singleton_3152| (Int) T@Seq_3152)
(declare-fun |Seq#Append_18978| (T@Seq_18978 T@Seq_18978) T@Seq_18978)
(declare-fun |Seq#Append_3152| (T@Seq_3152 T@Seq_3152) T@Seq_3152)
(declare-fun dummyHeap () T@PolymorphicMapType_12832)
(declare-fun ZeroMask () T@PolymorphicMapType_12853)
(declare-fun InsidePredicate_12892_12892 (T@Field_8664_35707 T@FrameType T@Field_8664_35707 T@FrameType) Bool)
(declare-fun IsPredicateField_8664_3274 (T@Field_18933_3274) Bool)
(declare-fun IsWandField_8664_3274 (T@Field_18933_3274) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8664_41091 (T@Field_8664_35840) Bool)
(declare-fun IsWandField_8664_41107 (T@Field_8664_35840) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8664_12906 (T@Field_12905_12906) Bool)
(declare-fun IsWandField_8664_12906 (T@Field_12905_12906) Bool)
(declare-fun IsPredicateField_8664_53 (T@Field_12892_53) Bool)
(declare-fun IsWandField_8664_53 (T@Field_12892_53) Bool)
(declare-fun HasDirectPerm_8664_41545 (T@PolymorphicMapType_12853 T@Ref T@Field_8664_35840) Bool)
(declare-fun HasDirectPerm_8664_12906 (T@PolymorphicMapType_12853 T@Ref T@Field_12905_12906) Bool)
(declare-fun HasDirectPerm_8664_53 (T@PolymorphicMapType_12853 T@Ref T@Field_12892_53) Bool)
(declare-fun HasDirectPerm_8664_3274 (T@PolymorphicMapType_12853 T@Ref T@Field_18933_3274) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_12853 T@PolymorphicMapType_12853 T@PolymorphicMapType_12853) Bool)
(declare-fun |Seq#Equal_18978| (T@Seq_18978 T@Seq_18978) Bool)
(declare-fun |Seq#Equal_3152| (T@Seq_3152 T@Seq_3152) Bool)
(declare-fun |Seq#ContainsTrigger_8668| (T@Seq_18978 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3152| (T@Seq_3152 Int) Bool)
(declare-fun |Seq#SkolemDiff_18978| (T@Seq_18978 T@Seq_18978) Int)
(declare-fun |Seq#SkolemDiff_3152| (T@Seq_3152 T@Seq_3152) Int)
(assert (forall ((s T@Seq_18978) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_8668| s)) (= (|Seq#Length_8668| (|Seq#Drop_8668| s n)) (- (|Seq#Length_8668| s) n))) (=> (< (|Seq#Length_8668| s) n) (= (|Seq#Length_8668| (|Seq#Drop_8668| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_8668| (|Seq#Drop_8668| s n)) (|Seq#Length_8668| s))))
 :qid |stdinbpl.321:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_8668| (|Seq#Drop_8668| s n)))
 :pattern ( (|Seq#Length_8668| s) (|Seq#Drop_8668| s n))
)))
(assert (forall ((s@@0 T@Seq_3152) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3152| s@@0)) (= (|Seq#Length_3152| (|Seq#Drop_3152| s@@0 n@@0)) (- (|Seq#Length_3152| s@@0) n@@0))) (=> (< (|Seq#Length_3152| s@@0) n@@0) (= (|Seq#Length_3152| (|Seq#Drop_3152| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3152| (|Seq#Drop_3152| s@@0 n@@0)) (|Seq#Length_3152| s@@0))))
 :qid |stdinbpl.321:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3152| (|Seq#Drop_3152| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3152| s@@0) (|Seq#Drop_3152| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_12832) (Heap1 T@PolymorphicMapType_12832) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_12832) (Mask T@PolymorphicMapType_12853) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_12832) (Heap1@@0 T@PolymorphicMapType_12832) (Heap2 T@PolymorphicMapType_12832) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_8664_35840) ) (!  (not (select (|PolymorphicMapType_13381_12892_37018#PolymorphicMapType_13381| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13381_12892_37018#PolymorphicMapType_13381| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_8664_35707) ) (!  (not (select (|PolymorphicMapType_13381_12892_35707#PolymorphicMapType_13381| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13381_12892_35707#PolymorphicMapType_13381| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_18933_3274) ) (!  (not (select (|PolymorphicMapType_13381_12892_3274#PolymorphicMapType_13381| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13381_12892_3274#PolymorphicMapType_13381| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_12905_12906) ) (!  (not (select (|PolymorphicMapType_13381_12892_12906#PolymorphicMapType_13381| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13381_12892_12906#PolymorphicMapType_13381| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_12892_53) ) (!  (not (select (|PolymorphicMapType_13381_12892_53#PolymorphicMapType_13381| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13381_12892_53#PolymorphicMapType_13381| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_18978) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_8668| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_8668| (|Seq#Drop_8668| s@@1 n@@1) j) (|Seq#Index_8668| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.342:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_8668| (|Seq#Drop_8668| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3152) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3152| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3152| (|Seq#Drop_3152| s@@2 n@@2) j@@0) (|Seq#Index_3152| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.342:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3152| (|Seq#Drop_3152| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_8668| |Seq#Empty_8668|) 0))
(assert (= (|Seq#Length_3152| |Seq#Empty_3152|) 0))
(assert (forall ((s@@3 T@Seq_18978) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_8668| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_8668| (|Seq#Update_8668| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_8668| (|Seq#Update_8668| s@@3 i v) n@@3) (|Seq#Index_8668| s@@3 n@@3)))))
 :qid |stdinbpl.297:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_8668| (|Seq#Update_8668| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_8668| s@@3 n@@3) (|Seq#Update_8668| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3152) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3152| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3152| (|Seq#Update_3152| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3152| (|Seq#Update_3152| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3152| s@@4 n@@4)))))
 :qid |stdinbpl.297:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3152| (|Seq#Update_3152| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3152| s@@4 n@@4) (|Seq#Update_3152| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_18978) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_8668| s@@5)) (= (|Seq#Length_8668| (|Seq#Take_8668| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_8668| s@@5) n@@5) (= (|Seq#Length_8668| (|Seq#Take_8668| s@@5 n@@5)) (|Seq#Length_8668| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_8668| (|Seq#Take_8668| s@@5 n@@5)) 0)))
 :qid |stdinbpl.308:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_8668| (|Seq#Take_8668| s@@5 n@@5)))
 :pattern ( (|Seq#Take_8668| s@@5 n@@5) (|Seq#Length_8668| s@@5))
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
(assert (forall ((s@@7 T@Seq_18978) (x T@Ref) ) (!  (=> (|Seq#Contains_18978| s@@7 x) (and (and (<= 0 (|Seq#Skolem_18978| s@@7 x)) (< (|Seq#Skolem_18978| s@@7 x) (|Seq#Length_8668| s@@7))) (= (|Seq#Index_8668| s@@7 (|Seq#Skolem_18978| s@@7 x)) x)))
 :qid |stdinbpl.440:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_18978| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3152) (x@@0 Int) ) (!  (=> (|Seq#Contains_3152| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3152| s@@8 x@@0)) (< (|Seq#Skolem_3152| s@@8 x@@0) (|Seq#Length_3152| s@@8))) (= (|Seq#Index_3152| s@@8 (|Seq#Skolem_3152| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.440:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3152| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_18978) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_8668| s@@9 n@@7) s@@9))
 :qid |stdinbpl.424:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_8668| s@@9 n@@7))
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
(assert (forall ((Heap@@0 T@PolymorphicMapType_12832) (ExhaleHeap T@PolymorphicMapType_12832) (Mask@@0 T@PolymorphicMapType_12853) (pm_f_20 T@Field_8664_35707) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_8664_35771 Mask@@0 null pm_f_20) (IsPredicateField_8664_35798 pm_f_20)) (= (select (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| Heap@@0) null (PredicateMaskField_8664 pm_f_20)) (select (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| ExhaleHeap) null (PredicateMaskField_8664 pm_f_20)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_8664_35798 pm_f_20) (select (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| ExhaleHeap) null (PredicateMaskField_8664 pm_f_20)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_12832) (ExhaleHeap@@0 T@PolymorphicMapType_12832) (Mask@@1 T@PolymorphicMapType_12853) (pm_f_20@@0 T@Field_8664_35707) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_8664_35771 Mask@@1 null pm_f_20@@0) (IsWandField_8664_37545 pm_f_20@@0)) (= (select (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| Heap@@1) null (WandMaskField_8664 pm_f_20@@0)) (select (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| ExhaleHeap@@0) null (WandMaskField_8664 pm_f_20@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_8664_37545 pm_f_20@@0) (select (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| ExhaleHeap@@0) null (WandMaskField_8664 pm_f_20@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_18978| (|Seq#Singleton_8668| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.565:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_18978| (|Seq#Singleton_8668| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3152| (|Seq#Singleton_3152| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.565:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3152| (|Seq#Singleton_3152| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_18978) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_8668| s@@11))) (= (|Seq#Index_8668| (|Seq#Take_8668| s@@11 n@@9) j@@3) (|Seq#Index_8668| s@@11 j@@3)))
 :qid |stdinbpl.316:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_8668| (|Seq#Take_8668| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_8668| s@@11 j@@3) (|Seq#Take_8668| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3152) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3152| s@@12))) (= (|Seq#Index_3152| (|Seq#Take_3152| s@@12 n@@10) j@@4) (|Seq#Index_3152| s@@12 j@@4)))
 :qid |stdinbpl.316:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3152| (|Seq#Take_3152| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3152| s@@12 j@@4) (|Seq#Take_3152| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_18978) (t T@Seq_18978) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_8668| s@@13))) (< n@@11 (|Seq#Length_8668| (|Seq#Append_18978| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_8668| s@@13)) (|Seq#Length_8668| s@@13)) n@@11) (= (|Seq#Take_8668| (|Seq#Append_18978| s@@13 t) n@@11) (|Seq#Append_18978| s@@13 (|Seq#Take_8668| t (|Seq#Sub| n@@11 (|Seq#Length_8668| s@@13)))))))
 :qid |stdinbpl.401:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_8668| (|Seq#Append_18978| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3152) (t@@0 T@Seq_3152) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3152| s@@14))) (< n@@12 (|Seq#Length_3152| (|Seq#Append_3152| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3152| s@@14)) (|Seq#Length_3152| s@@14)) n@@12) (= (|Seq#Take_3152| (|Seq#Append_3152| s@@14 t@@0) n@@12) (|Seq#Append_3152| s@@14 (|Seq#Take_3152| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3152| s@@14)))))))
 :qid |stdinbpl.401:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3152| (|Seq#Append_3152| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12832) (ExhaleHeap@@1 T@PolymorphicMapType_12832) (Mask@@2 T@PolymorphicMapType_12853) (o_41 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_12832_8452_53#PolymorphicMapType_12832| Heap@@2) o_41 $allocated) (select (|PolymorphicMapType_12832_8452_53#PolymorphicMapType_12832| ExhaleHeap@@1) o_41 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_12832_8452_53#PolymorphicMapType_12832| ExhaleHeap@@1) o_41 $allocated))
)))
(assert (forall ((p T@Field_8664_35707) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12892_12892 p v_1 p w))
 :qid |stdinbpl.219:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12892_12892 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_18978) (s1 T@Seq_18978) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_8668|)) (not (= s1 |Seq#Empty_8668|))) (<= (|Seq#Length_8668| s0) n@@13)) (< n@@13 (|Seq#Length_8668| (|Seq#Append_18978| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_8668| s0)) (|Seq#Length_8668| s0)) n@@13) (= (|Seq#Index_8668| (|Seq#Append_18978| s0 s1) n@@13) (|Seq#Index_8668| s1 (|Seq#Sub| n@@13 (|Seq#Length_8668| s0))))))
 :qid |stdinbpl.288:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_8668| (|Seq#Append_18978| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3152) (s1@@0 T@Seq_3152) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3152|)) (not (= s1@@0 |Seq#Empty_3152|))) (<= (|Seq#Length_3152| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3152| (|Seq#Append_3152| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3152| s0@@0)) (|Seq#Length_3152| s0@@0)) n@@14) (= (|Seq#Index_3152| (|Seq#Append_3152| s0@@0 s1@@0) n@@14) (|Seq#Index_3152| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3152| s0@@0))))))
 :qid |stdinbpl.288:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3152| (|Seq#Append_3152| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_8664_3274 f_7)))
(assert  (not (IsWandField_8664_3274 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12832) (ExhaleHeap@@2 T@PolymorphicMapType_12832) (Mask@@3 T@PolymorphicMapType_12853) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_12853) (o_2@@4 T@Ref) (f_4@@4 T@Field_8664_35840) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_8664_41091 f_4@@4))) (not (IsWandField_8664_41107 f_4@@4))) (<= (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_12853) (o_2@@5 T@Ref) (f_4@@5 T@Field_8664_35707) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_8664_35798 f_4@@5))) (not (IsWandField_8664_37545 f_4@@5))) (<= (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_12853) (o_2@@6 T@Ref) (f_4@@6 T@Field_12905_12906) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_8664_12906 f_4@@6))) (not (IsWandField_8664_12906 f_4@@6))) (<= (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_12853) (o_2@@7 T@Ref) (f_4@@7 T@Field_12892_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_8664_53 f_4@@7))) (not (IsWandField_8664_53 f_4@@7))) (<= (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_12853) (o_2@@8 T@Ref) (f_4@@8 T@Field_18933_3274) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_8664_3274 f_4@@8))) (not (IsWandField_8664_3274 f_4@@8))) (<= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_12853) (o_2@@9 T@Ref) (f_4@@9 T@Field_8664_35840) ) (! (= (HasDirectPerm_8664_41545 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8664_41545 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_12853) (o_2@@10 T@Ref) (f_4@@10 T@Field_8664_35707) ) (! (= (HasDirectPerm_8664_35771 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8664_35771 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_12853) (o_2@@11 T@Ref) (f_4@@11 T@Field_12905_12906) ) (! (= (HasDirectPerm_8664_12906 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8664_12906 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_12853) (o_2@@12 T@Ref) (f_4@@12 T@Field_12892_53) ) (! (= (HasDirectPerm_8664_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8664_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_12853) (o_2@@13 T@Ref) (f_4@@13 T@Field_18933_3274) ) (! (= (HasDirectPerm_8664_3274 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8664_3274 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12832) (ExhaleHeap@@3 T@PolymorphicMapType_12832) (Mask@@14 T@PolymorphicMapType_12853) (pm_f_20@@1 T@Field_8664_35707) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_8664_35771 Mask@@14 null pm_f_20@@1) (IsPredicateField_8664_35798 pm_f_20@@1)) (and (and (and (and (forall ((o2_20 T@Ref) (f_53 T@Field_12892_53) ) (!  (=> (select (|PolymorphicMapType_13381_12892_53#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| Heap@@4) null (PredicateMaskField_8664 pm_f_20@@1))) o2_20 f_53) (= (select (|PolymorphicMapType_12832_8452_53#PolymorphicMapType_12832| Heap@@4) o2_20 f_53) (select (|PolymorphicMapType_12832_8452_53#PolymorphicMapType_12832| ExhaleHeap@@3) o2_20 f_53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12832_8452_53#PolymorphicMapType_12832| ExhaleHeap@@3) o2_20 f_53))
)) (forall ((o2_20@@0 T@Ref) (f_53@@0 T@Field_12905_12906) ) (!  (=> (select (|PolymorphicMapType_13381_12892_12906#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| Heap@@4) null (PredicateMaskField_8664 pm_f_20@@1))) o2_20@@0 f_53@@0) (= (select (|PolymorphicMapType_12832_8455_8456#PolymorphicMapType_12832| Heap@@4) o2_20@@0 f_53@@0) (select (|PolymorphicMapType_12832_8455_8456#PolymorphicMapType_12832| ExhaleHeap@@3) o2_20@@0 f_53@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12832_8455_8456#PolymorphicMapType_12832| ExhaleHeap@@3) o2_20@@0 f_53@@0))
))) (forall ((o2_20@@1 T@Ref) (f_53@@1 T@Field_18933_3274) ) (!  (=> (select (|PolymorphicMapType_13381_12892_3274#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| Heap@@4) null (PredicateMaskField_8664 pm_f_20@@1))) o2_20@@1 f_53@@1) (= (select (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| Heap@@4) o2_20@@1 f_53@@1) (select (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| ExhaleHeap@@3) o2_20@@1 f_53@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| ExhaleHeap@@3) o2_20@@1 f_53@@1))
))) (forall ((o2_20@@2 T@Ref) (f_53@@2 T@Field_8664_35707) ) (!  (=> (select (|PolymorphicMapType_13381_12892_35707#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| Heap@@4) null (PredicateMaskField_8664 pm_f_20@@1))) o2_20@@2 f_53@@2) (= (select (|PolymorphicMapType_12832_12892_35707#PolymorphicMapType_12832| Heap@@4) o2_20@@2 f_53@@2) (select (|PolymorphicMapType_12832_12892_35707#PolymorphicMapType_12832| ExhaleHeap@@3) o2_20@@2 f_53@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12832_12892_35707#PolymorphicMapType_12832| ExhaleHeap@@3) o2_20@@2 f_53@@2))
))) (forall ((o2_20@@3 T@Ref) (f_53@@3 T@Field_8664_35840) ) (!  (=> (select (|PolymorphicMapType_13381_12892_37018#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| Heap@@4) null (PredicateMaskField_8664 pm_f_20@@1))) o2_20@@3 f_53@@3) (= (select (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| Heap@@4) o2_20@@3 f_53@@3) (select (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| ExhaleHeap@@3) o2_20@@3 f_53@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| ExhaleHeap@@3) o2_20@@3 f_53@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_8664_35798 pm_f_20@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12832) (ExhaleHeap@@4 T@PolymorphicMapType_12832) (Mask@@15 T@PolymorphicMapType_12853) (pm_f_20@@2 T@Field_8664_35707) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_8664_35771 Mask@@15 null pm_f_20@@2) (IsWandField_8664_37545 pm_f_20@@2)) (and (and (and (and (forall ((o2_20@@4 T@Ref) (f_53@@4 T@Field_12892_53) ) (!  (=> (select (|PolymorphicMapType_13381_12892_53#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| Heap@@5) null (WandMaskField_8664 pm_f_20@@2))) o2_20@@4 f_53@@4) (= (select (|PolymorphicMapType_12832_8452_53#PolymorphicMapType_12832| Heap@@5) o2_20@@4 f_53@@4) (select (|PolymorphicMapType_12832_8452_53#PolymorphicMapType_12832| ExhaleHeap@@4) o2_20@@4 f_53@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12832_8452_53#PolymorphicMapType_12832| ExhaleHeap@@4) o2_20@@4 f_53@@4))
)) (forall ((o2_20@@5 T@Ref) (f_53@@5 T@Field_12905_12906) ) (!  (=> (select (|PolymorphicMapType_13381_12892_12906#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| Heap@@5) null (WandMaskField_8664 pm_f_20@@2))) o2_20@@5 f_53@@5) (= (select (|PolymorphicMapType_12832_8455_8456#PolymorphicMapType_12832| Heap@@5) o2_20@@5 f_53@@5) (select (|PolymorphicMapType_12832_8455_8456#PolymorphicMapType_12832| ExhaleHeap@@4) o2_20@@5 f_53@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12832_8455_8456#PolymorphicMapType_12832| ExhaleHeap@@4) o2_20@@5 f_53@@5))
))) (forall ((o2_20@@6 T@Ref) (f_53@@6 T@Field_18933_3274) ) (!  (=> (select (|PolymorphicMapType_13381_12892_3274#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| Heap@@5) null (WandMaskField_8664 pm_f_20@@2))) o2_20@@6 f_53@@6) (= (select (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| Heap@@5) o2_20@@6 f_53@@6) (select (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| ExhaleHeap@@4) o2_20@@6 f_53@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| ExhaleHeap@@4) o2_20@@6 f_53@@6))
))) (forall ((o2_20@@7 T@Ref) (f_53@@7 T@Field_8664_35707) ) (!  (=> (select (|PolymorphicMapType_13381_12892_35707#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| Heap@@5) null (WandMaskField_8664 pm_f_20@@2))) o2_20@@7 f_53@@7) (= (select (|PolymorphicMapType_12832_12892_35707#PolymorphicMapType_12832| Heap@@5) o2_20@@7 f_53@@7) (select (|PolymorphicMapType_12832_12892_35707#PolymorphicMapType_12832| ExhaleHeap@@4) o2_20@@7 f_53@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12832_12892_35707#PolymorphicMapType_12832| ExhaleHeap@@4) o2_20@@7 f_53@@7))
))) (forall ((o2_20@@8 T@Ref) (f_53@@8 T@Field_8664_35840) ) (!  (=> (select (|PolymorphicMapType_13381_12892_37018#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| Heap@@5) null (WandMaskField_8664 pm_f_20@@2))) o2_20@@8 f_53@@8) (= (select (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| Heap@@5) o2_20@@8 f_53@@8) (select (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| ExhaleHeap@@4) o2_20@@8 f_53@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| ExhaleHeap@@4) o2_20@@8 f_53@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_8664_37545 pm_f_20@@2))
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
(assert (forall ((Heap@@6 T@PolymorphicMapType_12832) (ExhaleHeap@@5 T@PolymorphicMapType_12832) (Mask@@16 T@PolymorphicMapType_12853) (o_41@@0 T@Ref) (f_53@@9 T@Field_8664_35840) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_8664_41545 Mask@@16 o_41@@0 f_53@@9) (= (select (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| Heap@@6) o_41@@0 f_53@@9) (select (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| ExhaleHeap@@5) o_41@@0 f_53@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| ExhaleHeap@@5) o_41@@0 f_53@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12832) (ExhaleHeap@@6 T@PolymorphicMapType_12832) (Mask@@17 T@PolymorphicMapType_12853) (o_41@@1 T@Ref) (f_53@@10 T@Field_8664_35707) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_8664_35771 Mask@@17 o_41@@1 f_53@@10) (= (select (|PolymorphicMapType_12832_12892_35707#PolymorphicMapType_12832| Heap@@7) o_41@@1 f_53@@10) (select (|PolymorphicMapType_12832_12892_35707#PolymorphicMapType_12832| ExhaleHeap@@6) o_41@@1 f_53@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_12832_12892_35707#PolymorphicMapType_12832| ExhaleHeap@@6) o_41@@1 f_53@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12832) (ExhaleHeap@@7 T@PolymorphicMapType_12832) (Mask@@18 T@PolymorphicMapType_12853) (o_41@@2 T@Ref) (f_53@@11 T@Field_12905_12906) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_8664_12906 Mask@@18 o_41@@2 f_53@@11) (= (select (|PolymorphicMapType_12832_8455_8456#PolymorphicMapType_12832| Heap@@8) o_41@@2 f_53@@11) (select (|PolymorphicMapType_12832_8455_8456#PolymorphicMapType_12832| ExhaleHeap@@7) o_41@@2 f_53@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_12832_8455_8456#PolymorphicMapType_12832| ExhaleHeap@@7) o_41@@2 f_53@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12832) (ExhaleHeap@@8 T@PolymorphicMapType_12832) (Mask@@19 T@PolymorphicMapType_12853) (o_41@@3 T@Ref) (f_53@@12 T@Field_12892_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_8664_53 Mask@@19 o_41@@3 f_53@@12) (= (select (|PolymorphicMapType_12832_8452_53#PolymorphicMapType_12832| Heap@@9) o_41@@3 f_53@@12) (select (|PolymorphicMapType_12832_8452_53#PolymorphicMapType_12832| ExhaleHeap@@8) o_41@@3 f_53@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_12832_8452_53#PolymorphicMapType_12832| ExhaleHeap@@8) o_41@@3 f_53@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12832) (ExhaleHeap@@9 T@PolymorphicMapType_12832) (Mask@@20 T@PolymorphicMapType_12853) (o_41@@4 T@Ref) (f_53@@13 T@Field_18933_3274) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_8664_3274 Mask@@20 o_41@@4 f_53@@13) (= (select (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| Heap@@10) o_41@@4 f_53@@13) (select (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| ExhaleHeap@@9) o_41@@4 f_53@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| ExhaleHeap@@9) o_41@@4 f_53@@13))
)))
(assert (forall ((s0@@1 T@Seq_18978) (s1@@1 T@Seq_18978) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_8668|)) (not (= s1@@1 |Seq#Empty_8668|))) (= (|Seq#Length_8668| (|Seq#Append_18978| s0@@1 s1@@1)) (+ (|Seq#Length_8668| s0@@1) (|Seq#Length_8668| s1@@1))))
 :qid |stdinbpl.257:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_8668| (|Seq#Append_18978| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3152) (s1@@2 T@Seq_3152) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3152|)) (not (= s1@@2 |Seq#Empty_3152|))) (= (|Seq#Length_3152| (|Seq#Append_3152| s0@@2 s1@@2)) (+ (|Seq#Length_3152| s0@@2) (|Seq#Length_3152| s1@@2))))
 :qid |stdinbpl.257:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3152| (|Seq#Append_3152| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_8664_35840) ) (! (= (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_8664_35707) ) (! (= (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_12905_12906) ) (! (= (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_12892_53) ) (! (= (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_18933_3274) ) (! (= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_18978) (t@@1 T@Seq_18978) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_8668| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_8668| s@@15)) (|Seq#Length_8668| s@@15)) n@@15) (= (|Seq#Drop_8668| (|Seq#Append_18978| s@@15 t@@1) n@@15) (|Seq#Drop_8668| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_8668| s@@15))))))
 :qid |stdinbpl.414:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_8668| (|Seq#Append_18978| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3152) (t@@2 T@Seq_3152) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3152| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3152| s@@16)) (|Seq#Length_3152| s@@16)) n@@16) (= (|Seq#Drop_3152| (|Seq#Append_3152| s@@16 t@@2) n@@16) (|Seq#Drop_3152| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3152| s@@16))))))
 :qid |stdinbpl.414:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3152| (|Seq#Append_3152| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12853) (SummandMask1 T@PolymorphicMapType_12853) (SummandMask2 T@PolymorphicMapType_12853) (o_2@@19 T@Ref) (f_4@@19 T@Field_8664_35840) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12853) (SummandMask1@@0 T@PolymorphicMapType_12853) (SummandMask2@@0 T@PolymorphicMapType_12853) (o_2@@20 T@Ref) (f_4@@20 T@Field_8664_35707) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12853) (SummandMask1@@1 T@PolymorphicMapType_12853) (SummandMask2@@1 T@PolymorphicMapType_12853) (o_2@@21 T@Ref) (f_4@@21 T@Field_12905_12906) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12853) (SummandMask1@@2 T@PolymorphicMapType_12853) (SummandMask2@@2 T@PolymorphicMapType_12853) (o_2@@22 T@Ref) (f_4@@22 T@Field_12892_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_12853) (SummandMask1@@3 T@PolymorphicMapType_12853) (SummandMask2@@3 T@PolymorphicMapType_12853) (o_2@@23 T@Ref) (f_4@@23 T@Field_18933_3274) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3152| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3152| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.579:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3152| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_18978) (b T@Seq_18978) ) (!  (=> (|Seq#Equal_18978| a b) (= a b))
 :qid |stdinbpl.552:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_18978| a b))
)))
(assert (forall ((a@@0 T@Seq_3152) (b@@0 T@Seq_3152) ) (!  (=> (|Seq#Equal_3152| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.552:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3152| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_18978) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_8668| s@@17))) (|Seq#ContainsTrigger_8668| s@@17 (|Seq#Index_8668| s@@17 i@@3)))
 :qid |stdinbpl.445:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_8668| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3152) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3152| s@@18))) (|Seq#ContainsTrigger_3152| s@@18 (|Seq#Index_3152| s@@18 i@@4)))
 :qid |stdinbpl.445:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3152| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_18978) (s1@@3 T@Seq_18978) ) (!  (and (=> (= s0@@3 |Seq#Empty_8668|) (= (|Seq#Append_18978| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_8668|) (= (|Seq#Append_18978| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.263:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_18978| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3152) (s1@@4 T@Seq_3152) ) (!  (and (=> (= s0@@4 |Seq#Empty_3152|) (= (|Seq#Append_3152| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3152|) (= (|Seq#Append_3152| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.263:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3152| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_8668| (|Seq#Singleton_8668| t@@3) 0) t@@3)
 :qid |stdinbpl.267:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_8668| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3152| (|Seq#Singleton_3152| t@@4) 0) t@@4)
 :qid |stdinbpl.267:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3152| t@@4))
)))
(assert (forall ((s@@19 T@Seq_18978) ) (! (<= 0 (|Seq#Length_8668| s@@19))
 :qid |stdinbpl.246:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_8668| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3152) ) (! (<= 0 (|Seq#Length_3152| s@@20))
 :qid |stdinbpl.246:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3152| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_18978) (s1@@5 T@Seq_18978) ) (!  (=> (|Seq#Equal_18978| s0@@5 s1@@5) (and (= (|Seq#Length_8668| s0@@5) (|Seq#Length_8668| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_8668| s0@@5))) (= (|Seq#Index_8668| s0@@5 j@@6) (|Seq#Index_8668| s1@@5 j@@6)))
 :qid |stdinbpl.542:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_8668| s0@@5 j@@6))
 :pattern ( (|Seq#Index_8668| s1@@5 j@@6))
))))
 :qid |stdinbpl.539:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_18978| s0@@5 s1@@5))
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
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_8668| (|Seq#Singleton_8668| t@@5)) 1)
 :qid |stdinbpl.254:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_8668| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3152| (|Seq#Singleton_3152| t@@6)) 1)
 :qid |stdinbpl.254:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3152| t@@6))
)))
(assert (forall ((s@@21 T@Seq_18978) (t@@7 T@Seq_18978) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_8668| s@@21))) (= (|Seq#Take_8668| (|Seq#Append_18978| s@@21 t@@7) n@@17) (|Seq#Take_8668| s@@21 n@@17)))
 :qid |stdinbpl.396:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_8668| (|Seq#Append_18978| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3152) (t@@8 T@Seq_3152) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3152| s@@22))) (= (|Seq#Take_3152| (|Seq#Append_3152| s@@22 t@@8) n@@18) (|Seq#Take_3152| s@@22 n@@18)))
 :qid |stdinbpl.396:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3152| (|Seq#Append_3152| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_18978) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_8668| s@@23))) (= (|Seq#Length_8668| (|Seq#Update_8668| s@@23 i@@5 v@@2)) (|Seq#Length_8668| s@@23)))
 :qid |stdinbpl.295:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_8668| (|Seq#Update_8668| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_8668| s@@23) (|Seq#Update_8668| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3152) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3152| s@@24))) (= (|Seq#Length_3152| (|Seq#Update_3152| s@@24 i@@6 v@@3)) (|Seq#Length_3152| s@@24)))
 :qid |stdinbpl.295:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3152| (|Seq#Update_3152| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3152| s@@24) (|Seq#Update_3152| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12832) (o_15 T@Ref) (f_54 T@Field_8664_35707) (v@@4 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_12832 (|PolymorphicMapType_12832_8452_53#PolymorphicMapType_12832| Heap@@11) (|PolymorphicMapType_12832_8455_8456#PolymorphicMapType_12832| Heap@@11) (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| Heap@@11) (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| Heap@@11) (store (|PolymorphicMapType_12832_12892_35707#PolymorphicMapType_12832| Heap@@11) o_15 f_54 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12832 (|PolymorphicMapType_12832_8452_53#PolymorphicMapType_12832| Heap@@11) (|PolymorphicMapType_12832_8455_8456#PolymorphicMapType_12832| Heap@@11) (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| Heap@@11) (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| Heap@@11) (store (|PolymorphicMapType_12832_12892_35707#PolymorphicMapType_12832| Heap@@11) o_15 f_54 v@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_12832) (o_15@@0 T@Ref) (f_54@@0 T@Field_8664_35840) (v@@5 T@PolymorphicMapType_13381) ) (! (succHeap Heap@@12 (PolymorphicMapType_12832 (|PolymorphicMapType_12832_8452_53#PolymorphicMapType_12832| Heap@@12) (|PolymorphicMapType_12832_8455_8456#PolymorphicMapType_12832| Heap@@12) (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| Heap@@12) (store (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| Heap@@12) o_15@@0 f_54@@0 v@@5) (|PolymorphicMapType_12832_12892_35707#PolymorphicMapType_12832| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12832 (|PolymorphicMapType_12832_8452_53#PolymorphicMapType_12832| Heap@@12) (|PolymorphicMapType_12832_8455_8456#PolymorphicMapType_12832| Heap@@12) (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| Heap@@12) (store (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| Heap@@12) o_15@@0 f_54@@0 v@@5) (|PolymorphicMapType_12832_12892_35707#PolymorphicMapType_12832| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_12832) (o_15@@1 T@Ref) (f_54@@1 T@Field_18933_3274) (v@@6 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_12832 (|PolymorphicMapType_12832_8452_53#PolymorphicMapType_12832| Heap@@13) (|PolymorphicMapType_12832_8455_8456#PolymorphicMapType_12832| Heap@@13) (store (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| Heap@@13) o_15@@1 f_54@@1 v@@6) (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| Heap@@13) (|PolymorphicMapType_12832_12892_35707#PolymorphicMapType_12832| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12832 (|PolymorphicMapType_12832_8452_53#PolymorphicMapType_12832| Heap@@13) (|PolymorphicMapType_12832_8455_8456#PolymorphicMapType_12832| Heap@@13) (store (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| Heap@@13) o_15@@1 f_54@@1 v@@6) (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| Heap@@13) (|PolymorphicMapType_12832_12892_35707#PolymorphicMapType_12832| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_12832) (o_15@@2 T@Ref) (f_54@@2 T@Field_12905_12906) (v@@7 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_12832 (|PolymorphicMapType_12832_8452_53#PolymorphicMapType_12832| Heap@@14) (store (|PolymorphicMapType_12832_8455_8456#PolymorphicMapType_12832| Heap@@14) o_15@@2 f_54@@2 v@@7) (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| Heap@@14) (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| Heap@@14) (|PolymorphicMapType_12832_12892_35707#PolymorphicMapType_12832| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12832 (|PolymorphicMapType_12832_8452_53#PolymorphicMapType_12832| Heap@@14) (store (|PolymorphicMapType_12832_8455_8456#PolymorphicMapType_12832| Heap@@14) o_15@@2 f_54@@2 v@@7) (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| Heap@@14) (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| Heap@@14) (|PolymorphicMapType_12832_12892_35707#PolymorphicMapType_12832| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_12832) (o_15@@3 T@Ref) (f_54@@3 T@Field_12892_53) (v@@8 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_12832 (store (|PolymorphicMapType_12832_8452_53#PolymorphicMapType_12832| Heap@@15) o_15@@3 f_54@@3 v@@8) (|PolymorphicMapType_12832_8455_8456#PolymorphicMapType_12832| Heap@@15) (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| Heap@@15) (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| Heap@@15) (|PolymorphicMapType_12832_12892_35707#PolymorphicMapType_12832| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12832 (store (|PolymorphicMapType_12832_8452_53#PolymorphicMapType_12832| Heap@@15) o_15@@3 f_54@@3 v@@8) (|PolymorphicMapType_12832_8455_8456#PolymorphicMapType_12832| Heap@@15) (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| Heap@@15) (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| Heap@@15) (|PolymorphicMapType_12832_12892_35707#PolymorphicMapType_12832| Heap@@15)))
)))
(assert (forall ((s@@25 T@Seq_18978) (t@@9 T@Seq_18978) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_8668| s@@25))) (= (|Seq#Drop_8668| (|Seq#Append_18978| s@@25 t@@9) n@@19) (|Seq#Append_18978| (|Seq#Drop_8668| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.410:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_8668| (|Seq#Append_18978| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3152) (t@@10 T@Seq_3152) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3152| s@@26))) (= (|Seq#Drop_3152| (|Seq#Append_3152| s@@26 t@@10) n@@20) (|Seq#Append_3152| (|Seq#Drop_3152| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.410:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3152| (|Seq#Append_3152| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_18978) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_8668| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_8668| (|Seq#Drop_8668| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_8668| s@@27 i@@7))))
 :qid |stdinbpl.346:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_8668| s@@27 n@@21) (|Seq#Index_8668| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3152) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3152| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3152| (|Seq#Drop_3152| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3152| s@@28 i@@8))))
 :qid |stdinbpl.346:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3152| s@@28 n@@22) (|Seq#Index_3152| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_18978) (s1@@7 T@Seq_18978) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_8668|)) (not (= s1@@7 |Seq#Empty_8668|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_8668| s0@@7))) (= (|Seq#Index_8668| (|Seq#Append_18978| s0@@7 s1@@7) n@@23) (|Seq#Index_8668| s0@@7 n@@23)))
 :qid |stdinbpl.286:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_8668| (|Seq#Append_18978| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_8668| s0@@7 n@@23) (|Seq#Append_18978| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3152) (s1@@8 T@Seq_3152) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3152|)) (not (= s1@@8 |Seq#Empty_3152|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3152| s0@@8))) (= (|Seq#Index_3152| (|Seq#Append_3152| s0@@8 s1@@8) n@@24) (|Seq#Index_3152| s0@@8 n@@24)))
 :qid |stdinbpl.286:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3152| (|Seq#Append_3152| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3152| s0@@8 n@@24) (|Seq#Append_3152| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_18978) (s1@@9 T@Seq_18978) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_8668|)) (not (= s1@@9 |Seq#Empty_8668|))) (<= 0 m)) (< m (|Seq#Length_8668| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_8668| s0@@9)) (|Seq#Length_8668| s0@@9)) m) (= (|Seq#Index_8668| (|Seq#Append_18978| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_8668| s0@@9))) (|Seq#Index_8668| s1@@9 m))))
 :qid |stdinbpl.291:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_8668| s1@@9 m) (|Seq#Append_18978| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3152) (s1@@10 T@Seq_3152) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3152|)) (not (= s1@@10 |Seq#Empty_3152|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3152| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3152| s0@@10)) (|Seq#Length_3152| s0@@10)) m@@0) (= (|Seq#Index_3152| (|Seq#Append_3152| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3152| s0@@10))) (|Seq#Index_3152| s1@@10 m@@0))))
 :qid |stdinbpl.291:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3152| s1@@10 m@@0) (|Seq#Append_3152| s0@@10 s1@@10))
)))
(assert (forall ((o_15@@4 T@Ref) (f_23 T@Field_12905_12906) (Heap@@16 T@PolymorphicMapType_12832) ) (!  (=> (select (|PolymorphicMapType_12832_8452_53#PolymorphicMapType_12832| Heap@@16) o_15@@4 $allocated) (select (|PolymorphicMapType_12832_8452_53#PolymorphicMapType_12832| Heap@@16) (select (|PolymorphicMapType_12832_8455_8456#PolymorphicMapType_12832| Heap@@16) o_15@@4 f_23) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12832_8455_8456#PolymorphicMapType_12832| Heap@@16) o_15@@4 f_23))
)))
(assert (forall ((s@@29 T@Seq_18978) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_8668| s@@29))) (= (|Seq#Index_8668| s@@29 i@@9) x@@3)) (|Seq#Contains_18978| s@@29 x@@3))
 :qid |stdinbpl.443:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_18978| s@@29 x@@3) (|Seq#Index_8668| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3152) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3152| s@@30))) (= (|Seq#Index_3152| s@@30 i@@10) x@@4)) (|Seq#Contains_3152| s@@30 x@@4))
 :qid |stdinbpl.443:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3152| s@@30 x@@4) (|Seq#Index_3152| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_18978) (s1@@11 T@Seq_18978) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_18978| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_18978| s0@@11 s1@@11))) (not (= (|Seq#Length_8668| s0@@11) (|Seq#Length_8668| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_18978| s0@@11 s1@@11))) (= (|Seq#Length_8668| s0@@11) (|Seq#Length_8668| s1@@11))) (= (|Seq#SkolemDiff_18978| s0@@11 s1@@11) (|Seq#SkolemDiff_18978| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_18978| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_18978| s0@@11 s1@@11) (|Seq#Length_8668| s0@@11))) (not (= (|Seq#Index_8668| s0@@11 (|Seq#SkolemDiff_18978| s0@@11 s1@@11)) (|Seq#Index_8668| s1@@11 (|Seq#SkolemDiff_18978| s0@@11 s1@@11))))))
 :qid |stdinbpl.547:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_18978| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3152) (s1@@12 T@Seq_3152) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3152| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3152| s0@@12 s1@@12))) (not (= (|Seq#Length_3152| s0@@12) (|Seq#Length_3152| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3152| s0@@12 s1@@12))) (= (|Seq#Length_3152| s0@@12) (|Seq#Length_3152| s1@@12))) (= (|Seq#SkolemDiff_3152| s0@@12 s1@@12) (|Seq#SkolemDiff_3152| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3152| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3152| s0@@12 s1@@12) (|Seq#Length_3152| s0@@12))) (not (= (|Seq#Index_3152| s0@@12 (|Seq#SkolemDiff_3152| s0@@12 s1@@12)) (|Seq#Index_3152| s1@@12 (|Seq#SkolemDiff_3152| s0@@12 s1@@12))))))
 :qid |stdinbpl.547:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3152| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_8664_35707) (v_1@@0 T@FrameType) (q T@Field_8664_35707) (w@@0 T@FrameType) (r T@Field_8664_35707) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12892_12892 p@@1 v_1@@0 q w@@0) (InsidePredicate_12892_12892 q w@@0 r u)) (InsidePredicate_12892_12892 p@@1 v_1@@0 r u))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12892_12892 p@@1 v_1@@0 q w@@0) (InsidePredicate_12892_12892 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_18978) ) (!  (=> (= (|Seq#Length_8668| s@@31) 0) (= s@@31 |Seq#Empty_8668|))
 :qid |stdinbpl.250:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_8668| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3152) ) (!  (=> (= (|Seq#Length_3152| s@@32) 0) (= s@@32 |Seq#Empty_3152|))
 :qid |stdinbpl.250:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3152| s@@32))
)))
(assert (forall ((s@@33 T@Seq_18978) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_8668| s@@33 n@@25) |Seq#Empty_8668|))
 :qid |stdinbpl.426:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_8668| s@@33 n@@25))
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
(declare-fun start_1 () Int)
(declare-fun end_1 () Int)
(declare-fun i1_8 () Int)
(declare-fun s_1 () T@Seq_18978)
(declare-fun PostHeap@0 () T@PolymorphicMapType_12832)
(declare-fun Heap@5 () T@PolymorphicMapType_12832)
(declare-fun QPMask@2 () T@PolymorphicMapType_12853)
(declare-fun index@1 () Int)
(declare-fun index@0 () Int)
(declare-fun neverTriggered7 (Int) Bool)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) Int)
(declare-fun QPMask@9 () T@PolymorphicMapType_12853)
(declare-fun storeIndex@2 () Int)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_12832)
(declare-fun storeIndex@0 () Int)
(declare-fun aux@2 () Int)
(declare-fun Heap@3 () T@PolymorphicMapType_12832)
(declare-fun Heap@4 () T@PolymorphicMapType_12832)
(declare-fun storeIndex@1 () Int)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun i1_26 () Int)
(declare-fun i1_22 () Int)
(declare-fun i_15 () Int)
(declare-fun i_5 () Int)
(declare-fun i3_6 () Int)
(declare-fun Heap@2 () T@PolymorphicMapType_12832)
(declare-fun Mask@0 () T@PolymorphicMapType_12853)
(declare-fun neverTriggered3 (Int) Bool)
(declare-fun qpRange12 (T@Ref) Bool)
(declare-fun invRecv12 (T@Ref) Int)
(declare-fun QPMask@7 () T@PolymorphicMapType_12853)
(declare-fun QPMask@6 () T@PolymorphicMapType_12853)
(declare-fun ExhaleHeap@2 () T@PolymorphicMapType_12832)
(declare-fun qpRange11 (T@Ref) Bool)
(declare-fun invRecv11 (T@Ref) Int)
(declare-fun QPMask@5 () T@PolymorphicMapType_12853)
(declare-fun neverTriggered10 (Int) Bool)
(declare-fun QPMask@4 () T@PolymorphicMapType_12853)
(declare-fun qpRange10 (T@Ref) Bool)
(declare-fun invRecv10 (T@Ref) Int)
(declare-fun ExhaleHeap@1 () T@PolymorphicMapType_12832)
(declare-fun neverTriggered9 (Int) Bool)
(declare-fun QPMask@3 () T@PolymorphicMapType_12853)
(declare-fun qpRange9 (T@Ref) Bool)
(declare-fun invRecv9 (T@Ref) Int)
(declare-fun Heap@1 () T@PolymorphicMapType_12832)
(declare-fun QPMask@1 () T@PolymorphicMapType_12853)
(declare-fun qpRange8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref) Int)
(declare-fun aux@1 () Int)
(declare-fun Heap@0 () T@PolymorphicMapType_12832)
(declare-fun Heap@@17 () T@PolymorphicMapType_12832)
(declare-fun QPMask@0 () T@PolymorphicMapType_12853)
(declare-fun neverTriggered4 (Int) Bool)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun i_3 () Int)
(declare-fun i_18 () Int)
(declare-fun j_14 () Int)
(set-info :boogie-vc-id qsort)
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
 (=> (= (ControlFlow 0 0) 122) (let ((anon12_correct true))
(let ((anon49_Else_correct  (=> (and (not (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i1_8)) (= (ControlFlow 0 116) 112)) anon12_correct)))
(let ((anon49_Then_correct  (=> (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i1_8) (and (=> (= (ControlFlow 0 113) (- 0 115)) (>= i1_8 0)) (=> (>= i1_8 0) (and (=> (= (ControlFlow 0 113) (- 0 114)) (< i1_8 (|Seq#Length_8668| s_1))) (=> (< i1_8 (|Seq#Length_8668| s_1)) (=> (= (ControlFlow 0 113) 112) anon12_correct))))))))
(let ((anon48_Else_correct  (=> (= (ControlFlow 0 111) (- 0 110)) (forall ((i1_1 Int) (i1_1_1 Int) ) (!  (=> (and (and (and (and (not (= i1_1 i1_1_1)) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i1_1)) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i1_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8668| s_1 i1_1) (|Seq#Index_8668| s_1 i1_1_1))))
 :qid |stdinbpl.726:15|
 :skolemid |65|
)))))
(let ((anon47_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (and (=> (= (ControlFlow 0 117) 111) anon48_Else_correct) (=> (= (ControlFlow 0 117) 113) anon49_Then_correct)) (=> (= (ControlFlow 0 117) 116) anon49_Else_correct)))))
(let ((anon24_correct  (=> (state Heap@5 QPMask@2) (=> (and (= index@1 (+ index@0 1)) (state Heap@5 QPMask@2)) (and (=> (= (ControlFlow 0 75) (- 0 80)) (forall ((i3_4 Int) (i3_4_1 Int) ) (!  (=> (and (and (and (and (not (= i3_4 i3_4_1)) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_4)) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_4_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8668| s_1 i3_4) (|Seq#Index_8668| s_1 i3_4_1))))
 :qid |stdinbpl.1028:25|
 :skolemid |89|
 :pattern ( (neverTriggered7 i3_4) (neverTriggered7 i3_4_1))
))) (=> (forall ((i3_4@@0 Int) (i3_4_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i3_4@@0 i3_4_1@@0)) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_4@@0)) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_4_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8668| s_1 i3_4@@0) (|Seq#Index_8668| s_1 i3_4_1@@0))))
 :qid |stdinbpl.1028:25|
 :skolemid |89|
 :pattern ( (neverTriggered7 i3_4@@0) (neverTriggered7 i3_4_1@@0))
)) (and (=> (= (ControlFlow 0 75) (- 0 79)) (forall ((i3_4@@1 Int) ) (!  (=> (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_4@@1) (>= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@2) (|Seq#Index_8668| s_1 i3_4@@1) f_7) FullPerm))
 :qid |stdinbpl.1035:25|
 :skolemid |90|
 :pattern ( (|Seq#Index_8668| s_1 i3_4@@1))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| start_1 end_1) i3_4@@1))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_4@@1))
 :pattern ( (|Seq#Index_8668| s_1 i3_4@@1))
))) (=> (forall ((i3_4@@2 Int) ) (!  (=> (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_4@@2) (>= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@2) (|Seq#Index_8668| s_1 i3_4@@2) f_7) FullPerm))
 :qid |stdinbpl.1035:25|
 :skolemid |90|
 :pattern ( (|Seq#Index_8668| s_1 i3_4@@2))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| start_1 end_1) i3_4@@2))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_4@@2))
 :pattern ( (|Seq#Index_8668| s_1 i3_4@@2))
)) (=> (forall ((i3_4@@3 Int) ) (!  (=> (and (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_4@@3) (< NoPerm FullPerm)) (and (qpRange7 (|Seq#Index_8668| s_1 i3_4@@3)) (= (invRecv7 (|Seq#Index_8668| s_1 i3_4@@3)) i3_4@@3)))
 :qid |stdinbpl.1041:30|
 :skolemid |91|
 :pattern ( (|Seq#Index_8668| s_1 i3_4@@3))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| start_1 end_1) i3_4@@3))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_4@@3))
 :pattern ( (|Seq#Index_8668| s_1 i3_4@@3))
)) (=> (and (forall ((o_9 T@Ref) ) (!  (=> (and (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) (invRecv7 o_9)) (and (< NoPerm FullPerm) (qpRange7 o_9))) (= (|Seq#Index_8668| s_1 (invRecv7 o_9)) o_9))
 :qid |stdinbpl.1045:30|
 :skolemid |92|
 :pattern ( (invRecv7 o_9))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) (invRecv7 o_9@@0)) (and (< NoPerm FullPerm) (qpRange7 o_9@@0))) (and (= (|Seq#Index_8668| s_1 (invRecv7 o_9@@0)) o_9@@0) (= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@9) o_9@@0 f_7) (- (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@2) o_9@@0 f_7) FullPerm)))) (=> (not (and (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) (invRecv7 o_9@@0)) (and (< NoPerm FullPerm) (qpRange7 o_9@@0)))) (= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@9) o_9@@0 f_7) (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@2) o_9@@0 f_7))))
 :qid |stdinbpl.1051:30|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@9) o_9@@0 f_7))
))) (=> (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_12892_53) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| QPMask@2) o_9@@1 f_5) (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| QPMask@9) o_9@@1 f_5)))
 :qid |stdinbpl.1057:37|
 :skolemid |94|
 :pattern ( (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| QPMask@9) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_12905_12906) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| QPMask@2) o_9@@2 f_5@@0) (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| QPMask@9) o_9@@2 f_5@@0)))
 :qid |stdinbpl.1057:37|
 :skolemid |94|
 :pattern ( (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| QPMask@9) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_18933_3274) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@2) o_9@@3 f_5@@1) (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@9) o_9@@3 f_5@@1)))
 :qid |stdinbpl.1057:37|
 :skolemid |94|
 :pattern ( (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@9) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_8664_35707) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| QPMask@2) o_9@@4 f_5@@2) (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| QPMask@9) o_9@@4 f_5@@2)))
 :qid |stdinbpl.1057:37|
 :skolemid |94|
 :pattern ( (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| QPMask@9) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_8664_35840) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| QPMask@2) o_9@@5 f_5@@3) (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| QPMask@9) o_9@@5 f_5@@3)))
 :qid |stdinbpl.1057:37|
 :skolemid |94|
 :pattern ( (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| QPMask@9) o_9@@5 f_5@@3))
))) (and (=> (= (ControlFlow 0 75) (- 0 78)) (<= start_1 storeIndex@2)) (=> (<= start_1 storeIndex@2) (and (=> (= (ControlFlow 0 75) (- 0 77)) (<= storeIndex@2 index@1)) (=> (<= storeIndex@2 index@1) (and (=> (= (ControlFlow 0 75) (- 0 76)) (<= start_1 index@1)) (=> (<= start_1 index@1) (=> (= (ControlFlow 0 75) (- 0 74)) (< index@1 end_1)))))))))))))))))))
(let ((anon55_Else_correct  (=> (and (and (< (select (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| ExhaleHeap@0) (|Seq#Index_8668| s_1 (- end_1 1)) f_7) (select (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| ExhaleHeap@0) (|Seq#Index_8668| s_1 index@0) f_7)) (= storeIndex@2 storeIndex@0)) (and (= Heap@5 ExhaleHeap@0) (= (ControlFlow 0 94) 75))) anon24_correct)))
(let ((anon55_Then_correct  (=> (<= (select (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| ExhaleHeap@0) (|Seq#Index_8668| s_1 index@0) f_7) (select (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| ExhaleHeap@0) (|Seq#Index_8668| s_1 (- end_1 1)) f_7)) (and (=> (= (ControlFlow 0 81) (- 0 93)) (>= storeIndex@0 0)) (=> (>= storeIndex@0 0) (and (=> (= (ControlFlow 0 81) (- 0 92)) (< storeIndex@0 (|Seq#Length_8668| s_1))) (=> (< storeIndex@0 (|Seq#Length_8668| s_1)) (and (=> (= (ControlFlow 0 81) (- 0 91)) (HasDirectPerm_8664_3274 QPMask@2 (|Seq#Index_8668| s_1 storeIndex@0) f_7)) (=> (HasDirectPerm_8664_3274 QPMask@2 (|Seq#Index_8668| s_1 storeIndex@0) f_7) (=> (and (= aux@2 (select (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| ExhaleHeap@0) (|Seq#Index_8668| s_1 storeIndex@0) f_7)) (state ExhaleHeap@0 QPMask@2)) (and (=> (= (ControlFlow 0 81) (- 0 90)) (>= storeIndex@0 0)) (=> (>= storeIndex@0 0) (and (=> (= (ControlFlow 0 81) (- 0 89)) (< storeIndex@0 (|Seq#Length_8668| s_1))) (=> (< storeIndex@0 (|Seq#Length_8668| s_1)) (and (=> (= (ControlFlow 0 81) (- 0 88)) (>= index@0 0)) (=> (>= index@0 0) (and (=> (= (ControlFlow 0 81) (- 0 87)) (< index@0 (|Seq#Length_8668| s_1))) (=> (< index@0 (|Seq#Length_8668| s_1)) (and (=> (= (ControlFlow 0 81) (- 0 86)) (HasDirectPerm_8664_3274 QPMask@2 (|Seq#Index_8668| s_1 index@0) f_7)) (=> (HasDirectPerm_8664_3274 QPMask@2 (|Seq#Index_8668| s_1 index@0) f_7) (and (=> (= (ControlFlow 0 81) (- 0 85)) (= FullPerm (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@2) (|Seq#Index_8668| s_1 storeIndex@0) f_7))) (=> (= FullPerm (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@2) (|Seq#Index_8668| s_1 storeIndex@0) f_7)) (=> (and (= Heap@3 (PolymorphicMapType_12832 (|PolymorphicMapType_12832_8452_53#PolymorphicMapType_12832| ExhaleHeap@0) (|PolymorphicMapType_12832_8455_8456#PolymorphicMapType_12832| ExhaleHeap@0) (store (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| ExhaleHeap@0) (|Seq#Index_8668| s_1 storeIndex@0) f_7 (select (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| ExhaleHeap@0) (|Seq#Index_8668| s_1 index@0) f_7)) (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| ExhaleHeap@0) (|PolymorphicMapType_12832_12892_35707#PolymorphicMapType_12832| ExhaleHeap@0))) (state Heap@3 QPMask@2)) (and (=> (= (ControlFlow 0 81) (- 0 84)) (>= index@0 0)) (=> (>= index@0 0) (and (=> (= (ControlFlow 0 81) (- 0 83)) (< index@0 (|Seq#Length_8668| s_1))) (=> (< index@0 (|Seq#Length_8668| s_1)) (and (=> (= (ControlFlow 0 81) (- 0 82)) (= FullPerm (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@2) (|Seq#Index_8668| s_1 index@0) f_7))) (=> (= FullPerm (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@2) (|Seq#Index_8668| s_1 index@0) f_7)) (=> (= Heap@4 (PolymorphicMapType_12832 (|PolymorphicMapType_12832_8452_53#PolymorphicMapType_12832| Heap@3) (|PolymorphicMapType_12832_8455_8456#PolymorphicMapType_12832| Heap@3) (store (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| Heap@3) (|Seq#Index_8668| s_1 index@0) f_7 aux@2) (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| Heap@3) (|PolymorphicMapType_12832_12892_35707#PolymorphicMapType_12832| Heap@3))) (=> (and (state Heap@4 QPMask@2) (= storeIndex@1 (+ storeIndex@0 1))) (=> (and (and (state Heap@4 QPMask@2) (= storeIndex@2 storeIndex@1)) (and (= Heap@5 Heap@4) (= (ControlFlow 0 81) 75))) anon24_correct))))))))))))))))))))))))))))))))
(let ((anon54_Then_correct  (=> (state ExhaleHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 95) (- 0 102)) (forall ((i3_3_2 Int) (i3_3_3 Int) ) (!  (=> (and (and (and (and (not (= i3_3_2 i3_3_3)) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_3_2)) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_3_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8668| s_1 i3_3_2) (|Seq#Index_8668| s_1 i3_3_3))))
 :qid |stdinbpl.905:23|
 :skolemid |83|
))) (=> (forall ((i3_3_2@@0 Int) (i3_3_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i3_3_2@@0 i3_3_3@@0)) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_3_2@@0)) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_3_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8668| s_1 i3_3_2@@0) (|Seq#Index_8668| s_1 i3_3_3@@0))))
 :qid |stdinbpl.905:23|
 :skolemid |83|
)) (=> (and (and (forall ((i3_3_2@@1 Int) ) (!  (=> (and (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_3_2@@1) (< NoPerm FullPerm)) (and (qpRange6 (|Seq#Index_8668| s_1 i3_3_2@@1)) (= (invRecv6 (|Seq#Index_8668| s_1 i3_3_2@@1)) i3_3_2@@1)))
 :qid |stdinbpl.911:30|
 :skolemid |84|
 :pattern ( (|Seq#Index_8668| s_1 i3_3_2@@1))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| start_1 end_1) i3_3_2@@1))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_3_2@@1))
 :pattern ( (|Seq#Index_8668| s_1 i3_3_2@@1))
)) (forall ((o_9@@6 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) (invRecv6 o_9@@6)) (< NoPerm FullPerm)) (qpRange6 o_9@@6)) (= (|Seq#Index_8668| s_1 (invRecv6 o_9@@6)) o_9@@6))
 :qid |stdinbpl.915:30|
 :skolemid |85|
 :pattern ( (invRecv6 o_9@@6))
))) (and (forall ((i3_3_2@@2 Int) ) (!  (=> (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_3_2@@2) (not (= (|Seq#Index_8668| s_1 i3_3_2@@2) null)))
 :qid |stdinbpl.921:30|
 :skolemid |86|
 :pattern ( (|Seq#Index_8668| s_1 i3_3_2@@2))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| start_1 end_1) i3_3_2@@2))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_3_2@@2))
 :pattern ( (|Seq#Index_8668| s_1 i3_3_2@@2))
)) (forall ((o_9@@7 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) (invRecv6 o_9@@7)) (< NoPerm FullPerm)) (qpRange6 o_9@@7)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_8668| s_1 (invRecv6 o_9@@7)) o_9@@7)) (= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@2) o_9@@7 f_7) (+ (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| ZeroMask) o_9@@7 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) (invRecv6 o_9@@7)) (< NoPerm FullPerm)) (qpRange6 o_9@@7))) (= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@2) o_9@@7 f_7) (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| ZeroMask) o_9@@7 f_7))))
 :qid |stdinbpl.927:30|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@2) o_9@@7 f_7))
)))) (=> (and (and (and (and (and (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_12892_53) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| ZeroMask) o_9@@8 f_5@@4) (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| QPMask@2) o_9@@8 f_5@@4)))
 :qid |stdinbpl.931:37|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| ZeroMask) o_9@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| QPMask@2) o_9@@8 f_5@@4))
)) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_12905_12906) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| ZeroMask) o_9@@9 f_5@@5) (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| QPMask@2) o_9@@9 f_5@@5)))
 :qid |stdinbpl.931:37|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| ZeroMask) o_9@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| QPMask@2) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_18933_3274) ) (!  (=> (not (= f_5@@6 f_7)) (= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| ZeroMask) o_9@@10 f_5@@6) (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@2) o_9@@10 f_5@@6)))
 :qid |stdinbpl.931:37|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| ZeroMask) o_9@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@2) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_8664_35707) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| ZeroMask) o_9@@11 f_5@@7) (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| QPMask@2) o_9@@11 f_5@@7)))
 :qid |stdinbpl.931:37|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| ZeroMask) o_9@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| QPMask@2) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_8664_35840) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| ZeroMask) o_9@@12 f_5@@8) (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| QPMask@2) o_9@@12 f_5@@8)))
 :qid |stdinbpl.931:37|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| ZeroMask) o_9@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| QPMask@2) o_9@@12 f_5@@8))
))) (and (and (and (state ExhaleHeap@0 QPMask@2) (<= start_1 storeIndex@0)) (and (<= storeIndex@0 index@0) (<= start_1 index@0))) (and (and (< index@0 end_1) (state ExhaleHeap@0 QPMask@2)) (and (< index@0 (- end_1 1)) (state ExhaleHeap@0 QPMask@2))))) (and (=> (= (ControlFlow 0 95) (- 0 101)) (>= index@0 0)) (=> (>= index@0 0) (and (=> (= (ControlFlow 0 95) (- 0 100)) (< index@0 (|Seq#Length_8668| s_1))) (=> (< index@0 (|Seq#Length_8668| s_1)) (and (=> (= (ControlFlow 0 95) (- 0 99)) (HasDirectPerm_8664_3274 QPMask@2 (|Seq#Index_8668| s_1 index@0) f_7)) (=> (HasDirectPerm_8664_3274 QPMask@2 (|Seq#Index_8668| s_1 index@0) f_7) (and (=> (= (ControlFlow 0 95) (- 0 98)) (>= (- end_1 1) 0)) (=> (>= (- end_1 1) 0) (and (=> (= (ControlFlow 0 95) (- 0 97)) (< (- end_1 1) (|Seq#Length_8668| s_1))) (=> (< (- end_1 1) (|Seq#Length_8668| s_1)) (and (=> (= (ControlFlow 0 95) (- 0 96)) (HasDirectPerm_8664_3274 QPMask@2 (|Seq#Index_8668| s_1 (- end_1 1)) f_7)) (=> (HasDirectPerm_8664_3274 QPMask@2 (|Seq#Index_8668| s_1 (- end_1 1)) f_7) (and (=> (= (ControlFlow 0 95) 81) anon55_Then_correct) (=> (= (ControlFlow 0 95) 94) anon55_Else_correct)))))))))))))))))))))
(let ((anon40_correct true))
(let ((anon63_Else_correct  (=> (and (not (|Seq#Contains_3152| (|Seq#Range| (+ storeIndex@0 1) end_1) i1_26)) (= (ControlFlow 0 45) 41)) anon40_correct)))
(let ((anon63_Then_correct  (=> (|Seq#Contains_3152| (|Seq#Range| (+ storeIndex@0 1) end_1) i1_26) (and (=> (= (ControlFlow 0 42) (- 0 44)) (>= i1_26 0)) (=> (>= i1_26 0) (and (=> (= (ControlFlow 0 42) (- 0 43)) (< i1_26 (|Seq#Length_8668| s_1))) (=> (< i1_26 (|Seq#Length_8668| s_1)) (=> (= (ControlFlow 0 42) 41) anon40_correct))))))))
(let ((anon36_correct true))
(let ((anon61_Else_correct  (=> (and (not (|Seq#Contains_3152| (|Seq#Range| start_1 storeIndex@0) i1_22)) (= (ControlFlow 0 38) 34)) anon36_correct)))
(let ((anon61_Then_correct  (=> (|Seq#Contains_3152| (|Seq#Range| start_1 storeIndex@0) i1_22) (and (=> (= (ControlFlow 0 35) (- 0 37)) (>= i1_22 0)) (=> (>= i1_22 0) (and (=> (= (ControlFlow 0 35) (- 0 36)) (< i1_22 (|Seq#Length_8668| s_1))) (=> (< i1_22 (|Seq#Length_8668| s_1)) (=> (= (ControlFlow 0 35) 34) anon36_correct))))))))
(let ((anon32_correct true))
(let ((anon59_Else_correct  (=> (and (not (|Seq#Contains_3152| (|Seq#Range| (+ storeIndex@0 1) end_1) i_15)) (= (ControlFlow 0 33) 29)) anon32_correct)))
(let ((anon59_Then_correct  (=> (|Seq#Contains_3152| (|Seq#Range| (+ storeIndex@0 1) end_1) i_15) (and (=> (= (ControlFlow 0 30) (- 0 32)) (>= i_15 0)) (=> (>= i_15 0) (and (=> (= (ControlFlow 0 30) (- 0 31)) (< i_15 (|Seq#Length_8668| s_1))) (=> (< i_15 (|Seq#Length_8668| s_1)) (=> (= (ControlFlow 0 30) 29) anon32_correct))))))))
(let ((anon28_correct true))
(let ((anon57_Else_correct  (=> (and (not (|Seq#Contains_3152| (|Seq#Range| start_1 storeIndex@0) i_5)) (= (ControlFlow 0 28) 24)) anon28_correct)))
(let ((anon57_Then_correct  (=> (|Seq#Contains_3152| (|Seq#Range| start_1 storeIndex@0) i_5) (and (=> (= (ControlFlow 0 25) (- 0 27)) (>= i_5 0)) (=> (>= i_5 0) (and (=> (= (ControlFlow 0 25) (- 0 26)) (< i_5 (|Seq#Length_8668| s_1))) (=> (< i_5 (|Seq#Length_8668| s_1)) (=> (= (ControlFlow 0 25) 24) anon28_correct))))))))
(let ((anon19_correct true))
(let ((anon53_Else_correct  (=> (and (not (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_6)) (= (ControlFlow 0 23) 19)) anon19_correct)))
(let ((anon53_Then_correct  (=> (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_6) (and (=> (= (ControlFlow 0 20) (- 0 22)) (>= i3_6 0)) (=> (>= i3_6 0) (and (=> (= (ControlFlow 0 20) (- 0 21)) (< i3_6 (|Seq#Length_8668| s_1))) (=> (< i3_6 (|Seq#Length_8668| s_1)) (=> (= (ControlFlow 0 20) 19) anon19_correct))))))))
(let ((anon52_Else_correct  (=> (= (ControlFlow 0 18) (- 0 17)) (forall ((i3_2_1 Int) (i3_2_2 Int) ) (!  (=> (and (and (and (and (not (= i3_2_1 i3_2_2)) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_2_1)) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_2_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8668| s_1 i3_2_1) (|Seq#Index_8668| s_1 i3_2_2))))
 :qid |stdinbpl.853:23|
 :skolemid |77|
)))))
(let ((anon42_correct  (=> (state Heap@2 Mask@0) (and (=> (= (ControlFlow 0 14) (- 0 15)) (forall ((i1_2_2 Int) (i1_2_3 Int) ) (!  (=> (and (and (and (and (not (= i1_2_2 i1_2_3)) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i1_2_2)) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i1_2_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8668| s_1 i1_2_2) (|Seq#Index_8668| s_1 i1_2_3))))
 :qid |stdinbpl.1430:17|
 :skolemid |125|
 :pattern ( (neverTriggered3 i1_2_2) (neverTriggered3 i1_2_3))
))) (=> (forall ((i1_2_2@@0 Int) (i1_2_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i1_2_2@@0 i1_2_3@@0)) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i1_2_2@@0)) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i1_2_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8668| s_1 i1_2_2@@0) (|Seq#Index_8668| s_1 i1_2_3@@0))))
 :qid |stdinbpl.1430:17|
 :skolemid |125|
 :pattern ( (neverTriggered3 i1_2_2@@0) (neverTriggered3 i1_2_3@@0))
)) (=> (= (ControlFlow 0 14) (- 0 13)) (forall ((i1_2_2@@1 Int) ) (!  (=> (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i1_2_2@@1) (>= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| Mask@0) (|Seq#Index_8668| s_1 i1_2_2@@1) f_7) FullPerm))
 :qid |stdinbpl.1437:17|
 :skolemid |126|
 :pattern ( (|Seq#Index_8668| s_1 i1_2_2@@1))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| start_1 end_1) i1_2_2@@1))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i1_2_2@@1))
 :pattern ( (|Seq#Index_8668| s_1 i1_2_2@@1))
))))))))
(let ((anon62_Else_correct  (and (=> (= (ControlFlow 0 39) (- 0 40)) (forall ((i1_6 Int) (i1_6_2 Int) ) (!  (=> (and (and (and (and (not (= i1_6 i1_6_2)) (|Seq#Contains_3152| (|Seq#Range| (+ storeIndex@0 1) end_1) i1_6)) (|Seq#Contains_3152| (|Seq#Range| (+ storeIndex@0 1) end_1) i1_6_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8668| s_1 i1_6) (|Seq#Index_8668| s_1 i1_6_2))))
 :qid |stdinbpl.1383:19|
 :skolemid |119|
))) (=> (forall ((i1_6@@0 Int) (i1_6_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i1_6@@0 i1_6_2@@0)) (|Seq#Contains_3152| (|Seq#Range| (+ storeIndex@0 1) end_1) i1_6@@0)) (|Seq#Contains_3152| (|Seq#Range| (+ storeIndex@0 1) end_1) i1_6_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8668| s_1 i1_6@@0) (|Seq#Index_8668| s_1 i1_6_2@@0))))
 :qid |stdinbpl.1383:19|
 :skolemid |119|
)) (=> (and (and (forall ((i1_6@@1 Int) ) (!  (=> (and (|Seq#Contains_3152| (|Seq#Range| (+ storeIndex@0 1) end_1) i1_6@@1) (< NoPerm FullPerm)) (and (qpRange12 (|Seq#Index_8668| s_1 i1_6@@1)) (= (invRecv12 (|Seq#Index_8668| s_1 i1_6@@1)) i1_6@@1)))
 :qid |stdinbpl.1389:26|
 :skolemid |120|
 :pattern ( (|Seq#Index_8668| s_1 i1_6@@1))
 :pattern ( (|Seq#Index_8668| s_1 i1_6@@1))
)) (forall ((o_9@@13 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3152| (|Seq#Range| (+ storeIndex@0 1) end_1) (invRecv12 o_9@@13)) (< NoPerm FullPerm)) (qpRange12 o_9@@13)) (= (|Seq#Index_8668| s_1 (invRecv12 o_9@@13)) o_9@@13))
 :qid |stdinbpl.1393:26|
 :skolemid |121|
 :pattern ( (invRecv12 o_9@@13))
))) (and (forall ((i1_6@@2 Int) ) (!  (=> (|Seq#Contains_3152| (|Seq#Range| (+ storeIndex@0 1) end_1) i1_6@@2) (not (= (|Seq#Index_8668| s_1 i1_6@@2) null)))
 :qid |stdinbpl.1399:26|
 :skolemid |122|
 :pattern ( (|Seq#Index_8668| s_1 i1_6@@2))
 :pattern ( (|Seq#Index_8668| s_1 i1_6@@2))
)) (forall ((o_9@@14 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3152| (|Seq#Range| (+ storeIndex@0 1) end_1) (invRecv12 o_9@@14)) (< NoPerm FullPerm)) (qpRange12 o_9@@14)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_8668| s_1 (invRecv12 o_9@@14)) o_9@@14)) (= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@7) o_9@@14 f_7) (+ (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@6) o_9@@14 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_3152| (|Seq#Range| (+ storeIndex@0 1) end_1) (invRecv12 o_9@@14)) (< NoPerm FullPerm)) (qpRange12 o_9@@14))) (= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@7) o_9@@14 f_7) (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@6) o_9@@14 f_7))))
 :qid |stdinbpl.1405:26|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@7) o_9@@14 f_7))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@15 T@Ref) (f_5@@9 T@Field_12892_53) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| QPMask@6) o_9@@15 f_5@@9) (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| QPMask@7) o_9@@15 f_5@@9)))
 :qid |stdinbpl.1409:33|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| QPMask@6) o_9@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| QPMask@7) o_9@@15 f_5@@9))
)) (forall ((o_9@@16 T@Ref) (f_5@@10 T@Field_12905_12906) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| QPMask@6) o_9@@16 f_5@@10) (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| QPMask@7) o_9@@16 f_5@@10)))
 :qid |stdinbpl.1409:33|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| QPMask@6) o_9@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| QPMask@7) o_9@@16 f_5@@10))
))) (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_18933_3274) ) (!  (=> (not (= f_5@@11 f_7)) (= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@6) o_9@@17 f_5@@11) (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@7) o_9@@17 f_5@@11)))
 :qid |stdinbpl.1409:33|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@6) o_9@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@7) o_9@@17 f_5@@11))
))) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_8664_35707) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| QPMask@6) o_9@@18 f_5@@12) (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| QPMask@7) o_9@@18 f_5@@12)))
 :qid |stdinbpl.1409:33|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| QPMask@6) o_9@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| QPMask@7) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_8664_35840) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| QPMask@6) o_9@@19 f_5@@13) (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| QPMask@7) o_9@@19 f_5@@13)))
 :qid |stdinbpl.1409:33|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| QPMask@6) o_9@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| QPMask@7) o_9@@19 f_5@@13))
))) (and (state ExhaleHeap@2 QPMask@7) (state ExhaleHeap@2 QPMask@7))) (and (and (state ExhaleHeap@2 QPMask@7) (= Mask@0 QPMask@7)) (and (= Heap@2 ExhaleHeap@2) (= (ControlFlow 0 39) 14)))) anon42_correct))))))
(let ((anon60_Else_correct  (and (=> (= (ControlFlow 0 46) (- 0 47)) (forall ((i1_4 Int) (i1_4_1 Int) ) (!  (=> (and (and (and (and (not (= i1_4 i1_4_1)) (|Seq#Contains_3152| (|Seq#Range| start_1 storeIndex@0) i1_4)) (|Seq#Contains_3152| (|Seq#Range| start_1 storeIndex@0) i1_4_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8668| s_1 i1_4) (|Seq#Index_8668| s_1 i1_4_1))))
 :qid |stdinbpl.1332:19|
 :skolemid |113|
))) (=> (forall ((i1_4@@0 Int) (i1_4_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i1_4@@0 i1_4_1@@0)) (|Seq#Contains_3152| (|Seq#Range| start_1 storeIndex@0) i1_4@@0)) (|Seq#Contains_3152| (|Seq#Range| start_1 storeIndex@0) i1_4_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8668| s_1 i1_4@@0) (|Seq#Index_8668| s_1 i1_4_1@@0))))
 :qid |stdinbpl.1332:19|
 :skolemid |113|
)) (=> (and (and (forall ((i1_4@@1 Int) ) (!  (=> (and (|Seq#Contains_3152| (|Seq#Range| start_1 storeIndex@0) i1_4@@1) (< NoPerm FullPerm)) (and (qpRange11 (|Seq#Index_8668| s_1 i1_4@@1)) (= (invRecv11 (|Seq#Index_8668| s_1 i1_4@@1)) i1_4@@1)))
 :qid |stdinbpl.1338:26|
 :skolemid |114|
 :pattern ( (|Seq#Index_8668| s_1 i1_4@@1))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| start_1 storeIndex@0) i1_4@@1))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| start_1 storeIndex@0) i1_4@@1))
 :pattern ( (|Seq#Index_8668| s_1 i1_4@@1))
)) (forall ((o_9@@20 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3152| (|Seq#Range| start_1 storeIndex@0) (invRecv11 o_9@@20)) (< NoPerm FullPerm)) (qpRange11 o_9@@20)) (= (|Seq#Index_8668| s_1 (invRecv11 o_9@@20)) o_9@@20))
 :qid |stdinbpl.1342:26|
 :skolemid |115|
 :pattern ( (invRecv11 o_9@@20))
))) (and (forall ((i1_4@@2 Int) ) (!  (=> (|Seq#Contains_3152| (|Seq#Range| start_1 storeIndex@0) i1_4@@2) (not (= (|Seq#Index_8668| s_1 i1_4@@2) null)))
 :qid |stdinbpl.1348:26|
 :skolemid |116|
 :pattern ( (|Seq#Index_8668| s_1 i1_4@@2))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| start_1 storeIndex@0) i1_4@@2))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| start_1 storeIndex@0) i1_4@@2))
 :pattern ( (|Seq#Index_8668| s_1 i1_4@@2))
)) (forall ((o_9@@21 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3152| (|Seq#Range| start_1 storeIndex@0) (invRecv11 o_9@@21)) (< NoPerm FullPerm)) (qpRange11 o_9@@21)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_8668| s_1 (invRecv11 o_9@@21)) o_9@@21)) (= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@6) o_9@@21 f_7) (+ (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@5) o_9@@21 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_3152| (|Seq#Range| start_1 storeIndex@0) (invRecv11 o_9@@21)) (< NoPerm FullPerm)) (qpRange11 o_9@@21))) (= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@6) o_9@@21 f_7) (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@5) o_9@@21 f_7))))
 :qid |stdinbpl.1354:26|
 :skolemid |117|
 :pattern ( (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@6) o_9@@21 f_7))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@22 T@Ref) (f_5@@14 T@Field_12892_53) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| QPMask@5) o_9@@22 f_5@@14) (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| QPMask@6) o_9@@22 f_5@@14)))
 :qid |stdinbpl.1358:33|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| QPMask@5) o_9@@22 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| QPMask@6) o_9@@22 f_5@@14))
)) (forall ((o_9@@23 T@Ref) (f_5@@15 T@Field_12905_12906) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| QPMask@5) o_9@@23 f_5@@15) (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| QPMask@6) o_9@@23 f_5@@15)))
 :qid |stdinbpl.1358:33|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| QPMask@5) o_9@@23 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| QPMask@6) o_9@@23 f_5@@15))
))) (forall ((o_9@@24 T@Ref) (f_5@@16 T@Field_18933_3274) ) (!  (=> (not (= f_5@@16 f_7)) (= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@5) o_9@@24 f_5@@16) (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@6) o_9@@24 f_5@@16)))
 :qid |stdinbpl.1358:33|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@5) o_9@@24 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@6) o_9@@24 f_5@@16))
))) (forall ((o_9@@25 T@Ref) (f_5@@17 T@Field_8664_35707) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| QPMask@5) o_9@@25 f_5@@17) (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| QPMask@6) o_9@@25 f_5@@17)))
 :qid |stdinbpl.1358:33|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| QPMask@5) o_9@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| QPMask@6) o_9@@25 f_5@@17))
))) (forall ((o_9@@26 T@Ref) (f_5@@18 T@Field_8664_35840) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| QPMask@5) o_9@@26 f_5@@18) (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| QPMask@6) o_9@@26 f_5@@18)))
 :qid |stdinbpl.1358:33|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| QPMask@5) o_9@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| QPMask@6) o_9@@26 f_5@@18))
))) (state ExhaleHeap@2 QPMask@6)) (and (state ExhaleHeap@2 QPMask@6) (state ExhaleHeap@2 QPMask@6))) (and (and (=> (= (ControlFlow 0 46) 39) anon62_Else_correct) (=> (= (ControlFlow 0 46) 42) anon63_Then_correct)) (=> (= (ControlFlow 0 46) 45) anon63_Else_correct))))))))
(let ((anon58_Else_correct  (and (=> (= (ControlFlow 0 48) (- 0 50)) (forall ((i_7_1 Int) (i_7_2 Int) ) (!  (=> (and (and (and (and (not (= i_7_1 i_7_2)) (|Seq#Contains_3152| (|Seq#Range| (+ storeIndex@0 1) end_1) i_7_1)) (|Seq#Contains_3152| (|Seq#Range| (+ storeIndex@0 1) end_1) i_7_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8668| s_1 i_7_1) (|Seq#Index_8668| s_1 i_7_2))))
 :qid |stdinbpl.1275:21|
 :skolemid |107|
 :pattern ( (neverTriggered10 i_7_1) (neverTriggered10 i_7_2))
))) (=> (forall ((i_7_1@@0 Int) (i_7_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_7_1@@0 i_7_2@@0)) (|Seq#Contains_3152| (|Seq#Range| (+ storeIndex@0 1) end_1) i_7_1@@0)) (|Seq#Contains_3152| (|Seq#Range| (+ storeIndex@0 1) end_1) i_7_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8668| s_1 i_7_1@@0) (|Seq#Index_8668| s_1 i_7_2@@0))))
 :qid |stdinbpl.1275:21|
 :skolemid |107|
 :pattern ( (neverTriggered10 i_7_1@@0) (neverTriggered10 i_7_2@@0))
)) (and (=> (= (ControlFlow 0 48) (- 0 49)) (forall ((i_7_1@@1 Int) ) (!  (=> (|Seq#Contains_3152| (|Seq#Range| (+ storeIndex@0 1) end_1) i_7_1@@1) (>= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@4) (|Seq#Index_8668| s_1 i_7_1@@1) f_7) FullPerm))
 :qid |stdinbpl.1282:21|
 :skolemid |108|
 :pattern ( (|Seq#Index_8668| s_1 i_7_1@@1))
 :pattern ( (|Seq#Index_8668| s_1 i_7_1@@1))
))) (=> (forall ((i_7_1@@2 Int) ) (!  (=> (|Seq#Contains_3152| (|Seq#Range| (+ storeIndex@0 1) end_1) i_7_1@@2) (>= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@4) (|Seq#Index_8668| s_1 i_7_1@@2) f_7) FullPerm))
 :qid |stdinbpl.1282:21|
 :skolemid |108|
 :pattern ( (|Seq#Index_8668| s_1 i_7_1@@2))
 :pattern ( (|Seq#Index_8668| s_1 i_7_1@@2))
)) (=> (forall ((i_7_1@@3 Int) ) (!  (=> (and (|Seq#Contains_3152| (|Seq#Range| (+ storeIndex@0 1) end_1) i_7_1@@3) (< NoPerm FullPerm)) (and (qpRange10 (|Seq#Index_8668| s_1 i_7_1@@3)) (= (invRecv10 (|Seq#Index_8668| s_1 i_7_1@@3)) i_7_1@@3)))
 :qid |stdinbpl.1288:26|
 :skolemid |109|
 :pattern ( (|Seq#Index_8668| s_1 i_7_1@@3))
 :pattern ( (|Seq#Index_8668| s_1 i_7_1@@3))
)) (=> (and (forall ((o_9@@27 T@Ref) ) (!  (=> (and (|Seq#Contains_3152| (|Seq#Range| (+ storeIndex@0 1) end_1) (invRecv10 o_9@@27)) (and (< NoPerm FullPerm) (qpRange10 o_9@@27))) (= (|Seq#Index_8668| s_1 (invRecv10 o_9@@27)) o_9@@27))
 :qid |stdinbpl.1292:26|
 :skolemid |110|
 :pattern ( (invRecv10 o_9@@27))
)) (forall ((o_9@@28 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3152| (|Seq#Range| (+ storeIndex@0 1) end_1) (invRecv10 o_9@@28)) (and (< NoPerm FullPerm) (qpRange10 o_9@@28))) (and (= (|Seq#Index_8668| s_1 (invRecv10 o_9@@28)) o_9@@28) (= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@5) o_9@@28 f_7) (- (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@4) o_9@@28 f_7) FullPerm)))) (=> (not (and (|Seq#Contains_3152| (|Seq#Range| (+ storeIndex@0 1) end_1) (invRecv10 o_9@@28)) (and (< NoPerm FullPerm) (qpRange10 o_9@@28)))) (= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@5) o_9@@28 f_7) (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@4) o_9@@28 f_7))))
 :qid |stdinbpl.1298:26|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@5) o_9@@28 f_7))
))) (=> (and (and (and (and (and (forall ((o_9@@29 T@Ref) (f_5@@19 T@Field_12892_53) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| QPMask@4) o_9@@29 f_5@@19) (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| QPMask@5) o_9@@29 f_5@@19)))
 :qid |stdinbpl.1304:33|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| QPMask@5) o_9@@29 f_5@@19))
)) (forall ((o_9@@30 T@Ref) (f_5@@20 T@Field_12905_12906) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| QPMask@4) o_9@@30 f_5@@20) (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| QPMask@5) o_9@@30 f_5@@20)))
 :qid |stdinbpl.1304:33|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| QPMask@5) o_9@@30 f_5@@20))
))) (forall ((o_9@@31 T@Ref) (f_5@@21 T@Field_18933_3274) ) (!  (=> (not (= f_5@@21 f_7)) (= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@4) o_9@@31 f_5@@21) (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@5) o_9@@31 f_5@@21)))
 :qid |stdinbpl.1304:33|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@5) o_9@@31 f_5@@21))
))) (forall ((o_9@@32 T@Ref) (f_5@@22 T@Field_8664_35707) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| QPMask@4) o_9@@32 f_5@@22) (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| QPMask@5) o_9@@32 f_5@@22)))
 :qid |stdinbpl.1304:33|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| QPMask@5) o_9@@32 f_5@@22))
))) (forall ((o_9@@33 T@Ref) (f_5@@23 T@Field_8664_35840) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| QPMask@4) o_9@@33 f_5@@23) (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| QPMask@5) o_9@@33 f_5@@23)))
 :qid |stdinbpl.1304:33|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| QPMask@5) o_9@@33 f_5@@23))
))) (and (IdenticalOnKnownLocations ExhaleHeap@1 ExhaleHeap@2 QPMask@5) (state ExhaleHeap@2 QPMask@5))) (and (and (=> (= (ControlFlow 0 48) 46) anon60_Else_correct) (=> (= (ControlFlow 0 48) 35) anon61_Then_correct)) (=> (= (ControlFlow 0 48) 38) anon61_Else_correct)))))))))))
(let ((anon56_Else_correct  (and (=> (= (ControlFlow 0 51) (- 0 56)) (forall ((i_5_1 Int) (i_5_2 Int) ) (!  (=> (and (and (and (and (not (= i_5_1 i_5_2)) (|Seq#Contains_3152| (|Seq#Range| start_1 storeIndex@0) i_5_1)) (|Seq#Contains_3152| (|Seq#Range| start_1 storeIndex@0) i_5_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8668| s_1 i_5_1) (|Seq#Index_8668| s_1 i_5_2))))
 :qid |stdinbpl.1201:21|
 :skolemid |101|
 :pattern ( (neverTriggered9 i_5_1) (neverTriggered9 i_5_2))
))) (=> (forall ((i_5_1@@0 Int) (i_5_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_5_1@@0 i_5_2@@0)) (|Seq#Contains_3152| (|Seq#Range| start_1 storeIndex@0) i_5_1@@0)) (|Seq#Contains_3152| (|Seq#Range| start_1 storeIndex@0) i_5_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8668| s_1 i_5_1@@0) (|Seq#Index_8668| s_1 i_5_2@@0))))
 :qid |stdinbpl.1201:21|
 :skolemid |101|
 :pattern ( (neverTriggered9 i_5_1@@0) (neverTriggered9 i_5_2@@0))
)) (and (=> (= (ControlFlow 0 51) (- 0 55)) (forall ((i_5_1@@1 Int) ) (!  (=> (|Seq#Contains_3152| (|Seq#Range| start_1 storeIndex@0) i_5_1@@1) (>= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@3) (|Seq#Index_8668| s_1 i_5_1@@1) f_7) FullPerm))
 :qid |stdinbpl.1208:21|
 :skolemid |102|
 :pattern ( (|Seq#Index_8668| s_1 i_5_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| start_1 storeIndex@0) i_5_1@@1))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| start_1 storeIndex@0) i_5_1@@1))
 :pattern ( (|Seq#Index_8668| s_1 i_5_1@@1))
))) (=> (forall ((i_5_1@@2 Int) ) (!  (=> (|Seq#Contains_3152| (|Seq#Range| start_1 storeIndex@0) i_5_1@@2) (>= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@3) (|Seq#Index_8668| s_1 i_5_1@@2) f_7) FullPerm))
 :qid |stdinbpl.1208:21|
 :skolemid |102|
 :pattern ( (|Seq#Index_8668| s_1 i_5_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| start_1 storeIndex@0) i_5_1@@2))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| start_1 storeIndex@0) i_5_1@@2))
 :pattern ( (|Seq#Index_8668| s_1 i_5_1@@2))
)) (=> (forall ((i_5_1@@3 Int) ) (!  (=> (and (|Seq#Contains_3152| (|Seq#Range| start_1 storeIndex@0) i_5_1@@3) (< NoPerm FullPerm)) (and (qpRange9 (|Seq#Index_8668| s_1 i_5_1@@3)) (= (invRecv9 (|Seq#Index_8668| s_1 i_5_1@@3)) i_5_1@@3)))
 :qid |stdinbpl.1214:26|
 :skolemid |103|
 :pattern ( (|Seq#Index_8668| s_1 i_5_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| start_1 storeIndex@0) i_5_1@@3))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| start_1 storeIndex@0) i_5_1@@3))
 :pattern ( (|Seq#Index_8668| s_1 i_5_1@@3))
)) (=> (and (forall ((o_9@@34 T@Ref) ) (!  (=> (and (|Seq#Contains_3152| (|Seq#Range| start_1 storeIndex@0) (invRecv9 o_9@@34)) (and (< NoPerm FullPerm) (qpRange9 o_9@@34))) (= (|Seq#Index_8668| s_1 (invRecv9 o_9@@34)) o_9@@34))
 :qid |stdinbpl.1218:26|
 :skolemid |104|
 :pattern ( (invRecv9 o_9@@34))
)) (forall ((o_9@@35 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3152| (|Seq#Range| start_1 storeIndex@0) (invRecv9 o_9@@35)) (and (< NoPerm FullPerm) (qpRange9 o_9@@35))) (and (= (|Seq#Index_8668| s_1 (invRecv9 o_9@@35)) o_9@@35) (= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@4) o_9@@35 f_7) (- (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@3) o_9@@35 f_7) FullPerm)))) (=> (not (and (|Seq#Contains_3152| (|Seq#Range| start_1 storeIndex@0) (invRecv9 o_9@@35)) (and (< NoPerm FullPerm) (qpRange9 o_9@@35)))) (= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@4) o_9@@35 f_7) (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@3) o_9@@35 f_7))))
 :qid |stdinbpl.1224:26|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@4) o_9@@35 f_7))
))) (=> (and (and (and (and (and (forall ((o_9@@36 T@Ref) (f_5@@24 T@Field_12892_53) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| QPMask@3) o_9@@36 f_5@@24) (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| QPMask@4) o_9@@36 f_5@@24)))
 :qid |stdinbpl.1230:33|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| QPMask@4) o_9@@36 f_5@@24))
)) (forall ((o_9@@37 T@Ref) (f_5@@25 T@Field_12905_12906) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| QPMask@3) o_9@@37 f_5@@25) (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| QPMask@4) o_9@@37 f_5@@25)))
 :qid |stdinbpl.1230:33|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| QPMask@4) o_9@@37 f_5@@25))
))) (forall ((o_9@@38 T@Ref) (f_5@@26 T@Field_18933_3274) ) (!  (=> (not (= f_5@@26 f_7)) (= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@3) o_9@@38 f_5@@26) (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@4) o_9@@38 f_5@@26)))
 :qid |stdinbpl.1230:33|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@4) o_9@@38 f_5@@26))
))) (forall ((o_9@@39 T@Ref) (f_5@@27 T@Field_8664_35707) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| QPMask@3) o_9@@39 f_5@@27) (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| QPMask@4) o_9@@39 f_5@@27)))
 :qid |stdinbpl.1230:33|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| QPMask@4) o_9@@39 f_5@@27))
))) (forall ((o_9@@40 T@Ref) (f_5@@28 T@Field_8664_35840) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| QPMask@3) o_9@@40 f_5@@28) (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| QPMask@4) o_9@@40 f_5@@28)))
 :qid |stdinbpl.1230:33|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| QPMask@4) o_9@@40 f_5@@28))
))) (and (IdenticalOnKnownLocations Heap@1 ExhaleHeap@1 QPMask@4) (state ExhaleHeap@1 QPMask@4))) (and (=> (= (ControlFlow 0 51) (- 0 54)) (<= 0 (+ storeIndex@0 1))) (=> (<= 0 (+ storeIndex@0 1)) (and (=> (= (ControlFlow 0 51) (- 0 53)) (<= (+ storeIndex@0 1) end_1)) (=> (<= (+ storeIndex@0 1) end_1) (and (=> (= (ControlFlow 0 51) (- 0 52)) (<= end_1 (|Seq#Length_8668| s_1))) (=> (<= end_1 (|Seq#Length_8668| s_1)) (=> (state ExhaleHeap@1 QPMask@4) (and (and (=> (= (ControlFlow 0 51) 48) anon58_Else_correct) (=> (= (ControlFlow 0 51) 30) anon59_Then_correct)) (=> (= (ControlFlow 0 51) 33) anon59_Else_correct))))))))))))))))))
(let ((anon54_Else_correct  (=> (and (not (< index@0 (- end_1 1))) (state ExhaleHeap@0 QPMask@1)) (and (=> (= (ControlFlow 0 57) (- 0 73)) (forall ((i3_5 Int) (i3_5_1 Int) ) (!  (=> (and (and (and (and (not (= i3_5 i3_5_1)) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_5)) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_5_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8668| s_1 i3_5) (|Seq#Index_8668| s_1 i3_5_1))))
 :qid |stdinbpl.1083:21|
 :skolemid |95|
))) (=> (forall ((i3_5@@0 Int) (i3_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i3_5@@0 i3_5_1@@0)) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_5@@0)) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_5_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8668| s_1 i3_5@@0) (|Seq#Index_8668| s_1 i3_5_1@@0))))
 :qid |stdinbpl.1083:21|
 :skolemid |95|
)) (=> (and (and (forall ((i3_5@@1 Int) ) (!  (=> (and (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_5@@1) (< NoPerm FullPerm)) (and (qpRange8 (|Seq#Index_8668| s_1 i3_5@@1)) (= (invRecv8 (|Seq#Index_8668| s_1 i3_5@@1)) i3_5@@1)))
 :qid |stdinbpl.1089:28|
 :skolemid |96|
 :pattern ( (|Seq#Index_8668| s_1 i3_5@@1))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| start_1 end_1) i3_5@@1))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_5@@1))
 :pattern ( (|Seq#Index_8668| s_1 i3_5@@1))
)) (forall ((o_9@@41 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) (invRecv8 o_9@@41)) (< NoPerm FullPerm)) (qpRange8 o_9@@41)) (= (|Seq#Index_8668| s_1 (invRecv8 o_9@@41)) o_9@@41))
 :qid |stdinbpl.1093:28|
 :skolemid |97|
 :pattern ( (invRecv8 o_9@@41))
))) (and (forall ((i3_5@@2 Int) ) (!  (=> (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_5@@2) (not (= (|Seq#Index_8668| s_1 i3_5@@2) null)))
 :qid |stdinbpl.1099:28|
 :skolemid |98|
 :pattern ( (|Seq#Index_8668| s_1 i3_5@@2))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| start_1 end_1) i3_5@@2))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_5@@2))
 :pattern ( (|Seq#Index_8668| s_1 i3_5@@2))
)) (forall ((o_9@@42 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) (invRecv8 o_9@@42)) (< NoPerm FullPerm)) (qpRange8 o_9@@42)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_8668| s_1 (invRecv8 o_9@@42)) o_9@@42)) (= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@3) o_9@@42 f_7) (+ (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@1) o_9@@42 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) (invRecv8 o_9@@42)) (< NoPerm FullPerm)) (qpRange8 o_9@@42))) (= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@3) o_9@@42 f_7) (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@1) o_9@@42 f_7))))
 :qid |stdinbpl.1105:28|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@3) o_9@@42 f_7))
)))) (=> (and (and (and (and (and (and (and (forall ((o_9@@43 T@Ref) (f_5@@29 T@Field_12892_53) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| QPMask@1) o_9@@43 f_5@@29) (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| QPMask@3) o_9@@43 f_5@@29)))
 :qid |stdinbpl.1109:35|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| QPMask@1) o_9@@43 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| QPMask@3) o_9@@43 f_5@@29))
)) (forall ((o_9@@44 T@Ref) (f_5@@30 T@Field_12905_12906) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| QPMask@1) o_9@@44 f_5@@30) (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| QPMask@3) o_9@@44 f_5@@30)))
 :qid |stdinbpl.1109:35|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| QPMask@1) o_9@@44 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| QPMask@3) o_9@@44 f_5@@30))
))) (forall ((o_9@@45 T@Ref) (f_5@@31 T@Field_18933_3274) ) (!  (=> (not (= f_5@@31 f_7)) (= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@1) o_9@@45 f_5@@31) (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@3) o_9@@45 f_5@@31)))
 :qid |stdinbpl.1109:35|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@1) o_9@@45 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@3) o_9@@45 f_5@@31))
))) (forall ((o_9@@46 T@Ref) (f_5@@32 T@Field_8664_35707) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| QPMask@1) o_9@@46 f_5@@32) (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| QPMask@3) o_9@@46 f_5@@32)))
 :qid |stdinbpl.1109:35|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| QPMask@1) o_9@@46 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| QPMask@3) o_9@@46 f_5@@32))
))) (forall ((o_9@@47 T@Ref) (f_5@@33 T@Field_8664_35840) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| QPMask@1) o_9@@47 f_5@@33) (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| QPMask@3) o_9@@47 f_5@@33)))
 :qid |stdinbpl.1109:35|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| QPMask@1) o_9@@47 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| QPMask@3) o_9@@47 f_5@@33))
))) (state ExhaleHeap@0 QPMask@3)) (and (<= start_1 storeIndex@0) (<= storeIndex@0 index@0))) (and (and (<= start_1 index@0) (< index@0 end_1)) (and (state ExhaleHeap@0 QPMask@3) (state ExhaleHeap@0 QPMask@3)))) (and (=> (= (ControlFlow 0 57) (- 0 72)) (>= storeIndex@0 0)) (=> (>= storeIndex@0 0) (and (=> (= (ControlFlow 0 57) (- 0 71)) (< storeIndex@0 (|Seq#Length_8668| s_1))) (=> (< storeIndex@0 (|Seq#Length_8668| s_1)) (and (=> (= (ControlFlow 0 57) (- 0 70)) (HasDirectPerm_8664_3274 QPMask@3 (|Seq#Index_8668| s_1 storeIndex@0) f_7)) (=> (HasDirectPerm_8664_3274 QPMask@3 (|Seq#Index_8668| s_1 storeIndex@0) f_7) (=> (and (= aux@1 (select (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| ExhaleHeap@0) (|Seq#Index_8668| s_1 storeIndex@0) f_7)) (state ExhaleHeap@0 QPMask@3)) (and (=> (= (ControlFlow 0 57) (- 0 69)) (>= storeIndex@0 0)) (=> (>= storeIndex@0 0) (and (=> (= (ControlFlow 0 57) (- 0 68)) (< storeIndex@0 (|Seq#Length_8668| s_1))) (=> (< storeIndex@0 (|Seq#Length_8668| s_1)) (and (=> (= (ControlFlow 0 57) (- 0 67)) (>= (- end_1 1) 0)) (=> (>= (- end_1 1) 0) (and (=> (= (ControlFlow 0 57) (- 0 66)) (< (- end_1 1) (|Seq#Length_8668| s_1))) (=> (< (- end_1 1) (|Seq#Length_8668| s_1)) (and (=> (= (ControlFlow 0 57) (- 0 65)) (HasDirectPerm_8664_3274 QPMask@3 (|Seq#Index_8668| s_1 (- end_1 1)) f_7)) (=> (HasDirectPerm_8664_3274 QPMask@3 (|Seq#Index_8668| s_1 (- end_1 1)) f_7) (and (=> (= (ControlFlow 0 57) (- 0 64)) (= FullPerm (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@3) (|Seq#Index_8668| s_1 storeIndex@0) f_7))) (=> (= FullPerm (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@3) (|Seq#Index_8668| s_1 storeIndex@0) f_7)) (=> (and (= Heap@0 (PolymorphicMapType_12832 (|PolymorphicMapType_12832_8452_53#PolymorphicMapType_12832| ExhaleHeap@0) (|PolymorphicMapType_12832_8455_8456#PolymorphicMapType_12832| ExhaleHeap@0) (store (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| ExhaleHeap@0) (|Seq#Index_8668| s_1 storeIndex@0) f_7 (select (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| ExhaleHeap@0) (|Seq#Index_8668| s_1 (- end_1 1)) f_7)) (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| ExhaleHeap@0) (|PolymorphicMapType_12832_12892_35707#PolymorphicMapType_12832| ExhaleHeap@0))) (state Heap@0 QPMask@3)) (and (=> (= (ControlFlow 0 57) (- 0 63)) (>= (- end_1 1) 0)) (=> (>= (- end_1 1) 0) (and (=> (= (ControlFlow 0 57) (- 0 62)) (< (- end_1 1) (|Seq#Length_8668| s_1))) (=> (< (- end_1 1) (|Seq#Length_8668| s_1)) (and (=> (= (ControlFlow 0 57) (- 0 61)) (= FullPerm (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@3) (|Seq#Index_8668| s_1 (- end_1 1)) f_7))) (=> (= FullPerm (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@3) (|Seq#Index_8668| s_1 (- end_1 1)) f_7)) (=> (and (= Heap@1 (PolymorphicMapType_12832 (|PolymorphicMapType_12832_8452_53#PolymorphicMapType_12832| Heap@0) (|PolymorphicMapType_12832_8455_8456#PolymorphicMapType_12832| Heap@0) (store (|PolymorphicMapType_12832_8664_3274#PolymorphicMapType_12832| Heap@0) (|Seq#Index_8668| s_1 (- end_1 1)) f_7 aux@1) (|PolymorphicMapType_12832_8664_35884#PolymorphicMapType_12832| Heap@0) (|PolymorphicMapType_12832_12892_35707#PolymorphicMapType_12832| Heap@0))) (state Heap@1 QPMask@3)) (and (=> (= (ControlFlow 0 57) (- 0 60)) (<= 0 start_1)) (=> (<= 0 start_1) (and (=> (= (ControlFlow 0 57) (- 0 59)) (<= start_1 storeIndex@0)) (=> (<= start_1 storeIndex@0) (and (=> (= (ControlFlow 0 57) (- 0 58)) (<= storeIndex@0 (|Seq#Length_8668| s_1))) (=> (<= storeIndex@0 (|Seq#Length_8668| s_1)) (=> (state Heap@1 QPMask@3) (and (and (=> (= (ControlFlow 0 57) 51) anon56_Else_correct) (=> (= (ControlFlow 0 57) 25) anon57_Then_correct)) (=> (= (ControlFlow 0 57) 28) anon57_Else_correct)))))))))))))))))))))))))))))))))))))))))))
(let ((anon50_Then_correct  (=> (< start_1 (- end_1 1)) (=> (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0)) (and (=> (= (ControlFlow 0 103) (- 0 109)) (forall ((i3_1 Int) (i3_12 Int) ) (!  (=> (and (and (and (and (not (= i3_1 i3_12)) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_1)) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_12)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8668| s_1 i3_1) (|Seq#Index_8668| s_1 i3_12))))
 :qid |stdinbpl.788:25|
 :skolemid |71|
 :pattern ( (neverTriggered4 i3_1) (neverTriggered4 i3_12))
))) (=> (forall ((i3_1@@0 Int) (i3_12@@0 Int) ) (!  (=> (and (and (and (and (not (= i3_1@@0 i3_12@@0)) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_1@@0)) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_12@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8668| s_1 i3_1@@0) (|Seq#Index_8668| s_1 i3_12@@0))))
 :qid |stdinbpl.788:25|
 :skolemid |71|
 :pattern ( (neverTriggered4 i3_1@@0) (neverTriggered4 i3_12@@0))
)) (and (=> (= (ControlFlow 0 103) (- 0 108)) (forall ((i3_1@@1 Int) ) (!  (=> (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_1@@1) (>= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@0) (|Seq#Index_8668| s_1 i3_1@@1) f_7) FullPerm))
 :qid |stdinbpl.795:25|
 :skolemid |72|
 :pattern ( (|Seq#Index_8668| s_1 i3_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| start_1 end_1) i3_1@@1))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_1@@1))
 :pattern ( (|Seq#Index_8668| s_1 i3_1@@1))
))) (=> (forall ((i3_1@@2 Int) ) (!  (=> (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_1@@2) (>= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@0) (|Seq#Index_8668| s_1 i3_1@@2) f_7) FullPerm))
 :qid |stdinbpl.795:25|
 :skolemid |72|
 :pattern ( (|Seq#Index_8668| s_1 i3_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| start_1 end_1) i3_1@@2))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_1@@2))
 :pattern ( (|Seq#Index_8668| s_1 i3_1@@2))
)) (=> (forall ((i3_1@@3 Int) ) (!  (=> (and (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_1@@3) (< NoPerm FullPerm)) (and (qpRange4 (|Seq#Index_8668| s_1 i3_1@@3)) (= (invRecv4 (|Seq#Index_8668| s_1 i3_1@@3)) i3_1@@3)))
 :qid |stdinbpl.801:30|
 :skolemid |73|
 :pattern ( (|Seq#Index_8668| s_1 i3_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| start_1 end_1) i3_1@@3))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i3_1@@3))
 :pattern ( (|Seq#Index_8668| s_1 i3_1@@3))
)) (=> (and (forall ((o_9@@48 T@Ref) ) (!  (=> (and (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) (invRecv4 o_9@@48)) (and (< NoPerm FullPerm) (qpRange4 o_9@@48))) (= (|Seq#Index_8668| s_1 (invRecv4 o_9@@48)) o_9@@48))
 :qid |stdinbpl.805:30|
 :skolemid |74|
 :pattern ( (invRecv4 o_9@@48))
)) (forall ((o_9@@49 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) (invRecv4 o_9@@49)) (and (< NoPerm FullPerm) (qpRange4 o_9@@49))) (and (= (|Seq#Index_8668| s_1 (invRecv4 o_9@@49)) o_9@@49) (= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@1) o_9@@49 f_7) (- (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@0) o_9@@49 f_7) FullPerm)))) (=> (not (and (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) (invRecv4 o_9@@49)) (and (< NoPerm FullPerm) (qpRange4 o_9@@49)))) (= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@1) o_9@@49 f_7) (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@0) o_9@@49 f_7))))
 :qid |stdinbpl.811:30|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@1) o_9@@49 f_7))
))) (=> (and (and (and (and (forall ((o_9@@50 T@Ref) (f_5@@34 T@Field_12892_53) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| QPMask@0) o_9@@50 f_5@@34) (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| QPMask@1) o_9@@50 f_5@@34)))
 :qid |stdinbpl.817:37|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| QPMask@1) o_9@@50 f_5@@34))
)) (forall ((o_9@@51 T@Ref) (f_5@@35 T@Field_12905_12906) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| QPMask@0) o_9@@51 f_5@@35) (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| QPMask@1) o_9@@51 f_5@@35)))
 :qid |stdinbpl.817:37|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| QPMask@1) o_9@@51 f_5@@35))
))) (forall ((o_9@@52 T@Ref) (f_5@@36 T@Field_18933_3274) ) (!  (=> (not (= f_5@@36 f_7)) (= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@0) o_9@@52 f_5@@36) (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@1) o_9@@52 f_5@@36)))
 :qid |stdinbpl.817:37|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@1) o_9@@52 f_5@@36))
))) (forall ((o_9@@53 T@Ref) (f_5@@37 T@Field_8664_35707) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| QPMask@0) o_9@@53 f_5@@37) (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| QPMask@1) o_9@@53 f_5@@37)))
 :qid |stdinbpl.817:37|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| QPMask@1) o_9@@53 f_5@@37))
))) (forall ((o_9@@54 T@Ref) (f_5@@38 T@Field_8664_35840) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| QPMask@0) o_9@@54 f_5@@38) (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| QPMask@1) o_9@@54 f_5@@38)))
 :qid |stdinbpl.817:37|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| QPMask@1) o_9@@54 f_5@@38))
))) (and (=> (= (ControlFlow 0 103) (- 0 107)) (<= start_1 start_1)) (=> (<= start_1 start_1) (and (=> (= (ControlFlow 0 103) (- 0 106)) (<= start_1 start_1)) (=> (<= start_1 start_1) (and (=> (= (ControlFlow 0 103) (- 0 105)) (<= start_1 start_1)) (=> (<= start_1 start_1) (and (=> (= (ControlFlow 0 103) (- 0 104)) (< start_1 end_1)) (=> (< start_1 end_1) (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@0 QPMask@1) (and (and (and (and (=> (= (ControlFlow 0 103) 95) anon54_Then_correct) (=> (= (ControlFlow 0 103) 57) anon54_Else_correct)) (=> (= (ControlFlow 0 103) 18) anon52_Else_correct)) (=> (= (ControlFlow 0 103) 20) anon53_Then_correct)) (=> (= (ControlFlow 0 103) 23) anon53_Else_correct))))))))))))))))))))))
(let ((anon50_Else_correct  (=> (and (and (<= (- end_1 1) start_1) (= Mask@0 QPMask@0)) (and (= Heap@2 Heap@@17) (= (ControlFlow 0 16) 14))) anon42_correct)))
(let ((anon45_Else_correct  (and (=> (= (ControlFlow 0 118) (- 0 119)) (forall ((i_3_2 Int) (i_3_3 Int) ) (!  (=> (and (and (and (and (not (= i_3_2 i_3_3)) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i_3_2)) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i_3_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8668| s_1 i_3_2) (|Seq#Index_8668| s_1 i_3_3))))
 :qid |stdinbpl.669:15|
 :skolemid |59|
))) (=> (forall ((i_3_2@@0 Int) (i_3_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3_2@@0 i_3_3@@0)) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i_3_2@@0)) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i_3_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8668| s_1 i_3_2@@0) (|Seq#Index_8668| s_1 i_3_3@@0))))
 :qid |stdinbpl.669:15|
 :skolemid |59|
)) (=> (and (and (forall ((i_3_2@@1 Int) ) (!  (=> (and (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i_3_2@@1) (< NoPerm FullPerm)) (and (qpRange1 (|Seq#Index_8668| s_1 i_3_2@@1)) (= (invRecv1 (|Seq#Index_8668| s_1 i_3_2@@1)) i_3_2@@1)))
 :qid |stdinbpl.675:22|
 :skolemid |60|
 :pattern ( (|Seq#Index_8668| s_1 i_3_2@@1))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| start_1 end_1) i_3_2@@1))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i_3_2@@1))
 :pattern ( (|Seq#Index_8668| s_1 i_3_2@@1))
)) (forall ((o_9@@55 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) (invRecv1 o_9@@55)) (< NoPerm FullPerm)) (qpRange1 o_9@@55)) (= (|Seq#Index_8668| s_1 (invRecv1 o_9@@55)) o_9@@55))
 :qid |stdinbpl.679:22|
 :skolemid |61|
 :pattern ( (invRecv1 o_9@@55))
))) (and (forall ((i_3_2@@2 Int) ) (!  (=> (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i_3_2@@2) (not (= (|Seq#Index_8668| s_1 i_3_2@@2) null)))
 :qid |stdinbpl.685:22|
 :skolemid |62|
 :pattern ( (|Seq#Index_8668| s_1 i_3_2@@2))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| start_1 end_1) i_3_2@@2))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i_3_2@@2))
 :pattern ( (|Seq#Index_8668| s_1 i_3_2@@2))
)) (forall ((o_9@@56 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) (invRecv1 o_9@@56)) (< NoPerm FullPerm)) (qpRange1 o_9@@56)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_8668| s_1 (invRecv1 o_9@@56)) o_9@@56)) (= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@0) o_9@@56 f_7) (+ (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| ZeroMask) o_9@@56 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) (invRecv1 o_9@@56)) (< NoPerm FullPerm)) (qpRange1 o_9@@56))) (= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@0) o_9@@56 f_7) (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| ZeroMask) o_9@@56 f_7))))
 :qid |stdinbpl.691:22|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@0) o_9@@56 f_7))
)))) (=> (and (and (and (and (and (forall ((o_9@@57 T@Ref) (f_5@@39 T@Field_12892_53) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| ZeroMask) o_9@@57 f_5@@39) (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| QPMask@0) o_9@@57 f_5@@39)))
 :qid |stdinbpl.695:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| ZeroMask) o_9@@57 f_5@@39))
 :pattern ( (select (|PolymorphicMapType_12853_8664_53#PolymorphicMapType_12853| QPMask@0) o_9@@57 f_5@@39))
)) (forall ((o_9@@58 T@Ref) (f_5@@40 T@Field_12905_12906) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| ZeroMask) o_9@@58 f_5@@40) (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| QPMask@0) o_9@@58 f_5@@40)))
 :qid |stdinbpl.695:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| ZeroMask) o_9@@58 f_5@@40))
 :pattern ( (select (|PolymorphicMapType_12853_8664_12906#PolymorphicMapType_12853| QPMask@0) o_9@@58 f_5@@40))
))) (forall ((o_9@@59 T@Ref) (f_5@@41 T@Field_18933_3274) ) (!  (=> (not (= f_5@@41 f_7)) (= (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| ZeroMask) o_9@@59 f_5@@41) (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@0) o_9@@59 f_5@@41)))
 :qid |stdinbpl.695:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| ZeroMask) o_9@@59 f_5@@41))
 :pattern ( (select (|PolymorphicMapType_12853_8664_3274#PolymorphicMapType_12853| QPMask@0) o_9@@59 f_5@@41))
))) (forall ((o_9@@60 T@Ref) (f_5@@42 T@Field_8664_35707) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| ZeroMask) o_9@@60 f_5@@42) (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| QPMask@0) o_9@@60 f_5@@42)))
 :qid |stdinbpl.695:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| ZeroMask) o_9@@60 f_5@@42))
 :pattern ( (select (|PolymorphicMapType_12853_8664_35707#PolymorphicMapType_12853| QPMask@0) o_9@@60 f_5@@42))
))) (forall ((o_9@@61 T@Ref) (f_5@@43 T@Field_8664_35840) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| ZeroMask) o_9@@61 f_5@@43) (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| QPMask@0) o_9@@61 f_5@@43)))
 :qid |stdinbpl.695:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| ZeroMask) o_9@@61 f_5@@43))
 :pattern ( (select (|PolymorphicMapType_12853_8664_39962#PolymorphicMapType_12853| QPMask@0) o_9@@61 f_5@@43))
))) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (and (=> (= (ControlFlow 0 118) 117) anon47_Then_correct) (=> (= (ControlFlow 0 118) 103) anon50_Then_correct)) (=> (= (ControlFlow 0 118) 16) anon50_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon46_Else_correct  (=> (and (not (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i_3)) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon46_Then_correct  (=> (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i_3) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= i_3 0)) (=> (>= i_3 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< i_3 (|Seq#Length_8668| s_1))) (=> (< i_3 (|Seq#Length_8668| s_1)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon43_Else_correct  (=> (and (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i_1) (and (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) j_1) (not (= i_1 j_1)))) (not (= (|Seq#Index_8668| s_1 i_1) (|Seq#Index_8668| s_1 j_1))))
 :qid |stdinbpl.651:20|
 :skolemid |58|
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| start_1 end_1) i_1) (|Seq#ContainsTrigger_3152| (|Seq#Range| start_1 end_1) j_1))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| start_1 end_1) i_1) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) j_1))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i_1) (|Seq#ContainsTrigger_3152| (|Seq#Range| start_1 end_1) j_1))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i_1) (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) j_1))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| start_1 end_1) i_1) (|Seq#Index_8668| s_1 j_1))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i_1) (|Seq#Index_8668| s_1 j_1))
 :pattern ( (|Seq#ContainsTrigger_3152| (|Seq#Range| start_1 end_1) j_1) (|Seq#Index_8668| s_1 i_1))
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) j_1) (|Seq#Index_8668| s_1 i_1))
 :pattern ( (|Seq#Index_8668| s_1 i_1) (|Seq#Index_8668| s_1 j_1))
)) (state Heap@@17 ZeroMask)) (and (and (=> (= (ControlFlow 0 120) 118) anon45_Else_correct) (=> (= (ControlFlow 0 120) 9) anon46_Then_correct)) (=> (= (ControlFlow 0 120) 12) anon46_Else_correct)))))
(let ((anon3_correct true))
(let ((anon44_Else_correct  (=> (and (not (and (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i_18) (and (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) j_14) (not (= i_18 j_14))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon44_Then_correct  (=> (and (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) i_18) (and (|Seq#Contains_3152| (|Seq#Range| start_1 end_1) j_14) (not (= i_18 j_14)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i_18 0)) (=> (>= i_18 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i_18 (|Seq#Length_8668| s_1))) (=> (< i_18 (|Seq#Length_8668| s_1)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_14 0)) (=> (>= j_14 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_14 (|Seq#Length_8668| s_1))) (=> (< j_14 (|Seq#Length_8668| s_1)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (=> (and (and (<= 0 start_1) (<= start_1 end_1)) (and (<= end_1 (|Seq#Length_8668| s_1)) (state Heap@@17 ZeroMask))) (and (and (=> (= (ControlFlow 0 121) 120) anon43_Else_correct) (=> (= (ControlFlow 0 121) 2) anon44_Then_correct)) (=> (= (ControlFlow 0 121) 7) anon44_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 122) 121) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
