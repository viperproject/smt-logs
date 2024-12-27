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
(declare-sort T@Field_21179_53 0)
(declare-sort T@Field_21192_21193 0)
(declare-sort T@Field_27210_27215 0)
(declare-sort T@Seq_27213 0)
(declare-sort T@Field_27374_3178 0)
(declare-sort T@Field_11716_68514 0)
(declare-sort T@Field_11716_68381 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_21140 0)) (((PolymorphicMapType_21140 (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| (Array T@Ref T@Field_27210_27215 Real)) (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| (Array T@Ref T@Field_27374_3178 Real)) (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| (Array T@Ref T@Field_21179_53 Real)) (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| (Array T@Ref T@Field_21192_21193 Real)) (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| (Array T@Ref T@Field_11716_68381 Real)) (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| (Array T@Ref T@Field_11716_68514 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_21668 0)) (((PolymorphicMapType_21668 (|PolymorphicMapType_21668_21179_53#PolymorphicMapType_21668| (Array T@Ref T@Field_21179_53 Bool)) (|PolymorphicMapType_21668_21179_21193#PolymorphicMapType_21668| (Array T@Ref T@Field_21192_21193 Bool)) (|PolymorphicMapType_21668_21179_27215#PolymorphicMapType_21668| (Array T@Ref T@Field_27210_27215 Bool)) (|PolymorphicMapType_21668_21179_3178#PolymorphicMapType_21668| (Array T@Ref T@Field_27374_3178 Bool)) (|PolymorphicMapType_21668_21179_68381#PolymorphicMapType_21668| (Array T@Ref T@Field_11716_68381 Bool)) (|PolymorphicMapType_21668_21179_69896#PolymorphicMapType_21668| (Array T@Ref T@Field_11716_68514 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_21119 0)) (((PolymorphicMapType_21119 (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| (Array T@Ref T@Field_21179_53 Bool)) (|PolymorphicMapType_21119_11519_11520#PolymorphicMapType_21119| (Array T@Ref T@Field_21192_21193 T@Ref)) (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| (Array T@Ref T@Field_27210_27215 T@Seq_27213)) (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| (Array T@Ref T@Field_27374_3178 Int)) (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| (Array T@Ref T@Field_11716_68514 T@PolymorphicMapType_21668)) (|PolymorphicMapType_21119_21179_68381#PolymorphicMapType_21119| (Array T@Ref T@Field_11716_68381 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_21179_53)
(declare-fun Ref__a () T@Field_27210_27215)
(declare-fun Ref__b () T@Field_27210_27215)
(declare-fun Ref__c () T@Field_27210_27215)
(declare-fun Ref__Integer_value () T@Field_27374_3178)
(declare-fun |Seq#Length_11717| (T@Seq_27213) Int)
(declare-fun |Seq#Drop_11717| (T@Seq_27213 Int) T@Seq_27213)
(declare-sort T@Seq_3008 0)
(declare-fun |Seq#Length_3008| (T@Seq_3008) Int)
(declare-fun |Seq#Drop_3008| (T@Seq_3008 Int) T@Seq_3008)
(declare-fun succHeap (T@PolymorphicMapType_21119 T@PolymorphicMapType_21119) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_21119 T@PolymorphicMapType_21119) Bool)
(declare-fun state (T@PolymorphicMapType_21119 T@PolymorphicMapType_21140) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_21140) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_21668)
(declare-fun |Seq#Index_11717| (T@Seq_27213 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3008| (T@Seq_3008 Int) Int)
(declare-fun |Seq#Empty_11717| () T@Seq_27213)
(declare-fun |Seq#Empty_3008| () T@Seq_3008)
(declare-fun |Seq#Update_11717| (T@Seq_27213 Int T@Ref) T@Seq_27213)
(declare-fun |Seq#Update_3008| (T@Seq_3008 Int Int) T@Seq_3008)
(declare-fun |Seq#Take_11717| (T@Seq_27213 Int) T@Seq_27213)
(declare-fun |Seq#Take_3008| (T@Seq_3008 Int) T@Seq_3008)
(declare-fun |Seq#Contains_3008| (T@Seq_3008 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3008)
(declare-fun |Seq#Contains_27213| (T@Seq_27213 T@Ref) Bool)
(declare-fun |Seq#Skolem_27213| (T@Seq_27213 T@Ref) Int)
(declare-fun |Seq#Skolem_3008| (T@Seq_3008 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_21119 T@PolymorphicMapType_21119 T@PolymorphicMapType_21140) Bool)
(declare-fun IsPredicateField_11716_68472 (T@Field_11716_68381) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_11716 (T@Field_11716_68381) T@Field_11716_68514)
(declare-fun HasDirectPerm_11716_68445 (T@PolymorphicMapType_21140 T@Ref T@Field_11716_68381) Bool)
(declare-fun IsWandField_11716_70423 (T@Field_11716_68381) Bool)
(declare-fun WandMaskField_11716 (T@Field_11716_68381) T@Field_11716_68514)
(declare-fun |Seq#Singleton_11717| (T@Ref) T@Seq_27213)
(declare-fun |Seq#Singleton_3008| (Int) T@Seq_3008)
(declare-fun |Seq#Append_27213| (T@Seq_27213 T@Seq_27213) T@Seq_27213)
(declare-fun |Seq#Append_3008| (T@Seq_3008 T@Seq_3008) T@Seq_3008)
(declare-fun dummyHeap () T@PolymorphicMapType_21119)
(declare-fun ZeroMask () T@PolymorphicMapType_21140)
(declare-fun InsidePredicate_21179_21179 (T@Field_11716_68381 T@FrameType T@Field_11716_68381 T@FrameType) Bool)
(declare-fun IsPredicateField_11716_27237 (T@Field_27210_27215) Bool)
(declare-fun IsWandField_11716_27263 (T@Field_27210_27215) Bool)
(declare-fun IsPredicateField_11728_3178 (T@Field_27374_3178) Bool)
(declare-fun IsWandField_11728_3178 (T@Field_27374_3178) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_11716_74557 (T@Field_11716_68514) Bool)
(declare-fun IsWandField_11716_74573 (T@Field_11716_68514) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_11716_21193 (T@Field_21192_21193) Bool)
(declare-fun IsWandField_11716_21193 (T@Field_21192_21193) Bool)
(declare-fun IsPredicateField_11716_53 (T@Field_21179_53) Bool)
(declare-fun IsWandField_11716_53 (T@Field_21179_53) Bool)
(declare-fun HasDirectPerm_11716_75094 (T@PolymorphicMapType_21140 T@Ref T@Field_11716_68514) Bool)
(declare-fun HasDirectPerm_11716_21193 (T@PolymorphicMapType_21140 T@Ref T@Field_21192_21193) Bool)
(declare-fun HasDirectPerm_11716_53 (T@PolymorphicMapType_21140 T@Ref T@Field_21179_53) Bool)
(declare-fun HasDirectPerm_11728_3178 (T@PolymorphicMapType_21140 T@Ref T@Field_27374_3178) Bool)
(declare-fun HasDirectPerm_11716_28171 (T@PolymorphicMapType_21140 T@Ref T@Field_27210_27215) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_21140 T@PolymorphicMapType_21140 T@PolymorphicMapType_21140) Bool)
(declare-fun |Seq#Equal_3008| (T@Seq_3008 T@Seq_3008) Bool)
(declare-fun |Seq#Equal_11717| (T@Seq_27213 T@Seq_27213) Bool)
(declare-fun |Seq#ContainsTrigger_11717| (T@Seq_27213 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3008| (T@Seq_3008 Int) Bool)
(declare-fun |Seq#SkolemDiff_27213| (T@Seq_27213 T@Seq_27213) Int)
(declare-fun |Seq#SkolemDiff_3008| (T@Seq_3008 T@Seq_3008) Int)
(assert (distinct Ref__a Ref__b Ref__c)
)
(assert (forall ((s T@Seq_27213) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_11717| s)) (= (|Seq#Length_11717| (|Seq#Drop_11717| s n)) (- (|Seq#Length_11717| s) n))) (=> (< (|Seq#Length_11717| s) n) (= (|Seq#Length_11717| (|Seq#Drop_11717| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_11717| (|Seq#Drop_11717| s n)) (|Seq#Length_11717| s))))
 :qid |stdinbpl.303:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_11717| (|Seq#Drop_11717| s n)))
 :pattern ( (|Seq#Length_11717| s) (|Seq#Drop_11717| s n))
)))
(assert (forall ((s@@0 T@Seq_3008) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3008| s@@0)) (= (|Seq#Length_3008| (|Seq#Drop_3008| s@@0 n@@0)) (- (|Seq#Length_3008| s@@0) n@@0))) (=> (< (|Seq#Length_3008| s@@0) n@@0) (= (|Seq#Length_3008| (|Seq#Drop_3008| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3008| (|Seq#Drop_3008| s@@0 n@@0)) (|Seq#Length_3008| s@@0))))
 :qid |stdinbpl.303:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3008| (|Seq#Drop_3008| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3008| s@@0) (|Seq#Drop_3008| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_21119) (Heap1 T@PolymorphicMapType_21119) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_21119) (Mask T@PolymorphicMapType_21140) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_21119) (Heap1@@0 T@PolymorphicMapType_21119) (Heap2 T@PolymorphicMapType_21119) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_11716_68514) ) (!  (not (select (|PolymorphicMapType_21668_21179_69896#PolymorphicMapType_21668| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21668_21179_69896#PolymorphicMapType_21668| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_11716_68381) ) (!  (not (select (|PolymorphicMapType_21668_21179_68381#PolymorphicMapType_21668| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21668_21179_68381#PolymorphicMapType_21668| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_27374_3178) ) (!  (not (select (|PolymorphicMapType_21668_21179_3178#PolymorphicMapType_21668| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21668_21179_3178#PolymorphicMapType_21668| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_27210_27215) ) (!  (not (select (|PolymorphicMapType_21668_21179_27215#PolymorphicMapType_21668| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21668_21179_27215#PolymorphicMapType_21668| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_21192_21193) ) (!  (not (select (|PolymorphicMapType_21668_21179_21193#PolymorphicMapType_21668| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21668_21179_21193#PolymorphicMapType_21668| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_21179_53) ) (!  (not (select (|PolymorphicMapType_21668_21179_53#PolymorphicMapType_21668| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_21668_21179_53#PolymorphicMapType_21668| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((s@@1 T@Seq_27213) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_11717| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_11717| (|Seq#Drop_11717| s@@1 n@@1) j) (|Seq#Index_11717| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.324:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_11717| (|Seq#Drop_11717| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3008) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3008| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3008| (|Seq#Drop_3008| s@@2 n@@2) j@@0) (|Seq#Index_3008| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.324:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3008| (|Seq#Drop_3008| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_11717| |Seq#Empty_11717|) 0))
(assert (= (|Seq#Length_3008| |Seq#Empty_3008|) 0))
(assert (forall ((s@@3 T@Seq_27213) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_11717| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_11717| (|Seq#Update_11717| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_11717| (|Seq#Update_11717| s@@3 i v) n@@3) (|Seq#Index_11717| s@@3 n@@3)))))
 :qid |stdinbpl.279:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_11717| (|Seq#Update_11717| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_11717| s@@3 n@@3) (|Seq#Update_11717| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3008) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3008| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3008| (|Seq#Update_3008| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3008| (|Seq#Update_3008| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3008| s@@4 n@@4)))))
 :qid |stdinbpl.279:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3008| (|Seq#Update_3008| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3008| s@@4 n@@4) (|Seq#Update_3008| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_27213) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_11717| s@@5)) (= (|Seq#Length_11717| (|Seq#Take_11717| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_11717| s@@5) n@@5) (= (|Seq#Length_11717| (|Seq#Take_11717| s@@5 n@@5)) (|Seq#Length_11717| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_11717| (|Seq#Take_11717| s@@5 n@@5)) 0)))
 :qid |stdinbpl.290:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_11717| (|Seq#Take_11717| s@@5 n@@5)))
 :pattern ( (|Seq#Take_11717| s@@5 n@@5) (|Seq#Length_11717| s@@5))
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
(assert (forall ((s@@7 T@Seq_27213) (x T@Ref) ) (!  (=> (|Seq#Contains_27213| s@@7 x) (and (and (<= 0 (|Seq#Skolem_27213| s@@7 x)) (< (|Seq#Skolem_27213| s@@7 x) (|Seq#Length_11717| s@@7))) (= (|Seq#Index_11717| s@@7 (|Seq#Skolem_27213| s@@7 x)) x)))
 :qid |stdinbpl.422:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_27213| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3008) (x@@0 Int) ) (!  (=> (|Seq#Contains_3008| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3008| s@@8 x@@0)) (< (|Seq#Skolem_3008| s@@8 x@@0) (|Seq#Length_3008| s@@8))) (= (|Seq#Index_3008| s@@8 (|Seq#Skolem_3008| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.422:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3008| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_27213) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_11717| s@@9 n@@7) s@@9))
 :qid |stdinbpl.406:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_11717| s@@9 n@@7))
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
(assert (forall ((Heap@@0 T@PolymorphicMapType_21119) (ExhaleHeap T@PolymorphicMapType_21119) (Mask@@0 T@PolymorphicMapType_21140) (pm_f_16 T@Field_11716_68381) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_11716_68445 Mask@@0 null pm_f_16) (IsPredicateField_11716_68472 pm_f_16)) (= (select (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@0) null (PredicateMaskField_11716 pm_f_16)) (select (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| ExhaleHeap) null (PredicateMaskField_11716 pm_f_16)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_11716_68472 pm_f_16) (select (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| ExhaleHeap) null (PredicateMaskField_11716 pm_f_16)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_21119) (ExhaleHeap@@0 T@PolymorphicMapType_21119) (Mask@@1 T@PolymorphicMapType_21140) (pm_f_16@@0 T@Field_11716_68381) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_11716_68445 Mask@@1 null pm_f_16@@0) (IsWandField_11716_70423 pm_f_16@@0)) (= (select (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@1) null (WandMaskField_11716 pm_f_16@@0)) (select (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| ExhaleHeap@@0) null (WandMaskField_11716 pm_f_16@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_11716_70423 pm_f_16@@0) (select (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| ExhaleHeap@@0) null (WandMaskField_11716 pm_f_16@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_27213| (|Seq#Singleton_11717| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.547:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_27213| (|Seq#Singleton_11717| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3008| (|Seq#Singleton_3008| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.547:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3008| (|Seq#Singleton_3008| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_27213) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_11717| s@@11))) (= (|Seq#Index_11717| (|Seq#Take_11717| s@@11 n@@9) j@@3) (|Seq#Index_11717| s@@11 j@@3)))
 :qid |stdinbpl.298:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_11717| (|Seq#Take_11717| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_11717| s@@11 j@@3) (|Seq#Take_11717| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3008) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3008| s@@12))) (= (|Seq#Index_3008| (|Seq#Take_3008| s@@12 n@@10) j@@4) (|Seq#Index_3008| s@@12 j@@4)))
 :qid |stdinbpl.298:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3008| (|Seq#Take_3008| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3008| s@@12 j@@4) (|Seq#Take_3008| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_27213) (t T@Seq_27213) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_11717| s@@13))) (< n@@11 (|Seq#Length_11717| (|Seq#Append_27213| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_11717| s@@13)) (|Seq#Length_11717| s@@13)) n@@11) (= (|Seq#Take_11717| (|Seq#Append_27213| s@@13 t) n@@11) (|Seq#Append_27213| s@@13 (|Seq#Take_11717| t (|Seq#Sub| n@@11 (|Seq#Length_11717| s@@13)))))))
 :qid |stdinbpl.383:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_11717| (|Seq#Append_27213| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3008) (t@@0 T@Seq_3008) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3008| s@@14))) (< n@@12 (|Seq#Length_3008| (|Seq#Append_3008| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3008| s@@14)) (|Seq#Length_3008| s@@14)) n@@12) (= (|Seq#Take_3008| (|Seq#Append_3008| s@@14 t@@0) n@@12) (|Seq#Append_3008| s@@14 (|Seq#Take_3008| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3008| s@@14)))))))
 :qid |stdinbpl.383:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3008| (|Seq#Append_3008| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_21119) (ExhaleHeap@@1 T@PolymorphicMapType_21119) (Mask@@2 T@PolymorphicMapType_21140) (o_34 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| Heap@@2) o_34 $allocated) (select (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| ExhaleHeap@@1) o_34 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| ExhaleHeap@@1) o_34 $allocated))
)))
(assert (forall ((p T@Field_11716_68381) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_21179_21179 p v_1 p w))
 :qid |stdinbpl.201:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_21179_21179 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_27213) (s1 T@Seq_27213) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_11717|)) (not (= s1 |Seq#Empty_11717|))) (<= (|Seq#Length_11717| s0) n@@13)) (< n@@13 (|Seq#Length_11717| (|Seq#Append_27213| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_11717| s0)) (|Seq#Length_11717| s0)) n@@13) (= (|Seq#Index_11717| (|Seq#Append_27213| s0 s1) n@@13) (|Seq#Index_11717| s1 (|Seq#Sub| n@@13 (|Seq#Length_11717| s0))))))
 :qid |stdinbpl.270:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_11717| (|Seq#Append_27213| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3008) (s1@@0 T@Seq_3008) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3008|)) (not (= s1@@0 |Seq#Empty_3008|))) (<= (|Seq#Length_3008| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3008| (|Seq#Append_3008| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3008| s0@@0)) (|Seq#Length_3008| s0@@0)) n@@14) (= (|Seq#Index_3008| (|Seq#Append_3008| s0@@0 s1@@0) n@@14) (|Seq#Index_3008| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3008| s0@@0))))))
 :qid |stdinbpl.270:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3008| (|Seq#Append_3008| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_11716_27237 Ref__a)))
(assert  (not (IsWandField_11716_27263 Ref__a)))
(assert  (not (IsPredicateField_11716_27237 Ref__b)))
(assert  (not (IsWandField_11716_27263 Ref__b)))
(assert  (not (IsPredicateField_11716_27237 Ref__c)))
(assert  (not (IsWandField_11716_27263 Ref__c)))
(assert  (not (IsPredicateField_11728_3178 Ref__Integer_value)))
(assert  (not (IsWandField_11728_3178 Ref__Integer_value)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_21119) (ExhaleHeap@@2 T@PolymorphicMapType_21119) (Mask@@3 T@PolymorphicMapType_21140) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_21140) (o_2@@5 T@Ref) (f_4@@5 T@Field_11716_68514) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| Mask@@4) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_11716_74557 f_4@@5))) (not (IsWandField_11716_74573 f_4@@5))) (<= (select (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| Mask@@4) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| Mask@@4) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_21140) (o_2@@6 T@Ref) (f_4@@6 T@Field_11716_68381) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| Mask@@5) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_11716_68472 f_4@@6))) (not (IsWandField_11716_70423 f_4@@6))) (<= (select (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| Mask@@5) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| Mask@@5) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_21140) (o_2@@7 T@Ref) (f_4@@7 T@Field_21192_21193) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| Mask@@6) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_11716_21193 f_4@@7))) (not (IsWandField_11716_21193 f_4@@7))) (<= (select (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| Mask@@6) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| Mask@@6) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_21140) (o_2@@8 T@Ref) (f_4@@8 T@Field_21179_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| Mask@@7) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_11716_53 f_4@@8))) (not (IsWandField_11716_53 f_4@@8))) (<= (select (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| Mask@@7) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| Mask@@7) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_21140) (o_2@@9 T@Ref) (f_4@@9 T@Field_27374_3178) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@@8) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_11728_3178 f_4@@9))) (not (IsWandField_11728_3178 f_4@@9))) (<= (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@@8) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@@8) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_21140) (o_2@@10 T@Ref) (f_4@@10 T@Field_27210_27215) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@@9) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_11716_27237 f_4@@10))) (not (IsWandField_11716_27263 f_4@@10))) (<= (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@@9) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@@9) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_21140) (o_2@@11 T@Ref) (f_4@@11 T@Field_11716_68514) ) (! (= (HasDirectPerm_11716_75094 Mask@@10 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| Mask@@10) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11716_75094 Mask@@10 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_21140) (o_2@@12 T@Ref) (f_4@@12 T@Field_11716_68381) ) (! (= (HasDirectPerm_11716_68445 Mask@@11 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| Mask@@11) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11716_68445 Mask@@11 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_21140) (o_2@@13 T@Ref) (f_4@@13 T@Field_21192_21193) ) (! (= (HasDirectPerm_11716_21193 Mask@@12 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| Mask@@12) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11716_21193 Mask@@12 o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_21140) (o_2@@14 T@Ref) (f_4@@14 T@Field_21179_53) ) (! (= (HasDirectPerm_11716_53 Mask@@13 o_2@@14 f_4@@14) (> (select (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| Mask@@13) o_2@@14 f_4@@14) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11716_53 Mask@@13 o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_21140) (o_2@@15 T@Ref) (f_4@@15 T@Field_27374_3178) ) (! (= (HasDirectPerm_11728_3178 Mask@@14 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@@14) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11728_3178 Mask@@14 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_21140) (o_2@@16 T@Ref) (f_4@@16 T@Field_27210_27215) ) (! (= (HasDirectPerm_11716_28171 Mask@@15 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@@15) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11716_28171 Mask@@15 o_2@@16 f_4@@16))
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
(assert (forall ((Heap@@4 T@PolymorphicMapType_21119) (ExhaleHeap@@3 T@PolymorphicMapType_21119) (Mask@@16 T@PolymorphicMapType_21140) (o_34@@0 T@Ref) (f_40 T@Field_11716_68514) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (=> (HasDirectPerm_11716_75094 Mask@@16 o_34@@0 f_40) (= (select (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@4) o_34@@0 f_40) (select (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| ExhaleHeap@@3) o_34@@0 f_40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (select (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| ExhaleHeap@@3) o_34@@0 f_40))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_21119) (ExhaleHeap@@4 T@PolymorphicMapType_21119) (Mask@@17 T@PolymorphicMapType_21140) (o_34@@1 T@Ref) (f_40@@0 T@Field_11716_68381) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (=> (HasDirectPerm_11716_68445 Mask@@17 o_34@@1 f_40@@0) (= (select (|PolymorphicMapType_21119_21179_68381#PolymorphicMapType_21119| Heap@@5) o_34@@1 f_40@@0) (select (|PolymorphicMapType_21119_21179_68381#PolymorphicMapType_21119| ExhaleHeap@@4) o_34@@1 f_40@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (select (|PolymorphicMapType_21119_21179_68381#PolymorphicMapType_21119| ExhaleHeap@@4) o_34@@1 f_40@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_21119) (ExhaleHeap@@5 T@PolymorphicMapType_21119) (Mask@@18 T@PolymorphicMapType_21140) (o_34@@2 T@Ref) (f_40@@1 T@Field_21192_21193) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_11716_21193 Mask@@18 o_34@@2 f_40@@1) (= (select (|PolymorphicMapType_21119_11519_11520#PolymorphicMapType_21119| Heap@@6) o_34@@2 f_40@@1) (select (|PolymorphicMapType_21119_11519_11520#PolymorphicMapType_21119| ExhaleHeap@@5) o_34@@2 f_40@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_21119_11519_11520#PolymorphicMapType_21119| ExhaleHeap@@5) o_34@@2 f_40@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_21119) (ExhaleHeap@@6 T@PolymorphicMapType_21119) (Mask@@19 T@PolymorphicMapType_21140) (o_34@@3 T@Ref) (f_40@@2 T@Field_21179_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_11716_53 Mask@@19 o_34@@3 f_40@@2) (= (select (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| Heap@@7) o_34@@3 f_40@@2) (select (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| ExhaleHeap@@6) o_34@@3 f_40@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| ExhaleHeap@@6) o_34@@3 f_40@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_21119) (ExhaleHeap@@7 T@PolymorphicMapType_21119) (Mask@@20 T@PolymorphicMapType_21140) (o_34@@4 T@Ref) (f_40@@3 T@Field_27374_3178) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_11728_3178 Mask@@20 o_34@@4 f_40@@3) (= (select (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| Heap@@8) o_34@@4 f_40@@3) (select (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| ExhaleHeap@@7) o_34@@4 f_40@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| ExhaleHeap@@7) o_34@@4 f_40@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_21119) (ExhaleHeap@@8 T@PolymorphicMapType_21119) (Mask@@21 T@PolymorphicMapType_21140) (o_34@@5 T@Ref) (f_40@@4 T@Field_27210_27215) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_11716_28171 Mask@@21 o_34@@5 f_40@@4) (= (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@9) o_34@@5 f_40@@4) (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@@8) o_34@@5 f_40@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@@8) o_34@@5 f_40@@4))
)))
(assert (forall ((s0@@1 T@Seq_27213) (s1@@1 T@Seq_27213) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_11717|)) (not (= s1@@1 |Seq#Empty_11717|))) (= (|Seq#Length_11717| (|Seq#Append_27213| s0@@1 s1@@1)) (+ (|Seq#Length_11717| s0@@1) (|Seq#Length_11717| s1@@1))))
 :qid |stdinbpl.239:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_11717| (|Seq#Append_27213| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3008) (s1@@2 T@Seq_3008) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3008|)) (not (= s1@@2 |Seq#Empty_3008|))) (= (|Seq#Length_3008| (|Seq#Append_3008| s0@@2 s1@@2)) (+ (|Seq#Length_3008| s0@@2) (|Seq#Length_3008| s1@@2))))
 :qid |stdinbpl.239:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3008| (|Seq#Append_3008| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_11716_68514) ) (! (= (select (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_11716_68381) ) (! (= (select (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_21192_21193) ) (! (= (select (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| ZeroMask) o_2@@19 f_4@@19) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| ZeroMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_21179_53) ) (! (= (select (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| ZeroMask) o_2@@20 f_4@@20) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| ZeroMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_27374_3178) ) (! (= (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| ZeroMask) o_2@@21 f_4@@21) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| ZeroMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_27210_27215) ) (! (= (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| ZeroMask) o_2@@22 f_4@@22) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| ZeroMask) o_2@@22 f_4@@22))
)))
(assert (forall ((s@@15 T@Seq_27213) (t@@1 T@Seq_27213) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_11717| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_11717| s@@15)) (|Seq#Length_11717| s@@15)) n@@15) (= (|Seq#Drop_11717| (|Seq#Append_27213| s@@15 t@@1) n@@15) (|Seq#Drop_11717| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_11717| s@@15))))))
 :qid |stdinbpl.396:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_11717| (|Seq#Append_27213| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3008) (t@@2 T@Seq_3008) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3008| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3008| s@@16)) (|Seq#Length_3008| s@@16)) n@@16) (= (|Seq#Drop_3008| (|Seq#Append_3008| s@@16 t@@2) n@@16) (|Seq#Drop_3008| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3008| s@@16))))))
 :qid |stdinbpl.396:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3008| (|Seq#Append_3008| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_21140) (SummandMask1 T@PolymorphicMapType_21140) (SummandMask2 T@PolymorphicMapType_21140) (o_2@@23 T@Ref) (f_4@@23 T@Field_11716_68514) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| ResultMask) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| SummandMask1) o_2@@23 f_4@@23) (select (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| SummandMask2) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| ResultMask) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| SummandMask1) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| SummandMask2) o_2@@23 f_4@@23))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_21140) (SummandMask1@@0 T@PolymorphicMapType_21140) (SummandMask2@@0 T@PolymorphicMapType_21140) (o_2@@24 T@Ref) (f_4@@24 T@Field_11716_68381) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| ResultMask@@0) o_2@@24 f_4@@24) (+ (select (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| SummandMask1@@0) o_2@@24 f_4@@24) (select (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| SummandMask2@@0) o_2@@24 f_4@@24))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| ResultMask@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| SummandMask1@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| SummandMask2@@0) o_2@@24 f_4@@24))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_21140) (SummandMask1@@1 T@PolymorphicMapType_21140) (SummandMask2@@1 T@PolymorphicMapType_21140) (o_2@@25 T@Ref) (f_4@@25 T@Field_21192_21193) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| ResultMask@@1) o_2@@25 f_4@@25) (+ (select (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| SummandMask1@@1) o_2@@25 f_4@@25) (select (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| SummandMask2@@1) o_2@@25 f_4@@25))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| ResultMask@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| SummandMask1@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| SummandMask2@@1) o_2@@25 f_4@@25))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_21140) (SummandMask1@@2 T@PolymorphicMapType_21140) (SummandMask2@@2 T@PolymorphicMapType_21140) (o_2@@26 T@Ref) (f_4@@26 T@Field_21179_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| ResultMask@@2) o_2@@26 f_4@@26) (+ (select (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| SummandMask1@@2) o_2@@26 f_4@@26) (select (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| SummandMask2@@2) o_2@@26 f_4@@26))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| ResultMask@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| SummandMask1@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| SummandMask2@@2) o_2@@26 f_4@@26))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_21140) (SummandMask1@@3 T@PolymorphicMapType_21140) (SummandMask2@@3 T@PolymorphicMapType_21140) (o_2@@27 T@Ref) (f_4@@27 T@Field_27374_3178) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| ResultMask@@3) o_2@@27 f_4@@27) (+ (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| SummandMask1@@3) o_2@@27 f_4@@27) (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| SummandMask2@@3) o_2@@27 f_4@@27))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| ResultMask@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| SummandMask1@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| SummandMask2@@3) o_2@@27 f_4@@27))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_21140) (SummandMask1@@4 T@PolymorphicMapType_21140) (SummandMask2@@4 T@PolymorphicMapType_21140) (o_2@@28 T@Ref) (f_4@@28 T@Field_27210_27215) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| ResultMask@@4) o_2@@28 f_4@@28) (+ (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| SummandMask1@@4) o_2@@28 f_4@@28) (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| SummandMask2@@4) o_2@@28 f_4@@28))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| ResultMask@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| SummandMask1@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| SummandMask2@@4) o_2@@28 f_4@@28))
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
(assert (forall ((a@@0 T@Seq_27213) (b@@0 T@Seq_27213) ) (!  (=> (|Seq#Equal_11717| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.534:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_11717| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_27213) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_11717| s@@17))) (|Seq#ContainsTrigger_11717| s@@17 (|Seq#Index_11717| s@@17 i@@3)))
 :qid |stdinbpl.427:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_11717| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3008) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3008| s@@18))) (|Seq#ContainsTrigger_3008| s@@18 (|Seq#Index_3008| s@@18 i@@4)))
 :qid |stdinbpl.427:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3008| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_27213) (s1@@3 T@Seq_27213) ) (!  (and (=> (= s0@@3 |Seq#Empty_11717|) (= (|Seq#Append_27213| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_11717|) (= (|Seq#Append_27213| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.245:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_27213| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3008) (s1@@4 T@Seq_3008) ) (!  (and (=> (= s0@@4 |Seq#Empty_3008|) (= (|Seq#Append_3008| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3008|) (= (|Seq#Append_3008| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.245:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3008| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_11717| (|Seq#Singleton_11717| t@@3) 0) t@@3)
 :qid |stdinbpl.249:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_11717| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3008| (|Seq#Singleton_3008| t@@4) 0) t@@4)
 :qid |stdinbpl.249:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3008| t@@4))
)))
(assert (forall ((s@@19 T@Seq_27213) ) (! (<= 0 (|Seq#Length_11717| s@@19))
 :qid |stdinbpl.228:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_11717| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3008) ) (! (<= 0 (|Seq#Length_3008| s@@20))
 :qid |stdinbpl.228:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3008| s@@20))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_21119) (ExhaleHeap@@9 T@PolymorphicMapType_21119) (Mask@@22 T@PolymorphicMapType_21140) (pm_f_16@@1 T@Field_11716_68381) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (=> (and (HasDirectPerm_11716_68445 Mask@@22 null pm_f_16@@1) (IsPredicateField_11716_68472 pm_f_16@@1)) (and (and (and (and (and (forall ((o2_16 T@Ref) (f_40@@5 T@Field_21179_53) ) (!  (=> (select (|PolymorphicMapType_21668_21179_53#PolymorphicMapType_21668| (select (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@10) null (PredicateMaskField_11716 pm_f_16@@1))) o2_16 f_40@@5) (= (select (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| Heap@@10) o2_16 f_40@@5) (select (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| ExhaleHeap@@9) o2_16 f_40@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| ExhaleHeap@@9) o2_16 f_40@@5))
)) (forall ((o2_16@@0 T@Ref) (f_40@@6 T@Field_21192_21193) ) (!  (=> (select (|PolymorphicMapType_21668_21179_21193#PolymorphicMapType_21668| (select (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@10) null (PredicateMaskField_11716 pm_f_16@@1))) o2_16@@0 f_40@@6) (= (select (|PolymorphicMapType_21119_11519_11520#PolymorphicMapType_21119| Heap@@10) o2_16@@0 f_40@@6) (select (|PolymorphicMapType_21119_11519_11520#PolymorphicMapType_21119| ExhaleHeap@@9) o2_16@@0 f_40@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21119_11519_11520#PolymorphicMapType_21119| ExhaleHeap@@9) o2_16@@0 f_40@@6))
))) (forall ((o2_16@@1 T@Ref) (f_40@@7 T@Field_27210_27215) ) (!  (=> (select (|PolymorphicMapType_21668_21179_27215#PolymorphicMapType_21668| (select (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@10) null (PredicateMaskField_11716 pm_f_16@@1))) o2_16@@1 f_40@@7) (= (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@10) o2_16@@1 f_40@@7) (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@@9) o2_16@@1 f_40@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@@9) o2_16@@1 f_40@@7))
))) (forall ((o2_16@@2 T@Ref) (f_40@@8 T@Field_27374_3178) ) (!  (=> (select (|PolymorphicMapType_21668_21179_3178#PolymorphicMapType_21668| (select (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@10) null (PredicateMaskField_11716 pm_f_16@@1))) o2_16@@2 f_40@@8) (= (select (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| Heap@@10) o2_16@@2 f_40@@8) (select (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| ExhaleHeap@@9) o2_16@@2 f_40@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| ExhaleHeap@@9) o2_16@@2 f_40@@8))
))) (forall ((o2_16@@3 T@Ref) (f_40@@9 T@Field_11716_68381) ) (!  (=> (select (|PolymorphicMapType_21668_21179_68381#PolymorphicMapType_21668| (select (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@10) null (PredicateMaskField_11716 pm_f_16@@1))) o2_16@@3 f_40@@9) (= (select (|PolymorphicMapType_21119_21179_68381#PolymorphicMapType_21119| Heap@@10) o2_16@@3 f_40@@9) (select (|PolymorphicMapType_21119_21179_68381#PolymorphicMapType_21119| ExhaleHeap@@9) o2_16@@3 f_40@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21119_21179_68381#PolymorphicMapType_21119| ExhaleHeap@@9) o2_16@@3 f_40@@9))
))) (forall ((o2_16@@4 T@Ref) (f_40@@10 T@Field_11716_68514) ) (!  (=> (select (|PolymorphicMapType_21668_21179_69896#PolymorphicMapType_21668| (select (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@10) null (PredicateMaskField_11716 pm_f_16@@1))) o2_16@@4 f_40@@10) (= (select (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@10) o2_16@@4 f_40@@10) (select (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| ExhaleHeap@@9) o2_16@@4 f_40@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| ExhaleHeap@@9) o2_16@@4 f_40@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (IsPredicateField_11716_68472 pm_f_16@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_21119) (ExhaleHeap@@10 T@PolymorphicMapType_21119) (Mask@@23 T@PolymorphicMapType_21140) (pm_f_16@@2 T@Field_11716_68381) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (=> (and (HasDirectPerm_11716_68445 Mask@@23 null pm_f_16@@2) (IsWandField_11716_70423 pm_f_16@@2)) (and (and (and (and (and (forall ((o2_16@@5 T@Ref) (f_40@@11 T@Field_21179_53) ) (!  (=> (select (|PolymorphicMapType_21668_21179_53#PolymorphicMapType_21668| (select (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@11) null (WandMaskField_11716 pm_f_16@@2))) o2_16@@5 f_40@@11) (= (select (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| Heap@@11) o2_16@@5 f_40@@11) (select (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| ExhaleHeap@@10) o2_16@@5 f_40@@11)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| ExhaleHeap@@10) o2_16@@5 f_40@@11))
)) (forall ((o2_16@@6 T@Ref) (f_40@@12 T@Field_21192_21193) ) (!  (=> (select (|PolymorphicMapType_21668_21179_21193#PolymorphicMapType_21668| (select (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@11) null (WandMaskField_11716 pm_f_16@@2))) o2_16@@6 f_40@@12) (= (select (|PolymorphicMapType_21119_11519_11520#PolymorphicMapType_21119| Heap@@11) o2_16@@6 f_40@@12) (select (|PolymorphicMapType_21119_11519_11520#PolymorphicMapType_21119| ExhaleHeap@@10) o2_16@@6 f_40@@12)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21119_11519_11520#PolymorphicMapType_21119| ExhaleHeap@@10) o2_16@@6 f_40@@12))
))) (forall ((o2_16@@7 T@Ref) (f_40@@13 T@Field_27210_27215) ) (!  (=> (select (|PolymorphicMapType_21668_21179_27215#PolymorphicMapType_21668| (select (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@11) null (WandMaskField_11716 pm_f_16@@2))) o2_16@@7 f_40@@13) (= (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@11) o2_16@@7 f_40@@13) (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@@10) o2_16@@7 f_40@@13)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@@10) o2_16@@7 f_40@@13))
))) (forall ((o2_16@@8 T@Ref) (f_40@@14 T@Field_27374_3178) ) (!  (=> (select (|PolymorphicMapType_21668_21179_3178#PolymorphicMapType_21668| (select (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@11) null (WandMaskField_11716 pm_f_16@@2))) o2_16@@8 f_40@@14) (= (select (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| Heap@@11) o2_16@@8 f_40@@14) (select (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| ExhaleHeap@@10) o2_16@@8 f_40@@14)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| ExhaleHeap@@10) o2_16@@8 f_40@@14))
))) (forall ((o2_16@@9 T@Ref) (f_40@@15 T@Field_11716_68381) ) (!  (=> (select (|PolymorphicMapType_21668_21179_68381#PolymorphicMapType_21668| (select (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@11) null (WandMaskField_11716 pm_f_16@@2))) o2_16@@9 f_40@@15) (= (select (|PolymorphicMapType_21119_21179_68381#PolymorphicMapType_21119| Heap@@11) o2_16@@9 f_40@@15) (select (|PolymorphicMapType_21119_21179_68381#PolymorphicMapType_21119| ExhaleHeap@@10) o2_16@@9 f_40@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21119_21179_68381#PolymorphicMapType_21119| ExhaleHeap@@10) o2_16@@9 f_40@@15))
))) (forall ((o2_16@@10 T@Ref) (f_40@@16 T@Field_11716_68514) ) (!  (=> (select (|PolymorphicMapType_21668_21179_69896#PolymorphicMapType_21668| (select (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@11) null (WandMaskField_11716 pm_f_16@@2))) o2_16@@10 f_40@@16) (= (select (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@11) o2_16@@10 f_40@@16) (select (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| ExhaleHeap@@10) o2_16@@10 f_40@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| ExhaleHeap@@10) o2_16@@10 f_40@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (IsWandField_11716_70423 pm_f_16@@2))
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
(assert (forall ((s0@@6 T@Seq_27213) (s1@@6 T@Seq_27213) ) (!  (=> (|Seq#Equal_11717| s0@@6 s1@@6) (and (= (|Seq#Length_11717| s0@@6) (|Seq#Length_11717| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_11717| s0@@6))) (= (|Seq#Index_11717| s0@@6 j@@7) (|Seq#Index_11717| s1@@6 j@@7)))
 :qid |stdinbpl.524:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_11717| s0@@6 j@@7))
 :pattern ( (|Seq#Index_11717| s1@@6 j@@7))
))))
 :qid |stdinbpl.521:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_11717| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_11717| (|Seq#Singleton_11717| t@@5)) 1)
 :qid |stdinbpl.236:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_11717| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3008| (|Seq#Singleton_3008| t@@6)) 1)
 :qid |stdinbpl.236:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3008| t@@6))
)))
(assert (forall ((s@@21 T@Seq_27213) (t@@7 T@Seq_27213) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_11717| s@@21))) (= (|Seq#Take_11717| (|Seq#Append_27213| s@@21 t@@7) n@@17) (|Seq#Take_11717| s@@21 n@@17)))
 :qid |stdinbpl.378:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_11717| (|Seq#Append_27213| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3008) (t@@8 T@Seq_3008) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3008| s@@22))) (= (|Seq#Take_3008| (|Seq#Append_3008| s@@22 t@@8) n@@18) (|Seq#Take_3008| s@@22 n@@18)))
 :qid |stdinbpl.378:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3008| (|Seq#Append_3008| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_27213) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_11717| s@@23))) (= (|Seq#Length_11717| (|Seq#Update_11717| s@@23 i@@5 v@@2)) (|Seq#Length_11717| s@@23)))
 :qid |stdinbpl.277:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_11717| (|Seq#Update_11717| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_11717| s@@23) (|Seq#Update_11717| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3008) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3008| s@@24))) (= (|Seq#Length_3008| (|Seq#Update_3008| s@@24 i@@6 v@@3)) (|Seq#Length_3008| s@@24)))
 :qid |stdinbpl.277:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3008| (|Seq#Update_3008| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3008| s@@24) (|Seq#Update_3008| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_21119) (o_3 T@Ref) (f_35 T@Field_11716_68381) (v@@4 T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_21119 (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| Heap@@12) (|PolymorphicMapType_21119_11519_11520#PolymorphicMapType_21119| Heap@@12) (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@12) (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| Heap@@12) (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@12) (store (|PolymorphicMapType_21119_21179_68381#PolymorphicMapType_21119| Heap@@12) o_3 f_35 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21119 (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| Heap@@12) (|PolymorphicMapType_21119_11519_11520#PolymorphicMapType_21119| Heap@@12) (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@12) (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| Heap@@12) (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@12) (store (|PolymorphicMapType_21119_21179_68381#PolymorphicMapType_21119| Heap@@12) o_3 f_35 v@@4)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_21119) (o_3@@0 T@Ref) (f_35@@0 T@Field_11716_68514) (v@@5 T@PolymorphicMapType_21668) ) (! (succHeap Heap@@13 (PolymorphicMapType_21119 (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| Heap@@13) (|PolymorphicMapType_21119_11519_11520#PolymorphicMapType_21119| Heap@@13) (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@13) (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| Heap@@13) (store (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@13) o_3@@0 f_35@@0 v@@5) (|PolymorphicMapType_21119_21179_68381#PolymorphicMapType_21119| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21119 (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| Heap@@13) (|PolymorphicMapType_21119_11519_11520#PolymorphicMapType_21119| Heap@@13) (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@13) (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| Heap@@13) (store (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@13) o_3@@0 f_35@@0 v@@5) (|PolymorphicMapType_21119_21179_68381#PolymorphicMapType_21119| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_21119) (o_3@@1 T@Ref) (f_35@@1 T@Field_27374_3178) (v@@6 Int) ) (! (succHeap Heap@@14 (PolymorphicMapType_21119 (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| Heap@@14) (|PolymorphicMapType_21119_11519_11520#PolymorphicMapType_21119| Heap@@14) (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@14) (store (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| Heap@@14) o_3@@1 f_35@@1 v@@6) (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@14) (|PolymorphicMapType_21119_21179_68381#PolymorphicMapType_21119| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21119 (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| Heap@@14) (|PolymorphicMapType_21119_11519_11520#PolymorphicMapType_21119| Heap@@14) (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@14) (store (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| Heap@@14) o_3@@1 f_35@@1 v@@6) (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@14) (|PolymorphicMapType_21119_21179_68381#PolymorphicMapType_21119| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_21119) (o_3@@2 T@Ref) (f_35@@2 T@Field_27210_27215) (v@@7 T@Seq_27213) ) (! (succHeap Heap@@15 (PolymorphicMapType_21119 (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| Heap@@15) (|PolymorphicMapType_21119_11519_11520#PolymorphicMapType_21119| Heap@@15) (store (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@15) o_3@@2 f_35@@2 v@@7) (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| Heap@@15) (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@15) (|PolymorphicMapType_21119_21179_68381#PolymorphicMapType_21119| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21119 (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| Heap@@15) (|PolymorphicMapType_21119_11519_11520#PolymorphicMapType_21119| Heap@@15) (store (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@15) o_3@@2 f_35@@2 v@@7) (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| Heap@@15) (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@15) (|PolymorphicMapType_21119_21179_68381#PolymorphicMapType_21119| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_21119) (o_3@@3 T@Ref) (f_35@@3 T@Field_21192_21193) (v@@8 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_21119 (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| Heap@@16) (store (|PolymorphicMapType_21119_11519_11520#PolymorphicMapType_21119| Heap@@16) o_3@@3 f_35@@3 v@@8) (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@16) (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| Heap@@16) (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@16) (|PolymorphicMapType_21119_21179_68381#PolymorphicMapType_21119| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21119 (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| Heap@@16) (store (|PolymorphicMapType_21119_11519_11520#PolymorphicMapType_21119| Heap@@16) o_3@@3 f_35@@3 v@@8) (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@16) (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| Heap@@16) (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@16) (|PolymorphicMapType_21119_21179_68381#PolymorphicMapType_21119| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_21119) (o_3@@4 T@Ref) (f_35@@4 T@Field_21179_53) (v@@9 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_21119 (store (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| Heap@@17) o_3@@4 f_35@@4 v@@9) (|PolymorphicMapType_21119_11519_11520#PolymorphicMapType_21119| Heap@@17) (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@17) (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| Heap@@17) (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@17) (|PolymorphicMapType_21119_21179_68381#PolymorphicMapType_21119| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21119 (store (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| Heap@@17) o_3@@4 f_35@@4 v@@9) (|PolymorphicMapType_21119_11519_11520#PolymorphicMapType_21119| Heap@@17) (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@17) (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| Heap@@17) (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@17) (|PolymorphicMapType_21119_21179_68381#PolymorphicMapType_21119| Heap@@17)))
)))
(assert (forall ((s@@25 T@Seq_27213) (t@@9 T@Seq_27213) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_11717| s@@25))) (= (|Seq#Drop_11717| (|Seq#Append_27213| s@@25 t@@9) n@@19) (|Seq#Append_27213| (|Seq#Drop_11717| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.392:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_11717| (|Seq#Append_27213| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3008) (t@@10 T@Seq_3008) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3008| s@@26))) (= (|Seq#Drop_3008| (|Seq#Append_3008| s@@26 t@@10) n@@20) (|Seq#Append_3008| (|Seq#Drop_3008| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.392:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3008| (|Seq#Append_3008| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_27213) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_11717| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_11717| (|Seq#Drop_11717| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_11717| s@@27 i@@7))))
 :qid |stdinbpl.328:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_11717| s@@27 n@@21) (|Seq#Index_11717| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3008) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3008| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3008| (|Seq#Drop_3008| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3008| s@@28 i@@8))))
 :qid |stdinbpl.328:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3008| s@@28 n@@22) (|Seq#Index_3008| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_27213) (s1@@7 T@Seq_27213) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_11717|)) (not (= s1@@7 |Seq#Empty_11717|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_11717| s0@@7))) (= (|Seq#Index_11717| (|Seq#Append_27213| s0@@7 s1@@7) n@@23) (|Seq#Index_11717| s0@@7 n@@23)))
 :qid |stdinbpl.268:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_11717| (|Seq#Append_27213| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_11717| s0@@7 n@@23) (|Seq#Append_27213| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3008) (s1@@8 T@Seq_3008) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3008|)) (not (= s1@@8 |Seq#Empty_3008|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3008| s0@@8))) (= (|Seq#Index_3008| (|Seq#Append_3008| s0@@8 s1@@8) n@@24) (|Seq#Index_3008| s0@@8 n@@24)))
 :qid |stdinbpl.268:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3008| (|Seq#Append_3008| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3008| s0@@8 n@@24) (|Seq#Append_3008| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_27213) (s1@@9 T@Seq_27213) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_11717|)) (not (= s1@@9 |Seq#Empty_11717|))) (<= 0 m)) (< m (|Seq#Length_11717| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_11717| s0@@9)) (|Seq#Length_11717| s0@@9)) m) (= (|Seq#Index_11717| (|Seq#Append_27213| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_11717| s0@@9))) (|Seq#Index_11717| s1@@9 m))))
 :qid |stdinbpl.273:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_11717| s1@@9 m) (|Seq#Append_27213| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3008) (s1@@10 T@Seq_3008) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3008|)) (not (= s1@@10 |Seq#Empty_3008|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3008| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3008| s0@@10)) (|Seq#Length_3008| s0@@10)) m@@0) (= (|Seq#Index_3008| (|Seq#Append_3008| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3008| s0@@10))) (|Seq#Index_3008| s1@@10 m@@0))))
 :qid |stdinbpl.273:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3008| s1@@10 m@@0) (|Seq#Append_3008| s0@@10 s1@@10))
)))
(assert (forall ((o_3@@5 T@Ref) (f_8 T@Field_21192_21193) (Heap@@18 T@PolymorphicMapType_21119) ) (!  (=> (select (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| Heap@@18) o_3@@5 $allocated) (select (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| Heap@@18) (select (|PolymorphicMapType_21119_11519_11520#PolymorphicMapType_21119| Heap@@18) o_3@@5 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_21119_11519_11520#PolymorphicMapType_21119| Heap@@18) o_3@@5 f_8))
)))
(assert (forall ((s@@29 T@Seq_27213) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_11717| s@@29))) (= (|Seq#Index_11717| s@@29 i@@9) x@@3)) (|Seq#Contains_27213| s@@29 x@@3))
 :qid |stdinbpl.425:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_27213| s@@29 x@@3) (|Seq#Index_11717| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3008) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3008| s@@30))) (= (|Seq#Index_3008| s@@30 i@@10) x@@4)) (|Seq#Contains_3008| s@@30 x@@4))
 :qid |stdinbpl.425:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3008| s@@30 x@@4) (|Seq#Index_3008| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_27213) (s1@@11 T@Seq_27213) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_11717| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_11717| s0@@11 s1@@11))) (not (= (|Seq#Length_11717| s0@@11) (|Seq#Length_11717| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_11717| s0@@11 s1@@11))) (= (|Seq#Length_11717| s0@@11) (|Seq#Length_11717| s1@@11))) (= (|Seq#SkolemDiff_27213| s0@@11 s1@@11) (|Seq#SkolemDiff_27213| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_27213| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_27213| s0@@11 s1@@11) (|Seq#Length_11717| s0@@11))) (not (= (|Seq#Index_11717| s0@@11 (|Seq#SkolemDiff_27213| s0@@11 s1@@11)) (|Seq#Index_11717| s1@@11 (|Seq#SkolemDiff_27213| s0@@11 s1@@11))))))
 :qid |stdinbpl.529:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_11717| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3008) (s1@@12 T@Seq_3008) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3008| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3008| s0@@12 s1@@12))) (not (= (|Seq#Length_3008| s0@@12) (|Seq#Length_3008| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3008| s0@@12 s1@@12))) (= (|Seq#Length_3008| s0@@12) (|Seq#Length_3008| s1@@12))) (= (|Seq#SkolemDiff_3008| s0@@12 s1@@12) (|Seq#SkolemDiff_3008| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3008| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3008| s0@@12 s1@@12) (|Seq#Length_3008| s0@@12))) (not (= (|Seq#Index_3008| s0@@12 (|Seq#SkolemDiff_3008| s0@@12 s1@@12)) (|Seq#Index_3008| s1@@12 (|Seq#SkolemDiff_3008| s0@@12 s1@@12))))))
 :qid |stdinbpl.529:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3008| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_11716_68381) (v_1@@0 T@FrameType) (q T@Field_11716_68381) (w@@0 T@FrameType) (r T@Field_11716_68381) (u T@FrameType) ) (!  (=> (and (InsidePredicate_21179_21179 p@@1 v_1@@0 q w@@0) (InsidePredicate_21179_21179 q w@@0 r u)) (InsidePredicate_21179_21179 p@@1 v_1@@0 r u))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21179_21179 p@@1 v_1@@0 q w@@0) (InsidePredicate_21179_21179 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_27213) ) (!  (=> (= (|Seq#Length_11717| s@@31) 0) (= s@@31 |Seq#Empty_11717|))
 :qid |stdinbpl.232:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_11717| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3008) ) (!  (=> (= (|Seq#Length_3008| s@@32) 0) (= s@@32 |Seq#Empty_3008|))
 :qid |stdinbpl.232:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3008| s@@32))
)))
(assert (forall ((s@@33 T@Seq_27213) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_11717| s@@33 n@@25) |Seq#Empty_11717|))
 :qid |stdinbpl.408:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_11717| s@@33 n@@25))
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
(declare-fun Mask@14 () T@PolymorphicMapType_21140)
(declare-fun Mask@13 () T@PolymorphicMapType_21140)
(declare-fun Heap@3 () T@PolymorphicMapType_21119)
(declare-fun diz () T@Ref)
(declare-fun tid () Int)
(declare-fun perm@8 () Real)
(declare-fun Mask@12 () T@PolymorphicMapType_21140)
(declare-fun perm@7 () Real)
(declare-fun Mask@11 () T@PolymorphicMapType_21140)
(declare-fun perm@6 () Real)
(declare-fun Mask@8 () T@PolymorphicMapType_21140)
(declare-fun tcount () Int)
(declare-fun lid () Int)
(declare-fun gsize () Int)
(declare-fun gid () Int)
(declare-fun wildcard@6 () Real)
(declare-fun Mask@9 () T@PolymorphicMapType_21140)
(declare-fun wildcard@7 () Real)
(declare-fun Mask@10 () T@PolymorphicMapType_21140)
(declare-fun wildcard@8 () Real)
(declare-fun Heap@@19 () T@PolymorphicMapType_21119)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_21119)
(declare-fun __flatten_8@0 () T@Ref)
(declare-fun __flatten_10@0 () T@Ref)
(declare-fun __flatten_9@0 () Int)
(declare-fun Heap@2 () T@PolymorphicMapType_21119)
(declare-fun __flatten_4@0 () T@Ref)
(declare-fun __flatten_6@0 () T@Ref)
(declare-fun __flatten_7@0 () T@Ref)
(declare-fun __flatten_5@0 () Int)
(declare-fun Heap@1 () T@PolymorphicMapType_21119)
(declare-fun Mask@6 () T@PolymorphicMapType_21140)
(declare-fun perm@5 () Real)
(declare-fun Mask@7 () T@PolymorphicMapType_21140)
(declare-fun Mask@5 () T@PolymorphicMapType_21140)
(declare-fun Heap@0 () T@PolymorphicMapType_21119)
(declare-fun perm@4 () Real)
(declare-fun __flatten_1 () T@Ref)
(declare-fun __flatten_3 () T@Ref)
(declare-fun __flatten_4 () T@Ref)
(declare-fun __flatten_6 () T@Ref)
(declare-fun __flatten_7 () T@Ref)
(declare-fun __flatten_8 () T@Ref)
(declare-fun __flatten_10 () T@Ref)
(declare-fun __flatten_1@0 () T@Ref)
(declare-fun __flatten_3@0 () T@Ref)
(declare-fun __flatten_2@0 () Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_21119)
(declare-fun wildcard@3 () Real)
(declare-fun PostMask@0 () T@PolymorphicMapType_21140)
(declare-fun wildcard@4 () Real)
(declare-fun PostMask@1 () T@PolymorphicMapType_21140)
(declare-fun wildcard@5 () Real)
(declare-fun PostMask@2 () T@PolymorphicMapType_21140)
(declare-fun perm@1 () Real)
(declare-fun PostMask@3 () T@PolymorphicMapType_21140)
(declare-fun perm@2 () Real)
(declare-fun PostMask@4 () T@PolymorphicMapType_21140)
(declare-fun perm@3 () Real)
(declare-fun PostMask@5 () T@PolymorphicMapType_21140)
(declare-fun current_thread_id () Int)
(declare-fun wildcard@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_21140)
(declare-fun wildcard@1 () Real)
(declare-fun Mask@1 () T@PolymorphicMapType_21140)
(declare-fun wildcard@2 () Real)
(declare-fun Mask@2 () T@PolymorphicMapType_21140)
(declare-fun Mask@3 () T@PolymorphicMapType_21140)
(declare-fun Mask@4 () T@PolymorphicMapType_21140)
(declare-fun perm@0 () Real)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id Ref__main_main)
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
 (=> (= (ControlFlow 0 0) 144) (let ((anon17_correct  (=> (and (= Mask@14 (PolymorphicMapType_21140 (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@13) (store (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@13) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@3) diz Ref__c) tid) Ref__Integer_value (- (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@13) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@3) diz Ref__c) tid) Ref__Integer_value) perm@8)) (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| Mask@13) (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| Mask@13) (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| Mask@13) (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| Mask@13))) (= (ControlFlow 0 36) (- 0 35))) (> (select (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| Heap@3) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@3) diz Ref__c) tid) Ref__Integer_value) 0))))
(let ((anon25_Else_correct  (=> (and (= perm@8 NoPerm) (= (ControlFlow 0 39) 36)) anon17_correct)))
(let ((anon25_Then_correct  (=> (not (= perm@8 NoPerm)) (and (=> (= (ControlFlow 0 37) (- 0 38)) (<= perm@8 (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@13) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@3) diz Ref__c) tid) Ref__Integer_value))) (=> (<= perm@8 (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@13) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@3) diz Ref__c) tid) Ref__Integer_value)) (=> (= (ControlFlow 0 37) 36) anon17_correct))))))
(let ((anon15_correct  (=> (= Mask@13 (PolymorphicMapType_21140 (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@12) (store (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@12) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@3) diz Ref__b) tid) Ref__Integer_value (- (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@12) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@3) diz Ref__b) tid) Ref__Integer_value) perm@7)) (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| Mask@12) (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| Mask@12) (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| Mask@12) (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| Mask@12))) (and (=> (= (ControlFlow 0 40) (- 0 42)) (> (select (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| Heap@3) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@3) diz Ref__b) tid) Ref__Integer_value) 0)) (=> (> (select (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| Heap@3) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@3) diz Ref__b) tid) Ref__Integer_value) 0) (=> (= perm@8 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 40) (- 0 41)) (>= perm@8 NoPerm)) (=> (>= perm@8 NoPerm) (and (=> (= (ControlFlow 0 40) 37) anon25_Then_correct) (=> (= (ControlFlow 0 40) 39) anon25_Else_correct))))))))))
(let ((anon24_Else_correct  (=> (and (= perm@7 NoPerm) (= (ControlFlow 0 45) 40)) anon15_correct)))
(let ((anon24_Then_correct  (=> (not (= perm@7 NoPerm)) (and (=> (= (ControlFlow 0 43) (- 0 44)) (<= perm@7 (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@12) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@3) diz Ref__b) tid) Ref__Integer_value))) (=> (<= perm@7 (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@12) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@3) diz Ref__b) tid) Ref__Integer_value)) (=> (= (ControlFlow 0 43) 40) anon15_correct))))))
(let ((anon13_correct  (=> (= Mask@12 (PolymorphicMapType_21140 (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@11) (store (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@11) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@3) diz Ref__a) tid) Ref__Integer_value (- (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@11) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@3) diz Ref__a) tid) Ref__Integer_value) perm@6)) (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| Mask@11) (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| Mask@11) (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| Mask@11) (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| Mask@11))) (and (=> (= (ControlFlow 0 46) (- 0 48)) (> (select (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| Heap@3) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@3) diz Ref__a) tid) Ref__Integer_value) 0)) (=> (> (select (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| Heap@3) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@3) diz Ref__a) tid) Ref__Integer_value) 0) (=> (= perm@7 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 46) (- 0 47)) (>= perm@7 NoPerm)) (=> (>= perm@7 NoPerm) (and (=> (= (ControlFlow 0 46) 43) anon24_Then_correct) (=> (= (ControlFlow 0 46) 45) anon24_Else_correct))))))))))
(let ((anon23_Else_correct  (=> (and (= perm@6 NoPerm) (= (ControlFlow 0 51) 46)) anon13_correct)))
(let ((anon23_Then_correct  (=> (not (= perm@6 NoPerm)) (and (=> (= (ControlFlow 0 49) (- 0 50)) (<= perm@6 (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@11) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@3) diz Ref__a) tid) Ref__Integer_value))) (=> (<= perm@6 (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@11) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@3) diz Ref__a) tid) Ref__Integer_value)) (=> (= (ControlFlow 0 49) 46) anon13_correct))))))
(let ((anon11_correct  (=> (state Heap@3 Mask@8) (and (=> (= (ControlFlow 0 52) (- 0 67)) (<= 0 tid)) (=> (<= 0 tid) (and (=> (= (ControlFlow 0 52) (- 0 66)) (< tid tcount)) (=> (< tid tcount) (and (=> (= (ControlFlow 0 52) (- 0 65)) (= tid lid)) (=> (= tid lid) (and (=> (= (ControlFlow 0 52) (- 0 64)) (= tcount gsize)) (=> (= tcount gsize) (and (=> (= (ControlFlow 0 52) (- 0 63)) (= gid 0)) (=> (= gid 0) (and (=> (= (ControlFlow 0 52) (- 0 62)) (> (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@8) diz Ref__a) NoPerm)) (=> (> (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@8) diz Ref__a) NoPerm) (=> (> wildcard@6 NoPerm) (=> (and (< wildcard@6 (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@8) diz Ref__a)) (= Mask@9 (PolymorphicMapType_21140 (store (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@8) diz Ref__a (- (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@8) diz Ref__a) wildcard@6)) (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@8) (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| Mask@8) (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| Mask@8) (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| Mask@8) (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| Mask@8)))) (and (=> (= (ControlFlow 0 52) (- 0 61)) (= (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@3) diz Ref__a)) tcount)) (=> (= (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@3) diz Ref__a)) tcount) (and (=> (= (ControlFlow 0 52) (- 0 60)) (> (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@9) diz Ref__b) NoPerm)) (=> (> (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@9) diz Ref__b) NoPerm) (=> (> wildcard@7 NoPerm) (=> (and (< wildcard@7 (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@9) diz Ref__b)) (= Mask@10 (PolymorphicMapType_21140 (store (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@9) diz Ref__b (- (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@9) diz Ref__b) wildcard@7)) (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@9) (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| Mask@9) (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| Mask@9) (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| Mask@9) (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| Mask@9)))) (and (=> (= (ControlFlow 0 52) (- 0 59)) (= (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@3) diz Ref__b)) tcount)) (=> (= (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@3) diz Ref__b)) tcount) (and (=> (= (ControlFlow 0 52) (- 0 58)) (> (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@10) diz Ref__c) NoPerm)) (=> (> (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@10) diz Ref__c) NoPerm) (=> (> wildcard@8 NoPerm) (=> (and (< wildcard@8 (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@10) diz Ref__c)) (= Mask@11 (PolymorphicMapType_21140 (store (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@10) diz Ref__c (- (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@10) diz Ref__c) wildcard@8)) (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@10) (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| Mask@10) (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| Mask@10) (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| Mask@10) (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| Mask@10)))) (and (=> (= (ControlFlow 0 52) (- 0 57)) (= (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@3) diz Ref__c)) tcount)) (=> (= (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@3) diz Ref__c)) tcount) (and (=> (= (ControlFlow 0 52) (- 0 56)) (|Seq#Equal_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@3) diz Ref__a) (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__a))) (=> (|Seq#Equal_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@3) diz Ref__a) (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__a)) (and (=> (= (ControlFlow 0 52) (- 0 55)) (|Seq#Equal_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@3) diz Ref__b) (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__b))) (=> (|Seq#Equal_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@3) diz Ref__b) (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__b)) (and (=> (= (ControlFlow 0 52) (- 0 54)) (|Seq#Equal_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@3) diz Ref__c) (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__c))) (=> (|Seq#Equal_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@3) diz Ref__c) (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__c)) (=> (= perm@6 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 52) (- 0 53)) (>= perm@6 NoPerm)) (=> (>= perm@6 NoPerm) (and (=> (= (ControlFlow 0 52) 49) anon23_Then_correct) (=> (= (ControlFlow 0 52) 51) anon23_Else_correct))))))))))))))))))))))))))))))))))))))))))
(let ((anon22_Else_correct  (=> (>= 0 tid) (and (=> (= (ControlFlow 0 81) (- 0 89)) (HasDirectPerm_11716_28171 Mask@8 diz Ref__a)) (=> (HasDirectPerm_11716_28171 Mask@8 diz Ref__a) (and (=> (= (ControlFlow 0 81) (- 0 88)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 81) (- 0 87)) (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@0) diz Ref__a)))) (=> (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@0) diz Ref__a))) (=> (and (= __flatten_8@0 (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@0) diz Ref__a) tid)) (state ExhaleHeap@0 Mask@8)) (and (=> (= (ControlFlow 0 81) (- 0 86)) (HasDirectPerm_11716_28171 Mask@8 diz Ref__b)) (=> (HasDirectPerm_11716_28171 Mask@8 diz Ref__b) (and (=> (= (ControlFlow 0 81) (- 0 85)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 81) (- 0 84)) (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@0) diz Ref__b)))) (=> (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@0) diz Ref__b))) (=> (and (= __flatten_10@0 (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@0) diz Ref__b) tid)) (state ExhaleHeap@0 Mask@8)) (and (=> (= (ControlFlow 0 81) (- 0 83)) (HasDirectPerm_11728_3178 Mask@8 __flatten_10@0 Ref__Integer_value)) (=> (HasDirectPerm_11728_3178 Mask@8 __flatten_10@0 Ref__Integer_value) (=> (and (= __flatten_9@0 (select (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| ExhaleHeap@0) __flatten_10@0 Ref__Integer_value)) (state ExhaleHeap@0 Mask@8)) (and (=> (= (ControlFlow 0 81) (- 0 82)) (= FullPerm (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@8) __flatten_8@0 Ref__Integer_value))) (=> (= FullPerm (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@8) __flatten_8@0 Ref__Integer_value)) (=> (and (and (= Heap@2 (PolymorphicMapType_21119 (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| ExhaleHeap@0) (|PolymorphicMapType_21119_11519_11520#PolymorphicMapType_21119| ExhaleHeap@0) (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@0) (store (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| ExhaleHeap@0) __flatten_8@0 Ref__Integer_value __flatten_9@0) (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| ExhaleHeap@0) (|PolymorphicMapType_21119_21179_68381#PolymorphicMapType_21119| ExhaleHeap@0))) (state Heap@2 Mask@8)) (and (= Heap@3 Heap@2) (= (ControlFlow 0 81) 52))) anon11_correct)))))))))))))))))))))))
(let ((anon22_Then_correct  (=> (> tid 0) (and (=> (= (ControlFlow 0 68) (- 0 80)) (HasDirectPerm_11716_28171 Mask@8 diz Ref__a)) (=> (HasDirectPerm_11716_28171 Mask@8 diz Ref__a) (and (=> (= (ControlFlow 0 68) (- 0 79)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 68) (- 0 78)) (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@0) diz Ref__a)))) (=> (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@0) diz Ref__a))) (=> (and (= __flatten_4@0 (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@0) diz Ref__a) tid)) (state ExhaleHeap@0 Mask@8)) (and (=> (= (ControlFlow 0 68) (- 0 77)) (HasDirectPerm_11716_28171 Mask@8 diz Ref__b)) (=> (HasDirectPerm_11716_28171 Mask@8 diz Ref__b) (and (=> (= (ControlFlow 0 68) (- 0 76)) (>= (- tid 1) 0)) (=> (>= (- tid 1) 0) (and (=> (= (ControlFlow 0 68) (- 0 75)) (< (- tid 1) (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@0) diz Ref__b)))) (=> (< (- tid 1) (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@0) diz Ref__b))) (=> (and (= __flatten_6@0 (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@0) diz Ref__b) (- tid 1))) (state ExhaleHeap@0 Mask@8)) (and (=> (= (ControlFlow 0 68) (- 0 74)) (HasDirectPerm_11716_28171 Mask@8 diz Ref__b)) (=> (HasDirectPerm_11716_28171 Mask@8 diz Ref__b) (and (=> (= (ControlFlow 0 68) (- 0 73)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 68) (- 0 72)) (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@0) diz Ref__b)))) (=> (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@0) diz Ref__b))) (=> (and (= __flatten_7@0 (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@0) diz Ref__b) tid)) (state ExhaleHeap@0 Mask@8)) (and (=> (= (ControlFlow 0 68) (- 0 71)) (HasDirectPerm_11728_3178 Mask@8 __flatten_6@0 Ref__Integer_value)) (=> (HasDirectPerm_11728_3178 Mask@8 __flatten_6@0 Ref__Integer_value) (and (=> (= (ControlFlow 0 68) (- 0 70)) (HasDirectPerm_11728_3178 Mask@8 __flatten_7@0 Ref__Integer_value)) (=> (HasDirectPerm_11728_3178 Mask@8 __flatten_7@0 Ref__Integer_value) (=> (and (= __flatten_5@0 (+ (select (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| ExhaleHeap@0) __flatten_6@0 Ref__Integer_value) (select (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| ExhaleHeap@0) __flatten_7@0 Ref__Integer_value))) (state ExhaleHeap@0 Mask@8)) (and (=> (= (ControlFlow 0 68) (- 0 69)) (= FullPerm (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@8) __flatten_4@0 Ref__Integer_value))) (=> (= FullPerm (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@8) __flatten_4@0 Ref__Integer_value)) (=> (and (and (= Heap@1 (PolymorphicMapType_21119 (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| ExhaleHeap@0) (|PolymorphicMapType_21119_11519_11520#PolymorphicMapType_21119| ExhaleHeap@0) (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@0) (store (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| ExhaleHeap@0) __flatten_4@0 Ref__Integer_value __flatten_5@0) (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| ExhaleHeap@0) (|PolymorphicMapType_21119_21179_68381#PolymorphicMapType_21119| ExhaleHeap@0))) (state Heap@1 Mask@8)) (and (= Heap@3 Heap@1) (= (ControlFlow 0 68) 52))) anon11_correct))))))))))))))))))))))))))))))))
(let ((anon8_correct  (=> (and (state ExhaleHeap@0 Mask@8) (state ExhaleHeap@0 Mask@8)) (and (=> (= (ControlFlow 0 90) 68) anon22_Then_correct) (=> (= (ControlFlow 0 90) 81) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (and (>= 0 tid) (= (ControlFlow 0 96) 90)) anon8_correct)))
(let ((anon21_Then_correct  (=> (> tid 0) (and (=> (= (ControlFlow 0 91) (- 0 95)) (HasDirectPerm_11716_28171 Mask@8 diz Ref__b)) (=> (HasDirectPerm_11716_28171 Mask@8 diz Ref__b) (and (=> (= (ControlFlow 0 91) (- 0 94)) (>= (- tid 1) 0)) (=> (>= (- tid 1) 0) (and (=> (= (ControlFlow 0 91) (- 0 93)) (< (- tid 1) (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@0) diz Ref__b)))) (=> (< (- tid 1) (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@0) diz Ref__b))) (and (=> (= (ControlFlow 0 91) (- 0 92)) (HasDirectPerm_11728_3178 Mask@8 (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@0) diz Ref__b) (- tid 1)) Ref__Integer_value)) (=> (HasDirectPerm_11728_3178 Mask@8 (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@0) diz Ref__b) (- tid 1)) Ref__Integer_value) (=> (and (> (select (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| ExhaleHeap@0) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@0) diz Ref__b) (- tid 1)) Ref__Integer_value) 0) (= (ControlFlow 0 91) 90)) anon8_correct))))))))))))
(let ((anon6_correct  (=> (and (state ExhaleHeap@0 Mask@8) (state ExhaleHeap@0 Mask@8)) (and (=> (= (ControlFlow 0 97) 91) anon21_Then_correct) (=> (= (ControlFlow 0 97) 96) anon21_Else_correct)))))
(let ((anon20_Else_correct  (=> (>= 0 tid) (=> (and (= Mask@8 Mask@6) (= (ControlFlow 0 103) 97)) anon6_correct))))
(let ((anon20_Then_correct  (=> (> tid 0) (and (=> (= (ControlFlow 0 98) (- 0 102)) (HasDirectPerm_11716_28171 Mask@6 diz Ref__b)) (=> (HasDirectPerm_11716_28171 Mask@6 diz Ref__b) (and (=> (= (ControlFlow 0 98) (- 0 101)) (>= (- tid 1) 0)) (=> (>= (- tid 1) 0) (and (=> (= (ControlFlow 0 98) (- 0 100)) (< (- tid 1) (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@0) diz Ref__b)))) (=> (< (- tid 1) (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@0) diz Ref__b))) (=> (= perm@5 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 98) (- 0 99)) (>= perm@5 NoPerm)) (=> (>= perm@5 NoPerm) (=> (=> (> perm@5 NoPerm) (not (= (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@0) diz Ref__b) (- tid 1)) null))) (=> (and (and (= Mask@7 (PolymorphicMapType_21140 (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@6) (store (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@6) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@0) diz Ref__b) (- tid 1)) Ref__Integer_value (+ (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@6) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| ExhaleHeap@0) diz Ref__b) (- tid 1)) Ref__Integer_value) perm@5)) (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| Mask@6) (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| Mask@6) (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| Mask@6) (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| Mask@6))) (state ExhaleHeap@0 Mask@7)) (and (= Mask@8 Mask@7) (= (ControlFlow 0 98) 97))) anon6_correct))))))))))))))
(let ((anon4_correct  (=> (= Mask@6 (PolymorphicMapType_21140 (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@5) (store (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@5) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@0) diz Ref__b) tid) Ref__Integer_value (- (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@5) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@0) diz Ref__b) tid) Ref__Integer_value) perm@4)) (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| Mask@5) (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| Mask@5) (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| Mask@5) (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| Mask@5))) (=> (and (IdenticalOnKnownLocations Heap@0 ExhaleHeap@0 Mask@6) (state ExhaleHeap@0 Mask@6)) (and (=> (= (ControlFlow 0 104) 98) anon20_Then_correct) (=> (= (ControlFlow 0 104) 103) anon20_Else_correct))))))
(let ((anon19_Else_correct  (=> (and (= perm@4 NoPerm) (= (ControlFlow 0 107) 104)) anon4_correct)))
(let ((anon19_Then_correct  (=> (not (= perm@4 NoPerm)) (and (=> (= (ControlFlow 0 105) (- 0 106)) (<= perm@4 (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@5) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@0) diz Ref__b) tid) Ref__Integer_value))) (=> (<= perm@4 (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@5) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@0) diz Ref__b) tid) Ref__Integer_value)) (=> (= (ControlFlow 0 105) 104) anon4_correct))))))
(let ((anon18_Else_correct  (=> (and (and (and (select (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| Heap@@19) __flatten_1 $allocated) (select (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| Heap@@19) __flatten_3 $allocated)) (and (select (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| Heap@@19) __flatten_4 $allocated) (select (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| Heap@@19) __flatten_6 $allocated))) (and (and (select (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| Heap@@19) __flatten_7 $allocated) (select (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| Heap@@19) __flatten_8 $allocated)) (and (select (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| Heap@@19) __flatten_10 $allocated) (state Heap@@19 Mask@5)))) (and (=> (= (ControlFlow 0 108) (- 0 125)) (HasDirectPerm_11716_28171 Mask@5 diz Ref__b)) (=> (HasDirectPerm_11716_28171 Mask@5 diz Ref__b) (and (=> (= (ControlFlow 0 108) (- 0 124)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 108) (- 0 123)) (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__b)))) (=> (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__b))) (=> (and (= __flatten_1@0 (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__b) tid)) (state Heap@@19 Mask@5)) (and (=> (= (ControlFlow 0 108) (- 0 122)) (HasDirectPerm_11716_28171 Mask@5 diz Ref__c)) (=> (HasDirectPerm_11716_28171 Mask@5 diz Ref__c) (and (=> (= (ControlFlow 0 108) (- 0 121)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 108) (- 0 120)) (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__c)))) (=> (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__c))) (=> (and (= __flatten_3@0 (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__c) tid)) (state Heap@@19 Mask@5)) (and (=> (= (ControlFlow 0 108) (- 0 119)) (HasDirectPerm_11728_3178 Mask@5 __flatten_3@0 Ref__Integer_value)) (=> (HasDirectPerm_11728_3178 Mask@5 __flatten_3@0 Ref__Integer_value) (=> (and (= __flatten_2@0 (select (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| Heap@@19) __flatten_3@0 Ref__Integer_value)) (state Heap@@19 Mask@5)) (and (=> (= (ControlFlow 0 108) (- 0 118)) (= FullPerm (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@5) __flatten_1@0 Ref__Integer_value))) (=> (= FullPerm (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@5) __flatten_1@0 Ref__Integer_value)) (=> (and (= Heap@0 (PolymorphicMapType_21119 (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| Heap@@19) (|PolymorphicMapType_21119_11519_11520#PolymorphicMapType_21119| Heap@@19) (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) (store (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| Heap@@19) __flatten_1@0 Ref__Integer_value __flatten_2@0) (|PolymorphicMapType_21119_11716_68558#PolymorphicMapType_21119| Heap@@19) (|PolymorphicMapType_21119_21179_68381#PolymorphicMapType_21119| Heap@@19))) (state Heap@0 Mask@5)) (and (=> (= (ControlFlow 0 108) (- 0 117)) (HasDirectPerm_11716_28171 Mask@5 diz Ref__b)) (=> (HasDirectPerm_11716_28171 Mask@5 diz Ref__b) (and (=> (= (ControlFlow 0 108) (- 0 116)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 108) (- 0 115)) (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@0) diz Ref__b)))) (=> (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@0) diz Ref__b))) (and (=> (= (ControlFlow 0 108) (- 0 114)) (HasDirectPerm_11728_3178 Mask@5 (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@0) diz Ref__b) tid) Ref__Integer_value)) (=> (HasDirectPerm_11728_3178 Mask@5 (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@0) diz Ref__b) tid) Ref__Integer_value) (and (=> (= (ControlFlow 0 108) (- 0 113)) (> (select (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| Heap@0) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@0) diz Ref__b) tid) Ref__Integer_value) 0)) (=> (> (select (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| Heap@0) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@0) diz Ref__b) tid) Ref__Integer_value) 0) (=> (state Heap@0 Mask@5) (and (=> (= (ControlFlow 0 108) (- 0 112)) (HasDirectPerm_11716_28171 Mask@5 diz Ref__b)) (=> (HasDirectPerm_11716_28171 Mask@5 diz Ref__b) (and (=> (= (ControlFlow 0 108) (- 0 111)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 108) (- 0 110)) (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@0) diz Ref__b)))) (=> (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@0) diz Ref__b))) (=> (= perm@4 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 108) (- 0 109)) (>= perm@4 NoPerm)) (=> (>= perm@4 NoPerm) (and (=> (= (ControlFlow 0 108) 105) anon19_Then_correct) (=> (= (ControlFlow 0 108) 107) anon19_Else_correct)))))))))))))))))))))))))))))))))))))))))))))
(let ((anon18_Then_correct  (=> (and (and (and (and (state PostHeap@0 ZeroMask) (<= 0 tid)) (and (state PostHeap@0 ZeroMask) (< tid tcount))) (and (and (state PostHeap@0 ZeroMask) (= tid lid)) (and (state PostHeap@0 ZeroMask) (= tcount gsize)))) (and (and (and (state PostHeap@0 ZeroMask) (= gid 0)) (and (state PostHeap@0 ZeroMask) (> wildcard@3 NoPerm))) (and (and (not (= diz null)) (= PostMask@0 (PolymorphicMapType_21140 (store (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| ZeroMask) diz Ref__a (+ (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| ZeroMask) diz Ref__a) wildcard@3)) (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| ZeroMask) (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| ZeroMask) (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| ZeroMask) (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| ZeroMask) (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| ZeroMask)))) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0))))) (and (=> (= (ControlFlow 0 2) (- 0 34)) (HasDirectPerm_11716_28171 PostMask@0 diz Ref__a)) (=> (HasDirectPerm_11716_28171 PostMask@0 diz Ref__a) (=> (= (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__a)) tcount) (=> (and (state PostHeap@0 PostMask@0) (> wildcard@4 NoPerm)) (=> (and (and (not (= diz null)) (= PostMask@1 (PolymorphicMapType_21140 (store (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| PostMask@0) diz Ref__b (+ (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| PostMask@0) diz Ref__b) wildcard@4)) (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| PostMask@0) (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| PostMask@0) (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| PostMask@0) (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| PostMask@0) (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| PostMask@0)))) (and (state PostHeap@0 PostMask@1) (state PostHeap@0 PostMask@1))) (and (=> (= (ControlFlow 0 2) (- 0 33)) (HasDirectPerm_11716_28171 PostMask@1 diz Ref__b)) (=> (HasDirectPerm_11716_28171 PostMask@1 diz Ref__b) (=> (= (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__b)) tcount) (=> (and (state PostHeap@0 PostMask@1) (> wildcard@5 NoPerm)) (=> (and (and (not (= diz null)) (= PostMask@2 (PolymorphicMapType_21140 (store (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| PostMask@1) diz Ref__c (+ (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| PostMask@1) diz Ref__c) wildcard@5)) (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| PostMask@1) (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| PostMask@1) (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| PostMask@1) (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| PostMask@1) (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| PostMask@1)))) (and (state PostHeap@0 PostMask@2) (state PostHeap@0 PostMask@2))) (and (=> (= (ControlFlow 0 2) (- 0 32)) (HasDirectPerm_11716_28171 PostMask@2 diz Ref__c)) (=> (HasDirectPerm_11716_28171 PostMask@2 diz Ref__c) (=> (and (= (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__c)) tcount) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 2) (- 0 31)) (HasDirectPerm_11716_28171 PostMask@2 diz Ref__a)) (=> (HasDirectPerm_11716_28171 PostMask@2 diz Ref__a) (and (=> (= (ControlFlow 0 2) (- 0 30)) (HasDirectPerm_11716_28171 Mask@5 diz Ref__a)) (=> (HasDirectPerm_11716_28171 Mask@5 diz Ref__a) (=> (and (|Seq#Equal_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__a) (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__a)) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 2) (- 0 29)) (HasDirectPerm_11716_28171 PostMask@2 diz Ref__b)) (=> (HasDirectPerm_11716_28171 PostMask@2 diz Ref__b) (and (=> (= (ControlFlow 0 2) (- 0 28)) (HasDirectPerm_11716_28171 Mask@5 diz Ref__b)) (=> (HasDirectPerm_11716_28171 Mask@5 diz Ref__b) (=> (and (|Seq#Equal_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__b) (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__b)) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 2) (- 0 27)) (HasDirectPerm_11716_28171 PostMask@2 diz Ref__c)) (=> (HasDirectPerm_11716_28171 PostMask@2 diz Ref__c) (and (=> (= (ControlFlow 0 2) (- 0 26)) (HasDirectPerm_11716_28171 Mask@5 diz Ref__c)) (=> (HasDirectPerm_11716_28171 Mask@5 diz Ref__c) (=> (and (|Seq#Equal_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__c) (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__c)) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 2) (- 0 25)) (HasDirectPerm_11716_28171 PostMask@2 diz Ref__a)) (=> (HasDirectPerm_11716_28171 PostMask@2 diz Ref__a) (and (=> (= (ControlFlow 0 2) (- 0 24)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 2) (- 0 23)) (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__a)))) (=> (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__a))) (=> (= perm@1 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 2) (- 0 22)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (and (and (=> (> perm@1 NoPerm) (not (= (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__a) tid) null))) (= PostMask@3 (PolymorphicMapType_21140 (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| PostMask@2) (store (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| PostMask@2) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__a) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| PostMask@2) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__a) tid) Ref__Integer_value) perm@1)) (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| PostMask@2) (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| PostMask@2) (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| PostMask@2) (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| PostMask@2)))) (and (state PostHeap@0 PostMask@3) (state PostHeap@0 PostMask@3))) (and (=> (= (ControlFlow 0 2) (- 0 21)) (HasDirectPerm_11716_28171 PostMask@3 diz Ref__a)) (=> (HasDirectPerm_11716_28171 PostMask@3 diz Ref__a) (and (=> (= (ControlFlow 0 2) (- 0 20)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 2) (- 0 19)) (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__a)))) (=> (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__a))) (and (=> (= (ControlFlow 0 2) (- 0 18)) (HasDirectPerm_11728_3178 PostMask@3 (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__a) tid) Ref__Integer_value)) (=> (HasDirectPerm_11728_3178 PostMask@3 (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__a) tid) Ref__Integer_value) (=> (and (> (select (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| PostHeap@0) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__a) tid) Ref__Integer_value) 0) (state PostHeap@0 PostMask@3)) (and (=> (= (ControlFlow 0 2) (- 0 17)) (HasDirectPerm_11716_28171 PostMask@3 diz Ref__b)) (=> (HasDirectPerm_11716_28171 PostMask@3 diz Ref__b) (and (=> (= (ControlFlow 0 2) (- 0 16)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 2) (- 0 15)) (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__b)))) (=> (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__b))) (=> (= perm@2 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (>= perm@2 NoPerm)) (=> (>= perm@2 NoPerm) (=> (and (and (=> (> perm@2 NoPerm) (not (= (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__b) tid) null))) (= PostMask@4 (PolymorphicMapType_21140 (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| PostMask@3) (store (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| PostMask@3) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__b) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| PostMask@3) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__b) tid) Ref__Integer_value) perm@2)) (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| PostMask@3) (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| PostMask@3) (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| PostMask@3) (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| PostMask@3)))) (and (state PostHeap@0 PostMask@4) (state PostHeap@0 PostMask@4))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (HasDirectPerm_11716_28171 PostMask@4 diz Ref__b)) (=> (HasDirectPerm_11716_28171 PostMask@4 diz Ref__b) (and (=> (= (ControlFlow 0 2) (- 0 12)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 2) (- 0 11)) (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__b)))) (=> (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__b))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (HasDirectPerm_11728_3178 PostMask@4 (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__b) tid) Ref__Integer_value)) (=> (HasDirectPerm_11728_3178 PostMask@4 (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__b) tid) Ref__Integer_value) (=> (and (> (select (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| PostHeap@0) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__b) tid) Ref__Integer_value) 0) (state PostHeap@0 PostMask@4)) (and (=> (= (ControlFlow 0 2) (- 0 9)) (HasDirectPerm_11716_28171 PostMask@4 diz Ref__c)) (=> (HasDirectPerm_11716_28171 PostMask@4 diz Ref__c) (and (=> (= (ControlFlow 0 2) (- 0 8)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 2) (- 0 7)) (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__c)))) (=> (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__c))) (=> (= perm@3 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= perm@3 NoPerm)) (=> (>= perm@3 NoPerm) (=> (and (and (=> (> perm@3 NoPerm) (not (= (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__c) tid) null))) (= PostMask@5 (PolymorphicMapType_21140 (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| PostMask@4) (store (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| PostMask@4) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__c) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| PostMask@4) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__c) tid) Ref__Integer_value) perm@3)) (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| PostMask@4) (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| PostMask@4) (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| PostMask@4) (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| PostMask@4)))) (and (state PostHeap@0 PostMask@5) (state PostHeap@0 PostMask@5))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (HasDirectPerm_11716_28171 PostMask@5 diz Ref__c)) (=> (HasDirectPerm_11716_28171 PostMask@5 diz Ref__c) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__c)))) (=> (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__c))) (=> (= (ControlFlow 0 2) (- 0 1)) (HasDirectPerm_11728_3178 PostMask@5 (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| PostHeap@0) diz Ref__c) tid) Ref__Integer_value)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon0_correct  (=> (and (state Heap@@19 ZeroMask) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_21119_11516_53#PolymorphicMapType_21119| Heap@@19) diz $allocated) (not (= diz null))) (and (state Heap@@19 ZeroMask) (>= current_thread_id 0))) (=> (and (and (and (and (state Heap@@19 ZeroMask) (<= 0 tid)) (and (state Heap@@19 ZeroMask) (< tid tcount))) (and (and (state Heap@@19 ZeroMask) (= tid lid)) (and (state Heap@@19 ZeroMask) (= tcount gsize)))) (and (and (and (state Heap@@19 ZeroMask) (= gid 0)) (and (state Heap@@19 ZeroMask) (> wildcard@0 NoPerm))) (and (and (not (= diz null)) (= Mask@0 (PolymorphicMapType_21140 (store (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| ZeroMask) diz Ref__a (+ (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| ZeroMask) diz Ref__a) wildcard@0)) (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| ZeroMask) (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| ZeroMask) (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| ZeroMask) (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| ZeroMask) (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| ZeroMask)))) (and (state Heap@@19 Mask@0) (state Heap@@19 Mask@0))))) (and (=> (= (ControlFlow 0 126) (- 0 143)) (HasDirectPerm_11716_28171 Mask@0 diz Ref__a)) (=> (HasDirectPerm_11716_28171 Mask@0 diz Ref__a) (=> (= (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__a)) tcount) (=> (and (state Heap@@19 Mask@0) (> wildcard@1 NoPerm)) (=> (and (and (not (= diz null)) (= Mask@1 (PolymorphicMapType_21140 (store (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@0) diz Ref__b (+ (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@0) diz Ref__b) wildcard@1)) (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@0) (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| Mask@0) (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| Mask@0) (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| Mask@0) (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| Mask@0)))) (and (state Heap@@19 Mask@1) (state Heap@@19 Mask@1))) (and (=> (= (ControlFlow 0 126) (- 0 142)) (HasDirectPerm_11716_28171 Mask@1 diz Ref__b)) (=> (HasDirectPerm_11716_28171 Mask@1 diz Ref__b) (=> (= (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__b)) tcount) (=> (and (state Heap@@19 Mask@1) (> wildcard@2 NoPerm)) (=> (and (and (not (= diz null)) (= Mask@2 (PolymorphicMapType_21140 (store (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@1) diz Ref__c (+ (select (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@1) diz Ref__c) wildcard@2)) (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@1) (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| Mask@1) (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| Mask@1) (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| Mask@1) (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| Mask@1)))) (and (state Heap@@19 Mask@2) (state Heap@@19 Mask@2))) (and (=> (= (ControlFlow 0 126) (- 0 141)) (HasDirectPerm_11716_28171 Mask@2 diz Ref__c)) (=> (HasDirectPerm_11716_28171 Mask@2 diz Ref__c) (=> (and (= (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__c)) tcount) (state Heap@@19 Mask@2)) (and (=> (= (ControlFlow 0 126) (- 0 140)) (HasDirectPerm_11716_28171 Mask@2 diz Ref__a)) (=> (HasDirectPerm_11716_28171 Mask@2 diz Ref__a) (and (=> (= (ControlFlow 0 126) (- 0 139)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 126) (- 0 138)) (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__a)))) (=> (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__a))) (=> (and (and (not (= (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__a) tid) null)) (= Mask@3 (PolymorphicMapType_21140 (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@2) (store (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@2) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__a) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@2) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__a) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| Mask@2) (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| Mask@2) (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| Mask@2) (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| Mask@2)))) (and (state Heap@@19 Mask@3) (state Heap@@19 Mask@3))) (and (=> (= (ControlFlow 0 126) (- 0 137)) (HasDirectPerm_11716_28171 Mask@3 diz Ref__b)) (=> (HasDirectPerm_11716_28171 Mask@3 diz Ref__b) (and (=> (= (ControlFlow 0 126) (- 0 136)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 126) (- 0 135)) (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__b)))) (=> (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__b))) (=> (and (and (not (= (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__b) tid) null)) (= Mask@4 (PolymorphicMapType_21140 (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@3) (store (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@3) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__b) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@3) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__b) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| Mask@3) (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| Mask@3) (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| Mask@3) (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| Mask@3)))) (and (state Heap@@19 Mask@4) (state Heap@@19 Mask@4))) (and (=> (= (ControlFlow 0 126) (- 0 134)) (HasDirectPerm_11716_28171 Mask@4 diz Ref__c)) (=> (HasDirectPerm_11716_28171 Mask@4 diz Ref__c) (and (=> (= (ControlFlow 0 126) (- 0 133)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 126) (- 0 132)) (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__c)))) (=> (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__c))) (=> (= perm@0 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 126) (- 0 131)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (and (and (=> (> perm@0 NoPerm) (not (= (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__c) tid) null))) (= Mask@5 (PolymorphicMapType_21140 (|PolymorphicMapType_21140_11716_28019#PolymorphicMapType_21140| Mask@4) (store (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@4) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__c) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_21140_11728_3178#PolymorphicMapType_21140| Mask@4) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__c) tid) Ref__Integer_value) perm@0)) (|PolymorphicMapType_21140_11716_53#PolymorphicMapType_21140| Mask@4) (|PolymorphicMapType_21140_11716_21193#PolymorphicMapType_21140| Mask@4) (|PolymorphicMapType_21140_11716_68381#PolymorphicMapType_21140| Mask@4) (|PolymorphicMapType_21140_11716_73208#PolymorphicMapType_21140| Mask@4)))) (and (state Heap@@19 Mask@5) (state Heap@@19 Mask@5))) (and (=> (= (ControlFlow 0 126) (- 0 130)) (HasDirectPerm_11716_28171 Mask@5 diz Ref__c)) (=> (HasDirectPerm_11716_28171 Mask@5 diz Ref__c) (and (=> (= (ControlFlow 0 126) (- 0 129)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 126) (- 0 128)) (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__c)))) (=> (< tid (|Seq#Length_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__c))) (and (=> (= (ControlFlow 0 126) (- 0 127)) (HasDirectPerm_11728_3178 Mask@5 (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__c) tid) Ref__Integer_value)) (=> (HasDirectPerm_11728_3178 Mask@5 (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__c) tid) Ref__Integer_value) (=> (and (> (select (|PolymorphicMapType_21119_11728_3178#PolymorphicMapType_21119| Heap@@19) (|Seq#Index_11717| (select (|PolymorphicMapType_21119_11716_28238#PolymorphicMapType_21119| Heap@@19) diz Ref__c) tid) Ref__Integer_value) 0) (state Heap@@19 Mask@5)) (and (=> (= (ControlFlow 0 126) 2) anon18_Then_correct) (=> (= (ControlFlow 0 126) 108) anon18_Else_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 144) 126)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid