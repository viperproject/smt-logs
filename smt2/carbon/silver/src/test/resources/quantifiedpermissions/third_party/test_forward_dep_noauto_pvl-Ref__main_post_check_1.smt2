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
(declare-sort T@Field_21185_53 0)
(declare-sort T@Field_21198_21199 0)
(declare-sort T@Field_27216_27221 0)
(declare-sort T@Seq_27219 0)
(declare-sort T@Field_27380_3178 0)
(declare-sort T@Field_11843_68462 0)
(declare-sort T@Field_11843_68329 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_21146 0)) (((PolymorphicMapType_21146 (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| (Array T@Ref T@Field_27216_27221 Real)) (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| (Array T@Ref T@Field_27380_3178 Real)) (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| (Array T@Ref T@Field_21185_53 Real)) (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| (Array T@Ref T@Field_21198_21199 Real)) (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| (Array T@Ref T@Field_11843_68329 Real)) (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| (Array T@Ref T@Field_11843_68462 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_21674 0)) (((PolymorphicMapType_21674 (|PolymorphicMapType_21674_21185_53#PolymorphicMapType_21674| (Array T@Ref T@Field_21185_53 Bool)) (|PolymorphicMapType_21674_21185_21199#PolymorphicMapType_21674| (Array T@Ref T@Field_21198_21199 Bool)) (|PolymorphicMapType_21674_21185_27221#PolymorphicMapType_21674| (Array T@Ref T@Field_27216_27221 Bool)) (|PolymorphicMapType_21674_21185_3178#PolymorphicMapType_21674| (Array T@Ref T@Field_27380_3178 Bool)) (|PolymorphicMapType_21674_21185_68329#PolymorphicMapType_21674| (Array T@Ref T@Field_11843_68329 Bool)) (|PolymorphicMapType_21674_21185_69844#PolymorphicMapType_21674| (Array T@Ref T@Field_11843_68462 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_21125 0)) (((PolymorphicMapType_21125 (|PolymorphicMapType_21125_11643_53#PolymorphicMapType_21125| (Array T@Ref T@Field_21185_53 Bool)) (|PolymorphicMapType_21125_11646_11647#PolymorphicMapType_21125| (Array T@Ref T@Field_21198_21199 T@Ref)) (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| (Array T@Ref T@Field_27216_27221 T@Seq_27219)) (|PolymorphicMapType_21125_11855_3178#PolymorphicMapType_21125| (Array T@Ref T@Field_27380_3178 Int)) (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| (Array T@Ref T@Field_11843_68462 T@PolymorphicMapType_21674)) (|PolymorphicMapType_21125_21185_68329#PolymorphicMapType_21125| (Array T@Ref T@Field_11843_68329 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_21185_53)
(declare-fun Ref__a () T@Field_27216_27221)
(declare-fun Ref__b () T@Field_27216_27221)
(declare-fun Ref__c () T@Field_27216_27221)
(declare-fun Ref__Integer_value () T@Field_27380_3178)
(declare-fun |Seq#Length_11844| (T@Seq_27219) Int)
(declare-fun |Seq#Drop_11844| (T@Seq_27219 Int) T@Seq_27219)
(declare-sort T@Seq_3008 0)
(declare-fun |Seq#Length_3008| (T@Seq_3008) Int)
(declare-fun |Seq#Drop_3008| (T@Seq_3008 Int) T@Seq_3008)
(declare-fun succHeap (T@PolymorphicMapType_21125 T@PolymorphicMapType_21125) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_21125 T@PolymorphicMapType_21125) Bool)
(declare-fun state (T@PolymorphicMapType_21125 T@PolymorphicMapType_21146) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_21146) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_21674)
(declare-fun |Seq#Index_11844| (T@Seq_27219 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3008| (T@Seq_3008 Int) Int)
(declare-fun |Seq#Empty_11844| () T@Seq_27219)
(declare-fun |Seq#Empty_3008| () T@Seq_3008)
(declare-fun |Seq#Update_11844| (T@Seq_27219 Int T@Ref) T@Seq_27219)
(declare-fun |Seq#Update_3008| (T@Seq_3008 Int Int) T@Seq_3008)
(declare-fun |Seq#Take_11844| (T@Seq_27219 Int) T@Seq_27219)
(declare-fun |Seq#Take_3008| (T@Seq_3008 Int) T@Seq_3008)
(declare-fun |Seq#Contains_3008| (T@Seq_3008 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3008)
(declare-fun |Seq#Contains_27219| (T@Seq_27219 T@Ref) Bool)
(declare-fun |Seq#Skolem_27219| (T@Seq_27219 T@Ref) Int)
(declare-fun |Seq#Skolem_3008| (T@Seq_3008 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_21125 T@PolymorphicMapType_21125 T@PolymorphicMapType_21146) Bool)
(declare-fun IsPredicateField_11843_68420 (T@Field_11843_68329) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_11843 (T@Field_11843_68329) T@Field_11843_68462)
(declare-fun HasDirectPerm_11843_68393 (T@PolymorphicMapType_21146 T@Ref T@Field_11843_68329) Bool)
(declare-fun IsWandField_11843_70371 (T@Field_11843_68329) Bool)
(declare-fun WandMaskField_11843 (T@Field_11843_68329) T@Field_11843_68462)
(declare-fun |Seq#Singleton_11844| (T@Ref) T@Seq_27219)
(declare-fun |Seq#Singleton_3008| (Int) T@Seq_3008)
(declare-fun |Seq#Append_27219| (T@Seq_27219 T@Seq_27219) T@Seq_27219)
(declare-fun |Seq#Append_3008| (T@Seq_3008 T@Seq_3008) T@Seq_3008)
(declare-fun dummyHeap () T@PolymorphicMapType_21125)
(declare-fun ZeroMask () T@PolymorphicMapType_21146)
(declare-fun InsidePredicate_21185_21185 (T@Field_11843_68329 T@FrameType T@Field_11843_68329 T@FrameType) Bool)
(declare-fun IsPredicateField_11843_27243 (T@Field_27216_27221) Bool)
(declare-fun IsWandField_11843_27269 (T@Field_27216_27221) Bool)
(declare-fun IsPredicateField_11855_3178 (T@Field_27380_3178) Bool)
(declare-fun IsWandField_11855_3178 (T@Field_27380_3178) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_11843_74505 (T@Field_11843_68462) Bool)
(declare-fun IsWandField_11843_74521 (T@Field_11843_68462) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_11843_21199 (T@Field_21198_21199) Bool)
(declare-fun IsWandField_11843_21199 (T@Field_21198_21199) Bool)
(declare-fun IsPredicateField_11843_53 (T@Field_21185_53) Bool)
(declare-fun IsWandField_11843_53 (T@Field_21185_53) Bool)
(declare-fun HasDirectPerm_11843_75042 (T@PolymorphicMapType_21146 T@Ref T@Field_11843_68462) Bool)
(declare-fun HasDirectPerm_11843_21199 (T@PolymorphicMapType_21146 T@Ref T@Field_21198_21199) Bool)
(declare-fun HasDirectPerm_11843_53 (T@PolymorphicMapType_21146 T@Ref T@Field_21185_53) Bool)
(declare-fun HasDirectPerm_11855_3178 (T@PolymorphicMapType_21146 T@Ref T@Field_27380_3178) Bool)
(declare-fun HasDirectPerm_11843_28174 (T@PolymorphicMapType_21146 T@Ref T@Field_27216_27221) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_21146 T@PolymorphicMapType_21146 T@PolymorphicMapType_21146) Bool)
(declare-fun |Seq#Equal_3008| (T@Seq_3008 T@Seq_3008) Bool)
(declare-fun |Seq#Equal_11844| (T@Seq_27219 T@Seq_27219) Bool)
(declare-fun |Seq#ContainsTrigger_11844| (T@Seq_27219 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3008| (T@Seq_3008 Int) Bool)
(declare-fun |Seq#SkolemDiff_27219| (T@Seq_27219 T@Seq_27219) Int)
(declare-fun |Seq#SkolemDiff_3008| (T@Seq_3008 T@Seq_3008) Int)
(assert (distinct Ref__a Ref__b Ref__c)
)
(assert (forall ((s T@Seq_27219) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_11844| s)) (= (|Seq#Length_11844| (|Seq#Drop_11844| s n)) (- (|Seq#Length_11844| s) n))) (=> (< (|Seq#Length_11844| s) n) (= (|Seq#Length_11844| (|Seq#Drop_11844| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_11844| (|Seq#Drop_11844| s n)) (|Seq#Length_11844| s))))
 :qid |stdinbpl.303:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_11844| (|Seq#Drop_11844| s n)))
 :pattern ( (|Seq#Length_11844| s) (|Seq#Drop_11844| s n))
)))
(assert (forall ((s@@0 T@Seq_3008) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3008| s@@0)) (= (|Seq#Length_3008| (|Seq#Drop_3008| s@@0 n@@0)) (- (|Seq#Length_3008| s@@0) n@@0))) (=> (< (|Seq#Length_3008| s@@0) n@@0) (= (|Seq#Length_3008| (|Seq#Drop_3008| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3008| (|Seq#Drop_3008| s@@0 n@@0)) (|Seq#Length_3008| s@@0))))
 :qid |stdinbpl.303:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3008| (|Seq#Drop_3008| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3008| s@@0) (|Seq#Drop_3008| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_21125) (Heap1 T@PolymorphicMapType_21125) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_21125) (Mask T@PolymorphicMapType_21146) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_21125) (Heap1@@0 T@PolymorphicMapType_21125) (Heap2 T@PolymorphicMapType_21125) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_11843_68462) ) (!  (not (select (|PolymorphicMapType_21674_21185_69844#PolymorphicMapType_21674| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21674_21185_69844#PolymorphicMapType_21674| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_11843_68329) ) (!  (not (select (|PolymorphicMapType_21674_21185_68329#PolymorphicMapType_21674| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21674_21185_68329#PolymorphicMapType_21674| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_27380_3178) ) (!  (not (select (|PolymorphicMapType_21674_21185_3178#PolymorphicMapType_21674| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21674_21185_3178#PolymorphicMapType_21674| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_27216_27221) ) (!  (not (select (|PolymorphicMapType_21674_21185_27221#PolymorphicMapType_21674| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21674_21185_27221#PolymorphicMapType_21674| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_21198_21199) ) (!  (not (select (|PolymorphicMapType_21674_21185_21199#PolymorphicMapType_21674| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21674_21185_21199#PolymorphicMapType_21674| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_21185_53) ) (!  (not (select (|PolymorphicMapType_21674_21185_53#PolymorphicMapType_21674| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21674_21185_53#PolymorphicMapType_21674| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((s@@1 T@Seq_27219) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_11844| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_11844| (|Seq#Drop_11844| s@@1 n@@1) j) (|Seq#Index_11844| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.324:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_11844| (|Seq#Drop_11844| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3008) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3008| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3008| (|Seq#Drop_3008| s@@2 n@@2) j@@0) (|Seq#Index_3008| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.324:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3008| (|Seq#Drop_3008| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_11844| |Seq#Empty_11844|) 0))
(assert (= (|Seq#Length_3008| |Seq#Empty_3008|) 0))
(assert (forall ((s@@3 T@Seq_27219) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_11844| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_11844| (|Seq#Update_11844| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_11844| (|Seq#Update_11844| s@@3 i v) n@@3) (|Seq#Index_11844| s@@3 n@@3)))))
 :qid |stdinbpl.279:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_11844| (|Seq#Update_11844| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_11844| s@@3 n@@3) (|Seq#Update_11844| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3008) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3008| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3008| (|Seq#Update_3008| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3008| (|Seq#Update_3008| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3008| s@@4 n@@4)))))
 :qid |stdinbpl.279:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3008| (|Seq#Update_3008| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3008| s@@4 n@@4) (|Seq#Update_3008| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_27219) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_11844| s@@5)) (= (|Seq#Length_11844| (|Seq#Take_11844| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_11844| s@@5) n@@5) (= (|Seq#Length_11844| (|Seq#Take_11844| s@@5 n@@5)) (|Seq#Length_11844| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_11844| (|Seq#Take_11844| s@@5 n@@5)) 0)))
 :qid |stdinbpl.290:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_11844| (|Seq#Take_11844| s@@5 n@@5)))
 :pattern ( (|Seq#Take_11844| s@@5 n@@5) (|Seq#Length_11844| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3008) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3008| s@@6)) (= (|Seq#Length_3008| (|Seq#Take_3008| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3008| s@@6) n@@6) (= (|Seq#Length_3008| (|Seq#Take_3008| s@@6 n@@6)) (|Seq#Length_3008| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3008| (|Seq#Take_3008| s@@6 n@@6)) 0)))
 :qid |stdinbpl.290:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3008| (|Seq#Take_3008| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3008| s@@6 n@@6) (|Seq#Length_3008| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3008| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.564:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3008| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_27219) (x T@Ref) ) (!  (=> (|Seq#Contains_27219| s@@7 x) (and (and (<= 0 (|Seq#Skolem_27219| s@@7 x)) (< (|Seq#Skolem_27219| s@@7 x) (|Seq#Length_11844| s@@7))) (= (|Seq#Index_11844| s@@7 (|Seq#Skolem_27219| s@@7 x)) x)))
 :qid |stdinbpl.422:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_27219| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3008) (x@@0 Int) ) (!  (=> (|Seq#Contains_3008| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3008| s@@8 x@@0)) (< (|Seq#Skolem_3008| s@@8 x@@0) (|Seq#Length_3008| s@@8))) (= (|Seq#Index_3008| s@@8 (|Seq#Skolem_3008| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.422:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3008| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_27219) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_11844| s@@9 n@@7) s@@9))
 :qid |stdinbpl.406:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_11844| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3008) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3008| s@@10 n@@8) s@@10))
 :qid |stdinbpl.406:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3008| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.259:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.257:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_21125) (ExhaleHeap T@PolymorphicMapType_21125) (Mask@@0 T@PolymorphicMapType_21146) (pm_f_34 T@Field_11843_68329) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_11843_68393 Mask@@0 null pm_f_34) (IsPredicateField_11843_68420 pm_f_34)) (= (select (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| Heap@@0) null (PredicateMaskField_11843 pm_f_34)) (select (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| ExhaleHeap) null (PredicateMaskField_11843 pm_f_34)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_11843_68420 pm_f_34) (select (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| ExhaleHeap) null (PredicateMaskField_11843 pm_f_34)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_21125) (ExhaleHeap@@0 T@PolymorphicMapType_21125) (Mask@@1 T@PolymorphicMapType_21146) (pm_f_34@@0 T@Field_11843_68329) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_11843_68393 Mask@@1 null pm_f_34@@0) (IsWandField_11843_70371 pm_f_34@@0)) (= (select (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| Heap@@1) null (WandMaskField_11843 pm_f_34@@0)) (select (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| ExhaleHeap@@0) null (WandMaskField_11843 pm_f_34@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_11843_70371 pm_f_34@@0) (select (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| ExhaleHeap@@0) null (WandMaskField_11843 pm_f_34@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_27219| (|Seq#Singleton_11844| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.547:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_27219| (|Seq#Singleton_11844| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3008| (|Seq#Singleton_3008| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.547:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3008| (|Seq#Singleton_3008| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_27219) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_11844| s@@11))) (= (|Seq#Index_11844| (|Seq#Take_11844| s@@11 n@@9) j@@3) (|Seq#Index_11844| s@@11 j@@3)))
 :qid |stdinbpl.298:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_11844| (|Seq#Take_11844| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_11844| s@@11 j@@3) (|Seq#Take_11844| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3008) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3008| s@@12))) (= (|Seq#Index_3008| (|Seq#Take_3008| s@@12 n@@10) j@@4) (|Seq#Index_3008| s@@12 j@@4)))
 :qid |stdinbpl.298:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3008| (|Seq#Take_3008| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3008| s@@12 j@@4) (|Seq#Take_3008| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_27219) (t T@Seq_27219) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_11844| s@@13))) (< n@@11 (|Seq#Length_11844| (|Seq#Append_27219| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_11844| s@@13)) (|Seq#Length_11844| s@@13)) n@@11) (= (|Seq#Take_11844| (|Seq#Append_27219| s@@13 t) n@@11) (|Seq#Append_27219| s@@13 (|Seq#Take_11844| t (|Seq#Sub| n@@11 (|Seq#Length_11844| s@@13)))))))
 :qid |stdinbpl.383:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_11844| (|Seq#Append_27219| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3008) (t@@0 T@Seq_3008) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3008| s@@14))) (< n@@12 (|Seq#Length_3008| (|Seq#Append_3008| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3008| s@@14)) (|Seq#Length_3008| s@@14)) n@@12) (= (|Seq#Take_3008| (|Seq#Append_3008| s@@14 t@@0) n@@12) (|Seq#Append_3008| s@@14 (|Seq#Take_3008| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3008| s@@14)))))))
 :qid |stdinbpl.383:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3008| (|Seq#Append_3008| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_21125) (ExhaleHeap@@1 T@PolymorphicMapType_21125) (Mask@@2 T@PolymorphicMapType_21146) (o_47 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_21125_11643_53#PolymorphicMapType_21125| Heap@@2) o_47 $allocated) (select (|PolymorphicMapType_21125_11643_53#PolymorphicMapType_21125| ExhaleHeap@@1) o_47 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_21125_11643_53#PolymorphicMapType_21125| ExhaleHeap@@1) o_47 $allocated))
)))
(assert (forall ((p T@Field_11843_68329) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_21185_21185 p v_1 p w))
 :qid |stdinbpl.201:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_21185_21185 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_27219) (s1 T@Seq_27219) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_11844|)) (not (= s1 |Seq#Empty_11844|))) (<= (|Seq#Length_11844| s0) n@@13)) (< n@@13 (|Seq#Length_11844| (|Seq#Append_27219| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_11844| s0)) (|Seq#Length_11844| s0)) n@@13) (= (|Seq#Index_11844| (|Seq#Append_27219| s0 s1) n@@13) (|Seq#Index_11844| s1 (|Seq#Sub| n@@13 (|Seq#Length_11844| s0))))))
 :qid |stdinbpl.270:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_11844| (|Seq#Append_27219| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3008) (s1@@0 T@Seq_3008) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3008|)) (not (= s1@@0 |Seq#Empty_3008|))) (<= (|Seq#Length_3008| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3008| (|Seq#Append_3008| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3008| s0@@0)) (|Seq#Length_3008| s0@@0)) n@@14) (= (|Seq#Index_3008| (|Seq#Append_3008| s0@@0 s1@@0) n@@14) (|Seq#Index_3008| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3008| s0@@0))))))
 :qid |stdinbpl.270:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3008| (|Seq#Append_3008| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_11843_27243 Ref__a)))
(assert  (not (IsWandField_11843_27269 Ref__a)))
(assert  (not (IsPredicateField_11843_27243 Ref__b)))
(assert  (not (IsWandField_11843_27269 Ref__b)))
(assert  (not (IsPredicateField_11843_27243 Ref__c)))
(assert  (not (IsWandField_11843_27269 Ref__c)))
(assert  (not (IsPredicateField_11855_3178 Ref__Integer_value)))
(assert  (not (IsWandField_11855_3178 Ref__Integer_value)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_21125) (ExhaleHeap@@2 T@PolymorphicMapType_21125) (Mask@@3 T@PolymorphicMapType_21146) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_21146) (o_2@@5 T@Ref) (f_4@@5 T@Field_11843_68462) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| Mask@@4) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_11843_74505 f_4@@5))) (not (IsWandField_11843_74521 f_4@@5))) (<= (select (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| Mask@@4) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| Mask@@4) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_21146) (o_2@@6 T@Ref) (f_4@@6 T@Field_11843_68329) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| Mask@@5) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_11843_68420 f_4@@6))) (not (IsWandField_11843_70371 f_4@@6))) (<= (select (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| Mask@@5) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| Mask@@5) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_21146) (o_2@@7 T@Ref) (f_4@@7 T@Field_21198_21199) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| Mask@@6) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_11843_21199 f_4@@7))) (not (IsWandField_11843_21199 f_4@@7))) (<= (select (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| Mask@@6) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| Mask@@6) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_21146) (o_2@@8 T@Ref) (f_4@@8 T@Field_21185_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| Mask@@7) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_11843_53 f_4@@8))) (not (IsWandField_11843_53 f_4@@8))) (<= (select (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| Mask@@7) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| Mask@@7) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_21146) (o_2@@9 T@Ref) (f_4@@9 T@Field_27380_3178) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| Mask@@8) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_11855_3178 f_4@@9))) (not (IsWandField_11855_3178 f_4@@9))) (<= (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| Mask@@8) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| Mask@@8) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_21146) (o_2@@10 T@Ref) (f_4@@10 T@Field_27216_27221) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| Mask@@9) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_11843_27243 f_4@@10))) (not (IsWandField_11843_27269 f_4@@10))) (<= (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| Mask@@9) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| Mask@@9) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_21146) (o_2@@11 T@Ref) (f_4@@11 T@Field_11843_68462) ) (! (= (HasDirectPerm_11843_75042 Mask@@10 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| Mask@@10) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11843_75042 Mask@@10 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_21146) (o_2@@12 T@Ref) (f_4@@12 T@Field_11843_68329) ) (! (= (HasDirectPerm_11843_68393 Mask@@11 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| Mask@@11) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11843_68393 Mask@@11 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_21146) (o_2@@13 T@Ref) (f_4@@13 T@Field_21198_21199) ) (! (= (HasDirectPerm_11843_21199 Mask@@12 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| Mask@@12) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11843_21199 Mask@@12 o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_21146) (o_2@@14 T@Ref) (f_4@@14 T@Field_21185_53) ) (! (= (HasDirectPerm_11843_53 Mask@@13 o_2@@14 f_4@@14) (> (select (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| Mask@@13) o_2@@14 f_4@@14) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11843_53 Mask@@13 o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_21146) (o_2@@15 T@Ref) (f_4@@15 T@Field_27380_3178) ) (! (= (HasDirectPerm_11855_3178 Mask@@14 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| Mask@@14) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11855_3178 Mask@@14 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_21146) (o_2@@16 T@Ref) (f_4@@16 T@Field_27216_27221) ) (! (= (HasDirectPerm_11843_28174 Mask@@15 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| Mask@@15) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11843_28174 Mask@@15 o_2@@16 f_4@@16))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.189:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3008| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.562:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3008| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_21125) (ExhaleHeap@@3 T@PolymorphicMapType_21125) (Mask@@16 T@PolymorphicMapType_21146) (o_47@@0 T@Ref) (f_65 T@Field_11843_68462) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (=> (HasDirectPerm_11843_75042 Mask@@16 o_47@@0 f_65) (= (select (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| Heap@@4) o_47@@0 f_65) (select (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| ExhaleHeap@@3) o_47@@0 f_65))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (select (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| ExhaleHeap@@3) o_47@@0 f_65))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_21125) (ExhaleHeap@@4 T@PolymorphicMapType_21125) (Mask@@17 T@PolymorphicMapType_21146) (o_47@@1 T@Ref) (f_65@@0 T@Field_11843_68329) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (=> (HasDirectPerm_11843_68393 Mask@@17 o_47@@1 f_65@@0) (= (select (|PolymorphicMapType_21125_21185_68329#PolymorphicMapType_21125| Heap@@5) o_47@@1 f_65@@0) (select (|PolymorphicMapType_21125_21185_68329#PolymorphicMapType_21125| ExhaleHeap@@4) o_47@@1 f_65@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (select (|PolymorphicMapType_21125_21185_68329#PolymorphicMapType_21125| ExhaleHeap@@4) o_47@@1 f_65@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_21125) (ExhaleHeap@@5 T@PolymorphicMapType_21125) (Mask@@18 T@PolymorphicMapType_21146) (o_47@@2 T@Ref) (f_65@@1 T@Field_21198_21199) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_11843_21199 Mask@@18 o_47@@2 f_65@@1) (= (select (|PolymorphicMapType_21125_11646_11647#PolymorphicMapType_21125| Heap@@6) o_47@@2 f_65@@1) (select (|PolymorphicMapType_21125_11646_11647#PolymorphicMapType_21125| ExhaleHeap@@5) o_47@@2 f_65@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_21125_11646_11647#PolymorphicMapType_21125| ExhaleHeap@@5) o_47@@2 f_65@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_21125) (ExhaleHeap@@6 T@PolymorphicMapType_21125) (Mask@@19 T@PolymorphicMapType_21146) (o_47@@3 T@Ref) (f_65@@2 T@Field_21185_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_11843_53 Mask@@19 o_47@@3 f_65@@2) (= (select (|PolymorphicMapType_21125_11643_53#PolymorphicMapType_21125| Heap@@7) o_47@@3 f_65@@2) (select (|PolymorphicMapType_21125_11643_53#PolymorphicMapType_21125| ExhaleHeap@@6) o_47@@3 f_65@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_21125_11643_53#PolymorphicMapType_21125| ExhaleHeap@@6) o_47@@3 f_65@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_21125) (ExhaleHeap@@7 T@PolymorphicMapType_21125) (Mask@@20 T@PolymorphicMapType_21146) (o_47@@4 T@Ref) (f_65@@3 T@Field_27380_3178) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_11855_3178 Mask@@20 o_47@@4 f_65@@3) (= (select (|PolymorphicMapType_21125_11855_3178#PolymorphicMapType_21125| Heap@@8) o_47@@4 f_65@@3) (select (|PolymorphicMapType_21125_11855_3178#PolymorphicMapType_21125| ExhaleHeap@@7) o_47@@4 f_65@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_21125_11855_3178#PolymorphicMapType_21125| ExhaleHeap@@7) o_47@@4 f_65@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_21125) (ExhaleHeap@@8 T@PolymorphicMapType_21125) (Mask@@21 T@PolymorphicMapType_21146) (o_47@@5 T@Ref) (f_65@@4 T@Field_27216_27221) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_11843_28174 Mask@@21 o_47@@5 f_65@@4) (= (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@9) o_47@@5 f_65@@4) (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| ExhaleHeap@@8) o_47@@5 f_65@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| ExhaleHeap@@8) o_47@@5 f_65@@4))
)))
(assert (forall ((s0@@1 T@Seq_27219) (s1@@1 T@Seq_27219) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_11844|)) (not (= s1@@1 |Seq#Empty_11844|))) (= (|Seq#Length_11844| (|Seq#Append_27219| s0@@1 s1@@1)) (+ (|Seq#Length_11844| s0@@1) (|Seq#Length_11844| s1@@1))))
 :qid |stdinbpl.239:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_11844| (|Seq#Append_27219| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3008) (s1@@2 T@Seq_3008) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3008|)) (not (= s1@@2 |Seq#Empty_3008|))) (= (|Seq#Length_3008| (|Seq#Append_3008| s0@@2 s1@@2)) (+ (|Seq#Length_3008| s0@@2) (|Seq#Length_3008| s1@@2))))
 :qid |stdinbpl.239:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3008| (|Seq#Append_3008| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_11843_68462) ) (! (= (select (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_11843_68329) ) (! (= (select (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_21198_21199) ) (! (= (select (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| ZeroMask) o_2@@19 f_4@@19) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| ZeroMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_21185_53) ) (! (= (select (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| ZeroMask) o_2@@20 f_4@@20) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| ZeroMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_27380_3178) ) (! (= (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| ZeroMask) o_2@@21 f_4@@21) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| ZeroMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_27216_27221) ) (! (= (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| ZeroMask) o_2@@22 f_4@@22) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| ZeroMask) o_2@@22 f_4@@22))
)))
(assert (forall ((s@@15 T@Seq_27219) (t@@1 T@Seq_27219) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_11844| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_11844| s@@15)) (|Seq#Length_11844| s@@15)) n@@15) (= (|Seq#Drop_11844| (|Seq#Append_27219| s@@15 t@@1) n@@15) (|Seq#Drop_11844| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_11844| s@@15))))))
 :qid |stdinbpl.396:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_11844| (|Seq#Append_27219| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3008) (t@@2 T@Seq_3008) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3008| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3008| s@@16)) (|Seq#Length_3008| s@@16)) n@@16) (= (|Seq#Drop_3008| (|Seq#Append_3008| s@@16 t@@2) n@@16) (|Seq#Drop_3008| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3008| s@@16))))))
 :qid |stdinbpl.396:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3008| (|Seq#Append_3008| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_21146) (SummandMask1 T@PolymorphicMapType_21146) (SummandMask2 T@PolymorphicMapType_21146) (o_2@@23 T@Ref) (f_4@@23 T@Field_11843_68462) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| ResultMask) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| SummandMask1) o_2@@23 f_4@@23) (select (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| SummandMask2) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| ResultMask) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| SummandMask1) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| SummandMask2) o_2@@23 f_4@@23))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_21146) (SummandMask1@@0 T@PolymorphicMapType_21146) (SummandMask2@@0 T@PolymorphicMapType_21146) (o_2@@24 T@Ref) (f_4@@24 T@Field_11843_68329) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| ResultMask@@0) o_2@@24 f_4@@24) (+ (select (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| SummandMask1@@0) o_2@@24 f_4@@24) (select (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| SummandMask2@@0) o_2@@24 f_4@@24))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| ResultMask@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| SummandMask1@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| SummandMask2@@0) o_2@@24 f_4@@24))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_21146) (SummandMask1@@1 T@PolymorphicMapType_21146) (SummandMask2@@1 T@PolymorphicMapType_21146) (o_2@@25 T@Ref) (f_4@@25 T@Field_21198_21199) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| ResultMask@@1) o_2@@25 f_4@@25) (+ (select (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| SummandMask1@@1) o_2@@25 f_4@@25) (select (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| SummandMask2@@1) o_2@@25 f_4@@25))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| ResultMask@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| SummandMask1@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| SummandMask2@@1) o_2@@25 f_4@@25))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_21146) (SummandMask1@@2 T@PolymorphicMapType_21146) (SummandMask2@@2 T@PolymorphicMapType_21146) (o_2@@26 T@Ref) (f_4@@26 T@Field_21185_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| ResultMask@@2) o_2@@26 f_4@@26) (+ (select (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| SummandMask1@@2) o_2@@26 f_4@@26) (select (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| SummandMask2@@2) o_2@@26 f_4@@26))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| ResultMask@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| SummandMask1@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| SummandMask2@@2) o_2@@26 f_4@@26))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_21146) (SummandMask1@@3 T@PolymorphicMapType_21146) (SummandMask2@@3 T@PolymorphicMapType_21146) (o_2@@27 T@Ref) (f_4@@27 T@Field_27380_3178) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| ResultMask@@3) o_2@@27 f_4@@27) (+ (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| SummandMask1@@3) o_2@@27 f_4@@27) (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| SummandMask2@@3) o_2@@27 f_4@@27))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| ResultMask@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| SummandMask1@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| SummandMask2@@3) o_2@@27 f_4@@27))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_21146) (SummandMask1@@4 T@PolymorphicMapType_21146) (SummandMask2@@4 T@PolymorphicMapType_21146) (o_2@@28 T@Ref) (f_4@@28 T@Field_27216_27221) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| ResultMask@@4) o_2@@28 f_4@@28) (+ (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| SummandMask1@@4) o_2@@28 f_4@@28) (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| SummandMask2@@4) o_2@@28 f_4@@28))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| ResultMask@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| SummandMask1@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| SummandMask2@@4) o_2@@28 f_4@@28))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3008| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3008| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.561:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3008| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_3008) (b T@Seq_3008) ) (!  (=> (|Seq#Equal_3008| a b) (= a b))
 :qid |stdinbpl.534:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3008| a b))
)))
(assert (forall ((a@@0 T@Seq_27219) (b@@0 T@Seq_27219) ) (!  (=> (|Seq#Equal_11844| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.534:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_11844| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_27219) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_11844| s@@17))) (|Seq#ContainsTrigger_11844| s@@17 (|Seq#Index_11844| s@@17 i@@3)))
 :qid |stdinbpl.427:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_11844| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3008) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3008| s@@18))) (|Seq#ContainsTrigger_3008| s@@18 (|Seq#Index_3008| s@@18 i@@4)))
 :qid |stdinbpl.427:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3008| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_27219) (s1@@3 T@Seq_27219) ) (!  (and (=> (= s0@@3 |Seq#Empty_11844|) (= (|Seq#Append_27219| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_11844|) (= (|Seq#Append_27219| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.245:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_27219| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3008) (s1@@4 T@Seq_3008) ) (!  (and (=> (= s0@@4 |Seq#Empty_3008|) (= (|Seq#Append_3008| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3008|) (= (|Seq#Append_3008| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.245:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3008| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_11844| (|Seq#Singleton_11844| t@@3) 0) t@@3)
 :qid |stdinbpl.249:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_11844| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3008| (|Seq#Singleton_3008| t@@4) 0) t@@4)
 :qid |stdinbpl.249:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3008| t@@4))
)))
(assert (forall ((s@@19 T@Seq_27219) ) (! (<= 0 (|Seq#Length_11844| s@@19))
 :qid |stdinbpl.228:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_11844| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3008) ) (! (<= 0 (|Seq#Length_3008| s@@20))
 :qid |stdinbpl.228:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3008| s@@20))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_21125) (ExhaleHeap@@9 T@PolymorphicMapType_21125) (Mask@@22 T@PolymorphicMapType_21146) (pm_f_34@@1 T@Field_11843_68329) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (=> (and (HasDirectPerm_11843_68393 Mask@@22 null pm_f_34@@1) (IsPredicateField_11843_68420 pm_f_34@@1)) (and (and (and (and (and (forall ((o2_34 T@Ref) (f_65@@5 T@Field_21185_53) ) (!  (=> (select (|PolymorphicMapType_21674_21185_53#PolymorphicMapType_21674| (select (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| Heap@@10) null (PredicateMaskField_11843 pm_f_34@@1))) o2_34 f_65@@5) (= (select (|PolymorphicMapType_21125_11643_53#PolymorphicMapType_21125| Heap@@10) o2_34 f_65@@5) (select (|PolymorphicMapType_21125_11643_53#PolymorphicMapType_21125| ExhaleHeap@@9) o2_34 f_65@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21125_11643_53#PolymorphicMapType_21125| ExhaleHeap@@9) o2_34 f_65@@5))
)) (forall ((o2_34@@0 T@Ref) (f_65@@6 T@Field_21198_21199) ) (!  (=> (select (|PolymorphicMapType_21674_21185_21199#PolymorphicMapType_21674| (select (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| Heap@@10) null (PredicateMaskField_11843 pm_f_34@@1))) o2_34@@0 f_65@@6) (= (select (|PolymorphicMapType_21125_11646_11647#PolymorphicMapType_21125| Heap@@10) o2_34@@0 f_65@@6) (select (|PolymorphicMapType_21125_11646_11647#PolymorphicMapType_21125| ExhaleHeap@@9) o2_34@@0 f_65@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21125_11646_11647#PolymorphicMapType_21125| ExhaleHeap@@9) o2_34@@0 f_65@@6))
))) (forall ((o2_34@@1 T@Ref) (f_65@@7 T@Field_27216_27221) ) (!  (=> (select (|PolymorphicMapType_21674_21185_27221#PolymorphicMapType_21674| (select (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| Heap@@10) null (PredicateMaskField_11843 pm_f_34@@1))) o2_34@@1 f_65@@7) (= (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@10) o2_34@@1 f_65@@7) (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| ExhaleHeap@@9) o2_34@@1 f_65@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| ExhaleHeap@@9) o2_34@@1 f_65@@7))
))) (forall ((o2_34@@2 T@Ref) (f_65@@8 T@Field_27380_3178) ) (!  (=> (select (|PolymorphicMapType_21674_21185_3178#PolymorphicMapType_21674| (select (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| Heap@@10) null (PredicateMaskField_11843 pm_f_34@@1))) o2_34@@2 f_65@@8) (= (select (|PolymorphicMapType_21125_11855_3178#PolymorphicMapType_21125| Heap@@10) o2_34@@2 f_65@@8) (select (|PolymorphicMapType_21125_11855_3178#PolymorphicMapType_21125| ExhaleHeap@@9) o2_34@@2 f_65@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21125_11855_3178#PolymorphicMapType_21125| ExhaleHeap@@9) o2_34@@2 f_65@@8))
))) (forall ((o2_34@@3 T@Ref) (f_65@@9 T@Field_11843_68329) ) (!  (=> (select (|PolymorphicMapType_21674_21185_68329#PolymorphicMapType_21674| (select (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| Heap@@10) null (PredicateMaskField_11843 pm_f_34@@1))) o2_34@@3 f_65@@9) (= (select (|PolymorphicMapType_21125_21185_68329#PolymorphicMapType_21125| Heap@@10) o2_34@@3 f_65@@9) (select (|PolymorphicMapType_21125_21185_68329#PolymorphicMapType_21125| ExhaleHeap@@9) o2_34@@3 f_65@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21125_21185_68329#PolymorphicMapType_21125| ExhaleHeap@@9) o2_34@@3 f_65@@9))
))) (forall ((o2_34@@4 T@Ref) (f_65@@10 T@Field_11843_68462) ) (!  (=> (select (|PolymorphicMapType_21674_21185_69844#PolymorphicMapType_21674| (select (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| Heap@@10) null (PredicateMaskField_11843 pm_f_34@@1))) o2_34@@4 f_65@@10) (= (select (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| Heap@@10) o2_34@@4 f_65@@10) (select (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| ExhaleHeap@@9) o2_34@@4 f_65@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| ExhaleHeap@@9) o2_34@@4 f_65@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (IsPredicateField_11843_68420 pm_f_34@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_21125) (ExhaleHeap@@10 T@PolymorphicMapType_21125) (Mask@@23 T@PolymorphicMapType_21146) (pm_f_34@@2 T@Field_11843_68329) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (=> (and (HasDirectPerm_11843_68393 Mask@@23 null pm_f_34@@2) (IsWandField_11843_70371 pm_f_34@@2)) (and (and (and (and (and (forall ((o2_34@@5 T@Ref) (f_65@@11 T@Field_21185_53) ) (!  (=> (select (|PolymorphicMapType_21674_21185_53#PolymorphicMapType_21674| (select (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| Heap@@11) null (WandMaskField_11843 pm_f_34@@2))) o2_34@@5 f_65@@11) (= (select (|PolymorphicMapType_21125_11643_53#PolymorphicMapType_21125| Heap@@11) o2_34@@5 f_65@@11) (select (|PolymorphicMapType_21125_11643_53#PolymorphicMapType_21125| ExhaleHeap@@10) o2_34@@5 f_65@@11)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21125_11643_53#PolymorphicMapType_21125| ExhaleHeap@@10) o2_34@@5 f_65@@11))
)) (forall ((o2_34@@6 T@Ref) (f_65@@12 T@Field_21198_21199) ) (!  (=> (select (|PolymorphicMapType_21674_21185_21199#PolymorphicMapType_21674| (select (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| Heap@@11) null (WandMaskField_11843 pm_f_34@@2))) o2_34@@6 f_65@@12) (= (select (|PolymorphicMapType_21125_11646_11647#PolymorphicMapType_21125| Heap@@11) o2_34@@6 f_65@@12) (select (|PolymorphicMapType_21125_11646_11647#PolymorphicMapType_21125| ExhaleHeap@@10) o2_34@@6 f_65@@12)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21125_11646_11647#PolymorphicMapType_21125| ExhaleHeap@@10) o2_34@@6 f_65@@12))
))) (forall ((o2_34@@7 T@Ref) (f_65@@13 T@Field_27216_27221) ) (!  (=> (select (|PolymorphicMapType_21674_21185_27221#PolymorphicMapType_21674| (select (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| Heap@@11) null (WandMaskField_11843 pm_f_34@@2))) o2_34@@7 f_65@@13) (= (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@11) o2_34@@7 f_65@@13) (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| ExhaleHeap@@10) o2_34@@7 f_65@@13)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| ExhaleHeap@@10) o2_34@@7 f_65@@13))
))) (forall ((o2_34@@8 T@Ref) (f_65@@14 T@Field_27380_3178) ) (!  (=> (select (|PolymorphicMapType_21674_21185_3178#PolymorphicMapType_21674| (select (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| Heap@@11) null (WandMaskField_11843 pm_f_34@@2))) o2_34@@8 f_65@@14) (= (select (|PolymorphicMapType_21125_11855_3178#PolymorphicMapType_21125| Heap@@11) o2_34@@8 f_65@@14) (select (|PolymorphicMapType_21125_11855_3178#PolymorphicMapType_21125| ExhaleHeap@@10) o2_34@@8 f_65@@14)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21125_11855_3178#PolymorphicMapType_21125| ExhaleHeap@@10) o2_34@@8 f_65@@14))
))) (forall ((o2_34@@9 T@Ref) (f_65@@15 T@Field_11843_68329) ) (!  (=> (select (|PolymorphicMapType_21674_21185_68329#PolymorphicMapType_21674| (select (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| Heap@@11) null (WandMaskField_11843 pm_f_34@@2))) o2_34@@9 f_65@@15) (= (select (|PolymorphicMapType_21125_21185_68329#PolymorphicMapType_21125| Heap@@11) o2_34@@9 f_65@@15) (select (|PolymorphicMapType_21125_21185_68329#PolymorphicMapType_21125| ExhaleHeap@@10) o2_34@@9 f_65@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21125_21185_68329#PolymorphicMapType_21125| ExhaleHeap@@10) o2_34@@9 f_65@@15))
))) (forall ((o2_34@@10 T@Ref) (f_65@@16 T@Field_11843_68462) ) (!  (=> (select (|PolymorphicMapType_21674_21185_69844#PolymorphicMapType_21674| (select (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| Heap@@11) null (WandMaskField_11843 pm_f_34@@2))) o2_34@@10 f_65@@16) (= (select (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| Heap@@11) o2_34@@10 f_65@@16) (select (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| ExhaleHeap@@10) o2_34@@10 f_65@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| ExhaleHeap@@10) o2_34@@10 f_65@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (IsWandField_11843_70371 pm_f_34@@2))
)))
(assert (forall ((s0@@5 T@Seq_3008) (s1@@5 T@Seq_3008) ) (!  (=> (|Seq#Equal_3008| s0@@5 s1@@5) (and (= (|Seq#Length_3008| s0@@5) (|Seq#Length_3008| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_3008| s0@@5))) (= (|Seq#Index_3008| s0@@5 j@@6) (|Seq#Index_3008| s1@@5 j@@6)))
 :qid |stdinbpl.524:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3008| s0@@5 j@@6))
 :pattern ( (|Seq#Index_3008| s1@@5 j@@6))
))))
 :qid |stdinbpl.521:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3008| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_27219) (s1@@6 T@Seq_27219) ) (!  (=> (|Seq#Equal_11844| s0@@6 s1@@6) (and (= (|Seq#Length_11844| s0@@6) (|Seq#Length_11844| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_11844| s0@@6))) (= (|Seq#Index_11844| s0@@6 j@@7) (|Seq#Index_11844| s1@@6 j@@7)))
 :qid |stdinbpl.524:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_11844| s0@@6 j@@7))
 :pattern ( (|Seq#Index_11844| s1@@6 j@@7))
))))
 :qid |stdinbpl.521:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_11844| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_11844| (|Seq#Singleton_11844| t@@5)) 1)
 :qid |stdinbpl.236:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_11844| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3008| (|Seq#Singleton_3008| t@@6)) 1)
 :qid |stdinbpl.236:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3008| t@@6))
)))
(assert (forall ((s@@21 T@Seq_27219) (t@@7 T@Seq_27219) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_11844| s@@21))) (= (|Seq#Take_11844| (|Seq#Append_27219| s@@21 t@@7) n@@17) (|Seq#Take_11844| s@@21 n@@17)))
 :qid |stdinbpl.378:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_11844| (|Seq#Append_27219| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3008) (t@@8 T@Seq_3008) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3008| s@@22))) (= (|Seq#Take_3008| (|Seq#Append_3008| s@@22 t@@8) n@@18) (|Seq#Take_3008| s@@22 n@@18)))
 :qid |stdinbpl.378:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3008| (|Seq#Append_3008| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_27219) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_11844| s@@23))) (= (|Seq#Length_11844| (|Seq#Update_11844| s@@23 i@@5 v@@2)) (|Seq#Length_11844| s@@23)))
 :qid |stdinbpl.277:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_11844| (|Seq#Update_11844| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_11844| s@@23) (|Seq#Update_11844| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3008) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3008| s@@24))) (= (|Seq#Length_3008| (|Seq#Update_3008| s@@24 i@@6 v@@3)) (|Seq#Length_3008| s@@24)))
 :qid |stdinbpl.277:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3008| (|Seq#Update_3008| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3008| s@@24) (|Seq#Update_3008| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_21125) (o_17 T@Ref) (f_19 T@Field_11843_68329) (v@@4 T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_21125 (|PolymorphicMapType_21125_11643_53#PolymorphicMapType_21125| Heap@@12) (|PolymorphicMapType_21125_11646_11647#PolymorphicMapType_21125| Heap@@12) (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@12) (|PolymorphicMapType_21125_11855_3178#PolymorphicMapType_21125| Heap@@12) (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| Heap@@12) (store (|PolymorphicMapType_21125_21185_68329#PolymorphicMapType_21125| Heap@@12) o_17 f_19 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21125 (|PolymorphicMapType_21125_11643_53#PolymorphicMapType_21125| Heap@@12) (|PolymorphicMapType_21125_11646_11647#PolymorphicMapType_21125| Heap@@12) (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@12) (|PolymorphicMapType_21125_11855_3178#PolymorphicMapType_21125| Heap@@12) (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| Heap@@12) (store (|PolymorphicMapType_21125_21185_68329#PolymorphicMapType_21125| Heap@@12) o_17 f_19 v@@4)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_21125) (o_17@@0 T@Ref) (f_19@@0 T@Field_11843_68462) (v@@5 T@PolymorphicMapType_21674) ) (! (succHeap Heap@@13 (PolymorphicMapType_21125 (|PolymorphicMapType_21125_11643_53#PolymorphicMapType_21125| Heap@@13) (|PolymorphicMapType_21125_11646_11647#PolymorphicMapType_21125| Heap@@13) (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@13) (|PolymorphicMapType_21125_11855_3178#PolymorphicMapType_21125| Heap@@13) (store (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| Heap@@13) o_17@@0 f_19@@0 v@@5) (|PolymorphicMapType_21125_21185_68329#PolymorphicMapType_21125| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21125 (|PolymorphicMapType_21125_11643_53#PolymorphicMapType_21125| Heap@@13) (|PolymorphicMapType_21125_11646_11647#PolymorphicMapType_21125| Heap@@13) (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@13) (|PolymorphicMapType_21125_11855_3178#PolymorphicMapType_21125| Heap@@13) (store (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| Heap@@13) o_17@@0 f_19@@0 v@@5) (|PolymorphicMapType_21125_21185_68329#PolymorphicMapType_21125| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_21125) (o_17@@1 T@Ref) (f_19@@1 T@Field_27380_3178) (v@@6 Int) ) (! (succHeap Heap@@14 (PolymorphicMapType_21125 (|PolymorphicMapType_21125_11643_53#PolymorphicMapType_21125| Heap@@14) (|PolymorphicMapType_21125_11646_11647#PolymorphicMapType_21125| Heap@@14) (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@14) (store (|PolymorphicMapType_21125_11855_3178#PolymorphicMapType_21125| Heap@@14) o_17@@1 f_19@@1 v@@6) (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| Heap@@14) (|PolymorphicMapType_21125_21185_68329#PolymorphicMapType_21125| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21125 (|PolymorphicMapType_21125_11643_53#PolymorphicMapType_21125| Heap@@14) (|PolymorphicMapType_21125_11646_11647#PolymorphicMapType_21125| Heap@@14) (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@14) (store (|PolymorphicMapType_21125_11855_3178#PolymorphicMapType_21125| Heap@@14) o_17@@1 f_19@@1 v@@6) (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| Heap@@14) (|PolymorphicMapType_21125_21185_68329#PolymorphicMapType_21125| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_21125) (o_17@@2 T@Ref) (f_19@@2 T@Field_27216_27221) (v@@7 T@Seq_27219) ) (! (succHeap Heap@@15 (PolymorphicMapType_21125 (|PolymorphicMapType_21125_11643_53#PolymorphicMapType_21125| Heap@@15) (|PolymorphicMapType_21125_11646_11647#PolymorphicMapType_21125| Heap@@15) (store (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@15) o_17@@2 f_19@@2 v@@7) (|PolymorphicMapType_21125_11855_3178#PolymorphicMapType_21125| Heap@@15) (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| Heap@@15) (|PolymorphicMapType_21125_21185_68329#PolymorphicMapType_21125| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21125 (|PolymorphicMapType_21125_11643_53#PolymorphicMapType_21125| Heap@@15) (|PolymorphicMapType_21125_11646_11647#PolymorphicMapType_21125| Heap@@15) (store (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@15) o_17@@2 f_19@@2 v@@7) (|PolymorphicMapType_21125_11855_3178#PolymorphicMapType_21125| Heap@@15) (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| Heap@@15) (|PolymorphicMapType_21125_21185_68329#PolymorphicMapType_21125| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_21125) (o_17@@3 T@Ref) (f_19@@3 T@Field_21198_21199) (v@@8 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_21125 (|PolymorphicMapType_21125_11643_53#PolymorphicMapType_21125| Heap@@16) (store (|PolymorphicMapType_21125_11646_11647#PolymorphicMapType_21125| Heap@@16) o_17@@3 f_19@@3 v@@8) (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@16) (|PolymorphicMapType_21125_11855_3178#PolymorphicMapType_21125| Heap@@16) (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| Heap@@16) (|PolymorphicMapType_21125_21185_68329#PolymorphicMapType_21125| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21125 (|PolymorphicMapType_21125_11643_53#PolymorphicMapType_21125| Heap@@16) (store (|PolymorphicMapType_21125_11646_11647#PolymorphicMapType_21125| Heap@@16) o_17@@3 f_19@@3 v@@8) (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@16) (|PolymorphicMapType_21125_11855_3178#PolymorphicMapType_21125| Heap@@16) (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| Heap@@16) (|PolymorphicMapType_21125_21185_68329#PolymorphicMapType_21125| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_21125) (o_17@@4 T@Ref) (f_19@@4 T@Field_21185_53) (v@@9 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_21125 (store (|PolymorphicMapType_21125_11643_53#PolymorphicMapType_21125| Heap@@17) o_17@@4 f_19@@4 v@@9) (|PolymorphicMapType_21125_11646_11647#PolymorphicMapType_21125| Heap@@17) (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@17) (|PolymorphicMapType_21125_11855_3178#PolymorphicMapType_21125| Heap@@17) (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| Heap@@17) (|PolymorphicMapType_21125_21185_68329#PolymorphicMapType_21125| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21125 (store (|PolymorphicMapType_21125_11643_53#PolymorphicMapType_21125| Heap@@17) o_17@@4 f_19@@4 v@@9) (|PolymorphicMapType_21125_11646_11647#PolymorphicMapType_21125| Heap@@17) (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@17) (|PolymorphicMapType_21125_11855_3178#PolymorphicMapType_21125| Heap@@17) (|PolymorphicMapType_21125_11843_68506#PolymorphicMapType_21125| Heap@@17) (|PolymorphicMapType_21125_21185_68329#PolymorphicMapType_21125| Heap@@17)))
)))
(assert (forall ((s@@25 T@Seq_27219) (t@@9 T@Seq_27219) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_11844| s@@25))) (= (|Seq#Drop_11844| (|Seq#Append_27219| s@@25 t@@9) n@@19) (|Seq#Append_27219| (|Seq#Drop_11844| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.392:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_11844| (|Seq#Append_27219| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3008) (t@@10 T@Seq_3008) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3008| s@@26))) (= (|Seq#Drop_3008| (|Seq#Append_3008| s@@26 t@@10) n@@20) (|Seq#Append_3008| (|Seq#Drop_3008| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.392:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3008| (|Seq#Append_3008| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_27219) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_11844| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_11844| (|Seq#Drop_11844| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_11844| s@@27 i@@7))))
 :qid |stdinbpl.328:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_11844| s@@27 n@@21) (|Seq#Index_11844| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3008) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3008| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3008| (|Seq#Drop_3008| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3008| s@@28 i@@8))))
 :qid |stdinbpl.328:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3008| s@@28 n@@22) (|Seq#Index_3008| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_27219) (s1@@7 T@Seq_27219) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_11844|)) (not (= s1@@7 |Seq#Empty_11844|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_11844| s0@@7))) (= (|Seq#Index_11844| (|Seq#Append_27219| s0@@7 s1@@7) n@@23) (|Seq#Index_11844| s0@@7 n@@23)))
 :qid |stdinbpl.268:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_11844| (|Seq#Append_27219| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_11844| s0@@7 n@@23) (|Seq#Append_27219| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3008) (s1@@8 T@Seq_3008) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3008|)) (not (= s1@@8 |Seq#Empty_3008|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3008| s0@@8))) (= (|Seq#Index_3008| (|Seq#Append_3008| s0@@8 s1@@8) n@@24) (|Seq#Index_3008| s0@@8 n@@24)))
 :qid |stdinbpl.268:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3008| (|Seq#Append_3008| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3008| s0@@8 n@@24) (|Seq#Append_3008| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_27219) (s1@@9 T@Seq_27219) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_11844|)) (not (= s1@@9 |Seq#Empty_11844|))) (<= 0 m)) (< m (|Seq#Length_11844| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_11844| s0@@9)) (|Seq#Length_11844| s0@@9)) m) (= (|Seq#Index_11844| (|Seq#Append_27219| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_11844| s0@@9))) (|Seq#Index_11844| s1@@9 m))))
 :qid |stdinbpl.273:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_11844| s1@@9 m) (|Seq#Append_27219| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3008) (s1@@10 T@Seq_3008) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3008|)) (not (= s1@@10 |Seq#Empty_3008|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3008| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3008| s0@@10)) (|Seq#Length_3008| s0@@10)) m@@0) (= (|Seq#Index_3008| (|Seq#Append_3008| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3008| s0@@10))) (|Seq#Index_3008| s1@@10 m@@0))))
 :qid |stdinbpl.273:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3008| s1@@10 m@@0) (|Seq#Append_3008| s0@@10 s1@@10))
)))
(assert (forall ((o_17@@5 T@Ref) (f_25 T@Field_21198_21199) (Heap@@18 T@PolymorphicMapType_21125) ) (!  (=> (select (|PolymorphicMapType_21125_11643_53#PolymorphicMapType_21125| Heap@@18) o_17@@5 $allocated) (select (|PolymorphicMapType_21125_11643_53#PolymorphicMapType_21125| Heap@@18) (select (|PolymorphicMapType_21125_11646_11647#PolymorphicMapType_21125| Heap@@18) o_17@@5 f_25) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_21125_11646_11647#PolymorphicMapType_21125| Heap@@18) o_17@@5 f_25))
)))
(assert (forall ((s@@29 T@Seq_27219) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_11844| s@@29))) (= (|Seq#Index_11844| s@@29 i@@9) x@@3)) (|Seq#Contains_27219| s@@29 x@@3))
 :qid |stdinbpl.425:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_27219| s@@29 x@@3) (|Seq#Index_11844| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3008) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3008| s@@30))) (= (|Seq#Index_3008| s@@30 i@@10) x@@4)) (|Seq#Contains_3008| s@@30 x@@4))
 :qid |stdinbpl.425:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3008| s@@30 x@@4) (|Seq#Index_3008| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_27219) (s1@@11 T@Seq_27219) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_11844| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_11844| s0@@11 s1@@11))) (not (= (|Seq#Length_11844| s0@@11) (|Seq#Length_11844| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_11844| s0@@11 s1@@11))) (= (|Seq#Length_11844| s0@@11) (|Seq#Length_11844| s1@@11))) (= (|Seq#SkolemDiff_27219| s0@@11 s1@@11) (|Seq#SkolemDiff_27219| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_27219| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_27219| s0@@11 s1@@11) (|Seq#Length_11844| s0@@11))) (not (= (|Seq#Index_11844| s0@@11 (|Seq#SkolemDiff_27219| s0@@11 s1@@11)) (|Seq#Index_11844| s1@@11 (|Seq#SkolemDiff_27219| s0@@11 s1@@11))))))
 :qid |stdinbpl.529:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_11844| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3008) (s1@@12 T@Seq_3008) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3008| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3008| s0@@12 s1@@12))) (not (= (|Seq#Length_3008| s0@@12) (|Seq#Length_3008| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3008| s0@@12 s1@@12))) (= (|Seq#Length_3008| s0@@12) (|Seq#Length_3008| s1@@12))) (= (|Seq#SkolemDiff_3008| s0@@12 s1@@12) (|Seq#SkolemDiff_3008| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3008| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3008| s0@@12 s1@@12) (|Seq#Length_3008| s0@@12))) (not (= (|Seq#Index_3008| s0@@12 (|Seq#SkolemDiff_3008| s0@@12 s1@@12)) (|Seq#Index_3008| s1@@12 (|Seq#SkolemDiff_3008| s0@@12 s1@@12))))))
 :qid |stdinbpl.529:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3008| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_11843_68329) (v_1@@0 T@FrameType) (q T@Field_11843_68329) (w@@0 T@FrameType) (r T@Field_11843_68329) (u T@FrameType) ) (!  (=> (and (InsidePredicate_21185_21185 p@@1 v_1@@0 q w@@0) (InsidePredicate_21185_21185 q w@@0 r u)) (InsidePredicate_21185_21185 p@@1 v_1@@0 r u))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21185_21185 p@@1 v_1@@0 q w@@0) (InsidePredicate_21185_21185 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_27219) ) (!  (=> (= (|Seq#Length_11844| s@@31) 0) (= s@@31 |Seq#Empty_11844|))
 :qid |stdinbpl.232:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_11844| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3008) ) (!  (=> (= (|Seq#Length_3008| s@@32) 0) (= s@@32 |Seq#Empty_3008|))
 :qid |stdinbpl.232:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3008| s@@32))
)))
(assert (forall ((s@@33 T@Seq_27219) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_11844| s@@33 n@@25) |Seq#Empty_11844|))
 :qid |stdinbpl.408:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_11844| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3008) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3008| s@@34 n@@26) |Seq#Empty_3008|))
 :qid |stdinbpl.408:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3008| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () Int)
(declare-fun PostMask@4 () T@PolymorphicMapType_21146)
(declare-fun diz () T@Ref)
(declare-fun PostHeap@0 () T@PolymorphicMapType_21125)
(declare-fun PostMask@2 () T@PolymorphicMapType_21146)
(declare-fun perm@1 () Real)
(declare-fun PostMask@3 () T@PolymorphicMapType_21146)
(declare-fun tcount () Int)
(declare-fun lid () Int)
(declare-fun gsize () Int)
(declare-fun gid () Int)
(declare-fun wildcard@3 () Real)
(declare-fun PostMask@0 () T@PolymorphicMapType_21146)
(declare-fun wildcard@4 () Real)
(declare-fun PostMask@1 () T@PolymorphicMapType_21146)
(declare-fun wildcard@5 () Real)
(declare-fun QPMask@2 () T@PolymorphicMapType_21146)
(declare-fun Heap@@19 () T@PolymorphicMapType_21125)
(declare-fun Mask@6 () T@PolymorphicMapType_21146)
(declare-fun Mask@5 () T@PolymorphicMapType_21146)
(declare-fun perm@0 () Real)
(declare-fun Mask@7 () T@PolymorphicMapType_21146)
(declare-fun wildcard@6 () Real)
(declare-fun Mask@3 () T@PolymorphicMapType_21146)
(declare-fun wildcard@7 () Real)
(declare-fun Mask@4 () T@PolymorphicMapType_21146)
(declare-fun wildcard@8 () Real)
(declare-fun _x_tid_4 () Int)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_21146)
(declare-fun _x_tid_2 () Int)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_21146)
(declare-fun _x_tid () Int)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun Mask@2 () T@PolymorphicMapType_21146)
(declare-fun _x_tid_19 () Int)
(declare-fun i_7 () Int)
(declare-fun j_4 () Int)
(declare-fun i_15 () Int)
(declare-fun j_16 () Int)
(declare-fun i_5 () Int)
(declare-fun j_2 () Int)
(declare-fun current_thread_id () Int)
(declare-fun wildcard@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_21146)
(declare-fun wildcard@1 () Real)
(declare-fun Mask@1 () T@PolymorphicMapType_21146)
(declare-fun wildcard@2 () Real)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id Ref__main_post_check_1)
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
 (=> (= (ControlFlow 0 0) 142) (let ((anon45_correct true))
(let ((anon78_Else_correct  (=> (and (>= 0 tid) (= (ControlFlow 0 109) 103)) anon45_correct)))
(let ((anon78_Then_correct  (=> (> tid 0) (and (=> (= (ControlFlow 0 104) (- 0 108)) (HasDirectPerm_11843_28174 PostMask@4 diz Ref__a)) (=> (HasDirectPerm_11843_28174 PostMask@4 diz Ref__a) (and (=> (= (ControlFlow 0 104) (- 0 107)) (>= (- tid 1) 0)) (=> (>= (- tid 1) 0) (and (=> (= (ControlFlow 0 104) (- 0 106)) (< (- tid 1) (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| PostHeap@0) diz Ref__a)))) (=> (< (- tid 1) (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| PostHeap@0) diz Ref__a))) (and (=> (= (ControlFlow 0 104) (- 0 105)) (HasDirectPerm_11855_3178 PostMask@4 (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| PostHeap@0) diz Ref__a) (- tid 1)) Ref__Integer_value)) (=> (HasDirectPerm_11855_3178 PostMask@4 (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| PostHeap@0) diz Ref__a) (- tid 1)) Ref__Integer_value) (=> (and (= (select (|PolymorphicMapType_21125_11855_3178#PolymorphicMapType_21125| PostHeap@0) (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| PostHeap@0) diz Ref__a) (- tid 1)) Ref__Integer_value) tid) (= (ControlFlow 0 104) 103)) anon45_correct))))))))))))
(let ((anon43_correct  (=> (state PostHeap@0 PostMask@4) (and (=> (= (ControlFlow 0 110) 104) anon78_Then_correct) (=> (= (ControlFlow 0 110) 109) anon78_Else_correct)))))
(let ((anon77_Else_correct  (=> (>= 0 tid) (=> (and (= PostMask@4 PostMask@2) (= (ControlFlow 0 116) 110)) anon43_correct))))
(let ((anon77_Then_correct  (=> (> tid 0) (and (=> (= (ControlFlow 0 111) (- 0 115)) (HasDirectPerm_11843_28174 PostMask@2 diz Ref__a)) (=> (HasDirectPerm_11843_28174 PostMask@2 diz Ref__a) (and (=> (= (ControlFlow 0 111) (- 0 114)) (>= (- tid 1) 0)) (=> (>= (- tid 1) 0) (and (=> (= (ControlFlow 0 111) (- 0 113)) (< (- tid 1) (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| PostHeap@0) diz Ref__a)))) (=> (< (- tid 1) (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| PostHeap@0) diz Ref__a))) (=> (= perm@1 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 111) (- 0 112)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (=> (> perm@1 NoPerm) (not (= (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| PostHeap@0) diz Ref__a) (- tid 1)) null))) (=> (and (and (= PostMask@3 (PolymorphicMapType_21146 (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| PostMask@2) (store (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| PostMask@2) (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| PostHeap@0) diz Ref__a) (- tid 1)) Ref__Integer_value (+ (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| PostMask@2) (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| PostHeap@0) diz Ref__a) (- tid 1)) Ref__Integer_value) perm@1)) (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| PostMask@2) (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| PostMask@2) (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| PostMask@2) (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| PostMask@2))) (state PostHeap@0 PostMask@3)) (and (= PostMask@4 PostMask@3) (= (ControlFlow 0 111) 110))) anon43_correct))))))))))))))
(let ((anon76_Then_correct  (=> (and (and (and (and (state PostHeap@0 ZeroMask) (<= 0 tid)) (and (state PostHeap@0 ZeroMask) (< tid tcount))) (and (and (state PostHeap@0 ZeroMask) (= tid lid)) (and (state PostHeap@0 ZeroMask) (= tcount gsize)))) (and (and (and (state PostHeap@0 ZeroMask) (= gid 0)) (and (state PostHeap@0 ZeroMask) (> wildcard@3 NoPerm))) (and (and (not (= diz null)) (= PostMask@0 (PolymorphicMapType_21146 (store (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| ZeroMask) diz Ref__a (+ (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| ZeroMask) diz Ref__a) wildcard@3)) (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| ZeroMask) (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| ZeroMask) (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| ZeroMask) (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| ZeroMask) (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| ZeroMask)))) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0))))) (and (=> (= (ControlFlow 0 117) (- 0 126)) (HasDirectPerm_11843_28174 PostMask@0 diz Ref__a)) (=> (HasDirectPerm_11843_28174 PostMask@0 diz Ref__a) (=> (= (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| PostHeap@0) diz Ref__a)) tcount) (=> (and (state PostHeap@0 PostMask@0) (> wildcard@4 NoPerm)) (=> (and (and (not (= diz null)) (= PostMask@1 (PolymorphicMapType_21146 (store (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| PostMask@0) diz Ref__b (+ (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| PostMask@0) diz Ref__b) wildcard@4)) (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| PostMask@0) (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| PostMask@0) (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| PostMask@0) (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| PostMask@0) (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| PostMask@0)))) (and (state PostHeap@0 PostMask@1) (state PostHeap@0 PostMask@1))) (and (=> (= (ControlFlow 0 117) (- 0 125)) (HasDirectPerm_11843_28174 PostMask@1 diz Ref__b)) (=> (HasDirectPerm_11843_28174 PostMask@1 diz Ref__b) (=> (= (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| PostHeap@0) diz Ref__b)) tcount) (=> (and (state PostHeap@0 PostMask@1) (> wildcard@5 NoPerm)) (=> (and (and (not (= diz null)) (= PostMask@2 (PolymorphicMapType_21146 (store (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| PostMask@1) diz Ref__c (+ (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| PostMask@1) diz Ref__c) wildcard@5)) (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| PostMask@1) (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| PostMask@1) (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| PostMask@1) (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| PostMask@1) (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| PostMask@1)))) (and (state PostHeap@0 PostMask@2) (state PostHeap@0 PostMask@2))) (and (=> (= (ControlFlow 0 117) (- 0 124)) (HasDirectPerm_11843_28174 PostMask@2 diz Ref__c)) (=> (HasDirectPerm_11843_28174 PostMask@2 diz Ref__c) (=> (and (= (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| PostHeap@0) diz Ref__c)) tcount) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 117) (- 0 123)) (HasDirectPerm_11843_28174 PostMask@2 diz Ref__a)) (=> (HasDirectPerm_11843_28174 PostMask@2 diz Ref__a) (and (=> (= (ControlFlow 0 117) (- 0 122)) (HasDirectPerm_11843_28174 QPMask@2 diz Ref__a)) (=> (HasDirectPerm_11843_28174 QPMask@2 diz Ref__a) (=> (and (|Seq#Equal_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| PostHeap@0) diz Ref__a) (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a)) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 117) (- 0 121)) (HasDirectPerm_11843_28174 PostMask@2 diz Ref__b)) (=> (HasDirectPerm_11843_28174 PostMask@2 diz Ref__b) (and (=> (= (ControlFlow 0 117) (- 0 120)) (HasDirectPerm_11843_28174 QPMask@2 diz Ref__b)) (=> (HasDirectPerm_11843_28174 QPMask@2 diz Ref__b) (=> (and (|Seq#Equal_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| PostHeap@0) diz Ref__b) (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b)) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 117) (- 0 119)) (HasDirectPerm_11843_28174 PostMask@2 diz Ref__c)) (=> (HasDirectPerm_11843_28174 PostMask@2 diz Ref__c) (and (=> (= (ControlFlow 0 117) (- 0 118)) (HasDirectPerm_11843_28174 QPMask@2 diz Ref__c)) (=> (HasDirectPerm_11843_28174 QPMask@2 diz Ref__c) (=> (and (|Seq#Equal_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| PostHeap@0) diz Ref__c) (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c)) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 117) 111) anon77_Then_correct) (=> (= (ControlFlow 0 117) 116) anon77_Else_correct)))))))))))))))))))))))))))))))))
(let ((anon52_correct true))
(let ((anon81_Else_correct  (=> (and (>= 0 tid) (= (ControlFlow 0 80) 77)) anon52_correct)))
(let ((anon81_Then_correct  (=> (> tid 0) (and (=> (= (ControlFlow 0 78) (- 0 79)) (= (select (|PolymorphicMapType_21125_11855_3178#PolymorphicMapType_21125| Heap@@19) (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a) (- tid 1)) Ref__Integer_value) tid)) (=> (= (select (|PolymorphicMapType_21125_11855_3178#PolymorphicMapType_21125| Heap@@19) (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a) (- tid 1)) Ref__Integer_value) tid) (=> (= (ControlFlow 0 78) 77) anon52_correct))))))
(let ((anon49_correct  (=> (and (= Mask@6 (PolymorphicMapType_21146 (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| Mask@5) (store (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| Mask@5) (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a) (- tid 1)) Ref__Integer_value (- (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| Mask@5) (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a) (- tid 1)) Ref__Integer_value) perm@0)) (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| Mask@5) (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| Mask@5) (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| Mask@5) (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| Mask@5))) (= Mask@7 Mask@6)) (and (=> (= (ControlFlow 0 82) 78) anon81_Then_correct) (=> (= (ControlFlow 0 82) 80) anon81_Else_correct)))))
(let ((anon80_Else_correct  (=> (and (= perm@0 NoPerm) (= (ControlFlow 0 85) 82)) anon49_correct)))
(let ((anon80_Then_correct  (=> (not (= perm@0 NoPerm)) (and (=> (= (ControlFlow 0 83) (- 0 84)) (<= perm@0 (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| Mask@5) (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a) (- tid 1)) Ref__Integer_value))) (=> (<= perm@0 (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| Mask@5) (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a) (- tid 1)) Ref__Integer_value)) (=> (= (ControlFlow 0 83) 82) anon49_correct))))))
(let ((anon79_Then_correct  (=> (and (> tid 0) (= perm@0 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 86) (- 0 87)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (and (=> (= (ControlFlow 0 86) 83) anon80_Then_correct) (=> (= (ControlFlow 0 86) 85) anon80_Else_correct)))))))
(let ((anon79_Else_correct  (=> (and (>= 0 tid) (= Mask@7 Mask@5)) (and (=> (= (ControlFlow 0 81) 78) anon81_Then_correct) (=> (= (ControlFlow 0 81) 80) anon81_Else_correct)))))
(let ((anon76_Else_correct  (and (=> (= (ControlFlow 0 88) (- 0 102)) (<= 0 tid)) (=> (<= 0 tid) (and (=> (= (ControlFlow 0 88) (- 0 101)) (< tid tcount)) (=> (< tid tcount) (and (=> (= (ControlFlow 0 88) (- 0 100)) (= tid lid)) (=> (= tid lid) (and (=> (= (ControlFlow 0 88) (- 0 99)) (= tcount gsize)) (=> (= tcount gsize) (and (=> (= (ControlFlow 0 88) (- 0 98)) (= gid 0)) (=> (= gid 0) (and (=> (= (ControlFlow 0 88) (- 0 97)) (> (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| QPMask@2) diz Ref__a) NoPerm)) (=> (> (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| QPMask@2) diz Ref__a) NoPerm) (=> (> wildcard@6 NoPerm) (=> (and (< wildcard@6 (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| QPMask@2) diz Ref__a)) (= Mask@3 (PolymorphicMapType_21146 (store (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| QPMask@2) diz Ref__a (- (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| QPMask@2) diz Ref__a) wildcard@6)) (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| QPMask@2) (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| QPMask@2) (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| QPMask@2) (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| QPMask@2) (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| QPMask@2)))) (and (=> (= (ControlFlow 0 88) (- 0 96)) (= (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a)) tcount)) (=> (= (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a)) tcount) (and (=> (= (ControlFlow 0 88) (- 0 95)) (> (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| Mask@3) diz Ref__b) NoPerm)) (=> (> (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| Mask@3) diz Ref__b) NoPerm) (=> (> wildcard@7 NoPerm) (=> (and (< wildcard@7 (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| Mask@3) diz Ref__b)) (= Mask@4 (PolymorphicMapType_21146 (store (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| Mask@3) diz Ref__b (- (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| Mask@3) diz Ref__b) wildcard@7)) (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| Mask@3) (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| Mask@3) (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| Mask@3) (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| Mask@3) (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| Mask@3)))) (and (=> (= (ControlFlow 0 88) (- 0 94)) (= (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b)) tcount)) (=> (= (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b)) tcount) (and (=> (= (ControlFlow 0 88) (- 0 93)) (> (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| Mask@4) diz Ref__c) NoPerm)) (=> (> (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| Mask@4) diz Ref__c) NoPerm) (=> (> wildcard@8 NoPerm) (=> (and (< wildcard@8 (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| Mask@4) diz Ref__c)) (= Mask@5 (PolymorphicMapType_21146 (store (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| Mask@4) diz Ref__c (- (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| Mask@4) diz Ref__c) wildcard@8)) (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| Mask@4) (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| Mask@4) (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| Mask@4) (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| Mask@4) (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| Mask@4)))) (and (=> (= (ControlFlow 0 88) (- 0 92)) (= (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c)) tcount)) (=> (= (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c)) tcount) (and (=> (= (ControlFlow 0 88) (- 0 91)) (|Seq#Equal_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a) (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a))) (=> (|Seq#Equal_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a) (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a)) (and (=> (= (ControlFlow 0 88) (- 0 90)) (|Seq#Equal_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b) (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b))) (=> (|Seq#Equal_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b) (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b)) (and (=> (= (ControlFlow 0 88) (- 0 89)) (|Seq#Equal_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c) (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c))) (=> (|Seq#Equal_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c) (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c)) (and (=> (= (ControlFlow 0 88) 86) anon79_Then_correct) (=> (= (ControlFlow 0 88) 81) anon79_Else_correct))))))))))))))))))))))))))))))))))))))
(let ((anon74_Else_correct  (=> (and (forall ((_x_tid_7 Int) ) (!  (=> (and (<= 0 _x_tid_7) (< _x_tid_7 (ite (< (- tcount 1) gsize) (- tcount 1) gsize))) (= (select (|PolymorphicMapType_21125_11855_3178#PolymorphicMapType_21125| Heap@@19) (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a) _x_tid_7) Ref__Integer_value) (+ _x_tid_7 1)))
 :qid |stdinbpl.1949:20|
 :skolemid |103|
 :pattern ( (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a) _x_tid_7))
)) (state Heap@@19 QPMask@2)) (and (=> (= (ControlFlow 0 127) 117) anon76_Then_correct) (=> (= (ControlFlow 0 127) 88) anon76_Else_correct)))))
(let ((anon39_correct true))
(let ((anon75_Else_correct  (=> (and (not (and (<= 0 _x_tid_4) (< _x_tid_4 (ite (< (- tcount 1) gsize) (- tcount 1) gsize)))) (= (ControlFlow 0 76) 70)) anon39_correct)))
(let ((anon75_Then_correct  (=> (and (<= 0 _x_tid_4) (< _x_tid_4 (ite (< (- tcount 1) gsize) (- tcount 1) gsize))) (and (=> (= (ControlFlow 0 71) (- 0 75)) (HasDirectPerm_11843_28174 QPMask@2 diz Ref__a)) (=> (HasDirectPerm_11843_28174 QPMask@2 diz Ref__a) (and (=> (= (ControlFlow 0 71) (- 0 74)) (>= _x_tid_4 0)) (=> (>= _x_tid_4 0) (and (=> (= (ControlFlow 0 71) (- 0 73)) (< _x_tid_4 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a)))) (=> (< _x_tid_4 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a))) (and (=> (= (ControlFlow 0 71) (- 0 72)) (HasDirectPerm_11855_3178 QPMask@2 (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a) _x_tid_4) Ref__Integer_value)) (=> (HasDirectPerm_11855_3178 QPMask@2 (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a) _x_tid_4) Ref__Integer_value) (=> (= (ControlFlow 0 71) 70) anon39_correct))))))))))))
(let ((anon72_Else_correct  (and (=> (= (ControlFlow 0 128) (- 0 129)) (forall ((_x_tid_5 Int) (_x_tid_5_1 Int) ) (!  (=> (and (and (and (and (not (= _x_tid_5 _x_tid_5_1)) (and (<= 0 _x_tid_5) (< _x_tid_5 gsize))) (and (<= 0 _x_tid_5_1) (< _x_tid_5_1 gsize))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c) _x_tid_5) (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c) _x_tid_5_1))))
 :qid |stdinbpl.1901:15|
 :skolemid |97|
))) (=> (forall ((_x_tid_5@@0 Int) (_x_tid_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= _x_tid_5@@0 _x_tid_5_1@@0)) (and (<= 0 _x_tid_5@@0) (< _x_tid_5@@0 gsize))) (and (<= 0 _x_tid_5_1@@0) (< _x_tid_5_1@@0 gsize))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c) _x_tid_5@@0) (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c) _x_tid_5_1@@0))))
 :qid |stdinbpl.1901:15|
 :skolemid |97|
)) (=> (and (and (forall ((_x_tid_5@@1 Int) ) (!  (=> (and (and (<= 0 _x_tid_5@@1) (< _x_tid_5@@1 gsize)) (< NoPerm FullPerm)) (and (qpRange6 (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c) _x_tid_5@@1)) (= (invRecv6 (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c) _x_tid_5@@1)) _x_tid_5@@1)))
 :qid |stdinbpl.1907:22|
 :skolemid |98|
 :pattern ( (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c) _x_tid_5@@1))
 :pattern ( (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c) _x_tid_5@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv6 o_9)) (< (invRecv6 o_9) gsize)) (< NoPerm FullPerm)) (qpRange6 o_9)) (= (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c) (invRecv6 o_9)) o_9))
 :qid |stdinbpl.1911:22|
 :skolemid |99|
 :pattern ( (invRecv6 o_9))
))) (and (forall ((_x_tid_5@@2 Int) ) (!  (=> (and (<= 0 _x_tid_5@@2) (< _x_tid_5@@2 gsize)) (not (= (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c) _x_tid_5@@2) null)))
 :qid |stdinbpl.1917:22|
 :skolemid |100|
 :pattern ( (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c) _x_tid_5@@2))
 :pattern ( (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c) _x_tid_5@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv6 o_9@@0)) (< (invRecv6 o_9@@0) gsize)) (< NoPerm FullPerm)) (qpRange6 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c) (invRecv6 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| QPMask@2) o_9@@0 Ref__Integer_value) (+ (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| QPMask@1) o_9@@0 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv6 o_9@@0)) (< (invRecv6 o_9@@0) gsize)) (< NoPerm FullPerm)) (qpRange6 o_9@@0))) (= (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| QPMask@2) o_9@@0 Ref__Integer_value) (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| QPMask@1) o_9@@0 Ref__Integer_value))))
 :qid |stdinbpl.1923:22|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| QPMask@2) o_9@@0 Ref__Integer_value))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_21185_53) ) (!  (=> true (= (select (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| QPMask@1) o_9@@1 f_5) (select (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| QPMask@2) o_9@@1 f_5)))
 :qid |stdinbpl.1927:29|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| QPMask@1) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| QPMask@2) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_21198_21199) ) (!  (=> true (= (select (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| QPMask@1) o_9@@2 f_5@@0) (select (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| QPMask@2) o_9@@2 f_5@@0)))
 :qid |stdinbpl.1927:29|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| QPMask@1) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| QPMask@2) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_27216_27221) ) (!  (=> true (= (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| QPMask@1) o_9@@3 f_5@@1) (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| QPMask@2) o_9@@3 f_5@@1)))
 :qid |stdinbpl.1927:29|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| QPMask@1) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| QPMask@2) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_27380_3178) ) (!  (=> (not (= f_5@@2 Ref__Integer_value)) (= (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| QPMask@1) o_9@@4 f_5@@2) (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| QPMask@2) o_9@@4 f_5@@2)))
 :qid |stdinbpl.1927:29|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| QPMask@1) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| QPMask@2) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_11843_68329) ) (!  (=> true (= (select (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| QPMask@1) o_9@@5 f_5@@3) (select (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| QPMask@2) o_9@@5 f_5@@3)))
 :qid |stdinbpl.1927:29|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| QPMask@1) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| QPMask@2) o_9@@5 f_5@@3))
))) (forall ((o_9@@6 T@Ref) (f_5@@4 T@Field_11843_68462) ) (!  (=> true (= (select (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| QPMask@1) o_9@@6 f_5@@4) (select (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| QPMask@2) o_9@@6 f_5@@4)))
 :qid |stdinbpl.1927:29|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| QPMask@1) o_9@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| QPMask@2) o_9@@6 f_5@@4))
))) (and (state Heap@@19 QPMask@2) (state Heap@@19 QPMask@2))) (and (and (=> (= (ControlFlow 0 128) 127) anon74_Else_correct) (=> (= (ControlFlow 0 128) 71) anon75_Then_correct)) (=> (= (ControlFlow 0 128) 76) anon75_Else_correct))))))))
(let ((anon35_correct true))
(let ((anon73_Else_correct  (=> (and (not (and (<= 0 _x_tid_2) (< _x_tid_2 gsize))) (= (ControlFlow 0 69) 64)) anon35_correct)))
(let ((anon73_Then_correct  (=> (and (<= 0 _x_tid_2) (< _x_tid_2 gsize)) (and (=> (= (ControlFlow 0 65) (- 0 68)) (HasDirectPerm_11843_28174 QPMask@1 diz Ref__c)) (=> (HasDirectPerm_11843_28174 QPMask@1 diz Ref__c) (and (=> (= (ControlFlow 0 65) (- 0 67)) (>= _x_tid_2 0)) (=> (>= _x_tid_2 0) (and (=> (= (ControlFlow 0 65) (- 0 66)) (< _x_tid_2 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c)))) (=> (< _x_tid_2 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c))) (=> (= (ControlFlow 0 65) 64) anon35_correct))))))))))
(let ((anon70_Else_correct  (and (=> (= (ControlFlow 0 130) (- 0 132)) (forall ((_x_tid_3 Int) (_x_tid_3_1 Int) ) (!  (=> (and (and (and (and (not (= _x_tid_3 _x_tid_3_1)) (and (<= 0 _x_tid_3) (< _x_tid_3 gsize))) (and (<= 0 _x_tid_3_1) (< _x_tid_3_1 gsize))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b) _x_tid_3) (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b) _x_tid_3_1))))
 :qid |stdinbpl.1847:15|
 :skolemid |90|
))) (=> (forall ((_x_tid_3@@0 Int) (_x_tid_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= _x_tid_3@@0 _x_tid_3_1@@0)) (and (<= 0 _x_tid_3@@0) (< _x_tid_3@@0 gsize))) (and (<= 0 _x_tid_3_1@@0) (< _x_tid_3_1@@0 gsize))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b) _x_tid_3@@0) (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b) _x_tid_3_1@@0))))
 :qid |stdinbpl.1847:15|
 :skolemid |90|
)) (=> (and (forall ((_x_tid_3@@1 Int) ) (!  (=> (and (and (<= 0 _x_tid_3@@1) (< _x_tid_3@@1 gsize)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange5 (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b) _x_tid_3@@1)) (= (invRecv5 (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b) _x_tid_3@@1)) _x_tid_3@@1)))
 :qid |stdinbpl.1853:22|
 :skolemid |91|
 :pattern ( (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b) _x_tid_3@@1))
 :pattern ( (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b) _x_tid_3@@1))
)) (forall ((o_9@@7 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv5 o_9@@7)) (< (invRecv5 o_9@@7) gsize)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange5 o_9@@7)) (= (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b) (invRecv5 o_9@@7)) o_9@@7))
 :qid |stdinbpl.1857:22|
 :skolemid |92|
 :pattern ( (invRecv5 o_9@@7))
))) (and (=> (= (ControlFlow 0 130) (- 0 131)) (forall ((_x_tid_3@@2 Int) ) (!  (=> (and (<= 0 _x_tid_3@@2) (< _x_tid_3@@2 gsize)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1863:15|
 :skolemid |93|
 :pattern ( (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b) _x_tid_3@@2))
 :pattern ( (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b) _x_tid_3@@2))
))) (=> (forall ((_x_tid_3@@3 Int) ) (!  (=> (and (<= 0 _x_tid_3@@3) (< _x_tid_3@@3 gsize)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1863:15|
 :skolemid |93|
 :pattern ( (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b) _x_tid_3@@3))
 :pattern ( (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b) _x_tid_3@@3))
)) (=> (and (forall ((_x_tid_3@@4 Int) ) (!  (=> (and (and (<= 0 _x_tid_3@@4) (< _x_tid_3@@4 gsize)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b) _x_tid_3@@4) null)))
 :qid |stdinbpl.1869:22|
 :skolemid |94|
 :pattern ( (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b) _x_tid_3@@4))
 :pattern ( (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b) _x_tid_3@@4))
)) (forall ((o_9@@8 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv5 o_9@@8)) (< (invRecv5 o_9@@8) gsize)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange5 o_9@@8)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b) (invRecv5 o_9@@8)) o_9@@8)) (= (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| QPMask@1) o_9@@8 Ref__Integer_value) (+ (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| QPMask@0) o_9@@8 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv5 o_9@@8)) (< (invRecv5 o_9@@8) gsize)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange5 o_9@@8))) (= (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| QPMask@1) o_9@@8 Ref__Integer_value) (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| QPMask@0) o_9@@8 Ref__Integer_value))))
 :qid |stdinbpl.1875:22|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| QPMask@1) o_9@@8 Ref__Integer_value))
))) (=> (and (and (and (and (and (and (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_21185_53) ) (!  (=> true (= (select (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| QPMask@0) o_9@@9 f_5@@5) (select (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| QPMask@1) o_9@@9 f_5@@5)))
 :qid |stdinbpl.1879:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| QPMask@0) o_9@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| QPMask@1) o_9@@9 f_5@@5))
)) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_21198_21199) ) (!  (=> true (= (select (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| QPMask@0) o_9@@10 f_5@@6) (select (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| QPMask@1) o_9@@10 f_5@@6)))
 :qid |stdinbpl.1879:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| QPMask@0) o_9@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| QPMask@1) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_27216_27221) ) (!  (=> true (= (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| QPMask@0) o_9@@11 f_5@@7) (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| QPMask@1) o_9@@11 f_5@@7)))
 :qid |stdinbpl.1879:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| QPMask@0) o_9@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| QPMask@1) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_27380_3178) ) (!  (=> (not (= f_5@@8 Ref__Integer_value)) (= (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| QPMask@0) o_9@@12 f_5@@8) (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| QPMask@1) o_9@@12 f_5@@8)))
 :qid |stdinbpl.1879:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| QPMask@0) o_9@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| QPMask@1) o_9@@12 f_5@@8))
))) (forall ((o_9@@13 T@Ref) (f_5@@9 T@Field_11843_68329) ) (!  (=> true (= (select (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| QPMask@0) o_9@@13 f_5@@9) (select (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| QPMask@1) o_9@@13 f_5@@9)))
 :qid |stdinbpl.1879:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| QPMask@0) o_9@@13 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| QPMask@1) o_9@@13 f_5@@9))
))) (forall ((o_9@@14 T@Ref) (f_5@@10 T@Field_11843_68462) ) (!  (=> true (= (select (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| QPMask@0) o_9@@14 f_5@@10) (select (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| QPMask@1) o_9@@14 f_5@@10)))
 :qid |stdinbpl.1879:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| QPMask@0) o_9@@14 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| QPMask@1) o_9@@14 f_5@@10))
))) (and (state Heap@@19 QPMask@1) (state Heap@@19 QPMask@1))) (and (and (=> (= (ControlFlow 0 130) 128) anon72_Else_correct) (=> (= (ControlFlow 0 130) 65) anon73_Then_correct)) (=> (= (ControlFlow 0 130) 69) anon73_Else_correct)))))))))))
(let ((anon31_correct true))
(let ((anon71_Else_correct  (=> (and (not (and (<= 0 _x_tid) (< _x_tid gsize))) (= (ControlFlow 0 63) 58)) anon31_correct)))
(let ((anon71_Then_correct  (=> (and (<= 0 _x_tid) (< _x_tid gsize)) (and (=> (= (ControlFlow 0 59) (- 0 62)) (HasDirectPerm_11843_28174 QPMask@0 diz Ref__b)) (=> (HasDirectPerm_11843_28174 QPMask@0 diz Ref__b) (and (=> (= (ControlFlow 0 59) (- 0 61)) (>= _x_tid 0)) (=> (>= _x_tid 0) (and (=> (= (ControlFlow 0 59) (- 0 60)) (< _x_tid (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b)))) (=> (< _x_tid (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b))) (=> (= (ControlFlow 0 59) 58) anon31_correct))))))))))
(let ((anon68_Else_correct  (and (=> (= (ControlFlow 0 133) (- 0 134)) (forall ((_x_tid_1 Int) (_x_tid_1_1 Int) ) (!  (=> (and (and (and (and (not (= _x_tid_1 _x_tid_1_1)) (and (<= 0 _x_tid_1) (< _x_tid_1 gsize))) (and (<= 0 _x_tid_1_1) (< _x_tid_1_1 gsize))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a) _x_tid_1) (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a) _x_tid_1_1))))
 :qid |stdinbpl.1799:15|
 :skolemid |84|
))) (=> (forall ((_x_tid_1@@0 Int) (_x_tid_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= _x_tid_1@@0 _x_tid_1_1@@0)) (and (<= 0 _x_tid_1@@0) (< _x_tid_1@@0 gsize))) (and (<= 0 _x_tid_1_1@@0) (< _x_tid_1_1@@0 gsize))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a) _x_tid_1@@0) (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a) _x_tid_1_1@@0))))
 :qid |stdinbpl.1799:15|
 :skolemid |84|
)) (=> (and (and (forall ((_x_tid_1@@1 Int) ) (!  (=> (and (and (<= 0 _x_tid_1@@1) (< _x_tid_1@@1 gsize)) (< NoPerm FullPerm)) (and (qpRange4 (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a) _x_tid_1@@1)) (= (invRecv4 (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a) _x_tid_1@@1)) _x_tid_1@@1)))
 :qid |stdinbpl.1805:22|
 :skolemid |85|
 :pattern ( (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a) _x_tid_1@@1))
 :pattern ( (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a) _x_tid_1@@1))
)) (forall ((o_9@@15 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv4 o_9@@15)) (< (invRecv4 o_9@@15) gsize)) (< NoPerm FullPerm)) (qpRange4 o_9@@15)) (= (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a) (invRecv4 o_9@@15)) o_9@@15))
 :qid |stdinbpl.1809:22|
 :skolemid |86|
 :pattern ( (invRecv4 o_9@@15))
))) (and (forall ((_x_tid_1@@2 Int) ) (!  (=> (and (<= 0 _x_tid_1@@2) (< _x_tid_1@@2 gsize)) (not (= (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a) _x_tid_1@@2) null)))
 :qid |stdinbpl.1815:22|
 :skolemid |87|
 :pattern ( (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a) _x_tid_1@@2))
 :pattern ( (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a) _x_tid_1@@2))
)) (forall ((o_9@@16 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv4 o_9@@16)) (< (invRecv4 o_9@@16) gsize)) (< NoPerm FullPerm)) (qpRange4 o_9@@16)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a) (invRecv4 o_9@@16)) o_9@@16)) (= (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| QPMask@0) o_9@@16 Ref__Integer_value) (+ (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| Mask@2) o_9@@16 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv4 o_9@@16)) (< (invRecv4 o_9@@16) gsize)) (< NoPerm FullPerm)) (qpRange4 o_9@@16))) (= (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| QPMask@0) o_9@@16 Ref__Integer_value) (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| Mask@2) o_9@@16 Ref__Integer_value))))
 :qid |stdinbpl.1821:22|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| QPMask@0) o_9@@16 Ref__Integer_value))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_21185_53) ) (!  (=> true (= (select (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| Mask@2) o_9@@17 f_5@@11) (select (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| QPMask@0) o_9@@17 f_5@@11)))
 :qid |stdinbpl.1825:29|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| Mask@2) o_9@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| QPMask@0) o_9@@17 f_5@@11))
)) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_21198_21199) ) (!  (=> true (= (select (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| Mask@2) o_9@@18 f_5@@12) (select (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| QPMask@0) o_9@@18 f_5@@12)))
 :qid |stdinbpl.1825:29|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| Mask@2) o_9@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| QPMask@0) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_27216_27221) ) (!  (=> true (= (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| Mask@2) o_9@@19 f_5@@13) (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| QPMask@0) o_9@@19 f_5@@13)))
 :qid |stdinbpl.1825:29|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| Mask@2) o_9@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| QPMask@0) o_9@@19 f_5@@13))
))) (forall ((o_9@@20 T@Ref) (f_5@@14 T@Field_27380_3178) ) (!  (=> (not (= f_5@@14 Ref__Integer_value)) (= (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| Mask@2) o_9@@20 f_5@@14) (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| QPMask@0) o_9@@20 f_5@@14)))
 :qid |stdinbpl.1825:29|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| Mask@2) o_9@@20 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| QPMask@0) o_9@@20 f_5@@14))
))) (forall ((o_9@@21 T@Ref) (f_5@@15 T@Field_11843_68329) ) (!  (=> true (= (select (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| Mask@2) o_9@@21 f_5@@15) (select (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| QPMask@0) o_9@@21 f_5@@15)))
 :qid |stdinbpl.1825:29|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| Mask@2) o_9@@21 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| QPMask@0) o_9@@21 f_5@@15))
))) (forall ((o_9@@22 T@Ref) (f_5@@16 T@Field_11843_68462) ) (!  (=> true (= (select (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| Mask@2) o_9@@22 f_5@@16) (select (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| QPMask@0) o_9@@22 f_5@@16)))
 :qid |stdinbpl.1825:29|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| Mask@2) o_9@@22 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| QPMask@0) o_9@@22 f_5@@16))
))) (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0))) (and (and (=> (= (ControlFlow 0 133) 130) anon70_Else_correct) (=> (= (ControlFlow 0 133) 59) anon71_Then_correct)) (=> (= (ControlFlow 0 133) 63) anon71_Else_correct))))))))
(let ((anon27_correct true))
(let ((anon69_Else_correct  (=> (and (not (and (<= 0 _x_tid_19) (< _x_tid_19 gsize))) (= (ControlFlow 0 57) 52)) anon27_correct)))
(let ((anon69_Then_correct  (=> (and (<= 0 _x_tid_19) (< _x_tid_19 gsize)) (and (=> (= (ControlFlow 0 53) (- 0 56)) (HasDirectPerm_11843_28174 Mask@2 diz Ref__a)) (=> (HasDirectPerm_11843_28174 Mask@2 diz Ref__a) (and (=> (= (ControlFlow 0 53) (- 0 55)) (>= _x_tid_19 0)) (=> (>= _x_tid_19 0) (and (=> (= (ControlFlow 0 53) (- 0 54)) (< _x_tid_19 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a)))) (=> (< _x_tid_19 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a))) (=> (= (ControlFlow 0 53) 52) anon27_correct))))))))))
(let ((anon63_Else_correct  (=> (and (forall ((i_5_1 Int) (j_5 Int) ) (!  (=> (and (>= i_5_1 0) (and (< i_5_1 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c))) (and (>= j_5 0) (and (< j_5 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c))) (not (= i_5_1 j_5)))))) (not (= (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c) i_5_1) (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c) j_5))))
 :qid |stdinbpl.1779:20|
 :skolemid |83|
 :pattern ( (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c) i_5_1) (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c) j_5))
)) (state Heap@@19 Mask@2)) (and (and (=> (= (ControlFlow 0 135) 133) anon68_Else_correct) (=> (= (ControlFlow 0 135) 53) anon69_Then_correct)) (=> (= (ControlFlow 0 135) 57) anon69_Else_correct)))))
(let ((anon23_correct true))
(let ((anon67_Else_correct  (=> (and (not (and (>= i_7 0) (and (< i_7 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c))) (and (>= j_4 0) (and (< j_4 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c))) (not (= i_7 j_4))))))) (= (ControlFlow 0 43) 35)) anon23_correct)))
(let ((anon67_Then_correct  (=> (and (>= i_7 0) (and (< i_7 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c))) (and (>= j_4 0) (and (< j_4 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c))) (not (= i_7 j_4)))))) (and (=> (= (ControlFlow 0 36) (- 0 42)) (HasDirectPerm_11843_28174 Mask@2 diz Ref__c)) (=> (HasDirectPerm_11843_28174 Mask@2 diz Ref__c) (and (=> (= (ControlFlow 0 36) (- 0 41)) (>= i_7 0)) (=> (>= i_7 0) (and (=> (= (ControlFlow 0 36) (- 0 40)) (< i_7 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c)))) (=> (< i_7 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c))) (and (=> (= (ControlFlow 0 36) (- 0 39)) (HasDirectPerm_11843_28174 Mask@2 diz Ref__c)) (=> (HasDirectPerm_11843_28174 Mask@2 diz Ref__c) (and (=> (= (ControlFlow 0 36) (- 0 38)) (>= j_4 0)) (=> (>= j_4 0) (and (=> (= (ControlFlow 0 36) (- 0 37)) (< j_4 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c)))) (=> (< j_4 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c))) (=> (= (ControlFlow 0 36) 35) anon23_correct))))))))))))))))
(let ((anon66_Else_correct  (=> (> 0 j_4) (and (=> (= (ControlFlow 0 48) 36) anon67_Then_correct) (=> (= (ControlFlow 0 48) 43) anon67_Else_correct)))))
(let ((anon66_Then_correct  (=> (>= j_4 0) (and (=> (= (ControlFlow 0 46) (- 0 47)) (HasDirectPerm_11843_28174 Mask@2 diz Ref__c)) (=> (HasDirectPerm_11843_28174 Mask@2 diz Ref__c) (and (=> (= (ControlFlow 0 46) 36) anon67_Then_correct) (=> (= (ControlFlow 0 46) 43) anon67_Else_correct)))))))
(let ((anon65_Then_correct  (=> (< i_7 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c))) (and (=> (= (ControlFlow 0 49) 46) anon66_Then_correct) (=> (= (ControlFlow 0 49) 48) anon66_Else_correct)))))
(let ((anon65_Else_correct  (=> (<= (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c)) i_7) (and (=> (= (ControlFlow 0 45) 36) anon67_Then_correct) (=> (= (ControlFlow 0 45) 43) anon67_Else_correct)))))
(let ((anon64_Then_correct  (=> (>= i_7 0) (and (=> (= (ControlFlow 0 50) (- 0 51)) (HasDirectPerm_11843_28174 Mask@2 diz Ref__c)) (=> (HasDirectPerm_11843_28174 Mask@2 diz Ref__c) (and (=> (= (ControlFlow 0 50) 49) anon65_Then_correct) (=> (= (ControlFlow 0 50) 45) anon65_Else_correct)))))))
(let ((anon64_Else_correct  (=> (> 0 i_7) (and (=> (= (ControlFlow 0 44) 36) anon67_Then_correct) (=> (= (ControlFlow 0 44) 43) anon67_Else_correct)))))
(let ((anon58_Else_correct  (=> (and (forall ((i_3_2 Int) (j_3 Int) ) (!  (=> (and (>= i_3_2 0) (and (< i_3_2 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b))) (and (>= j_3 0) (and (< j_3 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b))) (not (= i_3_2 j_3)))))) (not (= (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b) i_3_2) (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b) j_3))))
 :qid |stdinbpl.1745:20|
 :skolemid |82|
 :pattern ( (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b) i_3_2) (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b) j_3))
)) (state Heap@@19 Mask@2)) (and (and (=> (= (ControlFlow 0 136) 135) anon63_Else_correct) (=> (= (ControlFlow 0 136) 50) anon64_Then_correct)) (=> (= (ControlFlow 0 136) 44) anon64_Else_correct)))))
(let ((anon15_correct true))
(let ((anon62_Else_correct  (=> (and (not (and (>= i_15 0) (and (< i_15 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b))) (and (>= j_16 0) (and (< j_16 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b))) (not (= i_15 j_16))))))) (= (ControlFlow 0 26) 18)) anon15_correct)))
(let ((anon62_Then_correct  (=> (and (>= i_15 0) (and (< i_15 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b))) (and (>= j_16 0) (and (< j_16 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b))) (not (= i_15 j_16)))))) (and (=> (= (ControlFlow 0 19) (- 0 25)) (HasDirectPerm_11843_28174 Mask@2 diz Ref__b)) (=> (HasDirectPerm_11843_28174 Mask@2 diz Ref__b) (and (=> (= (ControlFlow 0 19) (- 0 24)) (>= i_15 0)) (=> (>= i_15 0) (and (=> (= (ControlFlow 0 19) (- 0 23)) (< i_15 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b)))) (=> (< i_15 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b))) (and (=> (= (ControlFlow 0 19) (- 0 22)) (HasDirectPerm_11843_28174 Mask@2 diz Ref__b)) (=> (HasDirectPerm_11843_28174 Mask@2 diz Ref__b) (and (=> (= (ControlFlow 0 19) (- 0 21)) (>= j_16 0)) (=> (>= j_16 0) (and (=> (= (ControlFlow 0 19) (- 0 20)) (< j_16 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b)))) (=> (< j_16 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b))) (=> (= (ControlFlow 0 19) 18) anon15_correct))))))))))))))))
(let ((anon61_Else_correct  (=> (> 0 j_16) (and (=> (= (ControlFlow 0 31) 19) anon62_Then_correct) (=> (= (ControlFlow 0 31) 26) anon62_Else_correct)))))
(let ((anon61_Then_correct  (=> (>= j_16 0) (and (=> (= (ControlFlow 0 29) (- 0 30)) (HasDirectPerm_11843_28174 Mask@2 diz Ref__b)) (=> (HasDirectPerm_11843_28174 Mask@2 diz Ref__b) (and (=> (= (ControlFlow 0 29) 19) anon62_Then_correct) (=> (= (ControlFlow 0 29) 26) anon62_Else_correct)))))))
(let ((anon60_Then_correct  (=> (< i_15 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b))) (and (=> (= (ControlFlow 0 32) 29) anon61_Then_correct) (=> (= (ControlFlow 0 32) 31) anon61_Else_correct)))))
(let ((anon60_Else_correct  (=> (<= (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b)) i_15) (and (=> (= (ControlFlow 0 28) 19) anon62_Then_correct) (=> (= (ControlFlow 0 28) 26) anon62_Else_correct)))))
(let ((anon59_Then_correct  (=> (>= i_15 0) (and (=> (= (ControlFlow 0 33) (- 0 34)) (HasDirectPerm_11843_28174 Mask@2 diz Ref__b)) (=> (HasDirectPerm_11843_28174 Mask@2 diz Ref__b) (and (=> (= (ControlFlow 0 33) 32) anon60_Then_correct) (=> (= (ControlFlow 0 33) 28) anon60_Else_correct)))))))
(let ((anon59_Else_correct  (=> (> 0 i_15) (and (=> (= (ControlFlow 0 27) 19) anon62_Then_correct) (=> (= (ControlFlow 0 27) 26) anon62_Else_correct)))))
(let ((anon53_Else_correct  (=> (and (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (>= i_1 0) (and (< i_1 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a))) (and (>= j_1 0) (and (< j_1 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a))) (not (= i_1 j_1)))))) (not (= (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a) i_1) (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a) j_1))))
 :qid |stdinbpl.1711:20|
 :skolemid |81|
 :pattern ( (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a) i_1) (|Seq#Index_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a) j_1))
)) (state Heap@@19 Mask@2)) (and (and (=> (= (ControlFlow 0 137) 136) anon58_Else_correct) (=> (= (ControlFlow 0 137) 33) anon59_Then_correct)) (=> (= (ControlFlow 0 137) 27) anon59_Else_correct)))))
(let ((anon7_correct true))
(let ((anon57_Else_correct  (=> (and (not (and (>= i_5 0) (and (< i_5 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a))) (and (>= j_2 0) (and (< j_2 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a))) (not (= i_5 j_2))))))) (= (ControlFlow 0 9) 1)) anon7_correct)))
(let ((anon57_Then_correct  (=> (and (>= i_5 0) (and (< i_5 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a))) (and (>= j_2 0) (and (< j_2 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a))) (not (= i_5 j_2)))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (HasDirectPerm_11843_28174 Mask@2 diz Ref__a)) (=> (HasDirectPerm_11843_28174 Mask@2 diz Ref__a) (and (=> (= (ControlFlow 0 2) (- 0 7)) (>= i_5 0)) (=> (>= i_5 0) (and (=> (= (ControlFlow 0 2) (- 0 6)) (< i_5 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a)))) (=> (< i_5 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (HasDirectPerm_11843_28174 Mask@2 diz Ref__a)) (=> (HasDirectPerm_11843_28174 Mask@2 diz Ref__a) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_2 0)) (=> (>= j_2 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_2 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a)))) (=> (< j_2 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a))) (=> (= (ControlFlow 0 2) 1) anon7_correct))))))))))))))))
(let ((anon56_Else_correct  (=> (> 0 j_2) (and (=> (= (ControlFlow 0 14) 2) anon57_Then_correct) (=> (= (ControlFlow 0 14) 9) anon57_Else_correct)))))
(let ((anon56_Then_correct  (=> (>= j_2 0) (and (=> (= (ControlFlow 0 12) (- 0 13)) (HasDirectPerm_11843_28174 Mask@2 diz Ref__a)) (=> (HasDirectPerm_11843_28174 Mask@2 diz Ref__a) (and (=> (= (ControlFlow 0 12) 2) anon57_Then_correct) (=> (= (ControlFlow 0 12) 9) anon57_Else_correct)))))))
(let ((anon55_Then_correct  (=> (< i_5 (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a))) (and (=> (= (ControlFlow 0 15) 12) anon56_Then_correct) (=> (= (ControlFlow 0 15) 14) anon56_Else_correct)))))
(let ((anon55_Else_correct  (=> (<= (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a)) i_5) (and (=> (= (ControlFlow 0 11) 2) anon57_Then_correct) (=> (= (ControlFlow 0 11) 9) anon57_Else_correct)))))
(let ((anon54_Then_correct  (=> (>= i_5 0) (and (=> (= (ControlFlow 0 16) (- 0 17)) (HasDirectPerm_11843_28174 Mask@2 diz Ref__a)) (=> (HasDirectPerm_11843_28174 Mask@2 diz Ref__a) (and (=> (= (ControlFlow 0 16) 15) anon55_Then_correct) (=> (= (ControlFlow 0 16) 11) anon55_Else_correct)))))))
(let ((anon54_Else_correct  (=> (> 0 i_5) (and (=> (= (ControlFlow 0 10) 2) anon57_Then_correct) (=> (= (ControlFlow 0 10) 9) anon57_Else_correct)))))
(let ((anon0_correct  (=> (and (state Heap@@19 ZeroMask) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_21125_11643_53#PolymorphicMapType_21125| Heap@@19) diz $allocated) (not (= diz null))) (and (state Heap@@19 ZeroMask) (>= current_thread_id 0))) (=> (and (and (and (and (state Heap@@19 ZeroMask) (<= 0 tid)) (and (state Heap@@19 ZeroMask) (< tid tcount))) (and (and (state Heap@@19 ZeroMask) (= tid lid)) (and (state Heap@@19 ZeroMask) (= tcount gsize)))) (and (and (and (state Heap@@19 ZeroMask) (= gid 0)) (and (state Heap@@19 ZeroMask) (> wildcard@0 NoPerm))) (and (and (not (= diz null)) (= Mask@0 (PolymorphicMapType_21146 (store (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| ZeroMask) diz Ref__a (+ (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| ZeroMask) diz Ref__a) wildcard@0)) (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| ZeroMask) (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| ZeroMask) (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| ZeroMask) (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| ZeroMask) (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| ZeroMask)))) (and (state Heap@@19 Mask@0) (state Heap@@19 Mask@0))))) (and (=> (= (ControlFlow 0 138) (- 0 141)) (HasDirectPerm_11843_28174 Mask@0 diz Ref__a)) (=> (HasDirectPerm_11843_28174 Mask@0 diz Ref__a) (=> (= (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__a)) tcount) (=> (and (state Heap@@19 Mask@0) (> wildcard@1 NoPerm)) (=> (and (and (not (= diz null)) (= Mask@1 (PolymorphicMapType_21146 (store (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| Mask@0) diz Ref__b (+ (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| Mask@0) diz Ref__b) wildcard@1)) (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| Mask@0) (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| Mask@0) (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| Mask@0) (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| Mask@0) (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| Mask@0)))) (and (state Heap@@19 Mask@1) (state Heap@@19 Mask@1))) (and (=> (= (ControlFlow 0 138) (- 0 140)) (HasDirectPerm_11843_28174 Mask@1 diz Ref__b)) (=> (HasDirectPerm_11843_28174 Mask@1 diz Ref__b) (=> (= (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__b)) tcount) (=> (and (state Heap@@19 Mask@1) (> wildcard@2 NoPerm)) (=> (and (and (not (= diz null)) (= Mask@2 (PolymorphicMapType_21146 (store (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| Mask@1) diz Ref__c (+ (select (|PolymorphicMapType_21146_11843_28022#PolymorphicMapType_21146| Mask@1) diz Ref__c) wildcard@2)) (|PolymorphicMapType_21146_11855_3178#PolymorphicMapType_21146| Mask@1) (|PolymorphicMapType_21146_11843_53#PolymorphicMapType_21146| Mask@1) (|PolymorphicMapType_21146_11843_21199#PolymorphicMapType_21146| Mask@1) (|PolymorphicMapType_21146_11843_68329#PolymorphicMapType_21146| Mask@1) (|PolymorphicMapType_21146_11843_73156#PolymorphicMapType_21146| Mask@1)))) (and (state Heap@@19 Mask@2) (state Heap@@19 Mask@2))) (and (=> (= (ControlFlow 0 138) (- 0 139)) (HasDirectPerm_11843_28174 Mask@2 diz Ref__c)) (=> (HasDirectPerm_11843_28174 Mask@2 diz Ref__c) (=> (and (= (|Seq#Length_11844| (select (|PolymorphicMapType_21125_11843_28241#PolymorphicMapType_21125| Heap@@19) diz Ref__c)) tcount) (state Heap@@19 Mask@2)) (and (and (=> (= (ControlFlow 0 138) 137) anon53_Else_correct) (=> (= (ControlFlow 0 138) 16) anon54_Then_correct)) (=> (= (ControlFlow 0 138) 10) anon54_Else_correct))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 142) 138)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
