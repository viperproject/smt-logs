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
(declare-sort T@Field_12301_53 0)
(declare-sort T@Field_12314_12315 0)
(declare-sort T@Field_21168_5059 0)
(declare-sort T@Field_8128_30654 0)
(declare-sort T@Field_8128_30521 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_12262 0)) (((PolymorphicMapType_12262 (|PolymorphicMapType_12262_8128_5059#PolymorphicMapType_12262| (Array T@Ref T@Field_21168_5059 Real)) (|PolymorphicMapType_12262_8128_53#PolymorphicMapType_12262| (Array T@Ref T@Field_12301_53 Real)) (|PolymorphicMapType_12262_8128_12315#PolymorphicMapType_12262| (Array T@Ref T@Field_12314_12315 Real)) (|PolymorphicMapType_12262_8128_30521#PolymorphicMapType_12262| (Array T@Ref T@Field_8128_30521 Real)) (|PolymorphicMapType_12262_8128_34776#PolymorphicMapType_12262| (Array T@Ref T@Field_8128_30654 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12790 0)) (((PolymorphicMapType_12790 (|PolymorphicMapType_12790_12301_53#PolymorphicMapType_12790| (Array T@Ref T@Field_12301_53 Bool)) (|PolymorphicMapType_12790_12301_12315#PolymorphicMapType_12790| (Array T@Ref T@Field_12314_12315 Bool)) (|PolymorphicMapType_12790_12301_5059#PolymorphicMapType_12790| (Array T@Ref T@Field_21168_5059 Bool)) (|PolymorphicMapType_12790_12301_30521#PolymorphicMapType_12790| (Array T@Ref T@Field_8128_30521 Bool)) (|PolymorphicMapType_12790_12301_31832#PolymorphicMapType_12790| (Array T@Ref T@Field_8128_30654 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12241 0)) (((PolymorphicMapType_12241 (|PolymorphicMapType_12241_7771_53#PolymorphicMapType_12241| (Array T@Ref T@Field_12301_53 Bool)) (|PolymorphicMapType_12241_7774_7775#PolymorphicMapType_12241| (Array T@Ref T@Field_12314_12315 T@Ref)) (|PolymorphicMapType_12241_8128_5059#PolymorphicMapType_12241| (Array T@Ref T@Field_21168_5059 Int)) (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| (Array T@Ref T@Field_8128_30654 T@PolymorphicMapType_12790)) (|PolymorphicMapType_12241_12301_30521#PolymorphicMapType_12241| (Array T@Ref T@Field_8128_30521 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_12301_53)
(declare-fun f_7 () T@Field_21168_5059)
(declare-sort T@Seq_21213 0)
(declare-fun |Seq#Length_8132| (T@Seq_21213) Int)
(declare-fun |Seq#Drop_8132| (T@Seq_21213 Int) T@Seq_21213)
(declare-sort T@Seq_2936 0)
(declare-fun |Seq#Length_2936| (T@Seq_2936) Int)
(declare-fun |Seq#Drop_2936| (T@Seq_2936 Int) T@Seq_2936)
(declare-fun succHeap (T@PolymorphicMapType_12241 T@PolymorphicMapType_12241) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_12241 T@PolymorphicMapType_12241) Bool)
(declare-fun state (T@PolymorphicMapType_12241 T@PolymorphicMapType_12262) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_12262) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_12790)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Seq#Index_8132| (T@Seq_21213 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2936| (T@Seq_2936 Int) Int)
(declare-fun |Seq#Empty_8132| () T@Seq_21213)
(declare-fun |Seq#Empty_2936| () T@Seq_2936)
(declare-fun |Seq#Update_8132| (T@Seq_21213 Int T@Ref) T@Seq_21213)
(declare-fun |Seq#Update_2936| (T@Seq_2936 Int Int) T@Seq_2936)
(declare-fun |Set#Union_8157| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_8157| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_8157| (T@Ref) (Array T@Ref Bool))
(declare-fun |Seq#Take_8132| (T@Seq_21213 Int) T@Seq_21213)
(declare-fun |Seq#Take_2936| (T@Seq_2936 Int) T@Seq_2936)
(declare-fun |Seq#Contains_2936| (T@Seq_2936 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2936)
(declare-fun |Set#Card_8157| ((Array T@Ref Bool)) Int)
(declare-fun |Seq#Contains_21213| (T@Seq_21213 T@Ref) Bool)
(declare-fun |Seq#Skolem_21213| (T@Seq_21213 T@Ref) Int)
(declare-fun |Seq#Skolem_2936| (T@Seq_2936 Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_12241 T@PolymorphicMapType_12241 T@PolymorphicMapType_12262) Bool)
(declare-fun IsPredicateField_8128_30612 (T@Field_8128_30521) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_8128 (T@Field_8128_30521) T@Field_8128_30654)
(declare-fun HasDirectPerm_8128_30585 (T@PolymorphicMapType_12262 T@Ref T@Field_8128_30521) Bool)
(declare-fun IsWandField_8128_32359 (T@Field_8128_30521) Bool)
(declare-fun WandMaskField_8128 (T@Field_8128_30521) T@Field_8128_30654)
(declare-fun |Seq#Singleton_8132| (T@Ref) T@Seq_21213)
(declare-fun |Seq#Singleton_2936| (Int) T@Seq_2936)
(declare-fun |Seq#Append_21213| (T@Seq_21213 T@Seq_21213) T@Seq_21213)
(declare-fun |Seq#Append_2936| (T@Seq_2936 T@Seq_2936) T@Seq_2936)
(declare-fun dummyHeap () T@PolymorphicMapType_12241)
(declare-fun ZeroMask () T@PolymorphicMapType_12262)
(declare-fun InsidePredicate_12301_12301 (T@Field_8128_30521 T@FrameType T@Field_8128_30521 T@FrameType) Bool)
(declare-fun IsPredicateField_8128_5059 (T@Field_21168_5059) Bool)
(declare-fun IsWandField_8128_5059 (T@Field_21168_5059) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8128_35905 (T@Field_8128_30654) Bool)
(declare-fun IsWandField_8128_35921 (T@Field_8128_30654) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8128_12315 (T@Field_12314_12315) Bool)
(declare-fun IsWandField_8128_12315 (T@Field_12314_12315) Bool)
(declare-fun IsPredicateField_8128_53 (T@Field_12301_53) Bool)
(declare-fun IsWandField_8128_53 (T@Field_12301_53) Bool)
(declare-fun HasDirectPerm_8128_36359 (T@PolymorphicMapType_12262 T@Ref T@Field_8128_30654) Bool)
(declare-fun HasDirectPerm_8128_12315 (T@PolymorphicMapType_12262 T@Ref T@Field_12314_12315) Bool)
(declare-fun HasDirectPerm_8128_53 (T@PolymorphicMapType_12262 T@Ref T@Field_12301_53) Bool)
(declare-fun HasDirectPerm_8128_5059 (T@PolymorphicMapType_12262 T@Ref T@Field_21168_5059) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_12262 T@PolymorphicMapType_12262 T@PolymorphicMapType_12262) Bool)
(declare-fun |Set#Difference_8157| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Seq#Equal_21213| (T@Seq_21213 T@Seq_21213) Bool)
(declare-fun |Seq#Equal_2936| (T@Seq_2936 T@Seq_2936) Bool)
(declare-fun |Set#UnionOne_8157| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |Seq#ContainsTrigger_8132| (T@Seq_21213 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2936| (T@Seq_2936 Int) Bool)
(declare-fun |Set#Empty_8157| () (Array T@Ref Bool))
(declare-fun |Seq#SkolemDiff_21213| (T@Seq_21213 T@Seq_21213) Int)
(declare-fun |Seq#SkolemDiff_2936| (T@Seq_2936 T@Seq_2936) Int)
(assert (forall ((s T@Seq_21213) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_8132| s)) (= (|Seq#Length_8132| (|Seq#Drop_8132| s n)) (- (|Seq#Length_8132| s) n))) (=> (< (|Seq#Length_8132| s) n) (= (|Seq#Length_8132| (|Seq#Drop_8132| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_8132| (|Seq#Drop_8132| s n)) (|Seq#Length_8132| s))))
 :qid |stdinbpl.294:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_8132| (|Seq#Drop_8132| s n)))
 :pattern ( (|Seq#Length_8132| s) (|Seq#Drop_8132| s n))
)))
(assert (forall ((s@@0 T@Seq_2936) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2936| s@@0)) (= (|Seq#Length_2936| (|Seq#Drop_2936| s@@0 n@@0)) (- (|Seq#Length_2936| s@@0) n@@0))) (=> (< (|Seq#Length_2936| s@@0) n@@0) (= (|Seq#Length_2936| (|Seq#Drop_2936| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2936| (|Seq#Drop_2936| s@@0 n@@0)) (|Seq#Length_2936| s@@0))))
 :qid |stdinbpl.294:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2936| (|Seq#Drop_2936| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2936| s@@0) (|Seq#Drop_2936| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_12241) (Heap1 T@PolymorphicMapType_12241) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_12241) (Mask T@PolymorphicMapType_12262) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_12241) (Heap1@@0 T@PolymorphicMapType_12241) (Heap2 T@PolymorphicMapType_12241) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_8128_30654) ) (!  (not (select (|PolymorphicMapType_12790_12301_31832#PolymorphicMapType_12790| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12790_12301_31832#PolymorphicMapType_12790| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_8128_30521) ) (!  (not (select (|PolymorphicMapType_12790_12301_30521#PolymorphicMapType_12790| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12790_12301_30521#PolymorphicMapType_12790| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_21168_5059) ) (!  (not (select (|PolymorphicMapType_12790_12301_5059#PolymorphicMapType_12790| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12790_12301_5059#PolymorphicMapType_12790| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_12314_12315) ) (!  (not (select (|PolymorphicMapType_12790_12301_12315#PolymorphicMapType_12790| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12790_12301_12315#PolymorphicMapType_12790| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_12301_53) ) (!  (not (select (|PolymorphicMapType_12790_12301_53#PolymorphicMapType_12790| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12790_12301_53#PolymorphicMapType_12790| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.658:15|
 :skolemid |89|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((s@@1 T@Seq_21213) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_8132| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_8132| (|Seq#Drop_8132| s@@1 n@@1) j) (|Seq#Index_8132| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.315:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_8132| (|Seq#Drop_8132| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2936) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2936| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2936| (|Seq#Drop_2936| s@@2 n@@2) j@@0) (|Seq#Index_2936| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.315:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2936| (|Seq#Drop_2936| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_8132| |Seq#Empty_8132|) 0))
(assert (= (|Seq#Length_2936| |Seq#Empty_2936|) 0))
(assert (forall ((s@@3 T@Seq_21213) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_8132| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_8132| (|Seq#Update_8132| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_8132| (|Seq#Update_8132| s@@3 i v) n@@3) (|Seq#Index_8132| s@@3 n@@3)))))
 :qid |stdinbpl.270:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_8132| (|Seq#Update_8132| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_8132| s@@3 n@@3) (|Seq#Update_8132| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_2936) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2936| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_2936| (|Seq#Update_2936| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_2936| (|Seq#Update_2936| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_2936| s@@4 n@@4)))))
 :qid |stdinbpl.270:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2936| (|Seq#Update_2936| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_2936| s@@4 n@@4) (|Seq#Update_2936| s@@4 i@@0 v@@0))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_8157| (|Set#Union_8157| a@@0 b@@0) b@@0) (|Set#Union_8157| a@@0 b@@0))
 :qid |stdinbpl.610:18|
 :skolemid |74|
 :pattern ( (|Set#Union_8157| (|Set#Union_8157| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_8157| (|Set#Intersection_8157| a@@1 b@@1) b@@1) (|Set#Intersection_8157| a@@1 b@@1))
 :qid |stdinbpl.614:18|
 :skolemid |76|
 :pattern ( (|Set#Intersection_8157| (|Set#Intersection_8157| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_8157| r) o) (= r o))
 :qid |stdinbpl.579:18|
 :skolemid |63|
 :pattern ( (select (|Set#Singleton_8157| r) o))
)))
(assert (forall ((s@@5 T@Seq_21213) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_8132| s@@5)) (= (|Seq#Length_8132| (|Seq#Take_8132| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_8132| s@@5) n@@5) (= (|Seq#Length_8132| (|Seq#Take_8132| s@@5 n@@5)) (|Seq#Length_8132| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_8132| (|Seq#Take_8132| s@@5 n@@5)) 0)))
 :qid |stdinbpl.281:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_8132| (|Seq#Take_8132| s@@5 n@@5)))
 :pattern ( (|Seq#Take_8132| s@@5 n@@5) (|Seq#Length_8132| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2936) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2936| s@@6)) (= (|Seq#Length_2936| (|Seq#Take_2936| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2936| s@@6) n@@6) (= (|Seq#Length_2936| (|Seq#Take_2936| s@@6 n@@6)) (|Seq#Length_2936| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2936| (|Seq#Take_2936| s@@6 n@@6)) 0)))
 :qid |stdinbpl.281:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2936| (|Seq#Take_2936| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2936| s@@6 n@@6) (|Seq#Length_2936| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2936| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.555:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2936| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_8157| (|Set#Union_8157| a@@2 b@@2)) (|Set#Card_8157| (|Set#Intersection_8157| a@@2 b@@2))) (+ (|Set#Card_8157| a@@2) (|Set#Card_8157| b@@2)))
 :qid |stdinbpl.618:18|
 :skolemid |78|
 :pattern ( (|Set#Card_8157| (|Set#Union_8157| a@@2 b@@2)))
 :pattern ( (|Set#Card_8157| (|Set#Intersection_8157| a@@2 b@@2)))
)))
(assert (forall ((s@@7 T@Seq_21213) (x T@Ref) ) (!  (=> (|Seq#Contains_21213| s@@7 x) (and (and (<= 0 (|Seq#Skolem_21213| s@@7 x)) (< (|Seq#Skolem_21213| s@@7 x) (|Seq#Length_8132| s@@7))) (= (|Seq#Index_8132| s@@7 (|Seq#Skolem_21213| s@@7 x)) x)))
 :qid |stdinbpl.413:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_21213| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2936) (x@@0 Int) ) (!  (=> (|Seq#Contains_2936| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2936| s@@8 x@@0)) (< (|Seq#Skolem_2936| s@@8 x@@0) (|Seq#Length_2936| s@@8))) (= (|Seq#Index_2936| s@@8 (|Seq#Skolem_2936| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.413:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2936| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_21213) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_8132| s@@9 n@@7) s@@9))
 :qid |stdinbpl.397:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_8132| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2936) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2936| s@@10 n@@8) s@@10))
 :qid |stdinbpl.397:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2936| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.250:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.248:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.661:15|
 :skolemid |90|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_12241) (ExhaleHeap T@PolymorphicMapType_12241) (Mask@@0 T@PolymorphicMapType_12262) (pm_f_11 T@Field_8128_30521) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_8128_30585 Mask@@0 null pm_f_11) (IsPredicateField_8128_30612 pm_f_11)) (= (select (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| Heap@@0) null (PredicateMaskField_8128 pm_f_11)) (select (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| ExhaleHeap) null (PredicateMaskField_8128 pm_f_11)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_8128_30612 pm_f_11) (select (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| ExhaleHeap) null (PredicateMaskField_8128 pm_f_11)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_12241) (ExhaleHeap@@0 T@PolymorphicMapType_12241) (Mask@@1 T@PolymorphicMapType_12262) (pm_f_11@@0 T@Field_8128_30521) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_8128_30585 Mask@@1 null pm_f_11@@0) (IsWandField_8128_32359 pm_f_11@@0)) (= (select (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| Heap@@1) null (WandMaskField_8128 pm_f_11@@0)) (select (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| ExhaleHeap@@0) null (WandMaskField_8128 pm_f_11@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_8128_32359 pm_f_11@@0) (select (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| ExhaleHeap@@0) null (WandMaskField_8128 pm_f_11@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_21213| (|Seq#Singleton_8132| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.538:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_21213| (|Seq#Singleton_8132| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2936| (|Seq#Singleton_2936| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.538:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2936| (|Seq#Singleton_2936| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_21213) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_8132| s@@11))) (= (|Seq#Index_8132| (|Seq#Take_8132| s@@11 n@@9) j@@3) (|Seq#Index_8132| s@@11 j@@3)))
 :qid |stdinbpl.289:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_8132| (|Seq#Take_8132| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_8132| s@@11 j@@3) (|Seq#Take_8132| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2936) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2936| s@@12))) (= (|Seq#Index_2936| (|Seq#Take_2936| s@@12 n@@10) j@@4) (|Seq#Index_2936| s@@12 j@@4)))
 :qid |stdinbpl.289:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2936| (|Seq#Take_2936| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2936| s@@12 j@@4) (|Seq#Take_2936| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_21213) (t T@Seq_21213) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_8132| s@@13))) (< n@@11 (|Seq#Length_8132| (|Seq#Append_21213| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_8132| s@@13)) (|Seq#Length_8132| s@@13)) n@@11) (= (|Seq#Take_8132| (|Seq#Append_21213| s@@13 t) n@@11) (|Seq#Append_21213| s@@13 (|Seq#Take_8132| t (|Seq#Sub| n@@11 (|Seq#Length_8132| s@@13)))))))
 :qid |stdinbpl.374:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_8132| (|Seq#Append_21213| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2936) (t@@0 T@Seq_2936) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2936| s@@14))) (< n@@12 (|Seq#Length_2936| (|Seq#Append_2936| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2936| s@@14)) (|Seq#Length_2936| s@@14)) n@@12) (= (|Seq#Take_2936| (|Seq#Append_2936| s@@14 t@@0) n@@12) (|Seq#Append_2936| s@@14 (|Seq#Take_2936| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2936| s@@14)))))))
 :qid |stdinbpl.374:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2936| (|Seq#Append_2936| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12241) (ExhaleHeap@@1 T@PolymorphicMapType_12241) (Mask@@2 T@PolymorphicMapType_12262) (o_31 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_12241_7771_53#PolymorphicMapType_12241| Heap@@2) o_31 $allocated) (select (|PolymorphicMapType_12241_7771_53#PolymorphicMapType_12241| ExhaleHeap@@1) o_31 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_12241_7771_53#PolymorphicMapType_12241| ExhaleHeap@@1) o_31 $allocated))
)))
(assert (forall ((p T@Field_8128_30521) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12301_12301 p v_1 p w))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12301_12301 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_21213) (s1 T@Seq_21213) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_8132|)) (not (= s1 |Seq#Empty_8132|))) (<= (|Seq#Length_8132| s0) n@@13)) (< n@@13 (|Seq#Length_8132| (|Seq#Append_21213| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_8132| s0)) (|Seq#Length_8132| s0)) n@@13) (= (|Seq#Index_8132| (|Seq#Append_21213| s0 s1) n@@13) (|Seq#Index_8132| s1 (|Seq#Sub| n@@13 (|Seq#Length_8132| s0))))))
 :qid |stdinbpl.261:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_8132| (|Seq#Append_21213| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2936) (s1@@0 T@Seq_2936) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2936|)) (not (= s1@@0 |Seq#Empty_2936|))) (<= (|Seq#Length_2936| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2936| (|Seq#Append_2936| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2936| s0@@0)) (|Seq#Length_2936| s0@@0)) n@@14) (= (|Seq#Index_2936| (|Seq#Append_2936| s0@@0 s1@@0) n@@14) (|Seq#Index_2936| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2936| s0@@0))))))
 :qid |stdinbpl.261:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2936| (|Seq#Append_2936| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_8128_5059 f_7)))
(assert  (not (IsWandField_8128_5059 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12241) (ExhaleHeap@@2 T@PolymorphicMapType_12241) (Mask@@3 T@PolymorphicMapType_12262) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_12262) (o_2@@4 T@Ref) (f_4@@4 T@Field_8128_30654) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_12262_8128_34776#PolymorphicMapType_12262| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_8128_35905 f_4@@4))) (not (IsWandField_8128_35921 f_4@@4))) (<= (select (|PolymorphicMapType_12262_8128_34776#PolymorphicMapType_12262| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_12262_8128_34776#PolymorphicMapType_12262| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_12262) (o_2@@5 T@Ref) (f_4@@5 T@Field_8128_30521) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_12262_8128_30521#PolymorphicMapType_12262| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_8128_30612 f_4@@5))) (not (IsWandField_8128_32359 f_4@@5))) (<= (select (|PolymorphicMapType_12262_8128_30521#PolymorphicMapType_12262| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_12262_8128_30521#PolymorphicMapType_12262| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_12262) (o_2@@6 T@Ref) (f_4@@6 T@Field_12314_12315) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_12262_8128_12315#PolymorphicMapType_12262| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_8128_12315 f_4@@6))) (not (IsWandField_8128_12315 f_4@@6))) (<= (select (|PolymorphicMapType_12262_8128_12315#PolymorphicMapType_12262| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_12262_8128_12315#PolymorphicMapType_12262| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_12262) (o_2@@7 T@Ref) (f_4@@7 T@Field_12301_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_12262_8128_53#PolymorphicMapType_12262| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_8128_53 f_4@@7))) (not (IsWandField_8128_53 f_4@@7))) (<= (select (|PolymorphicMapType_12262_8128_53#PolymorphicMapType_12262| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_12262_8128_53#PolymorphicMapType_12262| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_12262) (o_2@@8 T@Ref) (f_4@@8 T@Field_21168_5059) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_12262_8128_5059#PolymorphicMapType_12262| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_8128_5059 f_4@@8))) (not (IsWandField_8128_5059 f_4@@8))) (<= (select (|PolymorphicMapType_12262_8128_5059#PolymorphicMapType_12262| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_12262_8128_5059#PolymorphicMapType_12262| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_12262) (o_2@@9 T@Ref) (f_4@@9 T@Field_8128_30654) ) (! (= (HasDirectPerm_8128_36359 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_12262_8128_34776#PolymorphicMapType_12262| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8128_36359 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_12262) (o_2@@10 T@Ref) (f_4@@10 T@Field_8128_30521) ) (! (= (HasDirectPerm_8128_30585 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_12262_8128_30521#PolymorphicMapType_12262| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8128_30585 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_12262) (o_2@@11 T@Ref) (f_4@@11 T@Field_12314_12315) ) (! (= (HasDirectPerm_8128_12315 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_12262_8128_12315#PolymorphicMapType_12262| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8128_12315 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_12262) (o_2@@12 T@Ref) (f_4@@12 T@Field_12301_53) ) (! (= (HasDirectPerm_8128_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_12262_8128_53#PolymorphicMapType_12262| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8128_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_12262) (o_2@@13 T@Ref) (f_4@@13 T@Field_21168_5059) ) (! (= (HasDirectPerm_8128_5059 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_12262_8128_5059#PolymorphicMapType_12262| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8128_5059 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12241) (ExhaleHeap@@3 T@PolymorphicMapType_12241) (Mask@@14 T@PolymorphicMapType_12262) (pm_f_11@@1 T@Field_8128_30521) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_8128_30585 Mask@@14 null pm_f_11@@1) (IsPredicateField_8128_30612 pm_f_11@@1)) (and (and (and (and (forall ((o2_11 T@Ref) (f_36 T@Field_12301_53) ) (!  (=> (select (|PolymorphicMapType_12790_12301_53#PolymorphicMapType_12790| (select (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| Heap@@4) null (PredicateMaskField_8128 pm_f_11@@1))) o2_11 f_36) (= (select (|PolymorphicMapType_12241_7771_53#PolymorphicMapType_12241| Heap@@4) o2_11 f_36) (select (|PolymorphicMapType_12241_7771_53#PolymorphicMapType_12241| ExhaleHeap@@3) o2_11 f_36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12241_7771_53#PolymorphicMapType_12241| ExhaleHeap@@3) o2_11 f_36))
)) (forall ((o2_11@@0 T@Ref) (f_36@@0 T@Field_12314_12315) ) (!  (=> (select (|PolymorphicMapType_12790_12301_12315#PolymorphicMapType_12790| (select (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| Heap@@4) null (PredicateMaskField_8128 pm_f_11@@1))) o2_11@@0 f_36@@0) (= (select (|PolymorphicMapType_12241_7774_7775#PolymorphicMapType_12241| Heap@@4) o2_11@@0 f_36@@0) (select (|PolymorphicMapType_12241_7774_7775#PolymorphicMapType_12241| ExhaleHeap@@3) o2_11@@0 f_36@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12241_7774_7775#PolymorphicMapType_12241| ExhaleHeap@@3) o2_11@@0 f_36@@0))
))) (forall ((o2_11@@1 T@Ref) (f_36@@1 T@Field_21168_5059) ) (!  (=> (select (|PolymorphicMapType_12790_12301_5059#PolymorphicMapType_12790| (select (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| Heap@@4) null (PredicateMaskField_8128 pm_f_11@@1))) o2_11@@1 f_36@@1) (= (select (|PolymorphicMapType_12241_8128_5059#PolymorphicMapType_12241| Heap@@4) o2_11@@1 f_36@@1) (select (|PolymorphicMapType_12241_8128_5059#PolymorphicMapType_12241| ExhaleHeap@@3) o2_11@@1 f_36@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12241_8128_5059#PolymorphicMapType_12241| ExhaleHeap@@3) o2_11@@1 f_36@@1))
))) (forall ((o2_11@@2 T@Ref) (f_36@@2 T@Field_8128_30521) ) (!  (=> (select (|PolymorphicMapType_12790_12301_30521#PolymorphicMapType_12790| (select (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| Heap@@4) null (PredicateMaskField_8128 pm_f_11@@1))) o2_11@@2 f_36@@2) (= (select (|PolymorphicMapType_12241_12301_30521#PolymorphicMapType_12241| Heap@@4) o2_11@@2 f_36@@2) (select (|PolymorphicMapType_12241_12301_30521#PolymorphicMapType_12241| ExhaleHeap@@3) o2_11@@2 f_36@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12241_12301_30521#PolymorphicMapType_12241| ExhaleHeap@@3) o2_11@@2 f_36@@2))
))) (forall ((o2_11@@3 T@Ref) (f_36@@3 T@Field_8128_30654) ) (!  (=> (select (|PolymorphicMapType_12790_12301_31832#PolymorphicMapType_12790| (select (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| Heap@@4) null (PredicateMaskField_8128 pm_f_11@@1))) o2_11@@3 f_36@@3) (= (select (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| Heap@@4) o2_11@@3 f_36@@3) (select (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| ExhaleHeap@@3) o2_11@@3 f_36@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| ExhaleHeap@@3) o2_11@@3 f_36@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_8128_30612 pm_f_11@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12241) (ExhaleHeap@@4 T@PolymorphicMapType_12241) (Mask@@15 T@PolymorphicMapType_12262) (pm_f_11@@2 T@Field_8128_30521) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_8128_30585 Mask@@15 null pm_f_11@@2) (IsWandField_8128_32359 pm_f_11@@2)) (and (and (and (and (forall ((o2_11@@4 T@Ref) (f_36@@4 T@Field_12301_53) ) (!  (=> (select (|PolymorphicMapType_12790_12301_53#PolymorphicMapType_12790| (select (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| Heap@@5) null (WandMaskField_8128 pm_f_11@@2))) o2_11@@4 f_36@@4) (= (select (|PolymorphicMapType_12241_7771_53#PolymorphicMapType_12241| Heap@@5) o2_11@@4 f_36@@4) (select (|PolymorphicMapType_12241_7771_53#PolymorphicMapType_12241| ExhaleHeap@@4) o2_11@@4 f_36@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12241_7771_53#PolymorphicMapType_12241| ExhaleHeap@@4) o2_11@@4 f_36@@4))
)) (forall ((o2_11@@5 T@Ref) (f_36@@5 T@Field_12314_12315) ) (!  (=> (select (|PolymorphicMapType_12790_12301_12315#PolymorphicMapType_12790| (select (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| Heap@@5) null (WandMaskField_8128 pm_f_11@@2))) o2_11@@5 f_36@@5) (= (select (|PolymorphicMapType_12241_7774_7775#PolymorphicMapType_12241| Heap@@5) o2_11@@5 f_36@@5) (select (|PolymorphicMapType_12241_7774_7775#PolymorphicMapType_12241| ExhaleHeap@@4) o2_11@@5 f_36@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12241_7774_7775#PolymorphicMapType_12241| ExhaleHeap@@4) o2_11@@5 f_36@@5))
))) (forall ((o2_11@@6 T@Ref) (f_36@@6 T@Field_21168_5059) ) (!  (=> (select (|PolymorphicMapType_12790_12301_5059#PolymorphicMapType_12790| (select (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| Heap@@5) null (WandMaskField_8128 pm_f_11@@2))) o2_11@@6 f_36@@6) (= (select (|PolymorphicMapType_12241_8128_5059#PolymorphicMapType_12241| Heap@@5) o2_11@@6 f_36@@6) (select (|PolymorphicMapType_12241_8128_5059#PolymorphicMapType_12241| ExhaleHeap@@4) o2_11@@6 f_36@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12241_8128_5059#PolymorphicMapType_12241| ExhaleHeap@@4) o2_11@@6 f_36@@6))
))) (forall ((o2_11@@7 T@Ref) (f_36@@7 T@Field_8128_30521) ) (!  (=> (select (|PolymorphicMapType_12790_12301_30521#PolymorphicMapType_12790| (select (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| Heap@@5) null (WandMaskField_8128 pm_f_11@@2))) o2_11@@7 f_36@@7) (= (select (|PolymorphicMapType_12241_12301_30521#PolymorphicMapType_12241| Heap@@5) o2_11@@7 f_36@@7) (select (|PolymorphicMapType_12241_12301_30521#PolymorphicMapType_12241| ExhaleHeap@@4) o2_11@@7 f_36@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12241_12301_30521#PolymorphicMapType_12241| ExhaleHeap@@4) o2_11@@7 f_36@@7))
))) (forall ((o2_11@@8 T@Ref) (f_36@@8 T@Field_8128_30654) ) (!  (=> (select (|PolymorphicMapType_12790_12301_31832#PolymorphicMapType_12790| (select (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| Heap@@5) null (WandMaskField_8128 pm_f_11@@2))) o2_11@@8 f_36@@8) (= (select (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| Heap@@5) o2_11@@8 f_36@@8) (select (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| ExhaleHeap@@4) o2_11@@8 f_36@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| ExhaleHeap@@4) o2_11@@8 f_36@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_8128_32359 pm_f_11@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.180:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2936| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.553:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2936| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_12241) (ExhaleHeap@@5 T@PolymorphicMapType_12241) (Mask@@16 T@PolymorphicMapType_12262) (o_31@@0 T@Ref) (f_36@@9 T@Field_8128_30654) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_8128_36359 Mask@@16 o_31@@0 f_36@@9) (= (select (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| Heap@@6) o_31@@0 f_36@@9) (select (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| ExhaleHeap@@5) o_31@@0 f_36@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| ExhaleHeap@@5) o_31@@0 f_36@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12241) (ExhaleHeap@@6 T@PolymorphicMapType_12241) (Mask@@17 T@PolymorphicMapType_12262) (o_31@@1 T@Ref) (f_36@@10 T@Field_8128_30521) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_8128_30585 Mask@@17 o_31@@1 f_36@@10) (= (select (|PolymorphicMapType_12241_12301_30521#PolymorphicMapType_12241| Heap@@7) o_31@@1 f_36@@10) (select (|PolymorphicMapType_12241_12301_30521#PolymorphicMapType_12241| ExhaleHeap@@6) o_31@@1 f_36@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_12241_12301_30521#PolymorphicMapType_12241| ExhaleHeap@@6) o_31@@1 f_36@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12241) (ExhaleHeap@@7 T@PolymorphicMapType_12241) (Mask@@18 T@PolymorphicMapType_12262) (o_31@@2 T@Ref) (f_36@@11 T@Field_12314_12315) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_8128_12315 Mask@@18 o_31@@2 f_36@@11) (= (select (|PolymorphicMapType_12241_7774_7775#PolymorphicMapType_12241| Heap@@8) o_31@@2 f_36@@11) (select (|PolymorphicMapType_12241_7774_7775#PolymorphicMapType_12241| ExhaleHeap@@7) o_31@@2 f_36@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_12241_7774_7775#PolymorphicMapType_12241| ExhaleHeap@@7) o_31@@2 f_36@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12241) (ExhaleHeap@@8 T@PolymorphicMapType_12241) (Mask@@19 T@PolymorphicMapType_12262) (o_31@@3 T@Ref) (f_36@@12 T@Field_12301_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_8128_53 Mask@@19 o_31@@3 f_36@@12) (= (select (|PolymorphicMapType_12241_7771_53#PolymorphicMapType_12241| Heap@@9) o_31@@3 f_36@@12) (select (|PolymorphicMapType_12241_7771_53#PolymorphicMapType_12241| ExhaleHeap@@8) o_31@@3 f_36@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_12241_7771_53#PolymorphicMapType_12241| ExhaleHeap@@8) o_31@@3 f_36@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12241) (ExhaleHeap@@9 T@PolymorphicMapType_12241) (Mask@@20 T@PolymorphicMapType_12262) (o_31@@4 T@Ref) (f_36@@13 T@Field_21168_5059) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_8128_5059 Mask@@20 o_31@@4 f_36@@13) (= (select (|PolymorphicMapType_12241_8128_5059#PolymorphicMapType_12241| Heap@@10) o_31@@4 f_36@@13) (select (|PolymorphicMapType_12241_8128_5059#PolymorphicMapType_12241| ExhaleHeap@@9) o_31@@4 f_36@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_12241_8128_5059#PolymorphicMapType_12241| ExhaleHeap@@9) o_31@@4 f_36@@13))
)))
(assert (forall ((s0@@1 T@Seq_21213) (s1@@1 T@Seq_21213) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_8132|)) (not (= s1@@1 |Seq#Empty_8132|))) (= (|Seq#Length_8132| (|Seq#Append_21213| s0@@1 s1@@1)) (+ (|Seq#Length_8132| s0@@1) (|Seq#Length_8132| s1@@1))))
 :qid |stdinbpl.230:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_8132| (|Seq#Append_21213| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2936) (s1@@2 T@Seq_2936) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2936|)) (not (= s1@@2 |Seq#Empty_2936|))) (= (|Seq#Length_2936| (|Seq#Append_2936| s0@@2 s1@@2)) (+ (|Seq#Length_2936| s0@@2) (|Seq#Length_2936| s1@@2))))
 :qid |stdinbpl.230:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2936| (|Seq#Append_2936| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_8128_30654) ) (! (= (select (|PolymorphicMapType_12262_8128_34776#PolymorphicMapType_12262| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12262_8128_34776#PolymorphicMapType_12262| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_8128_30521) ) (! (= (select (|PolymorphicMapType_12262_8128_30521#PolymorphicMapType_12262| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12262_8128_30521#PolymorphicMapType_12262| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_12314_12315) ) (! (= (select (|PolymorphicMapType_12262_8128_12315#PolymorphicMapType_12262| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12262_8128_12315#PolymorphicMapType_12262| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_12301_53) ) (! (= (select (|PolymorphicMapType_12262_8128_53#PolymorphicMapType_12262| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12262_8128_53#PolymorphicMapType_12262| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_21168_5059) ) (! (= (select (|PolymorphicMapType_12262_8128_5059#PolymorphicMapType_12262| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12262_8128_5059#PolymorphicMapType_12262| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_21213) (t@@1 T@Seq_21213) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_8132| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_8132| s@@15)) (|Seq#Length_8132| s@@15)) n@@15) (= (|Seq#Drop_8132| (|Seq#Append_21213| s@@15 t@@1) n@@15) (|Seq#Drop_8132| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_8132| s@@15))))))
 :qid |stdinbpl.387:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_8132| (|Seq#Append_21213| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2936) (t@@2 T@Seq_2936) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2936| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2936| s@@16)) (|Seq#Length_2936| s@@16)) n@@16) (= (|Seq#Drop_2936| (|Seq#Append_2936| s@@16 t@@2) n@@16) (|Seq#Drop_2936| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2936| s@@16))))))
 :qid |stdinbpl.387:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2936| (|Seq#Append_2936| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12262) (SummandMask1 T@PolymorphicMapType_12262) (SummandMask2 T@PolymorphicMapType_12262) (o_2@@19 T@Ref) (f_4@@19 T@Field_8128_30654) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12262_8128_34776#PolymorphicMapType_12262| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_12262_8128_34776#PolymorphicMapType_12262| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_12262_8128_34776#PolymorphicMapType_12262| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12262_8128_34776#PolymorphicMapType_12262| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12262_8128_34776#PolymorphicMapType_12262| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12262_8128_34776#PolymorphicMapType_12262| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12262) (SummandMask1@@0 T@PolymorphicMapType_12262) (SummandMask2@@0 T@PolymorphicMapType_12262) (o_2@@20 T@Ref) (f_4@@20 T@Field_8128_30521) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12262_8128_30521#PolymorphicMapType_12262| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_12262_8128_30521#PolymorphicMapType_12262| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_12262_8128_30521#PolymorphicMapType_12262| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12262_8128_30521#PolymorphicMapType_12262| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12262_8128_30521#PolymorphicMapType_12262| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12262_8128_30521#PolymorphicMapType_12262| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12262) (SummandMask1@@1 T@PolymorphicMapType_12262) (SummandMask2@@1 T@PolymorphicMapType_12262) (o_2@@21 T@Ref) (f_4@@21 T@Field_12314_12315) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12262_8128_12315#PolymorphicMapType_12262| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_12262_8128_12315#PolymorphicMapType_12262| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_12262_8128_12315#PolymorphicMapType_12262| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12262_8128_12315#PolymorphicMapType_12262| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12262_8128_12315#PolymorphicMapType_12262| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12262_8128_12315#PolymorphicMapType_12262| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12262) (SummandMask1@@2 T@PolymorphicMapType_12262) (SummandMask2@@2 T@PolymorphicMapType_12262) (o_2@@22 T@Ref) (f_4@@22 T@Field_12301_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12262_8128_53#PolymorphicMapType_12262| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_12262_8128_53#PolymorphicMapType_12262| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_12262_8128_53#PolymorphicMapType_12262| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12262_8128_53#PolymorphicMapType_12262| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12262_8128_53#PolymorphicMapType_12262| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12262_8128_53#PolymorphicMapType_12262| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_12262) (SummandMask1@@3 T@PolymorphicMapType_12262) (SummandMask2@@3 T@PolymorphicMapType_12262) (o_2@@23 T@Ref) (f_4@@23 T@Field_21168_5059) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_12262_8128_5059#PolymorphicMapType_12262| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_12262_8128_5059#PolymorphicMapType_12262| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_12262_8128_5059#PolymorphicMapType_12262| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12262_8128_5059#PolymorphicMapType_12262| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12262_8128_5059#PolymorphicMapType_12262| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12262_8128_5059#PolymorphicMapType_12262| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_8157| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.607:18|
 :skolemid |73|
 :pattern ( (select (|Set#Intersection_8157| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_8157| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_8157| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2936| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2936| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.552:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2936| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_8157| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.622:18|
 :skolemid |79|
 :pattern ( (select (|Set#Difference_8157| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_8157| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 T@Seq_21213) (b@@5 T@Seq_21213) ) (!  (=> (|Seq#Equal_21213| a@@6 b@@5) (= a@@6 b@@5))
 :qid |stdinbpl.525:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_21213| a@@6 b@@5))
)))
(assert (forall ((a@@7 T@Seq_2936) (b@@6 T@Seq_2936) ) (!  (=> (|Seq#Equal_2936| a@@7 b@@6) (= a@@7 b@@6))
 :qid |stdinbpl.525:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2936| a@@7 b@@6))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (x@@3 T@Ref) (y@@1 T@Ref) ) (!  (=> (select a@@8 y@@1) (select (|Set#UnionOne_8157| a@@8 x@@3) y@@1))
 :qid |stdinbpl.587:18|
 :skolemid |67|
 :pattern ( (|Set#UnionOne_8157| a@@8 x@@3) (select a@@8 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select a@@9 y@@2) (select (|Set#Union_8157| a@@9 b@@7) y@@2))
 :qid |stdinbpl.597:18|
 :skolemid |71|
 :pattern ( (|Set#Union_8157| a@@9 b@@7) (select a@@9 y@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) (y@@3 T@Ref) ) (!  (=> (select b@@8 y@@3) (select (|Set#Union_8157| a@@10 b@@8) y@@3))
 :qid |stdinbpl.599:18|
 :skolemid |72|
 :pattern ( (|Set#Union_8157| a@@10 b@@8) (select b@@8 y@@3))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (x@@4 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_8157| a@@11 x@@4) o@@2)  (or (= o@@2 x@@4) (select a@@11 o@@2)))
 :qid |stdinbpl.583:18|
 :skolemid |65|
 :pattern ( (select (|Set#UnionOne_8157| a@@11 x@@4) o@@2))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) (y@@4 T@Ref) ) (!  (=> (select b@@9 y@@4) (not (select (|Set#Difference_8157| a@@12 b@@9) y@@4)))
 :qid |stdinbpl.624:18|
 :skolemid |80|
 :pattern ( (|Set#Difference_8157| a@@12 b@@9) (select b@@9 y@@4))
)))
(assert (forall ((s@@17 T@Seq_21213) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_8132| s@@17))) (|Seq#ContainsTrigger_8132| s@@17 (|Seq#Index_8132| s@@17 i@@3)))
 :qid |stdinbpl.418:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_8132| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_2936) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2936| s@@18))) (|Seq#ContainsTrigger_2936| s@@18 (|Seq#Index_2936| s@@18 i@@4)))
 :qid |stdinbpl.418:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2936| s@@18 i@@4))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_8157| (|Set#Difference_8157| a@@13 b@@10)) (|Set#Card_8157| (|Set#Difference_8157| b@@10 a@@13))) (|Set#Card_8157| (|Set#Intersection_8157| a@@13 b@@10))) (|Set#Card_8157| (|Set#Union_8157| a@@13 b@@10))) (= (|Set#Card_8157| (|Set#Difference_8157| a@@13 b@@10)) (- (|Set#Card_8157| a@@13) (|Set#Card_8157| (|Set#Intersection_8157| a@@13 b@@10)))))
 :qid |stdinbpl.626:18|
 :skolemid |81|
 :pattern ( (|Set#Card_8157| (|Set#Difference_8157| a@@13 b@@10)))
)))
(assert (forall ((s0@@3 T@Seq_21213) (s1@@3 T@Seq_21213) ) (!  (and (=> (= s0@@3 |Seq#Empty_8132|) (= (|Seq#Append_21213| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_8132|) (= (|Seq#Append_21213| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.236:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_21213| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2936) (s1@@4 T@Seq_2936) ) (!  (and (=> (= s0@@4 |Seq#Empty_2936|) (= (|Seq#Append_2936| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2936|) (= (|Seq#Append_2936| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.236:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2936| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_8132| (|Seq#Singleton_8132| t@@3) 0) t@@3)
 :qid |stdinbpl.240:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_8132| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2936| (|Seq#Singleton_2936| t@@4) 0) t@@4)
 :qid |stdinbpl.240:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2936| t@@4))
)))
(assert (forall ((s@@19 T@Seq_21213) ) (! (<= 0 (|Seq#Length_8132| s@@19))
 :qid |stdinbpl.219:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_8132| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2936) ) (! (<= 0 (|Seq#Length_2936| s@@20))
 :qid |stdinbpl.219:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2936| s@@20))
)))
(assert (forall ((s@@21 (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_8157| s@@21))
 :qid |stdinbpl.569:18|
 :skolemid |58|
 :pattern ( (|Set#Card_8157| s@@21))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (x@@5 T@Ref) ) (! (select (|Set#UnionOne_8157| a@@14 x@@5) x@@5)
 :qid |stdinbpl.585:18|
 :skolemid |66|
 :pattern ( (|Set#UnionOne_8157| a@@14 x@@5))
)))
(assert (forall ((s0@@5 T@Seq_21213) (s1@@5 T@Seq_21213) ) (!  (=> (|Seq#Equal_21213| s0@@5 s1@@5) (and (= (|Seq#Length_8132| s0@@5) (|Seq#Length_8132| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_8132| s0@@5))) (= (|Seq#Index_8132| s0@@5 j@@6) (|Seq#Index_8132| s1@@5 j@@6)))
 :qid |stdinbpl.515:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_8132| s0@@5 j@@6))
 :pattern ( (|Seq#Index_8132| s1@@5 j@@6))
))))
 :qid |stdinbpl.512:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_21213| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2936) (s1@@6 T@Seq_2936) ) (!  (=> (|Seq#Equal_2936| s0@@6 s1@@6) (and (= (|Seq#Length_2936| s0@@6) (|Seq#Length_2936| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2936| s0@@6))) (= (|Seq#Index_2936| s0@@6 j@@7) (|Seq#Index_2936| s1@@6 j@@7)))
 :qid |stdinbpl.515:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2936| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2936| s1@@6 j@@7))
))))
 :qid |stdinbpl.512:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2936| s0@@6 s1@@6))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (x@@6 T@Ref) ) (!  (=> (select a@@15 x@@6) (= (|Set#Card_8157| (|Set#UnionOne_8157| a@@15 x@@6)) (|Set#Card_8157| a@@15)))
 :qid |stdinbpl.589:18|
 :skolemid |68|
 :pattern ( (|Set#Card_8157| (|Set#UnionOne_8157| a@@15 x@@6)))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_8132| (|Seq#Singleton_8132| t@@5)) 1)
 :qid |stdinbpl.227:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_8132| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2936| (|Seq#Singleton_2936| t@@6)) 1)
 :qid |stdinbpl.227:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2936| t@@6))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_8157| (|Set#Singleton_8157| r@@0)) 1)
 :qid |stdinbpl.580:18|
 :skolemid |64|
 :pattern ( (|Set#Card_8157| (|Set#Singleton_8157| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_8157| r@@1) r@@1)
 :qid |stdinbpl.578:18|
 :skolemid |62|
 :pattern ( (|Set#Singleton_8157| r@@1))
)))
(assert (forall ((a@@16 (Array T@Ref Bool)) (b@@11 (Array T@Ref Bool)) ) (! (= (|Set#Union_8157| a@@16 (|Set#Union_8157| a@@16 b@@11)) (|Set#Union_8157| a@@16 b@@11))
 :qid |stdinbpl.612:18|
 :skolemid |75|
 :pattern ( (|Set#Union_8157| a@@16 (|Set#Union_8157| a@@16 b@@11)))
)))
(assert (forall ((a@@17 (Array T@Ref Bool)) (b@@12 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_8157| a@@17 (|Set#Intersection_8157| a@@17 b@@12)) (|Set#Intersection_8157| a@@17 b@@12))
 :qid |stdinbpl.616:18|
 :skolemid |77|
 :pattern ( (|Set#Intersection_8157| a@@17 (|Set#Intersection_8157| a@@17 b@@12)))
)))
(assert (forall ((s@@22 T@Seq_21213) (t@@7 T@Seq_21213) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_8132| s@@22))) (= (|Seq#Take_8132| (|Seq#Append_21213| s@@22 t@@7) n@@17) (|Seq#Take_8132| s@@22 n@@17)))
 :qid |stdinbpl.369:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_8132| (|Seq#Append_21213| s@@22 t@@7) n@@17))
)))
(assert (forall ((s@@23 T@Seq_2936) (t@@8 T@Seq_2936) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2936| s@@23))) (= (|Seq#Take_2936| (|Seq#Append_2936| s@@23 t@@8) n@@18) (|Seq#Take_2936| s@@23 n@@18)))
 :qid |stdinbpl.369:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2936| (|Seq#Append_2936| s@@23 t@@8) n@@18))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_8157| o@@3))
 :qid |stdinbpl.572:18|
 :skolemid |59|
 :pattern ( (select |Set#Empty_8157| o@@3))
)))
(assert (forall ((s@@24 T@Seq_21213) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_8132| s@@24))) (= (|Seq#Length_8132| (|Seq#Update_8132| s@@24 i@@5 v@@2)) (|Seq#Length_8132| s@@24)))
 :qid |stdinbpl.268:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_8132| (|Seq#Update_8132| s@@24 i@@5 v@@2)))
 :pattern ( (|Seq#Length_8132| s@@24) (|Seq#Update_8132| s@@24 i@@5 v@@2))
)))
(assert (forall ((s@@25 T@Seq_2936) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2936| s@@25))) (= (|Seq#Length_2936| (|Seq#Update_2936| s@@25 i@@6 v@@3)) (|Seq#Length_2936| s@@25)))
 :qid |stdinbpl.268:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2936| (|Seq#Update_2936| s@@25 i@@6 v@@3)))
 :pattern ( (|Seq#Length_2936| s@@25) (|Seq#Update_2936| s@@25 i@@6 v@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12241) (o_30 T@Ref) (f_37 T@Field_8128_30521) (v@@4 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_12241 (|PolymorphicMapType_12241_7771_53#PolymorphicMapType_12241| Heap@@11) (|PolymorphicMapType_12241_7774_7775#PolymorphicMapType_12241| Heap@@11) (|PolymorphicMapType_12241_8128_5059#PolymorphicMapType_12241| Heap@@11) (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| Heap@@11) (store (|PolymorphicMapType_12241_12301_30521#PolymorphicMapType_12241| Heap@@11) o_30 f_37 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12241 (|PolymorphicMapType_12241_7771_53#PolymorphicMapType_12241| Heap@@11) (|PolymorphicMapType_12241_7774_7775#PolymorphicMapType_12241| Heap@@11) (|PolymorphicMapType_12241_8128_5059#PolymorphicMapType_12241| Heap@@11) (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| Heap@@11) (store (|PolymorphicMapType_12241_12301_30521#PolymorphicMapType_12241| Heap@@11) o_30 f_37 v@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_12241) (o_30@@0 T@Ref) (f_37@@0 T@Field_8128_30654) (v@@5 T@PolymorphicMapType_12790) ) (! (succHeap Heap@@12 (PolymorphicMapType_12241 (|PolymorphicMapType_12241_7771_53#PolymorphicMapType_12241| Heap@@12) (|PolymorphicMapType_12241_7774_7775#PolymorphicMapType_12241| Heap@@12) (|PolymorphicMapType_12241_8128_5059#PolymorphicMapType_12241| Heap@@12) (store (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| Heap@@12) o_30@@0 f_37@@0 v@@5) (|PolymorphicMapType_12241_12301_30521#PolymorphicMapType_12241| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12241 (|PolymorphicMapType_12241_7771_53#PolymorphicMapType_12241| Heap@@12) (|PolymorphicMapType_12241_7774_7775#PolymorphicMapType_12241| Heap@@12) (|PolymorphicMapType_12241_8128_5059#PolymorphicMapType_12241| Heap@@12) (store (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| Heap@@12) o_30@@0 f_37@@0 v@@5) (|PolymorphicMapType_12241_12301_30521#PolymorphicMapType_12241| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_12241) (o_30@@1 T@Ref) (f_37@@1 T@Field_21168_5059) (v@@6 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_12241 (|PolymorphicMapType_12241_7771_53#PolymorphicMapType_12241| Heap@@13) (|PolymorphicMapType_12241_7774_7775#PolymorphicMapType_12241| Heap@@13) (store (|PolymorphicMapType_12241_8128_5059#PolymorphicMapType_12241| Heap@@13) o_30@@1 f_37@@1 v@@6) (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| Heap@@13) (|PolymorphicMapType_12241_12301_30521#PolymorphicMapType_12241| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12241 (|PolymorphicMapType_12241_7771_53#PolymorphicMapType_12241| Heap@@13) (|PolymorphicMapType_12241_7774_7775#PolymorphicMapType_12241| Heap@@13) (store (|PolymorphicMapType_12241_8128_5059#PolymorphicMapType_12241| Heap@@13) o_30@@1 f_37@@1 v@@6) (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| Heap@@13) (|PolymorphicMapType_12241_12301_30521#PolymorphicMapType_12241| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_12241) (o_30@@2 T@Ref) (f_37@@2 T@Field_12314_12315) (v@@7 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_12241 (|PolymorphicMapType_12241_7771_53#PolymorphicMapType_12241| Heap@@14) (store (|PolymorphicMapType_12241_7774_7775#PolymorphicMapType_12241| Heap@@14) o_30@@2 f_37@@2 v@@7) (|PolymorphicMapType_12241_8128_5059#PolymorphicMapType_12241| Heap@@14) (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| Heap@@14) (|PolymorphicMapType_12241_12301_30521#PolymorphicMapType_12241| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12241 (|PolymorphicMapType_12241_7771_53#PolymorphicMapType_12241| Heap@@14) (store (|PolymorphicMapType_12241_7774_7775#PolymorphicMapType_12241| Heap@@14) o_30@@2 f_37@@2 v@@7) (|PolymorphicMapType_12241_8128_5059#PolymorphicMapType_12241| Heap@@14) (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| Heap@@14) (|PolymorphicMapType_12241_12301_30521#PolymorphicMapType_12241| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_12241) (o_30@@3 T@Ref) (f_37@@3 T@Field_12301_53) (v@@8 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_12241 (store (|PolymorphicMapType_12241_7771_53#PolymorphicMapType_12241| Heap@@15) o_30@@3 f_37@@3 v@@8) (|PolymorphicMapType_12241_7774_7775#PolymorphicMapType_12241| Heap@@15) (|PolymorphicMapType_12241_8128_5059#PolymorphicMapType_12241| Heap@@15) (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| Heap@@15) (|PolymorphicMapType_12241_12301_30521#PolymorphicMapType_12241| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12241 (store (|PolymorphicMapType_12241_7771_53#PolymorphicMapType_12241| Heap@@15) o_30@@3 f_37@@3 v@@8) (|PolymorphicMapType_12241_7774_7775#PolymorphicMapType_12241| Heap@@15) (|PolymorphicMapType_12241_8128_5059#PolymorphicMapType_12241| Heap@@15) (|PolymorphicMapType_12241_8128_30698#PolymorphicMapType_12241| Heap@@15) (|PolymorphicMapType_12241_12301_30521#PolymorphicMapType_12241| Heap@@15)))
)))
(assert (forall ((s@@26 T@Seq_21213) (t@@9 T@Seq_21213) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_8132| s@@26))) (= (|Seq#Drop_8132| (|Seq#Append_21213| s@@26 t@@9) n@@19) (|Seq#Append_21213| (|Seq#Drop_8132| s@@26 n@@19) t@@9)))
 :qid |stdinbpl.383:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_8132| (|Seq#Append_21213| s@@26 t@@9) n@@19))
)))
(assert (forall ((s@@27 T@Seq_2936) (t@@10 T@Seq_2936) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2936| s@@27))) (= (|Seq#Drop_2936| (|Seq#Append_2936| s@@27 t@@10) n@@20) (|Seq#Append_2936| (|Seq#Drop_2936| s@@27 n@@20) t@@10)))
 :qid |stdinbpl.383:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2936| (|Seq#Append_2936| s@@27 t@@10) n@@20))
)))
(assert (forall ((a@@18 Int) (b@@13 Int) ) (! (= (<= a@@18 b@@13) (= (|Math#min| a@@18 b@@13) a@@18))
 :qid |stdinbpl.656:15|
 :skolemid |87|
 :pattern ( (|Math#min| a@@18 b@@13))
)))
(assert (forall ((a@@19 Int) (b@@14 Int) ) (! (= (<= b@@14 a@@19) (= (|Math#min| a@@19 b@@14) b@@14))
 :qid |stdinbpl.657:15|
 :skolemid |88|
 :pattern ( (|Math#min| a@@19 b@@14))
)))
(assert (forall ((s@@28 T@Seq_21213) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_8132| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_8132| (|Seq#Drop_8132| s@@28 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_8132| s@@28 i@@7))))
 :qid |stdinbpl.319:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_8132| s@@28 n@@21) (|Seq#Index_8132| s@@28 i@@7))
)))
(assert (forall ((s@@29 T@Seq_2936) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_2936| s@@29))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_2936| (|Seq#Drop_2936| s@@29 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_2936| s@@29 i@@8))))
 :qid |stdinbpl.319:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2936| s@@29 n@@22) (|Seq#Index_2936| s@@29 i@@8))
)))
(assert (forall ((s@@30 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_8157| s@@30) 0) (= s@@30 |Set#Empty_8157|)) (=> (not (= (|Set#Card_8157| s@@30) 0)) (exists ((x@@7 T@Ref) ) (! (select s@@30 x@@7)
 :qid |stdinbpl.575:33|
 :skolemid |60|
))))
 :qid |stdinbpl.573:18|
 :skolemid |61|
 :pattern ( (|Set#Card_8157| s@@30))
)))
(assert (forall ((s0@@7 T@Seq_21213) (s1@@7 T@Seq_21213) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_8132|)) (not (= s1@@7 |Seq#Empty_8132|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_8132| s0@@7))) (= (|Seq#Index_8132| (|Seq#Append_21213| s0@@7 s1@@7) n@@23) (|Seq#Index_8132| s0@@7 n@@23)))
 :qid |stdinbpl.259:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_8132| (|Seq#Append_21213| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_8132| s0@@7 n@@23) (|Seq#Append_21213| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2936) (s1@@8 T@Seq_2936) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2936|)) (not (= s1@@8 |Seq#Empty_2936|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2936| s0@@8))) (= (|Seq#Index_2936| (|Seq#Append_2936| s0@@8 s1@@8) n@@24) (|Seq#Index_2936| s0@@8 n@@24)))
 :qid |stdinbpl.259:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2936| (|Seq#Append_2936| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2936| s0@@8 n@@24) (|Seq#Append_2936| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_21213) (s1@@9 T@Seq_21213) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_8132|)) (not (= s1@@9 |Seq#Empty_8132|))) (<= 0 m)) (< m (|Seq#Length_8132| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_8132| s0@@9)) (|Seq#Length_8132| s0@@9)) m) (= (|Seq#Index_8132| (|Seq#Append_21213| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_8132| s0@@9))) (|Seq#Index_8132| s1@@9 m))))
 :qid |stdinbpl.264:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_8132| s1@@9 m) (|Seq#Append_21213| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2936) (s1@@10 T@Seq_2936) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2936|)) (not (= s1@@10 |Seq#Empty_2936|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2936| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2936| s0@@10)) (|Seq#Length_2936| s0@@10)) m@@0) (= (|Seq#Index_2936| (|Seq#Append_2936| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2936| s0@@10))) (|Seq#Index_2936| s1@@10 m@@0))))
 :qid |stdinbpl.264:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2936| s1@@10 m@@0) (|Seq#Append_2936| s0@@10 s1@@10))
)))
(assert (forall ((a@@20 (Array T@Ref Bool)) (x@@8 T@Ref) ) (!  (=> (not (select a@@20 x@@8)) (= (|Set#Card_8157| (|Set#UnionOne_8157| a@@20 x@@8)) (+ (|Set#Card_8157| a@@20) 1)))
 :qid |stdinbpl.591:18|
 :skolemid |69|
 :pattern ( (|Set#Card_8157| (|Set#UnionOne_8157| a@@20 x@@8)))
)))
(assert (forall ((o_30@@4 T@Ref) (f_35 T@Field_12314_12315) (Heap@@16 T@PolymorphicMapType_12241) ) (!  (=> (select (|PolymorphicMapType_12241_7771_53#PolymorphicMapType_12241| Heap@@16) o_30@@4 $allocated) (select (|PolymorphicMapType_12241_7771_53#PolymorphicMapType_12241| Heap@@16) (select (|PolymorphicMapType_12241_7774_7775#PolymorphicMapType_12241| Heap@@16) o_30@@4 f_35) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12241_7774_7775#PolymorphicMapType_12241| Heap@@16) o_30@@4 f_35))
)))
(assert (forall ((s@@31 T@Seq_21213) (x@@9 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_8132| s@@31))) (= (|Seq#Index_8132| s@@31 i@@9) x@@9)) (|Seq#Contains_21213| s@@31 x@@9))
 :qid |stdinbpl.416:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_21213| s@@31 x@@9) (|Seq#Index_8132| s@@31 i@@9))
)))
(assert (forall ((s@@32 T@Seq_2936) (x@@10 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2936| s@@32))) (= (|Seq#Index_2936| s@@32 i@@10) x@@10)) (|Seq#Contains_2936| s@@32 x@@10))
 :qid |stdinbpl.416:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2936| s@@32 x@@10) (|Seq#Index_2936| s@@32 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_21213) (s1@@11 T@Seq_21213) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_21213| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_21213| s0@@11 s1@@11))) (not (= (|Seq#Length_8132| s0@@11) (|Seq#Length_8132| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_21213| s0@@11 s1@@11))) (= (|Seq#Length_8132| s0@@11) (|Seq#Length_8132| s1@@11))) (= (|Seq#SkolemDiff_21213| s0@@11 s1@@11) (|Seq#SkolemDiff_21213| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_21213| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_21213| s0@@11 s1@@11) (|Seq#Length_8132| s0@@11))) (not (= (|Seq#Index_8132| s0@@11 (|Seq#SkolemDiff_21213| s0@@11 s1@@11)) (|Seq#Index_8132| s1@@11 (|Seq#SkolemDiff_21213| s0@@11 s1@@11))))))
 :qid |stdinbpl.520:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_21213| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2936) (s1@@12 T@Seq_2936) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2936| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2936| s0@@12 s1@@12))) (not (= (|Seq#Length_2936| s0@@12) (|Seq#Length_2936| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2936| s0@@12 s1@@12))) (= (|Seq#Length_2936| s0@@12) (|Seq#Length_2936| s1@@12))) (= (|Seq#SkolemDiff_2936| s0@@12 s1@@12) (|Seq#SkolemDiff_2936| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2936| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2936| s0@@12 s1@@12) (|Seq#Length_2936| s0@@12))) (not (= (|Seq#Index_2936| s0@@12 (|Seq#SkolemDiff_2936| s0@@12 s1@@12)) (|Seq#Index_2936| s1@@12 (|Seq#SkolemDiff_2936| s0@@12 s1@@12))))))
 :qid |stdinbpl.520:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2936| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_8128_30521) (v_1@@0 T@FrameType) (q T@Field_8128_30521) (w@@0 T@FrameType) (r@@2 T@Field_8128_30521) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12301_12301 p@@1 v_1@@0 q w@@0) (InsidePredicate_12301_12301 q w@@0 r@@2 u)) (InsidePredicate_12301_12301 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12301_12301 p@@1 v_1@@0 q w@@0) (InsidePredicate_12301_12301 q w@@0 r@@2 u))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (< a@@21 0) (= (|Math#clip| a@@21) 0))
 :qid |stdinbpl.662:15|
 :skolemid |91|
 :pattern ( (|Math#clip| a@@21))
)))
(assert (forall ((s@@33 T@Seq_21213) ) (!  (=> (= (|Seq#Length_8132| s@@33) 0) (= s@@33 |Seq#Empty_8132|))
 :qid |stdinbpl.223:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_8132| s@@33))
)))
(assert (forall ((s@@34 T@Seq_2936) ) (!  (=> (= (|Seq#Length_2936| s@@34) 0) (= s@@34 |Seq#Empty_2936|))
 :qid |stdinbpl.223:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2936| s@@34))
)))
(assert (forall ((s@@35 T@Seq_21213) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_8132| s@@35 n@@25) |Seq#Empty_8132|))
 :qid |stdinbpl.399:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_8132| s@@35 n@@25))
)))
(assert (forall ((s@@36 T@Seq_2936) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2936| s@@36 n@@26) |Seq#Empty_2936|))
 :qid |stdinbpl.399:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2936| s@@36 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@22 (Array T@Ref Bool)) (b@@15 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_8157| a@@22 b@@15) o@@4)  (or (select a@@22 o@@4) (select b@@15 o@@4)))
 :qid |stdinbpl.595:18|
 :skolemid |70|
 :pattern ( (select (|Set#Union_8157| a@@22 b@@15) o@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun xs () T@Seq_21213)
(declare-fun i_2 () Int)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_12262)
(declare-fun Heap@@17 () T@PolymorphicMapType_12241)
(declare-fun a_2@0 () Int)
(declare-fun a_2@1 () Int)
(declare-fun i_14 () Int)
(declare-fun j_5 () Int)
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
 (=> (= (ControlFlow 0 0) 23) (let ((anon7_correct true))
(let ((anon12_Else_correct  (=> (and (not (|Seq#Contains_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) i_2)) (= (ControlFlow 0 20) 16)) anon7_correct)))
(let ((anon12_Then_correct  (=> (|Seq#Contains_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) i_2) (and (=> (= (ControlFlow 0 17) (- 0 19)) (>= i_2 0)) (=> (>= i_2 0) (and (=> (= (ControlFlow 0 17) (- 0 18)) (< i_2 (|Seq#Length_8132| xs))) (=> (< i_2 (|Seq#Length_8132| xs)) (=> (= (ControlFlow 0 17) 16) anon7_correct))))))))
(let ((anon11_Else_correct  (and (=> (= (ControlFlow 0 9) (- 0 15)) (forall ((i_3 Int) (i_3_1 Int) ) (!  (=> (and (and (and (and (not (= i_3 i_3_1)) (|Seq#Contains_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) i_3)) (|Seq#Contains_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) i_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8132| xs i_3) (|Seq#Index_8132| xs i_3_1))))
 :qid |stdinbpl.816:15|
 :skolemid |119|
))) (=> (forall ((i_3@@0 Int) (i_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3@@0 i_3_1@@0)) (|Seq#Contains_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) i_3@@0)) (|Seq#Contains_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) i_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8132| xs i_3@@0) (|Seq#Index_8132| xs i_3_1@@0))))
 :qid |stdinbpl.816:15|
 :skolemid |119|
)) (=> (and (and (forall ((i_3@@1 Int) ) (!  (=> (and (|Seq#Contains_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) i_3@@1) (< NoPerm FullPerm)) (and (qpRange1 (|Seq#Index_8132| xs i_3@@1)) (= (invRecv1 (|Seq#Index_8132| xs i_3@@1)) i_3@@1)))
 :qid |stdinbpl.822:22|
 :skolemid |120|
 :pattern ( (|Seq#Index_8132| xs i_3@@1))
 :pattern ( (|Seq#ContainsTrigger_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) i_3@@1))
 :pattern ( (|Seq#Contains_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) i_3@@1))
 :pattern ( (|Seq#Index_8132| xs i_3@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (|Seq#Contains_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) (invRecv1 o_4)) (< NoPerm FullPerm)) (qpRange1 o_4)) (= (|Seq#Index_8132| xs (invRecv1 o_4)) o_4))
 :qid |stdinbpl.826:22|
 :skolemid |121|
 :pattern ( (invRecv1 o_4))
))) (and (forall ((i_3@@2 Int) ) (!  (=> (|Seq#Contains_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) i_3@@2) (not (= (|Seq#Index_8132| xs i_3@@2) null)))
 :qid |stdinbpl.832:22|
 :skolemid |122|
 :pattern ( (|Seq#Index_8132| xs i_3@@2))
 :pattern ( (|Seq#ContainsTrigger_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) i_3@@2))
 :pattern ( (|Seq#Contains_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) i_3@@2))
 :pattern ( (|Seq#Index_8132| xs i_3@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) (invRecv1 o_4@@0)) (< NoPerm FullPerm)) (qpRange1 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_8132| xs (invRecv1 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_12262_8128_5059#PolymorphicMapType_12262| QPMask@0) o_4@@0 f_7) (+ (select (|PolymorphicMapType_12262_8128_5059#PolymorphicMapType_12262| ZeroMask) o_4@@0 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) (invRecv1 o_4@@0)) (< NoPerm FullPerm)) (qpRange1 o_4@@0))) (= (select (|PolymorphicMapType_12262_8128_5059#PolymorphicMapType_12262| QPMask@0) o_4@@0 f_7) (select (|PolymorphicMapType_12262_8128_5059#PolymorphicMapType_12262| ZeroMask) o_4@@0 f_7))))
 :qid |stdinbpl.838:22|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_12262_8128_5059#PolymorphicMapType_12262| QPMask@0) o_4@@0 f_7))
)))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_12301_53) ) (!  (=> true (= (select (|PolymorphicMapType_12262_8128_53#PolymorphicMapType_12262| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_12262_8128_53#PolymorphicMapType_12262| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.842:29|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_12262_8128_53#PolymorphicMapType_12262| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_12262_8128_53#PolymorphicMapType_12262| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_12314_12315) ) (!  (=> true (= (select (|PolymorphicMapType_12262_8128_12315#PolymorphicMapType_12262| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_12262_8128_12315#PolymorphicMapType_12262| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.842:29|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_12262_8128_12315#PolymorphicMapType_12262| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_12262_8128_12315#PolymorphicMapType_12262| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_21168_5059) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_12262_8128_5059#PolymorphicMapType_12262| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_12262_8128_5059#PolymorphicMapType_12262| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.842:29|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_12262_8128_5059#PolymorphicMapType_12262| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_12262_8128_5059#PolymorphicMapType_12262| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_8128_30521) ) (!  (=> true (= (select (|PolymorphicMapType_12262_8128_30521#PolymorphicMapType_12262| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_12262_8128_30521#PolymorphicMapType_12262| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.842:29|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_12262_8128_30521#PolymorphicMapType_12262| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_12262_8128_30521#PolymorphicMapType_12262| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_8128_30654) ) (!  (=> true (= (select (|PolymorphicMapType_12262_8128_34776#PolymorphicMapType_12262| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_12262_8128_34776#PolymorphicMapType_12262| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.842:29|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_12262_8128_34776#PolymorphicMapType_12262| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_12262_8128_34776#PolymorphicMapType_12262| QPMask@0) o_4@@5 f_5@@3))
))) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (=> (= (ControlFlow 0 9) (- 0 14)) (< 1 (|Seq#Length_8132| xs))) (=> (< 1 (|Seq#Length_8132| xs)) (and (=> (= (ControlFlow 0 9) (- 0 13)) (HasDirectPerm_8128_5059 QPMask@0 (|Seq#Index_8132| xs 1) f_7)) (=> (HasDirectPerm_8128_5059 QPMask@0 (|Seq#Index_8132| xs 1) f_7) (=> (and (= a_2@0 (select (|PolymorphicMapType_12241_8128_5059#PolymorphicMapType_12241| Heap@@17) (|Seq#Index_8132| xs 1) f_7)) (state Heap@@17 QPMask@0)) (and (=> (= (ControlFlow 0 9) (- 0 12)) (< 1 (|Seq#Length_8132| xs))) (=> (< 1 (|Seq#Length_8132| xs)) (and (=> (= (ControlFlow 0 9) (- 0 11)) (HasDirectPerm_8128_5059 QPMask@0 (|Seq#Index_8132| xs 1) f_7)) (=> (HasDirectPerm_8128_5059 QPMask@0 (|Seq#Index_8132| xs 1) f_7) (=> (and (= a_2@1 (select (|PolymorphicMapType_12241_8128_5059#PolymorphicMapType_12241| Heap@@17) (|Seq#Index_8132| xs 1) f_7)) (state Heap@@17 QPMask@0)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< 1 (|Seq#Length_8132| xs))) (=> (< 1 (|Seq#Length_8132| xs)) (=> (= (ControlFlow 0 9) (- 0 8)) (HasDirectPerm_8128_5059 QPMask@0 (|Seq#Index_8132| xs 1) f_7))))))))))))))))))))
(let ((anon9_Else_correct  (=> (and (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (|Seq#Contains_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) i_1) (and (|Seq#Contains_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) j_1) (not (= i_1 j_1)))) (not (= (|Seq#Index_8132| xs i_1) (|Seq#Index_8132| xs j_1))))
 :qid |stdinbpl.798:20|
 :skolemid |118|
 :pattern ( (|Seq#ContainsTrigger_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) i_1) (|Seq#ContainsTrigger_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) j_1))
 :pattern ( (|Seq#ContainsTrigger_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) i_1) (|Seq#Contains_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) j_1))
 :pattern ( (|Seq#Contains_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) i_1) (|Seq#ContainsTrigger_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) j_1))
 :pattern ( (|Seq#Contains_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) i_1) (|Seq#Contains_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) j_1))
 :pattern ( (|Seq#ContainsTrigger_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) i_1) (|Seq#Index_8132| xs j_1))
 :pattern ( (|Seq#Contains_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) i_1) (|Seq#Index_8132| xs j_1))
 :pattern ( (|Seq#ContainsTrigger_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) j_1) (|Seq#Index_8132| xs i_1))
 :pattern ( (|Seq#Contains_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) j_1) (|Seq#Index_8132| xs i_1))
 :pattern ( (|Seq#Index_8132| xs i_1) (|Seq#Index_8132| xs j_1))
)) (state Heap@@17 ZeroMask)) (and (and (=> (= (ControlFlow 0 21) 9) anon11_Else_correct) (=> (= (ControlFlow 0 21) 17) anon12_Then_correct)) (=> (= (ControlFlow 0 21) 20) anon12_Else_correct)))))
(let ((anon3_correct true))
(let ((anon10_Else_correct  (=> (and (not (and (|Seq#Contains_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) i_14) (and (|Seq#Contains_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) j_5) (not (= i_14 j_5))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon10_Then_correct  (=> (and (|Seq#Contains_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) i_14) (and (|Seq#Contains_2936| (|Seq#Range| 0 (|Seq#Length_8132| xs)) j_5) (not (= i_14 j_5)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i_14 0)) (=> (>= i_14 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i_14 (|Seq#Length_8132| xs))) (=> (< i_14 (|Seq#Length_8132| xs)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_5 0)) (=> (>= j_5 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_5 (|Seq#Length_8132| xs))) (=> (< j_5 (|Seq#Length_8132| xs)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (> (|Seq#Length_8132| xs) 3) (state Heap@@17 ZeroMask))) (and (and (=> (= (ControlFlow 0 22) 21) anon9_Else_correct) (=> (= (ControlFlow 0 22) 2) anon10_Then_correct)) (=> (= (ControlFlow 0 22) 7) anon10_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 23) 22) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid